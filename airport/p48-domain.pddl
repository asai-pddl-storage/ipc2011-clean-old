
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (is-moving ?a - airplane) (facing ?a - airplane ?d - direction)
  (is-parked ?a - airplane ?s - segment)
  (has-type ?a - airplane ?t - airplanetype)
  (not_blocked ?s - segment ?a - airplane)
  (at-segment ?a - airplane ?s - segment) (occupied ?s - segment)
  (blocked ?s - segment ?a - airplane) (is-pushing ?a - airplane)
  (not_occupied ?s - segment) (is-start-runway ?s - segment ?d - direction)
  (airborne ?a - airplane ?s - segment))
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
  seg_s_b9b10c_2_0_83 - segment airplane_cfbeg airplane_cfbe1 airplane_daew8
  airplane_daew9 airplane_daew0 airplane_daew3 airplane_daewh airplane_daew1
  airplane_daew2 - airplane)
 (:action ugly1ugly763move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew0)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew2)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (blocked seg_o1_118a_0_34 ?a) (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action ugly2ugly1187startup_seg_s_b9b10b_0_125_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly3ugly1300move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew0)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
       (not_blocked seg_w1_161c_0_34 airplane_daew2)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_161c_0_34)
       (not (not_occupied seg_w1_161c_0_34)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a)) (at-segment ?a seg_w1_161c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly4ugly1207move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew9)
       (not_blocked seg_w1_c3a_0_34 airplane_daew0)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew1)
       (not_blocked seg_w1_c3a_0_34 airplane_daew2)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (occupied seg_w1_c3c_0_48)) (not_occupied seg_w1_c3c_0_48)
       (not (at-segment ?a seg_w1_c3c_0_48)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (blocked seg_w1_c3b_0_60 ?a) (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly5ugly316move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_cfbe1)
       (not_blocked seg_p116_0_76 airplane_daew8)
       (not_blocked seg_p116_0_76 airplane_daew9)
       (not_blocked seg_p116_0_76 airplane_daew0)
       (not_blocked seg_p116_0_76 airplane_daew3)
       (not_blocked seg_p116_0_76 airplane_daewh)
       (not_blocked seg_p116_0_76 airplane_daew1)
       (not_blocked seg_p116_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_p116_0_76)
       (not (not_occupied seg_p116_0_76)) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a)) (at-segment ?a seg_p116_0_76)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly6ugly1200move_seg_w1_141c_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew0)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew2)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (at-segment ?a seg_w1_141b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (blocked seg_w1_141a_0_34 ?a) (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action ugly7ugly1055startup_seg_p154_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly8ugly609move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew0)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew2)
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
 (:action ugly9ugly485move_seg_s_b2a_0_60_seg_s_b2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2a_0_60) (not_occupied seg_s_b2b_0_60)
       (not_blocked seg_s_b2b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b2b_0_60 airplane_daew8)
       (not_blocked seg_s_b2b_0_60 airplane_daew9)
       (not_blocked seg_s_b2b_0_60 airplane_daew0)
       (not_blocked seg_s_b2b_0_60 airplane_daew3)
       (not_blocked seg_s_b2b_0_60 airplane_daewh)
       (not_blocked seg_s_b2b_0_60 airplane_daew1)
       (not_blocked seg_s_b2b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b2a_0_60)) (not_occupied seg_s_b2a_0_60)
       (not (at-segment ?a seg_s_b2a_0_60)) (occupied seg_s_b2b_0_60)
       (not (not_occupied seg_s_b2b_0_60)) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a)) (at-segment ?a seg_s_b2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b2b3a_0_140 ?a))
       (not_blocked seg_s_b2b3a_0_140 ?a)))
 (:action ugly10ugly1083startup_seg_w1_162a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly11ugly389startup_seg_s_b6b7b_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action ugly12ugly1210startup_seg_s_b8c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action ugly13ugly20takeoff_seg_09l_0_80_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action ugly14ugly375startup_seg_b10_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action ugly15ugly1212startup_seg_b8_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action ugly16ugly955startup_seg_n_a2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action ugly17ugly409startup_seg_s_b9b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly18ugly1228move_seg_o1_104c_0_60_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew0)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew1)
       (not_blocked seg_o1_104b_0_60 airplane_daew2)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (at-segment ?a seg_o1_104b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (blocked seg_o1_104a_0_34 ?a) (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action ugly19ugly915startup_seg_08r_b4d_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_08r_b4a_0_161_245) (not_occupied seg_08r_b4c_0_80)
       (not_occupied seg_08r_b4b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))
       (blocked seg_08r_b4c_0_80 ?a) (not (not_blocked seg_08r_b4c_0_80 ?a))
       (blocked seg_08r_b4b_0_80 ?a) (not (not_blocked seg_08r_b4b_0_80 ?a))))
 (:action ugly20ugly473startup_seg_n_a9a10a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly21ugly1121move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew0)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
       (not_blocked seg_o1_110d_0_45 airplane_daew2)
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
 (:action ugly22ugly1084startup_seg_t_b6d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6b_0_60)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action
  ugly23ugly605move_seg_w1_164a_0_34_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew0)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew1)
       (not_blocked seg_w1_164c_0_34 airplane_daew2)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly24ugly474startup_seg_t_b4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly25ugly263startup_seg_t_b9b10c_2_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action ugly26ugly76startup_seg_a4_b_0_79_7559_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action ugly27ugly1069startup_seg_n_a7a6c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action ugly28ugly373move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_cfbe1)
       (not_blocked seg_p153_0_75 airplane_daew8)
       (not_blocked seg_p153_0_75 airplane_daew9)
       (not_blocked seg_p153_0_75 airplane_daew0)
       (not_blocked seg_p153_0_75 airplane_daew3)
       (not_blocked seg_p153_0_75 airplane_daewh)
       (not_blocked seg_p153_0_75 airplane_daew1)
       (not_blocked seg_p153_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_p153_0_75)
       (not (not_occupied seg_p153_0_75)) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a)) (at-segment ?a seg_p153_0_75)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)))
 (:action ugly29ugly671startup_seg_m_a6a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly30ugly846move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
       (not_blocked seg_o1_108d_0_45 airplane_daew2)
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
  ugly31ugly1231move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew0)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew2)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (occupied seg_w1_141a_0_34)) (not_occupied seg_w1_141a_0_34)
       (not (at-segment ?a seg_w1_141a_0_34)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly32ugly900startup_seg_m_a3a4e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action ugly33ugly234startup_seg_t_b5b8a_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action ugly34ugly491startup_seg_t_b5b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b_0_60)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action ugly35ugly189startup_seg_t_b2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action ugly36ugly517startup_seg_p111_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly37ugly620startup_seg_s_b5b8a_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action ugly38ugly167startup_seg_c2_a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly39ugly1359move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew0)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew1)
       (not_blocked seg_o1_118a_0_34 airplane_daew2)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly40ugly1294startup_seg_s_b10b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action ugly41ugly812move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_cfbe1)
       (not_blocked seg_p164_0_75 airplane_daew8)
       (not_blocked seg_p164_0_75 airplane_daew9)
       (not_blocked seg_p164_0_75 airplane_daew0)
       (not_blocked seg_p164_0_75 airplane_daew3)
       (not_blocked seg_p164_0_75 airplane_daewh)
       (not_blocked seg_p164_0_75 airplane_daew1)
       (not_blocked seg_p164_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_p164_0_75)
       (not (not_occupied seg_p164_0_75)) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a)) (at-segment ?a seg_p164_0_75)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly42ugly213move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew0)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
       (not_blocked seg_w1_142a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action ugly43ugly823startup_seg_p161_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly44ugly190startup_seg_n_a10b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action ugly45ugly1334park_seg_p108_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action ugly46ugly188startup_seg_n_a9a10d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action ugly47ugly567startup_seg_o1_c2d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action ugly48ugly809move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew0)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew1)
       (not_blocked seg_w1_164b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p164_0_75)) (not_occupied seg_p164_0_75)
       (not (at-segment ?a seg_p164_0_75)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action ugly49ugly828startup_seg_n_a8a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action ugly50ugly357startup_seg_n_a2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly51ugly1330move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew0)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
       (not_blocked seg_w1_163a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly52ugly460pushback_seg_o1_111b_0_60_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_111b_0_60)) (not_occupied seg_o1_111b_0_60)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (at-segment ?a seg_o1_111b_0_60)) (occupied seg_o1_111a_0_34)
       (not (not_occupied seg_o1_111a_0_34)) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (at-segment ?a seg_o1_111a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly53ugly892startup_seg_m_a3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action ugly54ugly678park_seg_p133_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly55ugly1168startup_seg_c4_s6c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action ugly56ugly238move_seg_w1_c4a_0_34_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew9)
       (not_blocked seg_w1_c4c_0_60 airplane_daew0)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_blocked seg_w1_c4c_0_60 airplane_daewh)
       (not_blocked seg_w1_c4c_0_60 airplane_daew1)
       (not_blocked seg_w1_c4c_0_60 airplane_daew2)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (occupied seg_w1_c4a_0_34)) (not_occupied seg_w1_c4a_0_34)
       (not (at-segment ?a seg_w1_c4a_0_34)) (occupied seg_w1_c4c_0_60)
       (not (not_occupied seg_w1_c4c_0_60)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a)) (at-segment ?a seg_w1_c4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)
       (blocked seg_w1_c4b_0_60 ?a) (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly57ugly165startup_seg_m_a6b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly58ugly21startup_seg_a3_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action ugly59ugly75move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew0)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
       (not_blocked seg_o1_110d_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p133_0_75)) (not_occupied seg_p133_0_75)
       (not (at-segment ?a seg_p133_0_75)) (occupied seg_o1_110d_0_45)
       (not (not_occupied seg_o1_110d_0_45)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action ugly60ugly513startup_seg_w1_164b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action ugly61ugly368startup_seg_s_b8b9c_1_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action ugly62ugly398startup_seg_b3_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action ugly63ugly1299startup_seg_s_b5c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5c_0_60)
       (not_occupied seg_s_b5a_0_60) (not_occupied seg_s_b5b_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action ugly64ugly1224startup_seg_w1_163c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly65ugly937startup_seg_s_b3a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action ugly66ugly1214startup_seg_w1_c4c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly67ugly60startup_seg_s_b2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_t_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a))))
 (:action ugly68ugly521startup_seg_n_a6a8d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action ugly69ugly334startup_seg_n_a7a6b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly70ugly365move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew0)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew1)
       (not_blocked seg_w1_152b_0_45 airplane_daew2)
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
  ugly71ugly904pushback_seg_w1_163a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew0)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
       (not_blocked seg_w1_162c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly72ugly1182startup_seg_w1_141b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly73ugly1240move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew0)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
       (not_blocked seg_o1_116c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_117a_0_34)) (not_occupied seg_o1_117a_0_34)
       (not (at-segment ?a seg_o1_117a_0_34)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)))
 (:action ugly74ugly1012startup_seg_m_a4a_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly75ugly383startup_seg_a6_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action ugly76ugly1146startup_seg_t_b10c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action ugly77ugly360startup_seg_a7_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action ugly78ugly536startup_seg_o1_116a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly79ugly593startup_seg_s_b4a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action ugly80ugly957startup_seg_m_a6a8e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action ugly81ugly187startup_seg_o1_104c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action ugly82ugly860move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew0)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew1)
       (not_blocked seg_o1_111d_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p134_0_75)) (not_occupied seg_p134_0_75)
       (not (at-segment ?a seg_p134_0_75)) (occupied seg_o1_111d_0_45)
       (not (not_occupied seg_o1_111d_0_45)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action ugly83ugly1271startup_seg_t_b4c_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4b_0_60)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly84ugly195startup_seg_p112_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action ugly85ugly1327move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2b_0_60 airplane_daew8)
       (not_blocked seg_n_n2b_0_60 airplane_daew9)
       (not_blocked seg_n_n2b_0_60 airplane_daew0)
       (not_blocked seg_n_n2b_0_60 airplane_daew3)
       (not_blocked seg_n_n2b_0_60 airplane_daewh)
       (not_blocked seg_n_n2b_0_60 airplane_daew1)
       (not_blocked seg_n_n2b_0_60 airplane_daew2)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (occupied seg_n_n2a_0_60)) (not_occupied seg_n_n2a_0_60)
       (not (at-segment ?a seg_n_n2a_0_60)) (occupied seg_n_n2b_0_60)
       (not (not_occupied seg_n_n2b_0_60)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (at-segment ?a seg_n_n2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_n2a4a_0_70 ?a)) (not_blocked seg_n_n2a4a_0_70 ?a)
       (blocked seg_n_n2c_0_60 ?a) (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly86ugly235startup_seg_m_a8c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action ugly87ugly400startup_seg_w1_161a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly88ugly313move_seg_o1_116c_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew0)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew1)
       (not_blocked seg_o1_116b_0_60 airplane_daew2)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (at-segment ?a seg_o1_116b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action ugly89ugly99startup_seg_b3_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action ugly90ugly119startup_seg_s_b5b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action ugly91ugly736startup_seg_o1_c1c_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action ugly92ugly1011startup_seg_a7_a_0_156_924_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action ugly93ugly773startup_seg_m_a7c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly94ugly733startup_seg_n_a4c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action ugly95ugly1176startup_seg_n_a7b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action ugly96ugly162startup_seg_o1_103a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly97ugly985startup_seg_s_b3b4c_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action ugly98ugly1062startup_seg_t_b9b10a_0_125_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a))))
 (:action ugly99ugly740startup_seg_w1_c4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly100ugly800move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew0)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)))
 (:action ugly101ugly696startup_seg_t_b2c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action ugly102ugly325move_seg_o1_c4b_0_60_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew0)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew2)
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
  ugly103ugly1335move_seg_08r_b6c_0_80_seg_08r_b6b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6b_0_80)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b6b_0_80 airplane_daew8)
       (not_blocked seg_08r_b6b_0_80 airplane_daew9)
       (not_blocked seg_08r_b6b_0_80 airplane_daew0)
       (not_blocked seg_08r_b6b_0_80 airplane_daew3)
       (not_blocked seg_08r_b6b_0_80 airplane_daewh)
       (not_blocked seg_08r_b6b_0_80 airplane_daew1)
       (not_blocked seg_08r_b6b_0_80 airplane_daew2)
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
 (:action ugly104ugly902startup_seg_m_a9a10c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action ugly105ugly414startup_seg_p163_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly106ugly346startup_seg_w1_162b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action ugly107ugly849startup_seg_a4_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly108ugly429startup_seg_n_a2a3b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action ugly109ugly248startup_seg_p134_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly110ugly1223startup_seg_b4_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_t_b4c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a))))
 (:action ugly111ugly1169startup_seg_n_a2a3a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action ugly112ugly894startup_seg_m_a3a4d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action ugly113ugly1034startup_seg_o1_111d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action ugly114ugly1237park_seg_p142_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action ugly115ugly1000startup_seg_m_a4a_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_m_a4b_0_60) (not_occupied seg_m_a4c_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly116ugly1074startup_seg_p163_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly117ugly962move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew0)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew2)
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
 (:action ugly118ugly611startup_seg_n_a7c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action ugly119ugly703startup_seg_c3_a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly120ugly781startup_seg_n_a8a9c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly121ugly617move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8c_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a6a8d_0_75)) (not_occupied seg_n_a6a8d_0_75)
       (not (at-segment ?a seg_n_a6a8d_0_75)) (occupied seg_n_a6a8c_0_75)
       (not (not_occupied seg_n_a6a8c_0_75)) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a)) (at-segment ?a seg_n_a6a8c_0_75)
       (not (blocked seg_n_a6a8e_0_75 ?a)) (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action ugly122ugly1305startup_seg_w1_161a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly123ugly1372startup_seg_o1_111d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action ugly124ugly432startup_seg_m_a8a9c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly125ugly990move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew9)
       (not_blocked seg_w1_c2c_0_34 airplane_daew0)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew1)
       (not_blocked seg_w1_c2c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_c2c_0_34)
       (not (not_occupied seg_w1_c2c_0_34)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a)) (at-segment ?a seg_w1_c2c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly126ugly706move_seg_s_b2b3c_0_140_seg_s_b2b3b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3c_0_140) (not_occupied seg_s_b2b3b_0_140)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew0)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3b_0_140 airplane_daewh)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew1)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b2b3c_0_140)) (not_occupied seg_s_b2b3c_0_140)
       (not (at-segment ?a seg_s_b2b3c_0_140)) (occupied seg_s_b2b3b_0_140)
       (not (not_occupied seg_s_b2b3b_0_140)) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))
       (at-segment ?a seg_s_b2b3b_0_140) (not (blocked seg_s_b3c_0_60 ?a))
       (not_blocked seg_s_b3c_0_60 ?a)))
 (:action ugly127ugly507startup_seg_w1_151a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly128ugly1282move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew0)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew1)
       (not_blocked seg_o1_102b_0_60 airplane_daew2)
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
  ugly129ugly201move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2)
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
  ugly130ugly1369pushback_seg_o1_111c_0_34_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew0)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_111c_0_34)) (not_occupied seg_o1_111c_0_34)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (not (at-segment ?a seg_o1_111c_0_34)) (occupied seg_o1_c3a_0_34)
       (not (not_occupied seg_o1_c3a_0_34)) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (at-segment ?a seg_o1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly131ugly574startup_seg_t_b4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly132ugly753move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew0)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew1)
       (not_blocked seg_w1_143a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action ugly133ugly482startup_seg_b2_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action ugly134ugly1173startup_seg_t_b7a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action ugly135ugly547startup_seg_a10_1_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly136ugly698move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2)
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
  ugly137ugly1035move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew0)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew1)
       (not_blocked seg_w1_161a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c3c_0_48)) (not_occupied seg_w1_c3c_0_48)
       (not (at-segment ?a seg_w1_c3c_0_48)) (occupied seg_w1_161a_0_34)
       (not (not_occupied seg_w1_161a_0_34)) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (at-segment ?a seg_w1_161a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (not (blocked seg_w1_c3b_0_60 ?a)) (not_blocked seg_w1_c3b_0_60 ?a)))
 (:action
  ugly138ugly1010move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew0)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew1)
       (not_blocked seg_w1_151b_0_45 airplane_daew2)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (at-segment ?a seg_w1_151b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly139ugly1211startup_seg_n2_0_108_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action ugly140ugly1360move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew0)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew1)
       (not_blocked seg_o1_103b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p103_0_76)) (not_occupied seg_p103_0_76)
       (not (at-segment ?a seg_p103_0_76)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action ugly141ugly685startup_seg_n_a9b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action ugly142ugly299startup_seg_t_b5b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b_0_60)
       (not_occupied seg_t_b5a_0_60) (not_occupied seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly143ugly58move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew9)
       (not_blocked seg_w1_c3c_0_48 airplane_daew0)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew1)
       (not_blocked seg_w1_c3c_0_48 airplane_daew2)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (occupied seg_w1_c3a_0_34)) (not_occupied seg_w1_c3a_0_34)
       (not (at-segment ?a seg_w1_c3a_0_34)) (occupied seg_w1_c3c_0_48)
       (not (not_occupied seg_w1_c3c_0_48)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a)) (at-segment ?a seg_w1_c3c_0_48)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)
       (blocked seg_w1_c3b_0_60 ?a) (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly144ugly207park_seg_p134_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly145ugly329startup_seg_t_b2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_t_b2b_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action ugly146ugly581startup_seg_s_b8b9c_1_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action ugly147ugly320startup_seg_t_b9a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9a_0_60)
       (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly148ugly256move_seg_o1_104b_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew0)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew1)
       (not_blocked seg_o1_104a_0_34 airplane_daew2)
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
  ugly149ugly669pushback_seg_o1_c1a_0_60_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly150ugly570move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew0)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
       (not_blocked seg_w1_154c_0_34 airplane_daew2)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly151ugly903startup_seg_n_a9a10e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action ugly152ugly585startup_seg_t_b8a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_t_b8b_0_60) (not_occupied seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly153ugly1025startup_seg_p152_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly154ugly1016startup_seg_n2_0_108_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action ugly155ugly758startup_seg_s_b2b3a_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action ugly156ugly920startup_seg_o1_c4a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly157ugly1054move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe1)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew8)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew9)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew0)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew3)
       (not_blocked seg_n_n2a4a_0_70 airplane_daewh)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew1)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew2))
  :effect
  (and (not (occupied seg_n_n2a4b_0_75)) (not_occupied seg_n_n2a4b_0_75)
       (not (at-segment ?a seg_n_n2a4b_0_75)) (occupied seg_n_n2a4a_0_70)
       (not (not_occupied seg_n_n2a4a_0_70)) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a)) (at-segment ?a seg_n_n2a4a_0_70)
       (not (blocked seg_n_n2a4c_0_75 ?a)) (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action ugly158ugly811startup_seg_t_b5d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5d_0_60)
       (not_occupied seg_t_b5a_0_60) (not_occupied seg_t_b5b_0_60)
       (not_occupied seg_t_b5c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a)) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a))))
 (:action ugly159ugly137startup_seg_o1_116a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly160ugly494startup_seg_08r_b3c_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action ugly161ugly663startup_seg_p107_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly162ugly914startup_seg_o1_103c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action ugly163ugly496startup_seg_p131_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly164ugly212startup_seg_08r_b10a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_08r_b10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10b_0_80 ?a)
       (not (not_blocked seg_08r_b10b_0_80 ?a))))
 (:action ugly165ugly1184move_seg_s_b5a_0_60_seg_s6_0_94_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b5a_0_60) (not_occupied seg_s6_0_94)
       (not_blocked seg_s6_0_94 airplane_cfbeg)
       (not_blocked seg_s6_0_94 airplane_cfbe1)
       (not_blocked seg_s6_0_94 airplane_daew8)
       (not_blocked seg_s6_0_94 airplane_daew9)
       (not_blocked seg_s6_0_94 airplane_daew0)
       (not_blocked seg_s6_0_94 airplane_daew3)
       (not_blocked seg_s6_0_94 airplane_daewh)
       (not_blocked seg_s6_0_94 airplane_daew1)
       (not_blocked seg_s6_0_94 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b5a_0_60)) (not_occupied seg_s_b5a_0_60)
       (not (at-segment ?a seg_s_b5a_0_60)) (occupied seg_s6_0_94)
       (not (not_occupied seg_s6_0_94)) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a)) (at-segment ?a seg_s6_0_94)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_s_b5b_0_60 ?a)) (not_blocked seg_s_b5b_0_60 ?a)
       (not (blocked seg_s_b5c_0_60 ?a)) (not_blocked seg_s_b5c_0_60 ?a)
       (not (blocked seg_s_b5d_0_60 ?a)) (not_blocked seg_s_b5d_0_60 ?a)))
 (:action ugly166ugly642startup_seg_w1_153c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action ugly167ugly794startup_seg_s_b7c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_t_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a))))
 (:action
  ugly168ugly1247pushback_seg_o1_110d_0_45_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_110d_0_45)) (not_occupied seg_o1_110d_0_45)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)
       (not (at-segment ?a seg_o1_110d_0_45)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly169ugly749startup_seg_o1_109a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly170ugly830move_seg_s_b2b3a_0_140_seg_s_b2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3a_0_140) (not_occupied seg_s_b2a_0_60)
       (not_blocked seg_s_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b2a_0_60 airplane_daew8)
       (not_blocked seg_s_b2a_0_60 airplane_daew9)
       (not_blocked seg_s_b2a_0_60 airplane_daew0)
       (not_blocked seg_s_b2a_0_60 airplane_daew3)
       (not_blocked seg_s_b2a_0_60 airplane_daewh)
       (not_blocked seg_s_b2a_0_60 airplane_daew1)
       (not_blocked seg_s_b2a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b2b3a_0_140)) (not_occupied seg_s_b2b3a_0_140)
       (not (at-segment ?a seg_s_b2b3a_0_140)) (occupied seg_s_b2a_0_60)
       (not (not_occupied seg_s_b2a_0_60)) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a)) (at-segment ?a seg_s_b2a_0_60)
       (not (blocked seg_s_b2b3b_0_140 ?a))
       (not_blocked seg_s_b2b3b_0_140 ?a)))
 (:action
  ugly171ugly319move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew0)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly172ugly1296move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew0)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew1)
       (not_blocked seg_w1_162a_0_34 airplane_daew2)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly173ugly433startup_seg_n_a7a6b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action ugly174ugly1383park_seg_p132_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action ugly175ugly1201startup_seg_o1_111b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action ugly176ugly1126move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6c_0_60 airplane_daew8)
       (not_blocked seg_n_a6c_0_60 airplane_daew9)
       (not_blocked seg_n_a6c_0_60 airplane_daew0)
       (not_blocked seg_n_a6c_0_60 airplane_daew3)
       (not_blocked seg_n_a6c_0_60 airplane_daewh)
       (not_blocked seg_n_a6c_0_60 airplane_daew1)
       (not_blocked seg_n_a6c_0_60 airplane_daew2)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (occupied seg_n_a6b_0_60)) (not_occupied seg_n_a6b_0_60)
       (not (at-segment ?a seg_n_a6b_0_60)) (occupied seg_n_a6c_0_60)
       (not (not_occupied seg_n_a6c_0_60)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a)) (at-segment ?a seg_n_a6c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a6a8a_0_115 ?a)) (not_blocked seg_n_a6a8a_0_115 ?a)
       (blocked seg_n_a6a_0_60 ?a) (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action ugly177ugly524park_seg_p102_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly178ugly905move_seg_s_b2b3b_0_140_seg_s_b2b3a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3b_0_140) (not_occupied seg_s_b2b3a_0_140)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew0)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3a_0_140 airplane_daewh)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew1)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b2b3b_0_140)) (not_occupied seg_s_b2b3b_0_140)
       (not (at-segment ?a seg_s_b2b3b_0_140)) (occupied seg_s_b2b3a_0_140)
       (not (not_occupied seg_s_b2b3a_0_140)) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))
       (at-segment ?a seg_s_b2b3a_0_140) (not (blocked seg_s_b2b3c_0_140 ?a))
       (not_blocked seg_s_b2b3c_0_140 ?a)))
 (:action
  ugly179ugly1108move_seg_w1_163b_0_45_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew0)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
       (not_blocked seg_w1_163a_0_34 airplane_daew2)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (blocked seg_w1_163c_0_34 ?a) (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly180ugly14move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_cfbe1)
       (not_blocked seg_p132_0_75 airplane_daew8)
       (not_blocked seg_p132_0_75 airplane_daew9)
       (not_blocked seg_p132_0_75 airplane_daew0)
       (not_blocked seg_p132_0_75 airplane_daew3)
       (not_blocked seg_p132_0_75 airplane_daewh)
       (not_blocked seg_p132_0_75 airplane_daew1)
       (not_blocked seg_p132_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_109d_0_45)) (not_occupied seg_o1_109d_0_45)
       (not (at-segment ?a seg_o1_109d_0_45)) (occupied seg_p132_0_75)
       (not (not_occupied seg_p132_0_75)) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a)) (at-segment ?a seg_p132_0_75)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)))
 (:action ugly181ugly9startup_seg_08r_b4d_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action ugly182ugly882startup_seg_b2_1_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_08r_b2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a))))
 (:action ugly183ugly683park_seg_p115_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly184ugly344move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew0)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew1)
       (not_blocked seg_o1_115b_0_60 airplane_daew2)
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
  ugly185ugly538move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe1)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew8)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew9)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew0)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew3)
       (not_blocked seg_m_a8d_0_120_934 airplane_daewh)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew1)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew2))
  :effect
  (and (not (occupied seg_a8_b_0_80_6226)) (not_occupied seg_a8_b_0_80_6226)
       (not (at-segment ?a seg_a8_b_0_80_6226)) (occupied seg_m_a8d_0_120_934)
       (not (not_occupied seg_m_a8d_0_120_934))
       (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))
       (at-segment ?a seg_m_a8d_0_120_934) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_a8_b_1_0_79_7559 ?a))
       (not_blocked seg_a8_b_1_0_79_7559 ?a)))
 (:action ugly186ugly1185startup_seg_m_a3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action ugly187ugly927startup_seg_m_a3a4b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action ugly188ugly1368park_seg_p134_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action ugly189ugly509startup_seg_n_a9a10f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly190ugly1376move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew0)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew1)
       (not_blocked seg_w1_151a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c2c_0_34)) (not_occupied seg_w1_c2c_0_34)
       (not (at-segment ?a seg_w1_c2c_0_34)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c2a_0_60 ?a)) (not_blocked seg_w1_c2a_0_60 ?a)
       (not (blocked seg_w1_c2b_0_60 ?a)) (not_blocked seg_w1_c2b_0_60 ?a)))
 (:action ugly191ugly311move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_cfbe1)
       (not_blocked seg_p102_0_76 airplane_daew8)
       (not_blocked seg_p102_0_76 airplane_daew9)
       (not_blocked seg_p102_0_76 airplane_daew0)
       (not_blocked seg_p102_0_76 airplane_daew3)
       (not_blocked seg_p102_0_76 airplane_daewh)
       (not_blocked seg_p102_0_76 airplane_daew1)
       (not_blocked seg_p102_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_p102_0_76)
       (not (not_occupied seg_p102_0_76)) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a)) (at-segment ?a seg_p102_0_76)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)))
 (:action ugly192ugly737startup_seg_w1_152a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly193ugly1026startup_seg_m_a4a7d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action ugly194ugly1133startup_seg_t_b9b10b_0_125_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action ugly195ugly1022startup_seg_m_a8a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action ugly196ugly739startup_seg_t_b4d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4d_0_60)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4b_0_60)
       (not_occupied seg_t_b4c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a))))
 (:action ugly197ugly936startup_seg_s_b7d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7d_0_60)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action ugly198ugly68startup_seg_t_b2b3c_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action ugly199ugly641startup_seg_o1_109d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action ugly200ugly239startup_seg_t_b7b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action ugly201ugly307startup_seg_w1_141a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly202ugly933move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew0)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew2)
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
 (:action ugly203ugly1265park_seg_p110_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action ugly204ugly1116startup_seg_n_a3d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action ugly205ugly967park_seg_p151_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action ugly206ugly351startup_seg_b4_a_0_156_924_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly207ugly1008move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew0)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew1)
       (not_blocked seg_w1_143b_0_45 airplane_daew2)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (occupied seg_w1_143a_0_34)) (not_occupied seg_w1_143a_0_34)
       (not (at-segment ?a seg_w1_143a_0_34)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (at-segment ?a seg_w1_143b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly208ugly1349startup_seg_o1_118b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly209ugly221startup_seg_a9_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action ugly210ugly552startup_seg_p108_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action ugly211ugly991move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew0)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
       (not_blocked seg_w1_153b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p153_0_75)) (not_occupied seg_p153_0_75)
       (not (at-segment ?a seg_p153_0_75)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action
  ugly212ugly504move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a9c_0_80 airplane_daew8)
       (not_blocked seg_08l_a9c_0_80 airplane_daew9)
       (not_blocked seg_08l_a9c_0_80 airplane_daew0)
       (not_blocked seg_08l_a9c_0_80 airplane_daew3)
       (not_blocked seg_08l_a9c_0_80 airplane_daewh)
       (not_blocked seg_08l_a9c_0_80 airplane_daew1)
       (not_blocked seg_08l_a9c_0_80 airplane_daew2))
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
 (:action ugly213ugly6startup_seg_m_a6a8d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action ugly214ugly635startup_seg_n_a2a3e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly215ugly644move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe1)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew8)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew9)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew0)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew3)
       (not_blocked seg_08l_a2a3_0_970 airplane_daewh)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew1)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew2))
  :effect
  (and (not (occupied seg_08l_a2a_0_80)) (not_occupied seg_08l_a2a_0_80)
       (not (at-segment ?a seg_08l_a2a_0_80)) (occupied seg_08l_a2a3_0_970)
       (not (not_occupied seg_08l_a2a3_0_970)) (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action ugly216ugly3startup_seg_n_n2a4e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action ugly217ugly347move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_cfbe1)
       (not_blocked seg_08l_0_80 airplane_daew8)
       (not_blocked seg_08l_0_80 airplane_daew9)
       (not_blocked seg_08l_0_80 airplane_daew0)
       (not_blocked seg_08l_0_80 airplane_daew3)
       (not_blocked seg_08l_0_80 airplane_daewh)
       (not_blocked seg_08l_0_80 airplane_daew1)
       (not_blocked seg_08l_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_08l_a2a3_0_970)) (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action ugly218ugly193startup_seg_c3_b_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly219ugly296move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew0)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew2)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p141_0_75 ?a)) (not_blocked seg_p141_0_75 ?a)
       (blocked seg_w1_141a_0_34 ?a) (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action ugly220ugly592startup_seg_s_b6b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_t_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a))))
 (:action
  ugly221ugly1109move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew0)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew2)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly222ugly821startup_seg_m_a3a4a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action ugly223ugly27startup_seg_o1_c4c_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action ugly224ugly761startup_seg_n_a4a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly225ugly808move_seg_s_b3c_0_60_seg_s_b2b3c_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b3c_0_60) (not_occupied seg_s_b2b3c_0_140)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew0)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3c_0_140 airplane_daewh)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew1)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew2))
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
  ugly226ugly352move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew0)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
       (not_blocked seg_o1_117c_0_34 airplane_daew2)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p117_0_76 ?a)) (not_blocked seg_p117_0_76 ?a)
       (blocked seg_o1_117a_0_34 ?a) (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action ugly227ugly1120startup_seg_m_a4a7a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action ugly228ugly91startup_seg_s_b10b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action ugly229ugly522startup_seg_m_a8a9b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action ugly230ugly317startup_seg_n_a4a7d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action ugly231ugly378startup_seg_08r_b4a_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4a_0_161_245)
       (not_occupied seg_08r_b4c_0_80) (not_occupied seg_08r_b4b_0_80)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4c_0_80 ?a)
       (not (not_blocked seg_08r_b4c_0_80 ?a)) (blocked seg_08r_b4b_0_80 ?a)
       (not (not_blocked seg_08r_b4b_0_80 ?a))
       (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action ugly232ugly247startup_seg_w1_142b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly233ugly684move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7e_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a4a7f_0_75)) (not_occupied seg_n_a4a7f_0_75)
       (not (at-segment ?a seg_n_a4a7f_0_75)) (occupied seg_n_a4a7e_0_75)
       (not (not_occupied seg_n_a4a7e_0_75)) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a)) (at-segment ?a seg_n_a4a7e_0_75)
       (not (blocked seg_n_a7c_0_60 ?a)) (not_blocked seg_n_a7c_0_60 ?a)))
 (:action ugly234ugly595move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8c_0_60 airplane_daew8)
       (not_blocked seg_n_a8c_0_60 airplane_daew9)
       (not_blocked seg_n_a8c_0_60 airplane_daew0)
       (not_blocked seg_n_a8c_0_60 airplane_daew3)
       (not_blocked seg_n_a8c_0_60 airplane_daewh)
       (not_blocked seg_n_a8c_0_60 airplane_daew1)
       (not_blocked seg_n_a8c_0_60 airplane_daew2)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (occupied seg_n_a8a_0_60)) (not_occupied seg_n_a8a_0_60)
       (not (at-segment ?a seg_n_a8a_0_60)) (occupied seg_n_a8c_0_60)
       (not (not_occupied seg_n_a8c_0_60)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a)) (at-segment ?a seg_n_a8c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_m_a8b_0_60 ?a)) (not_blocked seg_m_a8b_0_60 ?a)
       (blocked seg_n_a8b_0_60 ?a) (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action ugly235ugly1209park_seg_p104_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action ugly236ugly411startup_seg_08l_a7c_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_occupied seg_08l_a7d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a))
       (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))
       (blocked seg_08l_a7d_0_80 ?a) (not (not_blocked seg_08l_a7d_0_80 ?a))))
 (:action ugly237ugly24takeoff_seg_08l_0_80_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action ugly238ugly31startup_seg_m_a9d_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action ugly239ugly580startup_seg_t_b3b4a_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action ugly240ugly1262startup_seg_t_b7a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_t_b7b_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action ugly241ugly972park_seg_p133_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action ugly242ugly699startup_seg_n_a6a8f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly243ugly1027move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2)
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
 (:action ugly244ugly908move_seg_s_b4a_0_60_seg_s_b4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60)
       (not_blocked seg_s_b4c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b4c_0_60 airplane_daew8)
       (not_blocked seg_s_b4c_0_60 airplane_daew9)
       (not_blocked seg_s_b4c_0_60 airplane_daew0)
       (not_blocked seg_s_b4c_0_60 airplane_daew3)
       (not_blocked seg_s_b4c_0_60 airplane_daewh)
       (not_blocked seg_s_b4c_0_60 airplane_daew1)
       (not_blocked seg_s_b4c_0_60 airplane_daew2)
       (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (occupied seg_s_b4a_0_60)) (not_occupied seg_s_b4a_0_60)
       (not (at-segment ?a seg_s_b4a_0_60)) (occupied seg_s_b4c_0_60)
       (not (not_occupied seg_s_b4c_0_60)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a)) (at-segment ?a seg_s_b4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b4b6a_0_135 ?a)) (not_blocked seg_s_b4b6a_0_135 ?a)
       (blocked seg_s_b4b_0_60 ?a) (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action ugly245ugly244startup_seg_o1_102c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly246ugly390move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew0)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
       (not_blocked seg_o1_103c_0_34 airplane_daew2)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly247ugly770startup_seg_w1_161c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly248ugly1009move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_cfbe1)
       (not_blocked seg_p151_0_75 airplane_daew8)
       (not_blocked seg_p151_0_75 airplane_daew9)
       (not_blocked seg_p151_0_75 airplane_daew0)
       (not_blocked seg_p151_0_75 airplane_daew3)
       (not_blocked seg_p151_0_75 airplane_daewh)
       (not_blocked seg_p151_0_75 airplane_daew1)
       (not_blocked seg_p151_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_p151_0_75)
       (not (not_occupied seg_p151_0_75)) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a)) (at-segment ?a seg_p151_0_75)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)))
 (:action ugly249ugly56move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_cfbe1)
       (not_blocked seg_p162_0_75 airplane_daew8)
       (not_blocked seg_p162_0_75 airplane_daew9)
       (not_blocked seg_p162_0_75 airplane_daew0)
       (not_blocked seg_p162_0_75 airplane_daew3)
       (not_blocked seg_p162_0_75 airplane_daewh)
       (not_blocked seg_p162_0_75 airplane_daew1)
       (not_blocked seg_p162_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_p162_0_75)
       (not (not_occupied seg_p162_0_75)) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a)) (at-segment ?a seg_p162_0_75)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly250ugly86move_seg_w1_162b_0_45_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew0)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew1)
       (not_blocked seg_w1_162a_0_34 airplane_daew2)
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
  ugly251ugly1153move_seg_s_b7d_0_60_seg_s_b6b7b_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b7d_0_60) (not_occupied seg_s_b6b7b_0_140)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew9)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew0)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew3)
       (not_blocked seg_s_b6b7b_0_140 airplane_daewh)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew1)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew2))
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
 (:action ugly252ugly832startup_seg_m_a6d_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly253ugly109move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew0)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew1)
       (not_blocked seg_w1_164c_0_34 airplane_daew2)
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
  ugly254ugly813move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7a_0_80 airplane_daew8)
       (not_blocked seg_08l_a7a_0_80 airplane_daew9)
       (not_blocked seg_08l_a7a_0_80 airplane_daew0)
       (not_blocked seg_08l_a7a_0_80 airplane_daew3)
       (not_blocked seg_08l_a7a_0_80 airplane_daewh)
       (not_blocked seg_08l_a7a_0_80 airplane_daew1)
       (not_blocked seg_08l_a7a_0_80 airplane_daew2)
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
  ugly255ugly62move_seg_o1_111c_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew0)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew1)
       (not_blocked seg_o1_111d_0_45 airplane_daew2)
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
 (:action ugly256ugly339startup_seg_b10_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly257ugly575move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew0)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew1)
       (not_blocked seg_w1_151a_0_34 airplane_daew2)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action ugly258ugly1336startup_seg_t_b3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action ugly259ugly1266startup_seg_08l_a3b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action ugly260ugly1112park_seg_p116_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action ugly261ugly1072startup_seg_w1_164a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly262ugly515startup_seg_w1_151b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action ugly263ugly1385startup_seg_c1_n2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly264ugly668move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4b_0_60 airplane_daew8)
       (not_blocked seg_n_a4b_0_60 airplane_daew9)
       (not_blocked seg_n_a4b_0_60 airplane_daew0)
       (not_blocked seg_n_a4b_0_60 airplane_daew3)
       (not_blocked seg_n_a4b_0_60 airplane_daewh)
       (not_blocked seg_n_a4b_0_60 airplane_daew1)
       (not_blocked seg_n_a4b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a4a7a_0_115)) (not_occupied seg_n_a4a7a_0_115)
       (not (at-segment ?a seg_n_a4a7a_0_115)) (occupied seg_n_a4b_0_60)
       (not (not_occupied seg_n_a4b_0_60)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (at-segment ?a seg_n_a4b_0_60)
       (not (blocked seg_n_a4a7b_0_75 ?a)) (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action ugly265ugly79startup_seg_s_b5c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5c_0_60)
       (not_occupied seg_t_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a))))
 (:action
  ugly266ugly965move_seg_s_b5b8a_0_135_seg_s_b5b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8a_0_135) (not_occupied seg_s_b5b_0_60)
       (not_blocked seg_s_b5b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b5b_0_60 airplane_daew8)
       (not_blocked seg_s_b5b_0_60 airplane_daew9)
       (not_blocked seg_s_b5b_0_60 airplane_daew0)
       (not_blocked seg_s_b5b_0_60 airplane_daew3)
       (not_blocked seg_s_b5b_0_60 airplane_daewh)
       (not_blocked seg_s_b5b_0_60 airplane_daew1)
       (not_blocked seg_s_b5b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b5b8a_0_135)) (not_occupied seg_s_b5b8a_0_135)
       (not (at-segment ?a seg_s_b5b8a_0_135)) (occupied seg_s_b5b_0_60)
       (not (not_occupied seg_s_b5b_0_60)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (at-segment ?a seg_s_b5b_0_60)
       (not (blocked seg_s_b5b8b_0_135 ?a))
       (not_blocked seg_s_b5b8b_0_135 ?a)))
 (:action ugly267ugly303startup_seg_08l_a4c_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action ugly268ugly925startup_seg_p132_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly269ugly588startup_seg_m_a10b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action ugly270ugly549startup_seg_t_b3a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3a_0_60)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action ugly271ugly204startup_seg_m_a3a_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action ugly272ugly572startup_seg_n_a4a7f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action ugly273ugly1030move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew0)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew1)
       (not_blocked seg_o1_116b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p116_0_76)) (not_occupied seg_p116_0_76)
       (not (at-segment ?a seg_p116_0_76)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action ugly274ugly148move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2)
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
  ugly275ugly938move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew0)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew1)
       (not_blocked seg_o1_104a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action ugly276ugly376startup_seg_b2_1_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action ugly277ugly877startup_seg_a3_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly278ugly977move_seg_o1_109c_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew0)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew1)
       (not_blocked seg_o1_109d_0_45 airplane_daew2)
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
  ugly279ugly181move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew0)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
       (not_blocked seg_w1_143c_0_60 airplane_daew2)
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
  ugly280ugly87move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew0)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew1)
       (not_blocked seg_o1_111d_0_45 airplane_daew2)
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
 (:action ugly281ugly255move_seg_08r_b2b3_0_900_seg_08r_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b3_0_900) (not_occupied seg_08r_0_80)
       (not_blocked seg_08r_0_80 airplane_cfbeg)
       (not_blocked seg_08r_0_80 airplane_cfbe1)
       (not_blocked seg_08r_0_80 airplane_daew8)
       (not_blocked seg_08r_0_80 airplane_daew9)
       (not_blocked seg_08r_0_80 airplane_daew0)
       (not_blocked seg_08r_0_80 airplane_daew3)
       (not_blocked seg_08r_0_80 airplane_daewh)
       (not_blocked seg_08r_0_80 airplane_daew1)
       (not_blocked seg_08r_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_08r_b2b3_0_900)) (not_occupied seg_08r_b2b3_0_900)
       (not (at-segment ?a seg_08r_b2b3_0_900)) (occupied seg_08r_0_80)
       (not (not_occupied seg_08r_0_80)) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (at-segment ?a seg_08r_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b2b_0_80 ?a)) (not_blocked seg_08r_b2b_0_80 ?a)))
 (:action ugly282ugly1160startup_seg_n_n2a4d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action ugly283ugly841startup_seg_t_b9b10b_0_125_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action ugly284ugly676startup_seg_n_a2a3b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly285ugly18startup_seg_m_a9b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly286ugly36startup_seg_b2_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action ugly287ugly1366startup_seg_p142_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly288ugly966startup_seg_t_b9b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b_0_60)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action ugly289ugly1340startup_seg_w1_162b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly290ugly391startup_seg_s_b4b6c_0_130_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action ugly291ugly1162startup_seg_c1_n2c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action ugly292ugly563startup_seg_n_a4a7c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action ugly293ugly1356startup_seg_p101_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly294ugly45startup_seg_n_a6a8a_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly295ugly906pushback_seg_o1_c2d_0_60_seg_c2_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_cfbe1)
       (not_blocked seg_c2_b_0_80 airplane_daew8)
       (not_blocked seg_c2_b_0_80 airplane_daew9)
       (not_blocked seg_c2_b_0_80 airplane_daew0)
       (not_blocked seg_c2_b_0_80 airplane_daew3)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
       (not_blocked seg_c2_b_0_80 airplane_daew1)
       (not_blocked seg_c2_b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_c2_b_0_80)
       (not (not_occupied seg_c2_b_0_80)) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a)) (at-segment ?a seg_c2_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly296ugly73startup_seg_m_a9a10b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly297ugly865move_seg_s_b4b6a_0_135_seg_s_b4a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6a_0_135) (not_occupied seg_s_b4a_0_60)
       (not_blocked seg_s_b4a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b4a_0_60 airplane_daew8)
       (not_blocked seg_s_b4a_0_60 airplane_daew9)
       (not_blocked seg_s_b4a_0_60 airplane_daew0)
       (not_blocked seg_s_b4a_0_60 airplane_daew3)
       (not_blocked seg_s_b4a_0_60 airplane_daewh)
       (not_blocked seg_s_b4a_0_60 airplane_daew1)
       (not_blocked seg_s_b4a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b4b6a_0_135)) (not_occupied seg_s_b4b6a_0_135)
       (not (at-segment ?a seg_s_b4b6a_0_135)) (occupied seg_s_b4a_0_60)
       (not (not_occupied seg_s_b4a_0_60)) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (at-segment ?a seg_s_b4a_0_60)
       (not (blocked seg_s_b4b6b_0_135 ?a))
       (not_blocked seg_s_b4b6b_0_135 ?a)))
 (:action ugly298ugly1044startup_seg_n_a2a3e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly299ugly590move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew0)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew1)
       (not_blocked seg_o1_103a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_102c_0_34)) (not_occupied seg_o1_102c_0_34)
       (not (at-segment ?a seg_o1_102c_0_34)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action ugly300ugly315move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_cfbe1)
       (not_blocked seg_a2_c_0_100 airplane_daew8)
       (not_blocked seg_a2_c_0_100 airplane_daew9)
       (not_blocked seg_a2_c_0_100 airplane_daew0)
       (not_blocked seg_a2_c_0_100 airplane_daew3)
       (not_blocked seg_a2_c_0_100 airplane_daewh)
       (not_blocked seg_a2_c_0_100 airplane_daew1)
       (not_blocked seg_a2_c_0_100 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2a_0_60)) (not_occupied seg_n_a2a_0_60)
       (not (at-segment ?a seg_n_a2a_0_60)) (occupied seg_a2_c_0_100)
       (not (not_occupied seg_a2_c_0_100)) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a)) (at-segment ?a seg_a2_c_0_100)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action ugly301ugly281move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_c1_n2b_0_80)) (not_occupied seg_c1_n2b_0_80)
       (not (at-segment ?a seg_c1_n2b_0_80)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c1_n2a_0_60 ?a)) (not_blocked seg_c1_n2a_0_60 ?a)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)))
 (:action ugly302ugly1227startup_seg_b9_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly303ugly1093pushback_seg_o1_108d_0_45_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
       (not_blocked seg_o1_108a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly304ugly614startup_seg_t_b3b4c_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action ugly305ugly754startup_seg_b4_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action ugly306ugly122startup_seg_n_a4a7a_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action ugly307ugly757startup_seg_s_b3b4b_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly308ugly816move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew8)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew9)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew0)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew3)
       (not_blocked seg_n_a4a7a_0_115 airplane_daewh)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew1)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a4a7b_0_75)) (not_occupied seg_n_a4a7b_0_75)
       (not (at-segment ?a seg_n_a4a7b_0_75)) (occupied seg_n_a4a7a_0_115)
       (not (not_occupied seg_n_a4a7a_0_115)) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action ugly309ugly182startup_seg_p164_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly310ugly310move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2))
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
  ugly311ugly330move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew0)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
       (not_blocked seg_w1_154c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c3a_0_34)) (not_occupied seg_w1_c3a_0_34)
       (not (at-segment ?a seg_w1_c3a_0_34)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c3b_0_60 ?a)) (not_blocked seg_w1_c3b_0_60 ?a)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)))
 (:action ugly312ugly497startup_seg_s_b3b4d_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly313ugly419move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew0)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew1)
       (not_blocked seg_w1_161a_0_34 airplane_daew2)
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
  ugly314ugly96move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew8)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew9)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew0)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew3)
       (not_blocked seg_n_a6a8a_0_115 airplane_daewh)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew1)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a6a8b_0_75)) (not_occupied seg_n_a6a8b_0_75)
       (not (at-segment ?a seg_n_a6a8b_0_75)) (occupied seg_n_a6a8a_0_115)
       (not (not_occupied seg_n_a6a8a_0_115)) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly315ugly88move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
       (not_blocked seg_o1_108a_0_34 airplane_daew2)
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
  ugly316ugly420move_seg_o1_110c_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew0)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew1)
       (not_blocked seg_o1_110b_0_60 airplane_daew2)
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
  ugly317ugly1311move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew0)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
       (not_blocked seg_w1_142a_0_34 airplane_daew2)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action ugly318ugly202startup_seg_o1_c2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly319ugly283startup_seg_c3_a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action ugly320ugly621move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4e_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a4c_0_60)) (not_occupied seg_n_a4c_0_60)
       (not (at-segment ?a seg_n_a4c_0_60)) (occupied seg_n_n2a4e_0_75)
       (not (not_occupied seg_n_n2a4e_0_75)) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a)) (at-segment ?a seg_n_n2a4e_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a4a_0_60 ?a)) (not_blocked seg_n_a4a_0_60 ?a)
       (not (blocked seg_n_a4b_0_60 ?a)) (not_blocked seg_n_a4b_0_60 ?a)))
 (:action ugly321ugly564startup_seg_m_a3a4a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action ugly322ugly778startup_seg_c4_s6b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly323ugly884startup_seg_o1_111c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action ugly324ugly82park_seg_p162_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action ugly325ugly435startup_seg_w1_c1c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action ugly326ugly505startup_seg_s_b2b3b_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action
  ugly327ugly309move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4b_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_n2a4c_0_75)) (not_occupied seg_n_n2a4c_0_75)
       (not (at-segment ?a seg_n_n2a4c_0_75)) (occupied seg_n_n2a4b_0_75)
       (not (not_occupied seg_n_n2a4b_0_75)) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a)) (at-segment ?a seg_n_n2a4b_0_75)
       (not (blocked seg_n_n2a4d_0_75 ?a)) (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action ugly328ugly691startup_seg_n_a8a9a_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action ugly329ugly508move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_cfbe1)
       (not_blocked seg_p110_0_76 airplane_daew8)
       (not_blocked seg_p110_0_76 airplane_daew9)
       (not_blocked seg_p110_0_76 airplane_daew0)
       (not_blocked seg_p110_0_76 airplane_daew3)
       (not_blocked seg_p110_0_76 airplane_daewh)
       (not_blocked seg_p110_0_76 airplane_daew1)
       (not_blocked seg_p110_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_110b_0_60)) (not_occupied seg_o1_110b_0_60)
       (not (at-segment ?a seg_o1_110b_0_60)) (occupied seg_p110_0_76)
       (not (not_occupied seg_p110_0_76)) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a)) (at-segment ?a seg_p110_0_76)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly330ugly133startup_seg_b3_a_0_156_924_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_08r_b3c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b3c_0_161_245 ?a)
       (not (not_blocked seg_08r_b3c_0_161_245 ?a))))
 (:action
  ugly331ugly681move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew0)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
       (not_blocked seg_w1_154c_0_34 airplane_daew2)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p154_0_75 ?a)) (not_blocked seg_p154_0_75 ?a)
       (blocked seg_w1_154a_0_34 ?a) (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action ugly332ugly205startup_seg_o1_109c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly333ugly336move_seg_w1_141b_0_45_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew0)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew1)
       (not_blocked seg_w1_141a_0_34 airplane_daew2)
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
  ugly334ugly1323pushback_seg_w1_163c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew0)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
       (not_blocked seg_w1_164a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly335ugly618startup_seg_s_b4b6b_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action ugly336ugly2startup_seg_m_a6d_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly337ugly530startup_seg_s_b3c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action ugly338ugly1014move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_cfbe1)
       (not_blocked seg_p131_0_75 airplane_daew8)
       (not_blocked seg_p131_0_75 airplane_daew9)
       (not_blocked seg_p131_0_75 airplane_daew0)
       (not_blocked seg_p131_0_75 airplane_daew3)
       (not_blocked seg_p131_0_75 airplane_daewh)
       (not_blocked seg_p131_0_75 airplane_daew1)
       (not_blocked seg_p131_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_p131_0_75)
       (not (not_occupied seg_p131_0_75)) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a)) (at-segment ?a seg_p131_0_75)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)))
 (:action ugly339ugly649startup_seg_t_b9b10c_0_84_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly340ugly1204move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew0)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
       (not_blocked seg_o1_115c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_115c_0_34)
       (not (not_occupied seg_o1_115c_0_34)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a)) (at-segment ?a seg_o1_115c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)))
 (:action ugly341ugly1332startup_seg_n_a9a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly342ugly1286move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew0)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
       (not_blocked seg_w1_153c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)))
 (:action ugly343ugly112startup_seg_o1_c1b_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly344ugly415move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2)
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
 (:action ugly345ugly952startup_seg_m_a3a4f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly346ugly855startup_seg_t_b9b10c_1_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action ugly347ugly94startup_seg_s_b9b10c_1_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action ugly348ugly878startup_seg_n_n2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly349ugly802pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action ugly350ugly264startup_seg_s_b3b4b_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action ugly351ugly489startup_seg_w1_c2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action ugly352ugly424takeoff_seg_09r_0_80_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_09r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09r_0_80)) (not_occupied seg_09r_0_80)
       (not (blocked seg_09r_0_80 ?a)) (not_blocked seg_09r_0_80 ?a)
       (not (at-segment ?a seg_09r_0_80)) (airborne ?a seg_09r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b9b10_0_980 ?a))
       (not_blocked seg_08r_b9b10_0_980 ?a)))
 (:action ugly353ugly975startup_seg_n_a8c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly354ugly402pushback_seg_o1_110d_0_45_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
       (not_blocked seg_o1_110a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_110d_0_45)) (not_occupied seg_o1_110d_0_45)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)
       (not (at-segment ?a seg_o1_110d_0_45)) (occupied seg_o1_110a_0_34)
       (not (not_occupied seg_o1_110a_0_34)) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (at-segment ?a seg_o1_110a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly355ugly421startup_seg_m_a4a7e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action ugly356ugly603move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew0)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew1)
       (not_blocked seg_o1_115b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p115_0_76)) (not_occupied seg_p115_0_76)
       (not (at-segment ?a seg_p115_0_76)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action ugly357ugly1263startup_seg_t_b8b9c_1_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action ugly358ugly789startup_seg_n_a6a8c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action ugly359ugly792startup_seg_w1_142a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly360ugly1170move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
       (not_blocked seg_o1_108a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c2c_0_34)) (not_occupied seg_o1_c2c_0_34)
       (not (at-segment ?a seg_o1_c2c_0_34)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action ugly361ugly742move_seg_c4_s6c_0_60_seg_w1_c4b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6c_0_60) (not_occupied seg_w1_c4b_0_60)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4b_0_60 airplane_daew8)
       (not_blocked seg_w1_c4b_0_60 airplane_daew9)
       (not_blocked seg_w1_c4b_0_60 airplane_daew0)
       (not_blocked seg_w1_c4b_0_60 airplane_daew3)
       (not_blocked seg_w1_c4b_0_60 airplane_daewh)
       (not_blocked seg_w1_c4b_0_60 airplane_daew1)
       (not_blocked seg_w1_c4b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_c4_s6c_0_60)) (not_occupied seg_c4_s6c_0_60)
       (not (at-segment ?a seg_c4_s6c_0_60)) (occupied seg_w1_c4b_0_60)
       (not (not_occupied seg_w1_c4b_0_60)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (at-segment ?a seg_w1_c4b_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (not (blocked seg_c4_s6b_0_60 ?a)) (not_blocked seg_c4_s6b_0_60 ?a)))
 (:action ugly362ugly1221startup_seg_p133_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly363ugly1380park_seg_p116_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action ugly364ugly971move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew0)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew1)
       (not_blocked seg_w1_143b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p143_0_75)) (not_occupied seg_p143_0_75)
       (not (at-segment ?a seg_p143_0_75)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action ugly365ugly215startup_seg_t_b10b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action ugly366ugly222park_seg_p153_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action ugly367ugly1326startup_seg_w1_143b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly368ugly721move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_cfbe1)
       (not_blocked seg_a2_b_0_90 airplane_daew8)
       (not_blocked seg_a2_b_0_90 airplane_daew9)
       (not_blocked seg_a2_b_0_90 airplane_daew0)
       (not_blocked seg_a2_b_0_90 airplane_daew3)
       (not_blocked seg_a2_b_0_90 airplane_daewh)
       (not_blocked seg_a2_b_0_90 airplane_daew1)
       (not_blocked seg_a2_b_0_90 airplane_daew2))
  :effect
  (and (not (occupied seg_a2_c_0_100)) (not_occupied seg_a2_c_0_100)
       (not (at-segment ?a seg_a2_c_0_100)) (occupied seg_a2_b_0_90)
       (not (not_occupied seg_a2_b_0_90)) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a)) (at-segment ?a seg_a2_b_0_90)
       (not (blocked seg_n_a2a_0_60 ?a)) (not_blocked seg_n_a2a_0_60 ?a)))
 (:action ugly369ugly298startup_seg_p116_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly370ugly704park_seg_p101_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action ugly371ugly1157startup_seg_s_b2b3a_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action ugly372ugly557startup_seg_m_a7b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action ugly373ugly220startup_seg_t_b5c_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5a_0_60) (not_occupied seg_t_b5b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a)) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly374ugly1056startup_seg_o1_c2d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly375ugly650pushback_seg_w1_163b_0_45_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew0)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
       (not_blocked seg_w1_163a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly376ugly477startup_seg_t_b5a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_s_b5c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a))))
 (:action ugly377ugly33move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew0)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew1)
       (not_blocked seg_w1_162b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p162_0_75)) (not_occupied seg_p162_0_75)
       (not (at-segment ?a seg_p162_0_75)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action ugly378ugly484startup_seg_p142_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly379ugly502move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew0)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
       (not_blocked seg_o1_116c_0_34 airplane_daew2)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly380ugly32startup_seg_p101_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action ugly381ugly720park_seg_p119_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action ugly382ugly1151startup_seg_o1_111b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly383ugly1096startup_seg_m_a9c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly384ugly1295move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew0)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew1)
       (not_blocked seg_o1_110b_0_60 airplane_daew2)
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
 (:action ugly385ugly120startup_seg_w1_143c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action ugly386ugly1107startup_seg_a3_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action ugly387ugly677startup_seg_b8_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action ugly388ugly723startup_seg_o1_117a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly389ugly689startup_seg_t_b3b4c_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action ugly390ugly260startup_seg_08l_a10a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action ugly391ugly682park_seg_p107_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action ugly392ugly1197startup_seg_s_b4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_t_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a))))
 (:action ugly393ugly1174startup_seg_s_b2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action ugly394ugly308startup_seg_w1_153a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly395ugly1119move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew0)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
       (not_blocked seg_w1_164a_0_34 airplane_daew2)
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
  ugly396ugly1018move_seg_w1_152b_0_45_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew0)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew1)
       (not_blocked seg_w1_152a_0_34 airplane_daew2)
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
  ugly397ugly1086move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew0)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew2)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly398ugly535startup_seg_t_b3d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action ugly399ugly328startup_seg_s_b7a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action ugly400ugly844startup_seg_w1_154c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action ugly401ugly1298startup_seg_08r_b3c_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_08r_0_80) (not_occupied seg_08r_b3a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (blocked seg_08r_b3a_0_80 ?a)
       (not (not_blocked seg_08r_b3a_0_80 ?a))))
 (:action
  ugly402ugly459move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew0)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew1)
       (not_blocked seg_o1_108b_0_60 airplane_daew2)
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
 (:action ugly403ugly134startup_seg_n_a7a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action ugly404ugly227startup_seg_m_a3c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action ugly405ugly1194startup_seg_s_b9b10c_2_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action ugly406ugly322startup_seg_w1_143a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly407ugly353startup_seg_o1_110a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action ugly408ugly596startup_seg_n_a3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly409ugly630move_seg_s_b3b4c_0_140_seg_s_b3b4b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4c_0_140) (not_occupied seg_s_b3b4b_0_140)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4b_0_140 airplane_daewh)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew1)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b3b4c_0_140)) (not_occupied seg_s_b3b4c_0_140)
       (not (at-segment ?a seg_s_b3b4c_0_140)) (occupied seg_s_b3b4b_0_140)
       (not (not_occupied seg_s_b3b4b_0_140)) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))
       (at-segment ?a seg_s_b3b4b_0_140) (not (blocked seg_s_b3b4d_0_140 ?a))
       (not_blocked seg_s_b3b4d_0_140 ?a)))
 (:action
  ugly410ugly1274move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew0)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
       (not_blocked seg_w1_163c_0_34 airplane_daew2)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action ugly411ugly1102startup_seg_o1_116c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly412ugly730startup_seg_t_b4b6b_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action ugly413ugly423startup_seg_n_a3c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action ugly414ugly871startup_seg_08l_a4b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly415ugly272startup_seg_t_b6b7a_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a))))
 (:action ugly416ugly1059move_seg_08r_0_80_seg_08r_b3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_0_80) (not_occupied seg_08r_b3a_0_80)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b3a_0_80 airplane_daew8)
       (not_blocked seg_08r_b3a_0_80 airplane_daew9)
       (not_blocked seg_08r_b3a_0_80 airplane_daew0)
       (not_blocked seg_08r_b3a_0_80 airplane_daew3)
       (not_blocked seg_08r_b3a_0_80 airplane_daewh)
       (not_blocked seg_08r_b3a_0_80 airplane_daew1)
       (not_blocked seg_08r_b3a_0_80 airplane_daew2)
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
 (:action ugly417ugly455startup_seg_o1_103b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly418ugly77move_seg_o1_108d_0_45_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
       (not_blocked seg_o1_108a_0_34 airplane_daew2)
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
 (:action ugly419ugly130startup_seg_n_a9a10e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action ugly420ugly380move_seg_w1_c4c_0_60_seg_s5_0_94_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4c_0_60) (not_occupied seg_s5_0_94)
       (not_blocked seg_s5_0_94 airplane_cfbeg)
       (not_blocked seg_s5_0_94 airplane_cfbe1)
       (not_blocked seg_s5_0_94 airplane_daew8)
       (not_blocked seg_s5_0_94 airplane_daew9)
       (not_blocked seg_s5_0_94 airplane_daew0)
       (not_blocked seg_s5_0_94 airplane_daew3)
       (not_blocked seg_s5_0_94 airplane_daewh)
       (not_blocked seg_s5_0_94 airplane_daew1)
       (not_blocked seg_s5_0_94 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c4c_0_60)) (not_occupied seg_w1_c4c_0_60)
       (not (at-segment ?a seg_w1_c4c_0_60)) (occupied seg_s5_0_94)
       (not (not_occupied seg_s5_0_94)) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a)) (at-segment ?a seg_s5_0_94)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (not (blocked seg_w1_c4b_0_60 ?a)) (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action ugly421ugly1158startup_seg_p133_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly422ugly921startup_seg_n_a6a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly423ugly1281move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_cfbe1)
       (not_blocked seg_p142_0_75 airplane_daew8)
       (not_blocked seg_p142_0_75 airplane_daew9)
       (not_blocked seg_p142_0_75 airplane_daew0)
       (not_blocked seg_p142_0_75 airplane_daew3)
       (not_blocked seg_p142_0_75 airplane_daewh)
       (not_blocked seg_p142_0_75 airplane_daew1)
       (not_blocked seg_p142_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_p142_0_75)
       (not (not_occupied seg_p142_0_75)) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a)) (at-segment ?a seg_p142_0_75)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)))
 (:action ugly424ugly471startup_seg_m_a4a7b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action ugly425ugly831startup_seg_n_a8b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action ugly426ugly450startup_seg_m_a3a4c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action ugly427ugly1061startup_seg_n_a6a8e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action ugly428ugly675park_seg_p107_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action ugly429ugly1269startup_seg_s_b10a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action ugly430ugly34startup_seg_08r_b6a_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6a_0_161_245)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action ugly431ugly772startup_seg_08r_b2a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action ugly432ugly1222startup_seg_a9_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action ugly433ugly1324park_seg_p112_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action ugly434ugly1049startup_seg_08l_a10a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly435ugly751move_seg_o1_110c_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew0)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
       (not_blocked seg_o1_110d_0_45 airplane_daew2)
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
  ugly436ugly1347move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2)
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
 (:action ugly437ugly919startup_seg_m_a10c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action ugly438ugly115startup_seg_o1_111c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly439ugly1125startup_seg_n_a4a7c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action ugly440ugly553move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_cfbe1)
       (not_blocked seg_p112_0_76 airplane_daew8)
       (not_blocked seg_p112_0_76 airplane_daew9)
       (not_blocked seg_p112_0_76 airplane_daew0)
       (not_blocked seg_p112_0_76 airplane_daew3)
       (not_blocked seg_p112_0_76 airplane_daewh)
       (not_blocked seg_p112_0_76 airplane_daew1)
       (not_blocked seg_p112_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c3b_0_60)) (not_occupied seg_o1_c3b_0_60)
       (not (at-segment ?a seg_o1_c3b_0_60)) (occupied seg_p112_0_76)
       (not (not_occupied seg_p112_0_76)) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a)) (at-segment ?a seg_p112_0_76)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action
  ugly441ugly290move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2)
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
  ugly442ugly858move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3a_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2a3b_0_75)) (not_occupied seg_n_a2a3b_0_75)
       (not (at-segment ?a seg_n_a2a3b_0_75)) (occupied seg_n_a2a3a_0_75)
       (not (not_occupied seg_n_a2a3a_0_75)) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a)) (at-segment ?a seg_n_a2a3a_0_75)
       (not (blocked seg_n_a2a3c_0_75 ?a)) (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action ugly443ugly392startup_seg_m_a6a8c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action ugly444ugly71startup_seg_c1_n2b_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly445ugly945move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew0)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
       (not_blocked seg_o1_117c_0_34 airplane_daew2)
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
  ugly446ugly1233move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew0)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
       (not_blocked seg_w1_151c_0_34 airplane_daew2)
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
  ugly447ugly785move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew0)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew1)
       (not_blocked seg_w1_152a_0_34 airplane_daew2)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly448ugly1225move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew0)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew1)
       (not_blocked seg_w1_152b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p152_0_75)) (not_occupied seg_p152_0_75)
       (not (at-segment ?a seg_p152_0_75)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action ugly449ugly817startup_seg_s6_0_94_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_s_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a))))
 (:action ugly450ugly1129startup_seg_s_b9b10b_0_125_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action ugly451ugly1234startup_seg_o1_108b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly452ugly470startup_seg_m_a6a8d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly453ugly492move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew0)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
       (not_blocked seg_w1_163a_0_34 airplane_daew2)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly454ugly277startup_seg_w1_164c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action ugly455ugly916startup_seg_n_a4a7f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action ugly456ugly1186startup_seg_t_b8b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly457ugly47startup_seg_t_b6d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action ugly458ugly784park_seg_p110_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action ugly459ugly358startup_seg_w1_c2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly460ugly464move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew0)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_c3c_0_48)
       (not (not_occupied seg_o1_c3c_0_48)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (at-segment ?a seg_o1_c3c_0_48)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)))
 (:action ugly461ugly1306startup_seg_b4_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action ugly462ugly1386startup_seg_m_a9a10e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action ugly463ugly1092startup_seg_n_a6a8a_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action ugly464ugly304startup_seg_t_b8b9a_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a))))
 (:action
  ugly465ugly869move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew0)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew1)
       (not_blocked seg_o1_116a_0_34 airplane_daew2)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_116a_0_34)
       (not (not_occupied seg_o1_116a_0_34)) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (at-segment ?a seg_o1_116a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly466ugly1367move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew0)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew1)
       (not_blocked seg_o1_109d_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p132_0_75)) (not_occupied seg_p132_0_75)
       (not (at-segment ?a seg_p132_0_75)) (occupied seg_o1_109d_0_45)
       (not (not_occupied seg_o1_109d_0_45)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action ugly467ugly968startup_seg_m_a10a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action ugly468ugly448startup_seg_m_a9a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly469ugly1272move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew0)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
       (not_blocked seg_w1_163c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)))
 (:action ugly470ugly1199startup_seg_n_a10a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action ugly471ugly1152move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew0)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_c3_b_0_80)) (not_occupied seg_c3_b_0_80)
       (not (at-segment ?a seg_c3_b_0_80)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c3_a_0_80 ?a)) (not_blocked seg_c3_a_0_80 ?a)))
 (:action ugly472ugly924startup_seg_s_b9b10c_1_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action
  ugly473ugly1361move_seg_o1_109b_0_60_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
       (not_blocked seg_o1_109a_0_34 airplane_daew2)
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
 (:action ugly474ugly546startup_seg_w1_164a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly475ugly565startup_seg_w1_c2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly476ugly576startup_seg_b9_a_0_156_924_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly477ugly587move_seg_b8_b_1_0_80_6226_seg_b8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_1_0_80_6226) (not_occupied seg_b8_b_0_80_6226)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbe1)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew9)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew0)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew3)
       (not_blocked seg_b8_b_0_80_6226 airplane_daewh)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew1)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew2))
  :effect
  (and (not (occupied seg_b8_b_1_0_80_6226))
       (not_occupied seg_b8_b_1_0_80_6226)
       (not (at-segment ?a seg_b8_b_1_0_80_6226)) (occupied seg_b8_b_0_80_6226)
       (not (not_occupied seg_b8_b_0_80_6226)) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))
       (at-segment ?a seg_b8_b_0_80_6226) (not (blocked seg_b8_a_0_156_924 ?a))
       (not_blocked seg_b8_a_0_156_924 ?a)))
 (:action ugly478ugly274move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_cfbe1)
       (not_blocked seg_p141_0_75 airplane_daew8)
       (not_blocked seg_p141_0_75 airplane_daew9)
       (not_blocked seg_p141_0_75 airplane_daew0)
       (not_blocked seg_p141_0_75 airplane_daew3)
       (not_blocked seg_p141_0_75 airplane_daewh)
       (not_blocked seg_p141_0_75 airplane_daew1)
       (not_blocked seg_p141_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_p141_0_75)
       (not (not_occupied seg_p141_0_75)) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a)) (at-segment ?a seg_p141_0_75)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)))
 (:action ugly479ugly64startup_seg_m_a8a9d_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action ugly480ugly779startup_seg_p151_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly481ugly633move_seg_o1_109d_0_45_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
       (not_blocked seg_o1_109a_0_34 airplane_daew2)
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
  ugly482ugly518move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew0)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew1)
       (not_blocked seg_w1_164b_0_45 airplane_daew2)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (at-segment ?a seg_w1_164b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly483ugly974startup_seg_n_a4a7d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly484ugly776pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
       (not_blocked seg_o1_102a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly485ugly54startup_seg_s_b4b6a_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a))))
 (:action ugly486ugly713startup_seg_w1_162a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly487ugly407move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew0)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew1)
       (not_blocked seg_o1_108b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p108_0_76)) (not_occupied seg_p108_0_76)
       (not (at-segment ?a seg_p108_0_76)) (occupied seg_o1_108b_0_60)
       (not (not_occupied seg_o1_108b_0_60)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action ugly488ugly284startup_seg_s_b4c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action ugly489ugly788move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_cfbe1)
       (not_blocked seg_p104_0_76 airplane_daew8)
       (not_blocked seg_p104_0_76 airplane_daew9)
       (not_blocked seg_p104_0_76 airplane_daew0)
       (not_blocked seg_p104_0_76 airplane_daew3)
       (not_blocked seg_p104_0_76 airplane_daewh)
       (not_blocked seg_p104_0_76 airplane_daew1)
       (not_blocked seg_p104_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_p104_0_76)
       (not (not_occupied seg_p104_0_76)) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a)) (at-segment ?a seg_p104_0_76)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)))
 (:action ugly490ugly918startup_seg_o1_108b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action ugly491ugly589move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_cfbe1)
       (not_blocked seg_p152_0_75 airplane_daew8)
       (not_blocked seg_p152_0_75 airplane_daew9)
       (not_blocked seg_p152_0_75 airplane_daew0)
       (not_blocked seg_p152_0_75 airplane_daew3)
       (not_blocked seg_p152_0_75 airplane_daewh)
       (not_blocked seg_p152_0_75 airplane_daew1)
       (not_blocked seg_p152_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_p152_0_75)
       (not (not_occupied seg_p152_0_75)) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a)) (at-segment ?a seg_p152_0_75)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)))
 (:action ugly492ugly126startup_seg_s6_0_94_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action ugly493ugly1213startup_seg_a8_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly494ugly479move_seg_08r_b3a_0_80_seg_08r_b3b4_0_520_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3a_0_80) (not_occupied seg_08r_b3b4_0_520)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbeg)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbe1)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew8)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew9)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew0)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew3)
       (not_blocked seg_08r_b3b4_0_520 airplane_daewh)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew1)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew2)
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
 (:action ugly495ugly161startup_seg_s_b3c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action ugly496ugly964startup_seg_t_b9c_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9c_0_120_934)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action ugly497ugly672move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew0)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew1)
       (not_blocked seg_o1_102b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p102_0_76)) (not_occupied seg_p102_0_76)
       (not (at-segment ?a seg_p102_0_76)) (occupied seg_o1_102b_0_60)
       (not (not_occupied seg_o1_102b_0_60)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action ugly498ugly289startup_seg_n_a6a8d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action ugly499ugly747startup_seg_n_a8a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action
  ugly500ugly573move_seg_w1_161c_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew0)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew1)
       (not_blocked seg_w1_161b_0_45 airplane_daew2)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (at-segment ?a seg_w1_161b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action ugly501ugly13move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew9)
       (not_blocked seg_w1_c3a_0_34 airplane_daew0)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew1)
       (not_blocked seg_w1_c3a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action ugly502ugly278park_seg_p132_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action ugly503ugly1021startup_seg_s_b2b3c_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action ugly504ugly103startup_seg_n_a6a8b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action ugly505ugly657move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
       (not_blocked seg_o1_108d_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action ugly506ugly384startup_seg_n_n2a4c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action ugly507ugly795park_seg_p101_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action ugly508ugly381startup_seg_s_b8b9b_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action ugly509ugly1371startup_seg_08r_b2a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_08r_b2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a))))
 (:action ugly510ugly500startup_seg_b6_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action ugly511ugly102move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew2)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly512ugly866startup_seg_s_b5b8c_0_130_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action ugly513ugly875startup_seg_w1_163a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly514ugly827move_seg_o1_103b_0_60_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew0)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew1)
       (not_blocked seg_o1_103a_0_34 airplane_daew2)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p103_0_76 ?a)) (not_blocked seg_p103_0_76 ?a)
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly515ugly797startup_seg_m_a9a10e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action ugly516ugly233startup_seg_s_b6a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly517ugly1005move_seg_w1_162c_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew0)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew1)
       (not_blocked seg_w1_162b_0_45 airplane_daew2)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (at-segment ?a seg_w1_162b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action ugly518ugly251startup_seg_m_a4a7c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action ugly519ugly984startup_seg_n_a4a7e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action ugly520ugly930startup_seg_m_a3a4d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly521ugly1339move_seg_o1_117c_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew0)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew1)
       (not_blocked seg_o1_117b_0_60 airplane_daew2)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (occupied seg_o1_117c_0_34)) (not_occupied seg_o1_117c_0_34)
       (not (at-segment ?a seg_o1_117c_0_34)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (at-segment ?a seg_o1_117b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (blocked seg_o1_117a_0_34 ?a) (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action ugly522ugly1219startup_seg_o1_115b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly523ugly106move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_cfbe1)
       (not_blocked seg_c2_b_0_80 airplane_daew8)
       (not_blocked seg_c2_b_0_80 airplane_daew9)
       (not_blocked seg_c2_b_0_80 airplane_daew0)
       (not_blocked seg_c2_b_0_80 airplane_daew3)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
       (not_blocked seg_c2_b_0_80 airplane_daew1)
       (not_blocked seg_c2_b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_c2_b_0_80)
       (not (not_occupied seg_c2_b_0_80)) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a)) (at-segment ?a seg_c2_b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)))
 (:action ugly524ugly910startup_seg_o1_115c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action ugly525ugly825startup_seg_n_a8a9d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly526ugly1136move_seg_o1_103c_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew0)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew1)
       (not_blocked seg_o1_103b_0_60 airplane_daew2)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (at-segment ?a seg_o1_103b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (blocked seg_o1_103a_0_34 ?a) (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action ugly527ugly178startup_seg_o1_102b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action ugly528ugly544startup_seg_m_a3a4b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action ugly529ugly602startup_seg_p141_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly530ugly664startup_seg_t_b8c_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action ugly531ugly337startup_seg_t_b3d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3b_0_60)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action ugly532ugly25move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew0)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_c2a_0_60)
       (not (not_occupied seg_o1_c2a_0_60)) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (at-segment ?a seg_o1_c2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action ugly533ugly796move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2a_0_60 airplane_daew8)
       (not_blocked seg_n_n2a_0_60 airplane_daew9)
       (not_blocked seg_n_n2a_0_60 airplane_daew0)
       (not_blocked seg_n_n2a_0_60 airplane_daew3)
       (not_blocked seg_n_n2a_0_60 airplane_daewh)
       (not_blocked seg_n_n2a_0_60 airplane_daew1)
       (not_blocked seg_n_n2a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n_n2a4a_0_70)) (not_occupied seg_n_n2a4a_0_70)
       (not (at-segment ?a seg_n_n2a4a_0_70)) (occupied seg_n_n2a_0_60)
       (not (not_occupied seg_n_n2a_0_60)) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (at-segment ?a seg_n_n2a_0_60)
       (not (blocked seg_n_n2a4b_0_75 ?a)) (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action ugly534ugly7startup_seg_o1_118a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly535ugly529startup_seg_t_b5b8c_0_130_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action
  ugly536ugly1036move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew0)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
       (not_blocked seg_w1_153c_0_34 airplane_daew2)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p153_0_75 ?a)) (not_blocked seg_p153_0_75 ?a)
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly537ugly907move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7f_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a7c_0_60)) (not_occupied seg_n_a7c_0_60)
       (not (at-segment ?a seg_n_a7c_0_60)) (occupied seg_n_a4a7f_0_75)
       (not (not_occupied seg_n_a4a7f_0_75)) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a)) (at-segment ?a seg_n_a4a7f_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a7a_0_60 ?a)) (not_blocked seg_n_a7a_0_60 ?a)
       (not (blocked seg_n_a7b_0_60 ?a)) (not_blocked seg_n_a7b_0_60 ?a)))
 (:action ugly538ugly153startup_seg_c3_b_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action ugly539ugly837startup_seg_t_b8b9a_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action
  ugly540ugly1244move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew0)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
       (not_blocked seg_o1_104c_0_60 airplane_daew2)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p104_0_76 ?a)) (not_blocked seg_p104_0_76 ?a)
       (blocked seg_o1_104a_0_34 ?a) (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action ugly541ugly361startup_seg_b4_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action ugly542ugly1235park_seg_p161_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly543ugly223move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew0)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
       (not_blocked seg_w1_163c_0_34 airplane_daew2)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly544ugly1127startup_seg_p110_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly545ugly554startup_seg_b3_a_0_156_924_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action ugly546ugly874startup_seg_w1_c3c_0_48_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action ugly547ugly1113startup_seg_o1_115a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly548ugly923move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew0)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
       (not_blocked seg_o1_115c_0_34 airplane_daew2)
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
  ugly549ugly523move_seg_08r_b6a_0_161_245_seg_b8_a_0_156_924_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6a_0_161_245) (not_occupied seg_b8_a_0_156_924)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbeg)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbe1)
       (not_blocked seg_b8_a_0_156_924 airplane_daew8)
       (not_blocked seg_b8_a_0_156_924 airplane_daew9)
       (not_blocked seg_b8_a_0_156_924 airplane_daew0)
       (not_blocked seg_b8_a_0_156_924 airplane_daew3)
       (not_blocked seg_b8_a_0_156_924 airplane_daewh)
       (not_blocked seg_b8_a_0_156_924 airplane_daew1)
       (not_blocked seg_b8_a_0_156_924 airplane_daew2))
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
 (:action ugly550ugly78startup_seg_b3_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action ugly551ugly1114startup_seg_p104_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly552ugly958startup_seg_n_a9a10g_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action ugly553ugly408startup_seg_t_b5b8a_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a))))
 (:action ugly554ugly481startup_seg_b9_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action ugly555ugly1089move_seg_t_b2c_0_60_seg_b2_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b2c_0_60) (not_occupied seg_b2_0_80)
       (not_blocked seg_b2_0_80 airplane_cfbeg)
       (not_blocked seg_b2_0_80 airplane_cfbe1)
       (not_blocked seg_b2_0_80 airplane_daew8)
       (not_blocked seg_b2_0_80 airplane_daew9)
       (not_blocked seg_b2_0_80 airplane_daew0)
       (not_blocked seg_b2_0_80 airplane_daew3)
       (not_blocked seg_b2_0_80 airplane_daewh)
       (not_blocked seg_b2_0_80 airplane_daew1)
       (not_blocked seg_b2_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_t_b2c_0_60)) (not_occupied seg_t_b2c_0_60)
       (not (at-segment ?a seg_t_b2c_0_60)) (occupied seg_b2_0_80)
       (not (not_occupied seg_b2_0_80)) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a)) (at-segment ?a seg_b2_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_t_b2a_0_60 ?a)) (not_blocked seg_t_b2a_0_60 ?a)
       (not (blocked seg_t_b2b_0_60 ?a)) (not_blocked seg_t_b2b_0_60 ?a)))
 (:action
  ugly556ugly1291move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew0)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
       (not_blocked seg_w1_151c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly557ugly1163pushback_seg_o1_c2b_0_60_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew0)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly558ugly166startup_seg_t_b10a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_t_b10b_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly559ugly976move_seg_s_b5b8c_0_130_seg_s_b5b8b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8c_0_130) (not_occupied seg_s_b5b8b_0_135)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbe1)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew9)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew0)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew3)
       (not_blocked seg_s_b5b8b_0_135 airplane_daewh)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew1)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b5b8c_0_130)) (not_occupied seg_s_b5b8c_0_130)
       (not (at-segment ?a seg_s_b5b8c_0_130)) (occupied seg_s_b5b8b_0_135)
       (not (not_occupied seg_s_b5b8b_0_135)) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))
       (at-segment ?a seg_s_b5b8b_0_135) (not (blocked seg_s_b8c_0_60 ?a))
       (not_blocked seg_s_b8c_0_60 ?a)))
 (:action ugly560ugly628startup_seg_m_a4c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action ugly561ugly973startup_seg_a4_b_0_79_7559_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly562ugly267move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew0)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew1)
       (not_blocked seg_o1_115a_0_34 airplane_daew2)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action ugly563ugly1310startup_seg_n_a2a3d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action ugly564ugly1124startup_seg_n_a8a9b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action ugly565ugly787startup_seg_t_b2b3b_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action ugly566ugly472startup_seg_o1_104a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly567ugly939move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew0)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
       (not_blocked seg_w1_142c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_143a_0_34)) (not_occupied seg_w1_143a_0_34)
       (not (at-segment ?a seg_w1_143a_0_34)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)))
 (:action ugly568ugly469startup_seg_n_a2a3c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action ugly569ugly269startup_seg_t_b5a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_t_b5b_0_60) (not_occupied seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly570ugly19startup_seg_o1_103b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action ugly571ugly192startup_seg_s_b9b10c_0_84_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action ugly572ugly1315startup_seg_n_a2a3a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly573ugly231move_seg_o1_110b_0_60_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
       (not_blocked seg_o1_110a_0_34 airplane_daew2)
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
 (:action ugly574ugly545startup_seg_t_b4b6a_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a))))
 (:action ugly575ugly140startup_seg_n_a9c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly576ugly501move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew0)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
       (not_blocked seg_w1_151c_0_34 airplane_daew2)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action ugly577ugly1375park_seg_p164_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action ugly578ugly49startup_seg_w1_154b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly579ugly1193pushback_seg_o1_108c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
       (not_blocked seg_o1_109a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly580ugly533startup_seg_w1_151a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly581ugly722startup_seg_w1_151b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly582ugly10startup_seg_08l_a2b_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly583ugly887move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew0)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew1)
       (not_blocked seg_w1_141a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c1c_0_34)) (not_occupied seg_w1_c1c_0_34)
       (not (at-segment ?a seg_w1_c1c_0_34)) (occupied seg_w1_141a_0_34)
       (not (not_occupied seg_w1_141a_0_34)) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (at-segment ?a seg_w1_141a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1a_0_60 ?a)) (not_blocked seg_w1_c1a_0_60 ?a)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)))
 (:action ugly584ugly1046park_seg_p115_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action ugly585ugly604startup_seg_b10_1_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_08r_b10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10a_0_80 ?a)
       (not (not_blocked seg_08r_b10a_0_80 ?a))))
 (:action ugly586ugly439startup_seg_n_a3a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly587ugly108move_seg_o1_118b_0_60_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew0)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew1)
       (not_blocked seg_o1_118a_0_34 airplane_daew2)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly588ugly1253move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_cfbe1)
       (not_blocked seg_c3_b_0_80 airplane_daew8)
       (not_blocked seg_c3_b_0_80 airplane_daew9)
       (not_blocked seg_c3_b_0_80 airplane_daew0)
       (not_blocked seg_c3_b_0_80 airplane_daew3)
       (not_blocked seg_c3_b_0_80 airplane_daewh)
       (not_blocked seg_c3_b_0_80 airplane_daew1)
       (not_blocked seg_c3_b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_c3_b_0_80)
       (not (not_occupied seg_c3_b_0_80)) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a)) (at-segment ?a seg_c3_b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)))
 (:action ugly589ugly214startup_seg_t_b8b9c_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action ugly590ugly259startup_seg_a2_c_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action ugly591ugly579startup_seg_a6_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly592ugly569move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
       (not_blocked seg_o1_110a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_109c_0_34)) (not_occupied seg_o1_109c_0_34)
       (not (at-segment ?a seg_o1_109c_0_34)) (occupied seg_o1_110a_0_34)
       (not (not_occupied seg_o1_110a_0_34)) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (at-segment ?a seg_o1_110a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action ugly593ugly673move_seg_s_b5b_0_60_seg_s_b5a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b_0_60) (not_occupied seg_s_b5a_0_60)
       (not_blocked seg_s_b5a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b5a_0_60 airplane_daew8)
       (not_blocked seg_s_b5a_0_60 airplane_daew9)
       (not_blocked seg_s_b5a_0_60 airplane_daew0)
       (not_blocked seg_s_b5a_0_60 airplane_daew3)
       (not_blocked seg_s_b5a_0_60 airplane_daewh)
       (not_blocked seg_s_b5a_0_60 airplane_daew1)
       (not_blocked seg_s_b5a_0_60 airplane_daew2)
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
 (:action ugly594ugly931startup_seg_p131_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly595ugly156park_seg_p103_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action ugly596ugly1280startup_seg_p107_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action ugly597ugly1171startup_seg_o1_116c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action ugly598ugly39startup_seg_n_a9c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action ugly599ugly1195startup_seg_s_b5a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s_b5b_0_60) (not_occupied seg_s_b5c_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly600ugly67move_seg_08r_b2a_0_80_seg_08r_b2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b2a_0_80) (not_occupied seg_08r_b2b_0_80)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b2b_0_80 airplane_daew8)
       (not_blocked seg_08r_b2b_0_80 airplane_daew9)
       (not_blocked seg_08r_b2b_0_80 airplane_daew0)
       (not_blocked seg_08r_b2b_0_80 airplane_daew3)
       (not_blocked seg_08r_b2b_0_80 airplane_daewh)
       (not_blocked seg_08r_b2b_0_80 airplane_daew1)
       (not_blocked seg_08r_b2b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_08r_b2a_0_80)) (not_occupied seg_08r_b2a_0_80)
       (not (at-segment ?a seg_08r_b2a_0_80)) (occupied seg_08r_b2b_0_80)
       (not (not_occupied seg_08r_b2b_0_80)) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a)) (at-segment ?a seg_08r_b2b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b2_1_0_80 ?a)) (not_blocked seg_b2_1_0_80 ?a)))
 (:action
  ugly601ugly417pushback_seg_o1_108a_0_34_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly602ugly765startup_seg_w1_163c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action ugly603ugly410startup_seg_n_a2a3d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly604ugly506move_seg_o1_110d_0_45_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
       (not_blocked seg_o1_110a_0_34 airplane_daew2)
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
 (:action ugly605ugly29startup_seg_s_b3b4d_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action ugly606ugly431startup_seg_w1_142c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action ugly607ugly948startup_seg_o1_c3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action ugly608ugly1302move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_cfbe1)
       (not_blocked seg_p134_0_75 airplane_daew8)
       (not_blocked seg_p134_0_75 airplane_daew9)
       (not_blocked seg_p134_0_75 airplane_daew0)
       (not_blocked seg_p134_0_75 airplane_daew3)
       (not_blocked seg_p134_0_75 airplane_daewh)
       (not_blocked seg_p134_0_75 airplane_daew1)
       (not_blocked seg_p134_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_111d_0_45)) (not_occupied seg_o1_111d_0_45)
       (not (at-segment ?a seg_o1_111d_0_45)) (occupied seg_p134_0_75)
       (not (not_occupied seg_p134_0_75)) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a)) (at-segment ?a seg_p134_0_75)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)))
 (:action ugly609ugly349park_seg_p151_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action ugly610ugly786startup_seg_c2_a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly611ugly1319move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew0)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew1)
       (not_blocked seg_o1_117a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_117a_0_34)
       (not (not_occupied seg_o1_117a_0_34)) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (at-segment ?a seg_o1_117a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action ugly612ugly1147startup_seg_p141_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly613ugly1364startup_seg_m_a4d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action ugly614ugly540startup_seg_m_a9a10d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action ugly615ugly405startup_seg_a6_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly616ugly1050startup_seg_s_b8b9c_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action ugly617ugly160startup_seg_08r_b6d_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_08r_b6a_0_161_245) (not_occupied seg_08r_b6c_0_80)
       (not_occupied seg_08r_b6b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))
       (blocked seg_08r_b6c_0_80 ?a) (not (not_blocked seg_08r_b6c_0_80 ?a))
       (blocked seg_08r_b6b_0_80 ?a) (not (not_blocked seg_08r_b6b_0_80 ?a))))
 (:action ugly618ugly680startup_seg_n_a4a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly619ugly516move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew0)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew1)
       (not_blocked seg_w1_161b_0_45 airplane_daew2)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (at-segment ?a seg_w1_161b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly620ugly707move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew0)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action ugly621ugly179startup_seg_08l_a9b_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action ugly622ugly458park_seg_p143_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action ugly623ugly1250startup_seg_m_a3a_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action ugly624ugly986startup_seg_s_b2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action ugly625ugly65startup_seg_o1_c2c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action ugly626ugly947park_seg_p141_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action ugly627ugly804startup_seg_o1_117b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly628ugly1141move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7d_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a4a7e_0_75)) (not_occupied seg_n_a4a7e_0_75)
       (not (at-segment ?a seg_n_a4a7e_0_75)) (occupied seg_n_a4a7d_0_75)
       (not (not_occupied seg_n_a4a7d_0_75)) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a)) (at-segment ?a seg_n_a4a7d_0_75)
       (not (blocked seg_n_a4a7f_0_75 ?a)) (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action
  ugly629ugly1154move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew0)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew1)
       (not_blocked seg_o1_115a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c3c_0_48)) (not_occupied seg_o1_c3c_0_48)
       (not (at-segment ?a seg_o1_c3c_0_48)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action ugly630ugly46move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew9)
       (not_blocked seg_c1_n2c_0_60 airplane_daew0)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew1)
       (not_blocked seg_c1_n2c_0_60 airplane_daew2)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (occupied seg_c1_n2a_0_60)) (not_occupied seg_c1_n2a_0_60)
       (not (at-segment ?a seg_c1_n2a_0_60)) (occupied seg_c1_n2c_0_60)
       (not (not_occupied seg_c1_n2c_0_60)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a)) (at-segment ?a seg_c1_n2c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_0_108 ?a)) (not_blocked seg_n2_0_108 ?a)
       (blocked seg_c1_n2b_0_80 ?a) (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action ugly631ugly1256startup_seg_o1_110b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly632ugly1144move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew0)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
       (not_blocked seg_w1_164a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action ugly633ugly372startup_seg_t_b4b6b_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action ugly634ugly626startup_seg_c2_b_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly635ugly1276park_seg_p164_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action ugly636ugly748startup_seg_m_a6b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action ugly637ugly1006park_seg_p162_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly638ugly728move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew0)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
       (not_blocked seg_w1_162c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)))
 (:action ugly639ugly1142startup_seg_s_b5b8b_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action ugly640ugly393startup_seg_n_a7a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action ugly641ugly969startup_seg_m_a10b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action ugly642ugly819startup_seg_w1_141b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action ugly643ugly1279startup_seg_m_a7a6d_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action ugly644ugly93park_seg_p142_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action ugly645ugly1017startup_seg_o1_111a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly646ugly197startup_seg_o1_c2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly647ugly1015move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew0)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
       (not_blocked seg_w1_163b_0_45 airplane_daew2)
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
  ugly648ugly835move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe1)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew8)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew9)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew0)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew3)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daewh)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew1)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew2)
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
 (:action ugly649ugly652startup_seg_o1_118b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action ugly650ugly441move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew2)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action ugly651ugly1177startup_seg_n_a6a8c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action ugly652ugly1057startup_seg_a8_a_0_157_785_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action ugly653ugly1189startup_seg_w1_151c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action ugly654ugly1159startup_seg_s_b5b8b_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action ugly655ugly293startup_seg_n_a8a9d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly656ugly236move_seg_o1_115b_0_60_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew0)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew1)
       (not_blocked seg_o1_115a_0_34 airplane_daew2)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p115_0_76 ?a)) (not_blocked seg_p115_0_76 ?a)
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly657ugly359startup_seg_w1_c2c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly658ugly276move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew0)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew1)
       (not_blocked seg_o1_109d_0_45 airplane_daew2)
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
 (:action ugly659ugly483startup_seg_p109_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly660ugly807move_seg_o1_111d_0_45_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2)
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
 (:action ugly661ugly928startup_seg_p103_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly662ugly370startup_seg_s_b5b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5a_0_60) (not_occupied seg_s_b5c_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action ugly663ugly943startup_seg_t_b2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action ugly664ugly607startup_seg_c2_b_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action ugly665ugly447startup_seg_p143_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly666ugly896startup_seg_o1_c1b_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action ugly667ugly615move_seg_o1_c3d_0_60_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew0)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew2)
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
 (:action ugly668ugly177startup_seg_t_b3a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3a_0_60)
       (not_occupied seg_t_b3b_0_60) (not_occupied seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action ugly669ugly446startup_seg_m_a9a10a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action ugly670ugly252park_seg_p154_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action ugly671ugly1181startup_seg_m_a6a8a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action ugly672ugly326startup_seg_b10_1_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action ugly673ugly117park_seg_p131_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action ugly674ugly1261startup_seg_m_a9a10c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action ugly675ugly942startup_seg_m_a7a6c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly676ugly1270move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2)
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
 (:action ugly677ugly744move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_cfbe1)
       (not_blocked seg_p119_0_76 airplane_daew8)
       (not_blocked seg_p119_0_76 airplane_daew9)
       (not_blocked seg_p119_0_76 airplane_daew0)
       (not_blocked seg_p119_0_76 airplane_daew3)
       (not_blocked seg_p119_0_76 airplane_daewh)
       (not_blocked seg_p119_0_76 airplane_daew1)
       (not_blocked seg_p119_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_p119_0_76)
       (not (not_occupied seg_p119_0_76)) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a)) (at-segment ?a seg_p119_0_76)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action ugly678ugly994startup_seg_s_b9a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action ugly679ugly271move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew0)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew1)
       (not_blocked seg_w1_151b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p151_0_75)) (not_occupied seg_p151_0_75)
       (not (at-segment ?a seg_p151_0_75)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action ugly680ugly1149startup_seg_a8_a_0_157_785_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action ugly681ugly224startup_seg_w1_141c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly682ugly941startup_seg_08l_a7b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action ugly683ugly1032park_seg_p102_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action ugly684ugly172startup_seg_n_n2a4c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action ugly685ugly1358startup_seg_c4_s6a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly686ugly591startup_seg_t_b7b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly687ugly559startup_seg_o1_110a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly688ugly608startup_seg_n_a4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly689ugly539startup_seg_w1_c3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action ugly690ugly634startup_seg_t_b9c_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9c_0_120_934)
       (not_occupied seg_t_b9a_0_60) (not_occupied seg_t_b9b_0_60)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a)) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a)) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action ugly691ugly1350startup_seg_s_b7a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s_b7b_0_60) (not_occupied seg_s_b7c_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action ugly692ugly440startup_seg_t_b4b6a_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly693ugly327move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
       (not_blocked seg_o1_110a_0_34 airplane_daew2)
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
 (:action ugly694ugly273startup_seg_o1_115c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action ugly695ugly1081startup_seg_08l_a7c_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action ugly696ugly512startup_seg_w1_163b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly697ugly771move_seg_o1_108c_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew0)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew1)
       (not_blocked seg_o1_108b_0_60 airplane_daew2)
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
 (:action ugly698ugly270startup_seg_t_b4d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4d_0_60)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action ugly699ugly1344park_seg_p163_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action ugly700ugly466startup_seg_n_a9a10d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly701ugly38move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew0)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6b_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a7a6c_0_75)) (not_occupied seg_n_a7a6c_0_75)
       (not (at-segment ?a seg_n_a7a6c_0_75)) (occupied seg_n_a7a6b_0_75)
       (not (not_occupied seg_n_a7a6b_0_75)) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a)) (at-segment ?a seg_n_a7a6b_0_75)
       (not (blocked seg_n_a7a6d_0_75 ?a)) (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly702ugly1003pushback_seg_p112_0_76_seg_o1_c3b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p112_0_76)) (not_occupied seg_p112_0_76)
       (not (blocked seg_p112_0_76 ?a)) (not_blocked seg_p112_0_76 ?a)
       (not (at-segment ?a seg_p112_0_76)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)))
 (:action ugly703ugly842startup_seg_p115_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly704ugly897startup_seg_p118_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly705ugly70move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew0)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew1)
       (not_blocked seg_o1_109b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p109_0_76)) (not_occupied seg_p109_0_76)
       (not (at-segment ?a seg_p109_0_76)) (occupied seg_o1_109b_0_60)
       (not (not_occupied seg_o1_109b_0_60)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action ugly706ugly51startup_seg_n_a6b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly707ugly428startup_seg_s_b4c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action ugly708ugly1328startup_seg_b6_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action ugly709ugly525startup_seg_w1_154a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly710ugly822startup_seg_w1_c2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action ugly711ugly1038startup_seg_o1_115a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly712ugly11move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew0)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
       (not_blocked seg_o1_111b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p111_0_76)) (not_occupied seg_p111_0_76)
       (not (at-segment ?a seg_p111_0_76)) (occupied seg_o1_111b_0_60)
       (not (not_occupied seg_o1_111b_0_60)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action ugly713ugly854startup_seg_p119_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly714ugly1139move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew0)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew2)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (occupied seg_w1_141a_0_34)) (not_occupied seg_w1_141a_0_34)
       (not (at-segment ?a seg_w1_141a_0_34)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (at-segment ?a seg_w1_141b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)
       (blocked seg_w1_141c_0_34 ?a) (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action ugly715ugly717startup_seg_a6_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly716ugly1175move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew0)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew1)
       (not_blocked seg_o1_110b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p110_0_76)) (not_occupied seg_p110_0_76)
       (not (at-segment ?a seg_p110_0_76)) (occupied seg_o1_110b_0_60)
       (not (not_occupied seg_o1_110b_0_60)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly717ugly1095move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew0)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
       (not_blocked seg_w1_143c_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c2a_0_60)) (not_occupied seg_w1_c2a_0_60)
       (not (at-segment ?a seg_w1_c2a_0_60)) (occupied seg_w1_143c_0_60)
       (not (not_occupied seg_w1_143c_0_60)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a)) (at-segment ?a seg_w1_143c_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c2b_0_60 ?a)) (not_blocked seg_w1_c2b_0_60 ?a)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)))
 (:action ugly718ugly1258startup_seg_p118_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly719ugly1257move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8f_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a8c_0_60)) (not_occupied seg_n_a8c_0_60)
       (not (at-segment ?a seg_n_a8c_0_60)) (occupied seg_n_a6a8f_0_75)
       (not (not_occupied seg_n_a6a8f_0_75)) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a)) (at-segment ?a seg_n_a6a8f_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a8a_0_60 ?a)) (not_blocked seg_n_a8a_0_60 ?a)
       (not (blocked seg_n_a8b_0_60 ?a)) (not_blocked seg_n_a8b_0_60 ?a)))
 (:action ugly720ugly1071startup_seg_w1_161b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly721ugly89move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew8)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew9)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew0)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew3)
       (not_blocked seg_08l_a6a7_0_450 airplane_daewh)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew1)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew2)
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
 (:action ugly722ugly798startup_seg_n_a9a10b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action ugly723ugly1045park_seg_p131_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action ugly724ugly542startup_seg_n_a9a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action ugly725ugly1283startup_seg_n_n2a4b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly726ugly443move_seg_o1_111c_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew0)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
       (not_blocked seg_o1_111b_0_60 airplane_daew2)
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
 (:action ugly727ugly716startup_seg_m_a7a6b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action ugly728ugly127startup_seg_t_b2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action ugly729ugly74startup_seg_o1_c3a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly730ugly558move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew0)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6c_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a7a6d_0_75)) (not_occupied seg_n_a7a6d_0_75)
       (not (at-segment ?a seg_n_a7a6d_0_75)) (occupied seg_n_a7a6c_0_75)
       (not (not_occupied seg_n_a7a6c_0_75)) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a)) (at-segment ?a seg_n_a7a6c_0_75)
       (not (blocked seg_n_a6c_0_60 ?a)) (not_blocked seg_n_a6c_0_60 ?a)))
 (:action ugly731ugly194startup_seg_m_a3a4e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action ugly732ugly266startup_seg_o1_109b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action ugly733ugly1303startup_seg_s_b6b7a_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a))))
 (:action ugly734ugly163startup_seg_b8_a_0_156_924_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_08r_b6a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))))
 (:action
  ugly735ugly951move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew0)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
       (not_blocked seg_w1_161c_0_34 airplane_daew2)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_w1_161c_0_34)
       (not (not_occupied seg_w1_161c_0_34)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a)) (at-segment ?a seg_w1_161c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p161_0_75 ?a)) (not_blocked seg_p161_0_75 ?a)
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action ugly736ugly895startup_seg_w1_163a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly737ugly805move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew0)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew1)
       (not_blocked seg_o1_117b_0_60 airplane_daew2)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (occupied seg_o1_117a_0_34)) (not_occupied seg_o1_117a_0_34)
       (not (at-segment ?a seg_o1_117a_0_34)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (at-segment ?a seg_o1_117b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)
       (blocked seg_o1_117c_0_34 ?a) (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly738ugly743move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8a_0_60 airplane_daew8)
       (not_blocked seg_n_a8a_0_60 airplane_daew9)
       (not_blocked seg_n_a8a_0_60 airplane_daew0)
       (not_blocked seg_n_a8a_0_60 airplane_daew3)
       (not_blocked seg_n_a8a_0_60 airplane_daewh)
       (not_blocked seg_n_a8a_0_60 airplane_daew1)
       (not_blocked seg_n_a8a_0_60 airplane_daew2))
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
 (:action ugly739ugly550move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3c_0_60 airplane_daew8)
       (not_blocked seg_n_a3c_0_60 airplane_daew9)
       (not_blocked seg_n_a3c_0_60 airplane_daew0)
       (not_blocked seg_n_a3c_0_60 airplane_daew3)
       (not_blocked seg_n_a3c_0_60 airplane_daewh)
       (not_blocked seg_n_a3c_0_60 airplane_daew1)
       (not_blocked seg_n_a3c_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n1_0_108)) (not_occupied seg_n1_0_108)
       (not (at-segment ?a seg_n1_0_108)) (occupied seg_n_a3c_0_60)
       (not (not_occupied seg_n_a3c_0_60)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (at-segment ?a seg_n_a3c_0_60)
       (not (blocked seg_w1_c1a_0_60 ?a)) (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action ugly740ugly886startup_seg_t_b5b8b_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly741ugly646move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew0)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew1)
       (not_blocked seg_w1_142b_0_45 airplane_daew2)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (at-segment ?a seg_w1_142b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly742ugly121startup_seg_t_b8b9b_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action ugly743ugly155startup_seg_w1_141a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly744ugly438move_seg_s_b5b8b_0_135_seg_s_b5b8a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8b_0_135) (not_occupied seg_s_b5b8a_0_135)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbe1)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew9)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew0)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew3)
       (not_blocked seg_s_b5b8a_0_135 airplane_daewh)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew1)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b5b8b_0_135)) (not_occupied seg_s_b5b8b_0_135)
       (not (at-segment ?a seg_s_b5b8b_0_135)) (occupied seg_s_b5b8a_0_135)
       (not (not_occupied seg_s_b5b8a_0_135)) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))
       (at-segment ?a seg_s_b5b8a_0_135) (not (blocked seg_s_b5b8c_0_130 ?a))
       (not_blocked seg_s_b5b8c_0_130 ?a)))
 (:action
  ugly745ugly426pushback_seg_p107_0_76_seg_o1_c2b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (blocked seg_p107_0_76 ?a)) (not_blocked seg_p107_0_76 ?a)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly746ugly219move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew0)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action ugly747ugly1215startup_seg_n_a6a8e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action ugly748ugly1183startup_seg_n_a9a10c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly749ugly959move_seg_w1_154c_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew0)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
       (not_blocked seg_w1_154b_0_45 airplane_daew2)
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
  ugly750ugly180move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew0)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew1)
       (not_blocked seg_w1_152a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action ugly751ugly386startup_seg_08l_a9b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action ugly752ugly418move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_cfbe1)
       (not_blocked seg_n1_0_108 airplane_daew8)
       (not_blocked seg_n1_0_108 airplane_daew9)
       (not_blocked seg_n1_0_108 airplane_daew0)
       (not_blocked seg_n1_0_108 airplane_daew3)
       (not_blocked seg_n1_0_108 airplane_daewh)
       (not_blocked seg_n1_0_108 airplane_daew1)
       (not_blocked seg_n1_0_108 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c1a_0_60)) (not_occupied seg_w1_c1a_0_60)
       (not (at-segment ?a seg_w1_c1a_0_60)) (occupied seg_n1_0_108)
       (not (not_occupied seg_n1_0_108)) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a)) (at-segment ?a seg_n1_0_108)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)))
 (:action ugly753ugly8startup_seg_t_b8d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8d_0_60)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action ugly754ugly556startup_seg_n_n2a4a_0_70_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action ugly755ugly1161startup_seg_m_a6a8c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly756ugly200move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew0)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew1)
       (not_blocked seg_w1_162b_0_45 airplane_daew2)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (at-segment ?a seg_w1_162b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly757ugly667startup_seg_b8_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_t_b8c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))))
 (:action ugly758ugly655move_seg_c4_s6b_0_60_seg_c4_s6a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew9)
       (not_blocked seg_c4_s6a_0_80 airplane_daew0)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_blocked seg_c4_s6a_0_80 airplane_daewh)
       (not_blocked seg_c4_s6a_0_80 airplane_daew1)
       (not_blocked seg_c4_s6a_0_80 airplane_daew2)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (occupied seg_c4_s6b_0_60)) (not_occupied seg_c4_s6b_0_60)
       (not (at-segment ?a seg_c4_s6b_0_60)) (occupied seg_c4_s6a_0_80)
       (not (not_occupied seg_c4_s6a_0_80)) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (at-segment ?a seg_c4_s6a_0_80)
       (not (facing ?a north)) (facing ?a south) (not (blocked seg_s6_0_94 ?a))
       (not_blocked seg_s6_0_94 ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly759ugly434startup_seg_o1_117c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action ugly760ugly92startup_seg_o1_c3a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly761ugly1150move_seg_w1_163c_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew0)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
       (not_blocked seg_w1_163b_0_45 airplane_daew2)
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
  ugly762ugly746move_seg_w1_153c_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew0)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
       (not_blocked seg_w1_153b_0_45 airplane_daew2)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (at-segment ?a seg_w1_153b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly763ugly430move_seg_s_b7a_0_60_seg_s_b7d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b7a_0_60) (not_occupied seg_s_b7d_0_60)
       (not_blocked seg_s_b7d_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7d_0_60 airplane_cfbe1)
       (not_blocked seg_s_b7d_0_60 airplane_daew8)
       (not_blocked seg_s_b7d_0_60 airplane_daew9)
       (not_blocked seg_s_b7d_0_60 airplane_daew0)
       (not_blocked seg_s_b7d_0_60 airplane_daew3)
       (not_blocked seg_s_b7d_0_60 airplane_daewh)
       (not_blocked seg_s_b7d_0_60 airplane_daew1)
       (not_blocked seg_s_b7d_0_60 airplane_daew2)
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
 (:action ugly764ugly639startup_seg_m_a4c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly765ugly867startup_seg_t_b10b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action ugly766ugly661startup_seg_o1_104c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly767ugly292startup_seg_t_b6b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b_0_60)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action ugly768ugly979startup_seg_s_b8b9b_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action ugly769ugly1070startup_seg_w1_c3c_0_48_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly770ugly848move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_cfbe1)
       (not_blocked seg_p154_0_75 airplane_daew8)
       (not_blocked seg_p154_0_75 airplane_daew9)
       (not_blocked seg_p154_0_75 airplane_daew0)
       (not_blocked seg_p154_0_75 airplane_daew3)
       (not_blocked seg_p154_0_75 airplane_daewh)
       (not_blocked seg_p154_0_75 airplane_daew1)
       (not_blocked seg_p154_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_p154_0_75)
       (not (not_occupied seg_p154_0_75)) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a)) (at-segment ?a seg_p154_0_75)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)))
 (:action ugly771ugly356startup_seg_t_b8a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action ugly772ugly475startup_seg_t_b6c_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action ugly773ugly1166startup_seg_s_b2b3b_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action
  ugly774ugly601move_seg_o1_116b_0_60_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew0)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew1)
       (not_blocked seg_o1_116a_0_34 airplane_daew2)
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
  ugly775ugly324move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3d_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2a3e_0_75)) (not_occupied seg_n_a2a3e_0_75)
       (not (at-segment ?a seg_n_a2a3e_0_75)) (occupied seg_n_a2a3d_0_75)
       (not (not_occupied seg_n_a2a3d_0_75)) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a)) (at-segment ?a seg_n_a2a3d_0_75)
       (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action ugly776ugly449startup_seg_w1_153b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action ugly777ugly151startup_seg_c1_n2b_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly778ugly1082startup_seg_n_a7c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action ugly779ugly803startup_seg_a2_b_0_90_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action ugly780ugly287startup_seg_n_a9a10c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action ugly781ugly1354startup_seg_o1_116b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action ugly782ugly107park_seg_p161_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action ugly783ugly323startup_seg_w1_c4a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly784ugly987startup_seg_s_b3b4a_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action ugly785ugly138startup_seg_p134_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly786ugly793startup_seg_n_a6a8f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action ugly787ugly519startup_seg_o1_110c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly788ugly342startup_seg_n_n2c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action ugly789ugly1337move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_cfbe1)
       (not_blocked seg_p161_0_75 airplane_daew8)
       (not_blocked seg_p161_0_75 airplane_daew9)
       (not_blocked seg_p161_0_75 airplane_daew0)
       (not_blocked seg_p161_0_75 airplane_daew3)
       (not_blocked seg_p161_0_75 airplane_daewh)
       (not_blocked seg_p161_0_75 airplane_daew1)
       (not_blocked seg_p161_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_p161_0_75)
       (not (not_occupied seg_p161_0_75)) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a)) (at-segment ?a seg_p161_0_75)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly790ugly61move_seg_o1_109c_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew0)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew1)
       (not_blocked seg_o1_109b_0_60 airplane_daew2)
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
 (:action ugly791ugly791startup_seg_w1_c2c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action ugly792ugly767move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew9)
       (not_blocked seg_w1_c1a_0_60 airplane_daew0)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew1)
       (not_blocked seg_w1_c1a_0_60 airplane_daew2)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (occupied seg_w1_c1b_0_60)) (not_occupied seg_w1_c1b_0_60)
       (not (at-segment ?a seg_w1_c1b_0_60)) (occupied seg_w1_c1a_0_60)
       (not (not_occupied seg_w1_c1a_0_60)) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (at-segment ?a seg_w1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)
       (blocked seg_w1_c1c_0_34 ?a) (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly793ugly1343startup_seg_n_n2c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action ugly794ugly583startup_seg_w1_c4c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action ugly795ugly898startup_seg_m_a9a10b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action ugly796ugly184move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action ugly797ugly1245startup_seg_w1_142a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly798ugly1363startup_seg_s_b8b9a_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action ugly799ugly1097startup_seg_s_b5a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action ugly800ugly254startup_seg_p152_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly801ugly647startup_seg_o1_c3c_0_48_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action ugly802ugly445startup_seg_o1_108a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly803ugly1378startup_seg_n_a4a7b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action ugly804ugly1048move_seg_s_b2b_0_60_seg_t_b2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b2b_0_60) (not_occupied seg_t_b2a_0_60)
       (not_blocked seg_t_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2a_0_60 airplane_cfbe1)
       (not_blocked seg_t_b2a_0_60 airplane_daew8)
       (not_blocked seg_t_b2a_0_60 airplane_daew9)
       (not_blocked seg_t_b2a_0_60 airplane_daew0)
       (not_blocked seg_t_b2a_0_60 airplane_daew3)
       (not_blocked seg_t_b2a_0_60 airplane_daewh)
       (not_blocked seg_t_b2a_0_60 airplane_daew1)
       (not_blocked seg_t_b2a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b2b_0_60)) (not_occupied seg_s_b2b_0_60)
       (not (at-segment ?a seg_s_b2b_0_60)) (occupied seg_t_b2a_0_60)
       (not (not_occupied seg_t_b2a_0_60)) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (at-segment ?a seg_t_b2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_s_b2a_0_60 ?a)) (not_blocked seg_s_b2a_0_60 ?a)))
 (:action ugly805ugly427park_seg_p118_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action ugly806ugly350move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew2)
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
 (:action ugly807ugly396startup_seg_o1_c3d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action ugly808ugly50move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_cfbe1)
       (not_blocked seg_p108_0_76 airplane_daew8)
       (not_blocked seg_p108_0_76 airplane_daew9)
       (not_blocked seg_p108_0_76 airplane_daew0)
       (not_blocked seg_p108_0_76 airplane_daew3)
       (not_blocked seg_p108_0_76 airplane_daewh)
       (not_blocked seg_p108_0_76 airplane_daew1)
       (not_blocked seg_p108_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108b_0_60)) (not_occupied seg_o1_108b_0_60)
       (not (at-segment ?a seg_o1_108b_0_60)) (occupied seg_p108_0_76)
       (not (not_occupied seg_p108_0_76)) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a)) (at-segment ?a seg_p108_0_76)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly809ugly246move_seg_o1_111b_0_60_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2)
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
 (:action ugly810ugly174startup_seg_a8_b_1_0_79_7559_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action ugly811ugly586move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew0)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew2)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly812ugly250move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2b_0_60 airplane_daew8)
       (not_blocked seg_n_a2b_0_60 airplane_daew9)
       (not_blocked seg_n_a2b_0_60 airplane_daew0)
       (not_blocked seg_n_a2b_0_60 airplane_daew3)
       (not_blocked seg_n_a2b_0_60 airplane_daewh)
       (not_blocked seg_n_a2b_0_60 airplane_daew1)
       (not_blocked seg_n_a2b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2a3a_0_75)) (not_occupied seg_n_a2a3a_0_75)
       (not (at-segment ?a seg_n_a2a3a_0_75)) (occupied seg_n_a2b_0_60)
       (not (not_occupied seg_n_a2b_0_60)) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a)) (at-segment ?a seg_n_a2b_0_60)
       (not (blocked seg_n_a2a3b_0_75 ?a)) (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action ugly813ugly101startup_seg_s_b7d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7d_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7b_0_60)
       (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action ugly814ugly690startup_seg_b9_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action ugly815ugly1004startup_seg_t_b7c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action ugly816ugly176startup_seg_n_a3a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_n_a3b_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly817ugly705move_seg_08r_b6b_0_80_seg_08r_b6b9_0_420_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b_0_80) (not_occupied seg_08r_b6b9_0_420)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbeg)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbe1)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew8)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew9)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew0)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew3)
       (not_blocked seg_08r_b6b9_0_420 airplane_daewh)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew1)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew2))
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
 (:action ugly818ugly131startup_seg_b6_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly819ugly760move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2a_0_80 airplane_daew8)
       (not_blocked seg_08l_a2a_0_80 airplane_daew9)
       (not_blocked seg_08l_a2a_0_80 airplane_daew0)
       (not_blocked seg_08l_a2a_0_80 airplane_daew3)
       (not_blocked seg_08l_a2a_0_80 airplane_daewh)
       (not_blocked seg_08l_a2a_0_80 airplane_daew1)
       (not_blocked seg_08l_a2a_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_08l_a2b_0_80)) (not_occupied seg_08l_a2b_0_80)
       (not (at-segment ?a seg_08l_a2b_0_80)) (occupied seg_08l_a2a_0_80)
       (not (not_occupied seg_08l_a2a_0_80)) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a)) (at-segment ?a seg_08l_a2a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a2_a_0_90 ?a)) (not_blocked seg_a2_a_0_90 ?a)))
 (:action
  ugly820ugly1167move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
       (not_blocked seg_o1_102a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action ugly821ugly1123startup_seg_o1_104b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly822ugly790move_seg_08r_b2b_0_80_seg_08r_b2b3_0_900_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b_0_80) (not_occupied seg_08r_b2b3_0_900)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbeg)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbe1)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew8)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew9)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew0)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew3)
       (not_blocked seg_08r_b2b3_0_900 airplane_daewh)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew1)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew2))
  :effect
  (and (not (occupied seg_08r_b2b_0_80)) (not_occupied seg_08r_b2b_0_80)
       (not (at-segment ?a seg_08r_b2b_0_80)) (occupied seg_08r_b2b3_0_900)
       (not (not_occupied seg_08r_b2b3_0_900)) (blocked seg_08r_b2b3_0_900 ?a)
       (not (not_blocked seg_08r_b2b3_0_900 ?a))
       (at-segment ?a seg_08r_b2b3_0_900) (not (blocked seg_08r_b2a_0_80 ?a))
       (not_blocked seg_08r_b2a_0_80 ?a)))
 (:action ugly823ugly852startup_seg_t_b4b6c_0_130_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action ugly824ugly883startup_seg_t_b3c_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly825ugly1355move_seg_c4_s6a_0_80_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew9)
       (not_blocked seg_c4_s6c_0_60 airplane_daew0)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
       (not_blocked seg_c4_s6c_0_60 airplane_daewh)
       (not_blocked seg_c4_s6c_0_60 airplane_daew1)
       (not_blocked seg_c4_s6c_0_60 airplane_daew2)
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
  ugly826ugly253move_seg_b8_b_0_80_6226_seg_t_b8c_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_0_80_6226) (not_occupied seg_t_b8c_0_120_934)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbeg)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbe1)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew8)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew9)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew0)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew3)
       (not_blocked seg_t_b8c_0_120_934 airplane_daewh)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew1)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew2))
  :effect
  (and (not (occupied seg_b8_b_0_80_6226)) (not_occupied seg_b8_b_0_80_6226)
       (not (at-segment ?a seg_b8_b_0_80_6226)) (occupied seg_t_b8c_0_120_934)
       (not (not_occupied seg_t_b8c_0_120_934))
       (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))
       (at-segment ?a seg_t_b8c_0_120_934) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_b8_b_1_0_80_6226 ?a))
       (not_blocked seg_b8_b_1_0_80_6226 ?a)))
 (:action ugly827ugly333move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_cfbe1)
       (not_blocked seg_p103_0_76 airplane_daew8)
       (not_blocked seg_p103_0_76 airplane_daew9)
       (not_blocked seg_p103_0_76 airplane_daew0)
       (not_blocked seg_p103_0_76 airplane_daew3)
       (not_blocked seg_p103_0_76 airplane_daewh)
       (not_blocked seg_p103_0_76 airplane_daew1)
       (not_blocked seg_p103_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_p103_0_76)
       (not (not_occupied seg_p103_0_76)) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a)) (at-segment ?a seg_p103_0_76)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)))
 (:action ugly828ugly1216startup_seg_o1_102a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly829ugly394move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_111a_0_34)) (not_occupied seg_o1_111a_0_34)
       (not (at-segment ?a seg_o1_111a_0_34)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly830ugly53startup_seg_o1_c1a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly831ugly1345startup_seg_s_b7b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly832ugly1188move_seg_s_b4b6b_0_135_seg_s_b4b6a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6b_0_135) (not_occupied seg_s_b4b6a_0_135)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbe1)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew9)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew0)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew3)
       (not_blocked seg_s_b4b6a_0_135 airplane_daewh)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew1)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b4b6b_0_135)) (not_occupied seg_s_b4b6b_0_135)
       (not (at-segment ?a seg_s_b4b6b_0_135)) (occupied seg_s_b4b6a_0_135)
       (not (not_occupied seg_s_b4b6a_0_135)) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))
       (at-segment ?a seg_s_b4b6a_0_135) (not (blocked seg_s_b4b6c_0_130 ?a))
       (not_blocked seg_s_b4b6c_0_130 ?a)))
 (:action ugly833ugly520park_seg_p104_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action ugly834ugly111startup_seg_a7_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action ugly835ugly149startup_seg_s_b3b4c_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action ugly836ugly851startup_seg_a7_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action ugly837ugly613startup_seg_n_a9a10b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action ugly838ugly537startup_seg_o1_102c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action ugly839ugly1020startup_seg_n_a6a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action ugly840ugly826move_seg_o1_c1a_0_60_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew2)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly841ugly637startup_seg_p111_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly842ugly1033move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8d_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a6a8e_0_75)) (not_occupied seg_n_a6a8e_0_75)
       (not (at-segment ?a seg_n_a6a8e_0_75)) (occupied seg_n_a6a8d_0_75)
       (not (not_occupied seg_n_a6a8d_0_75)) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a)) (at-segment ?a seg_n_a6a8d_0_75)
       (not (blocked seg_n_a6a8f_0_75 ?a)) (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action ugly843ugly100startup_seg_w1_151c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly844ugly829move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew0)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
       (not_blocked seg_o1_111b_0_60 airplane_daew2)
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
 (:action ugly845ugly584startup_seg_o1_117a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly846ugly364park_seg_p109_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action ugly847ugly697startup_seg_w1_142c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action ugly848ugly226move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew2)
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
 (:action ugly849ugly1379startup_seg_08l_a7b_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_08l_a7a_0_80) (not_occupied seg_08l_a7c_0_161_245)
       (not_occupied seg_08l_a7d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7a_0_80 ?a)
       (not (not_blocked seg_08l_a7a_0_80 ?a))
       (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))
       (blocked seg_08l_a7d_0_80 ?a) (not (not_blocked seg_08l_a7d_0_80 ?a))))
 (:action ugly850ugly911startup_seg_n_a4a7b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action ugly851ugly1382startup_seg_t_b6a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_t_b6b_0_60) (not_occupied seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action ugly852ugly560startup_seg_t_b9d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b9a_0_60) (not_occupied seg_t_b9b_0_60)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a)) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a)) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action ugly853ugly712move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew9)
       (not_blocked seg_w1_c2c_0_34 airplane_daew0)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew1)
       (not_blocked seg_w1_c2c_0_34 airplane_daew2)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (occupied seg_w1_c2a_0_60)) (not_occupied seg_w1_c2a_0_60)
       (not (at-segment ?a seg_w1_c2a_0_60)) (occupied seg_w1_c2c_0_34)
       (not (not_occupied seg_w1_c2c_0_34)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a)) (at-segment ?a seg_w1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)
       (blocked seg_w1_c2b_0_60 ?a) (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action ugly854ugly1073startup_seg_o1_c4a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly855ugly640move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_cfbe1)
       (not_blocked seg_p111_0_76 airplane_daew8)
       (not_blocked seg_p111_0_76 airplane_daew9)
       (not_blocked seg_p111_0_76 airplane_daew0)
       (not_blocked seg_p111_0_76 airplane_daew3)
       (not_blocked seg_p111_0_76 airplane_daewh)
       (not_blocked seg_p111_0_76 airplane_daew1)
       (not_blocked seg_p111_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_111b_0_60)) (not_occupied seg_o1_111b_0_60)
       (not (at-segment ?a seg_o1_111b_0_60)) (occupied seg_p111_0_76)
       (not (not_occupied seg_p111_0_76)) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a)) (at-segment ?a seg_p111_0_76)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly856ugly81move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2a_0_60 airplane_daew8)
       (not_blocked seg_c1_n2a_0_60 airplane_daew9)
       (not_blocked seg_c1_n2a_0_60 airplane_daew0)
       (not_blocked seg_c1_n2a_0_60 airplane_daew3)
       (not_blocked seg_c1_n2a_0_60 airplane_daewh)
       (not_blocked seg_c1_n2a_0_60 airplane_daew1)
       (not_blocked seg_c1_n2a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n2_0_108)) (not_occupied seg_n2_0_108)
       (not (at-segment ?a seg_n2_0_108)) (occupied seg_c1_n2a_0_60)
       (not (not_occupied seg_c1_n2a_0_60)) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (at-segment ?a seg_c1_n2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_n2b_0_60 ?a)) (not_blocked seg_n_n2b_0_60 ?a)))
 (:action ugly857ugly1067startup_seg_s_b3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_t_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a))))
 (:action ugly858ugly85startup_seg_n_a7a6d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly859ugly406move_seg_o1_c1b_0_34_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew2)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly860ugly395startup_seg_m_a3c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly861ugly369move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew0)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
       (not_blocked seg_o1_117c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)))
 (:action ugly862ugly1105startup_seg_t_b6c_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6b_0_60)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly863ugly1351move_seg_w1_164c_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew0)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew1)
       (not_blocked seg_w1_164b_0_45 airplane_daew2)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (at-segment ?a seg_w1_164b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action ugly864ugly627startup_seg_p151_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly865ugly42move_seg_w1_152c_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew0)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew1)
       (not_blocked seg_w1_152b_0_45 airplane_daew2)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (at-segment ?a seg_w1_152b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (blocked seg_w1_152a_0_34 ?a) (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action ugly866ugly711startup_seg_o1_116b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly867ugly643startup_seg_n_a3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly868ugly836startup_seg_p161_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly869ugly301move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew0)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew1)
       (not_blocked seg_o1_118a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_117c_0_34)) (not_occupied seg_o1_117c_0_34)
       (not (at-segment ?a seg_o1_117c_0_34)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action ugly870ugly769startup_seg_o1_c4c_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly871ugly1091startup_seg_t_b9a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9a_0_60)
       (not_occupied seg_t_b9b_0_60) (not_occupied seg_t_b9c_0_120_934)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a)) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a)) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action
  ugly872ugly1165move_seg_o1_108b_0_60_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
       (not_blocked seg_o1_108a_0_34 airplane_daew2)
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
 (:action ugly873ugly154startup_seg_o1_c3c_0_48_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action ugly874ugly839park_seg_p112_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action ugly875ugly864startup_seg_t_b9d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action ugly876ugly499startup_seg_w1_c1a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action ugly877ugly1090startup_seg_a8_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly878ugly1289startup_seg_b5_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_08r_b4a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))))
 (:action ugly879ugly610startup_seg_p143_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly880ugly59move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew0)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew1)
       (not_blocked seg_w1_141a_0_34 airplane_daew2)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_141a_0_34)
       (not (not_occupied seg_w1_141a_0_34)) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (at-segment ?a seg_w1_141a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly881ugly1075startup_seg_s_b2b3c_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action ugly882ugly478move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew0)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew2)
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
 (:action ugly883ugly527move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4c_0_60 airplane_daew8)
       (not_blocked seg_n_a4c_0_60 airplane_daew9)
       (not_blocked seg_n_a4c_0_60 airplane_daew0)
       (not_blocked seg_n_a4c_0_60 airplane_daew3)
       (not_blocked seg_n_a4c_0_60 airplane_daewh)
       (not_blocked seg_n_a4c_0_60 airplane_daew1)
       (not_blocked seg_n_a4c_0_60 airplane_daew2)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (occupied seg_n_a4b_0_60)) (not_occupied seg_n_a4b_0_60)
       (not (at-segment ?a seg_n_a4b_0_60)) (occupied seg_n_a4c_0_60)
       (not (not_occupied seg_n_a4c_0_60)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a)) (at-segment ?a seg_n_a4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a4a7a_0_115 ?a)) (not_blocked seg_n_a4a7a_0_115 ?a)
       (blocked seg_n_a4a_0_60 ?a) (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action ugly884ugly999startup_seg_b4_a_0_156_924_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action
  ugly885ugly413move_seg_o1_117b_0_60_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew0)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew1)
       (not_blocked seg_o1_117a_0_34 airplane_daew2)
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
  ugly886ugly600move_seg_08r_b4b_0_80_seg_08r_b4b6_0_360_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b_0_80) (not_occupied seg_08r_b4b6_0_360)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbeg)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbe1)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew8)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew9)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew0)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew3)
       (not_blocked seg_08r_b4b6_0_360 airplane_daewh)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew1)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew2))
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
 (:action ugly887ugly4startup_seg_m_a8b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action ugly888ugly1208startup_seg_a2_b_0_90_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly889ugly314move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew8)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew9)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew0)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew3)
       (not_blocked seg_08l_a3a4_0_450 airplane_daewh)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew1)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew2)
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
 (:action ugly890ugly528startup_seg_t_b4a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_t_b4b_0_60) (not_occupied seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly891ugly1226startup_seg_s_b9c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly892ugly1118pushback_seg_o1_110c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_110c_0_34)) (not_occupied seg_o1_110c_0_34)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (not (at-segment ?a seg_o1_110c_0_34)) (occupied seg_o1_111a_0_34)
       (not (not_occupied seg_o1_111a_0_34)) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (at-segment ?a seg_o1_111a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly893ugly861move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_cfbe1)
       (not_blocked seg_p109_0_76 airplane_daew8)
       (not_blocked seg_p109_0_76 airplane_daew9)
       (not_blocked seg_p109_0_76 airplane_daew0)
       (not_blocked seg_p109_0_76 airplane_daew3)
       (not_blocked seg_p109_0_76 airplane_daewh)
       (not_blocked seg_p109_0_76 airplane_daew1)
       (not_blocked seg_p109_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_109b_0_60)) (not_occupied seg_o1_109b_0_60)
       (not (at-segment ?a seg_o1_109b_0_60)) (occupied seg_p109_0_76)
       (not (not_occupied seg_p109_0_76)) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a)) (at-segment ?a seg_p109_0_76)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly894ugly1132move_seg_s_b3b4a_0_140_seg_s_b3a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4a_0_140) (not_occupied seg_s_b3a_0_60)
       (not_blocked seg_s_b3a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b3a_0_60 airplane_daew8)
       (not_blocked seg_s_b3a_0_60 airplane_daew9)
       (not_blocked seg_s_b3a_0_60 airplane_daew0)
       (not_blocked seg_s_b3a_0_60 airplane_daew3)
       (not_blocked seg_s_b3a_0_60 airplane_daewh)
       (not_blocked seg_s_b3a_0_60 airplane_daew1)
       (not_blocked seg_s_b3a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b3b4a_0_140)) (not_occupied seg_s_b3b4a_0_140)
       (not (at-segment ?a seg_s_b3b4a_0_140)) (occupied seg_s_b3a_0_60)
       (not (not_occupied seg_s_b3a_0_60)) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (at-segment ?a seg_s_b3a_0_60)
       (not (blocked seg_s_b3b4b_0_140 ?a))
       (not_blocked seg_s_b3b4b_0_140 ?a)))
 (:action ugly895ugly863startup_seg_n_a8a9b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action ugly896ugly893startup_seg_p162_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly897ugly1063move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4a_0_80 airplane_daew8)
       (not_blocked seg_08l_a4a_0_80 airplane_daew9)
       (not_blocked seg_08l_a4a_0_80 airplane_daew0)
       (not_blocked seg_08l_a4a_0_80 airplane_daew3)
       (not_blocked seg_08l_a4a_0_80 airplane_daewh)
       (not_blocked seg_08l_a4a_0_80 airplane_daew1)
       (not_blocked seg_08l_a4a_0_80 airplane_daew2)
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
 (:action ugly898ugly1239startup_seg_t_b9b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b_0_60)
       (not_occupied seg_t_b9a_0_60) (not_occupied seg_t_b9c_0_120_934)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a)) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a)) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action ugly899ugly1060startup_seg_s_b8a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action ugly900ugly1134startup_seg_o1_110b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly901ugly199startup_seg_t_b10a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action ugly902ugly1242startup_seg_m_a9a10g_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action ugly903ugly1370startup_seg_o1_109d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action ugly904ugly442startup_seg_w1_162c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly905ugly52pushback_seg_o1_110a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_110a_0_34)) (not_occupied seg_o1_110a_0_34)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (at-segment ?a seg_o1_110a_0_34)) (occupied seg_o1_109c_0_34)
       (not (not_occupied seg_o1_109c_0_34)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (at-segment ?a seg_o1_109c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly906ugly452pushback_seg_o1_c3d_0_60_seg_c3_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_cfbe1)
       (not_blocked seg_c3_b_0_80 airplane_daew8)
       (not_blocked seg_c3_b_0_80 airplane_daew9)
       (not_blocked seg_c3_b_0_80 airplane_daew0)
       (not_blocked seg_c3_b_0_80 airplane_daew3)
       (not_blocked seg_c3_b_0_80 airplane_daewh)
       (not_blocked seg_c3_b_0_80 airplane_daew1)
       (not_blocked seg_c3_b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_c3_b_0_80)
       (not (not_occupied seg_c3_b_0_80)) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a)) (at-segment ?a seg_c3_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly907ugly171move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew0)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew1)
       (not_blocked seg_o1_103a_0_34 airplane_daew2)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly908ugly43startup_seg_p153_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly909ugly348startup_seg_w1_164c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly910ugly1029startup_seg_m_a8a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8b_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly911ugly1307startup_seg_n_a4c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action ugly912ugly738startup_seg_b8_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action ugly913ugly240startup_seg_n_a2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action ugly914ugly917startup_seg_t_b3b4d_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly915ugly486startup_seg_s_b8a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action ugly916ugly1316startup_seg_s_b3b4a_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a))))
 (:action
  ugly917ugly541move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2)
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
 (:action ugly918ugly949startup_seg_n_a2a3f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly919ugly1255move_seg_08r_b4c_0_80_seg_08r_b4b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b4c_0_80) (not_occupied seg_08r_b4b_0_80)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b4b_0_80 airplane_daew8)
       (not_blocked seg_08r_b4b_0_80 airplane_daew9)
       (not_blocked seg_08r_b4b_0_80 airplane_daew0)
       (not_blocked seg_08r_b4b_0_80 airplane_daew3)
       (not_blocked seg_08r_b4b_0_80 airplane_daewh)
       (not_blocked seg_08r_b4b_0_80 airplane_daew1)
       (not_blocked seg_08r_b4b_0_80 airplane_daew2)
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
 (:action ugly920ugly1066startup_seg_o1_109a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly921ugly1192startup_seg_s_b3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action ugly922ugly946move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew0)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew1)
       (not_blocked seg_o1_117b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p117_0_76)) (not_occupied seg_p117_0_76)
       (not (at-segment ?a seg_p117_0_76)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action ugly923ugly412startup_seg_s_b8b9c_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly924ugly734move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6b_0_60 airplane_daew8)
       (not_blocked seg_n_a6b_0_60 airplane_daew9)
       (not_blocked seg_n_a6b_0_60 airplane_daew0)
       (not_blocked seg_n_a6b_0_60 airplane_daew3)
       (not_blocked seg_n_a6b_0_60 airplane_daewh)
       (not_blocked seg_n_a6b_0_60 airplane_daew1)
       (not_blocked seg_n_a6b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a6a8a_0_115)) (not_occupied seg_n_a6a8a_0_115)
       (not (at-segment ?a seg_n_a6a8a_0_115)) (occupied seg_n_a6b_0_60)
       (not (not_occupied seg_n_a6b_0_60)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (at-segment ?a seg_n_a6b_0_60)
       (not (blocked seg_n_a6a8b_0_75 ?a)) (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action ugly925ugly980startup_seg_m_a10a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action ugly926ugly1357startup_seg_c1_n2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly927ugly1128move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew0)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
       (not_blocked seg_o1_102c_0_34 airplane_daew2)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (occupied seg_o1_102a_0_34)) (not_occupied seg_o1_102a_0_34)
       (not (at-segment ?a seg_o1_102a_0_34)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly928ugly922startup_seg_o1_108a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly929ugly105move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_cfbe1)
       (not_blocked seg_p115_0_76 airplane_daew8)
       (not_blocked seg_p115_0_76 airplane_daew9)
       (not_blocked seg_p115_0_76 airplane_daew0)
       (not_blocked seg_p115_0_76 airplane_daew3)
       (not_blocked seg_p115_0_76 airplane_daewh)
       (not_blocked seg_p115_0_76 airplane_daew1)
       (not_blocked seg_p115_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_p115_0_76)
       (not (not_occupied seg_p115_0_76)) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a)) (at-segment ?a seg_p115_0_76)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)))
 (:action ugly930ugly1131startup_seg_n_a4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action ugly931ugly963move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_cfbe1)
       (not_blocked seg_p133_0_75 airplane_daew8)
       (not_blocked seg_p133_0_75 airplane_daew9)
       (not_blocked seg_p133_0_75 airplane_daew0)
       (not_blocked seg_p133_0_75 airplane_daew3)
       (not_blocked seg_p133_0_75 airplane_daewh)
       (not_blocked seg_p133_0_75 airplane_daew1)
       (not_blocked seg_p133_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_110d_0_45)) (not_occupied seg_o1_110d_0_45)
       (not (at-segment ?a seg_o1_110d_0_45)) (occupied seg_p133_0_75)
       (not (not_occupied seg_p133_0_75)) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a)) (at-segment ?a seg_p133_0_75)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)))
 (:action ugly932ugly1329startup_seg_w1_162c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action ugly933ugly345startup_seg_o1_108c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly934ugly834move_seg_t_b8a_0_60_seg_s_b8b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b8a_0_60) (not_occupied seg_s_b8b_0_60)
       (not_blocked seg_s_b8b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b8b_0_60 airplane_daew8)
       (not_blocked seg_s_b8b_0_60 airplane_daew9)
       (not_blocked seg_s_b8b_0_60 airplane_daew0)
       (not_blocked seg_s_b8b_0_60 airplane_daew3)
       (not_blocked seg_s_b8b_0_60 airplane_daewh)
       (not_blocked seg_s_b8b_0_60 airplane_daew1)
       (not_blocked seg_s_b8b_0_60 airplane_daew2))
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
 (:action ugly935ugly1053startup_seg_n_a8a9c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action ugly936ugly695startup_seg_c4_s6b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly937ugly662move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew0)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew1)
       (not_blocked seg_o1_109b_0_60 airplane_daew2)
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
 (:action ugly938ugly261park_seg_p119_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly939ugly145move_seg_o1_102c_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew0)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew1)
       (not_blocked seg_o1_102b_0_60 airplane_daew2)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (occupied seg_o1_102c_0_34)) (not_occupied seg_o1_102c_0_34)
       (not (at-segment ?a seg_o1_102c_0_34)) (occupied seg_o1_102b_0_60)
       (not (not_occupied seg_o1_102b_0_60)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (at-segment ?a seg_o1_102b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action ugly940ugly881startup_seg_c4_s6a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly941ugly1099startup_seg_s_b9b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_t_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a))))
 (:action ugly942ugly1178startup_seg_n_a7a6a_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action ugly943ugly510startup_seg_08r_b9a_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_08r_b9c_0_80) (not_occupied seg_09r_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (blocked seg_09r_0_80 ?a)
       (not (not_blocked seg_09r_0_80 ?a))))
 (:action ugly944ugly97startup_seg_o1_110d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action ugly945ugly280move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2a_0_60 airplane_daew8)
       (not_blocked seg_n_a2a_0_60 airplane_daew9)
       (not_blocked seg_n_a2a_0_60 airplane_daew0)
       (not_blocked seg_n_a2a_0_60 airplane_daew3)
       (not_blocked seg_n_a2a_0_60 airplane_daewh)
       (not_blocked seg_n_a2a_0_60 airplane_daew1)
       (not_blocked seg_n_a2a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2b_0_60)) (not_occupied seg_n_a2b_0_60)
       (not (at-segment ?a seg_n_a2b_0_60)) (occupied seg_n_a2a_0_60)
       (not (not_occupied seg_n_a2a_0_60)) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a)) (at-segment ?a seg_n_a2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action ugly946ugly422startup_seg_p103_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly947ugly764startup_seg_t_b9b10c_1_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly948ugly1013move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3b_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2a3c_0_75)) (not_occupied seg_n_a2a3c_0_75)
       (not (at-segment ?a seg_n_a2a3c_0_75)) (occupied seg_n_a2a3b_0_75)
       (not (not_occupied seg_n_a2a3b_0_75)) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a)) (at-segment ?a seg_n_a2a3b_0_75)
       (not (blocked seg_n_a2a3d_0_75 ?a)) (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action ugly949ugly1277startup_seg_n_n2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly950ugly453startup_seg_08r_b6a_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
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
  ugly951ugly230move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew0)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew1)
       (not_blocked seg_o1_104a_0_34 airplane_daew2)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly952ugly1135startup_seg_w1_143c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action ugly953ugly291startup_seg_m_a7a_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_m_a7b_0_60) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly954ugly1278startup_seg_n_a6c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action ugly955ugly1264startup_seg_w1_c3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly956ugly783move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_cfbe1)
       (not_blocked seg_p101_0_76 airplane_daew8)
       (not_blocked seg_p101_0_76 airplane_daew9)
       (not_blocked seg_p101_0_76 airplane_daew0)
       (not_blocked seg_p101_0_76 airplane_daew3)
       (not_blocked seg_p101_0_76 airplane_daewh)
       (not_blocked seg_p101_0_76 airplane_daew1)
       (not_blocked seg_p101_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_p101_0_76)
       (not (not_occupied seg_p101_0_76)) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a)) (at-segment ?a seg_p101_0_76)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action ugly957ugly1202startup_seg_n_a10a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action ugly958ugly1373startup_seg_s_b4a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action ugly959ugly225startup_seg_w1_152b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly960ugly321startup_seg_t_b6b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b_0_60)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly961ugly1362move_seg_s_b4b6c_0_130_seg_s_b4b6b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6c_0_130) (not_occupied seg_s_b4b6b_0_135)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbe1)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew9)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew0)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew3)
       (not_blocked seg_s_b4b6b_0_135 airplane_daewh)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew1)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b4b6c_0_130)) (not_occupied seg_s_b4b6c_0_130)
       (not (at-segment ?a seg_s_b4b6c_0_130)) (occupied seg_s_b4b6b_0_135)
       (not (not_occupied seg_s_b4b6b_0_135)) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))
       (at-segment ?a seg_s_b4b6b_0_135) (not (blocked seg_s_b6c_0_60 ?a))
       (not_blocked seg_s_b6c_0_60 ?a)))
 (:action ugly962ugly305startup_seg_n1_0_108_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action ugly963ugly387startup_seg_s_b4b6a_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly964ugly625move_seg_08r_b3b4_0_520_seg_08r_b4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3b4_0_520) (not_occupied seg_08r_b4c_0_80)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b4c_0_80 airplane_daew8)
       (not_blocked seg_08r_b4c_0_80 airplane_daew9)
       (not_blocked seg_08r_b4c_0_80 airplane_daew0)
       (not_blocked seg_08r_b4c_0_80 airplane_daew3)
       (not_blocked seg_08r_b4c_0_80 airplane_daewh)
       (not_blocked seg_08r_b4c_0_80 airplane_daew1)
       (not_blocked seg_08r_b4c_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_08r_b3b4_0_520)) (not_occupied seg_08r_b3b4_0_520)
       (not (at-segment ?a seg_08r_b3b4_0_520)) (occupied seg_08r_b4c_0_80)
       (not (not_occupied seg_08r_b4c_0_80)) (blocked seg_08r_b4c_0_80 ?a)
       (not (not_blocked seg_08r_b4c_0_80 ?a)) (at-segment ?a seg_08r_b4c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b3a_0_80 ?a)) (not_blocked seg_08r_b3a_0_80 ?a)
       (not (blocked seg_08r_b2b_0_80 ?a)) (not_blocked seg_08r_b2b_0_80 ?a)
       (not (blocked seg_08r_0_80 ?a)) (not_blocked seg_08r_0_80 ?a)))
 (:action ugly965ugly116startup_seg_p119_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly966ugly623startup_seg_m_a9a10g_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action ugly967ugly801startup_seg_s_b10a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_t_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a))))
 (:action ugly968ugly1252startup_seg_w1_143a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly969ugly1254startup_seg_w1_164b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly970ugly953move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew9)
       (not_blocked seg_c1_n2c_0_60 airplane_daew0)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew1)
       (not_blocked seg_c1_n2c_0_60 airplane_daew2)
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
  ugly971ugly198move_seg_08r_b4b6_0_360_seg_08r_b6c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b6_0_360) (not_occupied seg_08r_b6c_0_80)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b6c_0_80 airplane_daew8)
       (not_blocked seg_08r_b6c_0_80 airplane_daew9)
       (not_blocked seg_08r_b6c_0_80 airplane_daew0)
       (not_blocked seg_08r_b6c_0_80 airplane_daew3)
       (not_blocked seg_08r_b6c_0_80 airplane_daewh)
       (not_blocked seg_08r_b6c_0_80 airplane_daew1)
       (not_blocked seg_08r_b6c_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_08r_b4b6_0_360)) (not_occupied seg_08r_b4b6_0_360)
       (not (at-segment ?a seg_08r_b4b6_0_360)) (occupied seg_08r_b6c_0_80)
       (not (not_occupied seg_08r_b6c_0_80)) (blocked seg_08r_b6c_0_80 ?a)
       (not (not_blocked seg_08r_b6c_0_80 ?a)) (at-segment ?a seg_08r_b6c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b4b_0_80 ?a)) (not_blocked seg_08r_b4b_0_80 ?a)))
 (:action
  ugly972ugly993move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew0)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew1)
       (not_blocked seg_w1_143a_0_34 airplane_daew2)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (occupied seg_w1_143c_0_60)) (not_occupied seg_w1_143c_0_60)
       (not (at-segment ?a seg_w1_143c_0_60)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2a_0_60 ?a)) (not_blocked seg_w1_c2a_0_60 ?a)
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action ugly973ugly1145startup_seg_n_a9a10g_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action ugly974ugly1312startup_seg_s_b2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action ugly975ugly1348startup_seg_n_n2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly976ugly114startup_seg_a9_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly977ugly374startup_seg_o1_118a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly978ugly1043startup_seg_o1_103a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly979ugly719startup_seg_a10_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action ugly980ugly1251startup_seg_t_b3b4a_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a))))
 (:action ugly981ugly824startup_seg_w1_c4a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly982ugly1230startup_seg_o1_c4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly983ugly44move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew9)
       (not_blocked seg_w1_c1c_0_34 airplane_daew0)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew1)
       (not_blocked seg_w1_c1c_0_34 airplane_daew2)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (occupied seg_w1_c1b_0_60)) (not_occupied seg_w1_c1b_0_60)
       (not (at-segment ?a seg_w1_c1b_0_60)) (occupied seg_w1_c1c_0_34)
       (not (not_occupied seg_w1_c1c_0_34)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a)) (at-segment ?a seg_w1_c1c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)
       (blocked seg_w1_c1a_0_60 ?a) (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action ugly984ugly1314startup_seg_m_a9a10f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action ugly985ugly670move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action ugly986ugly653startup_seg_m_a6a8a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly987ugly665pushback_seg_o1_c1c_0_80_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew0)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly988ugly228move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2b_0_80 airplane_daew8)
       (not_blocked seg_08l_a2b_0_80 airplane_daew9)
       (not_blocked seg_08l_a2b_0_80 airplane_daew0)
       (not_blocked seg_08l_a2b_0_80 airplane_daew3)
       (not_blocked seg_08l_a2b_0_80 airplane_daewh)
       (not_blocked seg_08l_a2b_0_80 airplane_daew1)
       (not_blocked seg_08l_a2b_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_a2_a_0_90)) (not_occupied seg_a2_a_0_90)
       (not (at-segment ?a seg_a2_a_0_90)) (occupied seg_08l_a2b_0_80)
       (not (not_occupied seg_08l_a2b_0_80)) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a)) (at-segment ?a seg_08l_a2b_0_80)
       (not (blocked seg_a2_b_0_90 ?a)) (not_blocked seg_a2_b_0_90 ?a)))
 (:action ugly989ugly1085move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7c_0_60 airplane_daew8)
       (not_blocked seg_n_a7c_0_60 airplane_daew9)
       (not_blocked seg_n_a7c_0_60 airplane_daew0)
       (not_blocked seg_n_a7c_0_60 airplane_daew3)
       (not_blocked seg_n_a7c_0_60 airplane_daewh)
       (not_blocked seg_n_a7c_0_60 airplane_daew1)
       (not_blocked seg_n_a7c_0_60 airplane_daew2)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (occupied seg_n_a7b_0_60)) (not_occupied seg_n_a7b_0_60)
       (not (at-segment ?a seg_n_a7b_0_60)) (occupied seg_n_a7c_0_60)
       (not (not_occupied seg_n_a7c_0_60)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a)) (at-segment ?a seg_n_a7c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a7a6a_0_85 ?a)) (not_blocked seg_n_a7a6a_0_85 ?a)
       (blocked seg_n_a7a_0_60 ?a) (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action ugly990ugly141startup_seg_s_b6c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action
  ugly991ugly216move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew9)
       (not_blocked seg_w1_c1c_0_34 airplane_daew0)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew1)
       (not_blocked seg_w1_c1c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_141a_0_34)) (not_occupied seg_w1_141a_0_34)
       (not (at-segment ?a seg_w1_141a_0_34)) (occupied seg_w1_c1c_0_34)
       (not (not_occupied seg_w1_c1c_0_34)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a)) (at-segment ?a seg_w1_c1c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)))
 (:action ugly992ugly1388startup_seg_m_a4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4c_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly993ugly144move_seg_w1_151c_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew0)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew1)
       (not_blocked seg_w1_151b_0_45 airplane_daew2)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (at-segment ?a seg_w1_151b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (blocked seg_w1_151a_0_34 ?a) (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action ugly994ugly724startup_seg_t_b3b4d_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action ugly995ugly1384move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_cfbe1)
       (not_blocked seg_09l_0_80 airplane_daew8)
       (not_blocked seg_09l_0_80 airplane_daew9)
       (not_blocked seg_09l_0_80 airplane_daew0)
       (not_blocked seg_09l_0_80 airplane_daew3)
       (not_blocked seg_09l_0_80 airplane_daewh)
       (not_blocked seg_09l_0_80 airplane_daew1)
       (not_blocked seg_09l_0_80 airplane_daew2)
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
 (:action ugly996ugly306move_seg_w1_c4b_0_60_seg_w1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew9)
       (not_blocked seg_w1_c4a_0_34 airplane_daew0)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_blocked seg_w1_c4a_0_34 airplane_daewh)
       (not_blocked seg_w1_c4a_0_34 airplane_daew1)
       (not_blocked seg_w1_c4a_0_34 airplane_daew2)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (occupied seg_w1_c4b_0_60)) (not_occupied seg_w1_c4b_0_60)
       (not (at-segment ?a seg_w1_c4b_0_60)) (occupied seg_w1_c4a_0_34)
       (not (not_occupied seg_w1_c4a_0_34)) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (at-segment ?a seg_w1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)
       (blocked seg_w1_c4c_0_60 ?a) (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly997ugly217move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew0)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_c2_b_0_80)) (not_occupied seg_c2_b_0_80)
       (not (at-segment ?a seg_c2_b_0_80)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c2_a_0_80 ?a)) (not_blocked seg_c2_a_0_80 ?a)))
 (:action ugly998ugly725startup_seg_n_a3d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action ugly999ugly490startup_seg_o1_103c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly1000ugly1138move_seg_s_b8c_0_60_seg_s_b5b8c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b8c_0_60) (not_occupied seg_s_b5b8c_0_130)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbe1)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew8)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew9)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew0)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew3)
       (not_blocked seg_s_b5b8c_0_130 airplane_daewh)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew1)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew2))
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
  ugly1001ugly355move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew0)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew1)
       (not_blocked seg_o1_116b_0_60 airplane_daew2)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (at-segment ?a seg_o1_116b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly1002ugly338startup_seg_o1_c3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly1003ugly468pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly1004ugly582move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew9)
       (not_blocked seg_w1_c2a_0_60 airplane_daew0)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew1)
       (not_blocked seg_w1_c2a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_143c_0_60)) (not_occupied seg_w1_143c_0_60)
       (not (at-segment ?a seg_w1_143c_0_60)) (occupied seg_w1_c2a_0_60)
       (not (not_occupied seg_w1_c2a_0_60)) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (at-segment ?a seg_w1_c2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly1005ugly237move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew0)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew1)
       (not_blocked seg_w1_162a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly1006ugly859move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew0)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew2)
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
 (:action ugly1007ugly136startup_seg_s5_0_94_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly1008ugly203startup_seg_a2_c_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action ugly1009ugly208startup_seg_n_a8a9a_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly1010ugly209move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew0)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
       (not_blocked seg_w1_153b_0_45 airplane_daew2)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (at-segment ?a seg_w1_153b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly1011ugly1106startup_seg_s_b5b8a_0_135_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a))))
 (:action ugly1012ugly1137startup_seg_n_a4a7e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly1013ugly84move_seg_w1_142c_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew0)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew1)
       (not_blocked seg_w1_142b_0_45 airplane_daew2)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (at-segment ?a seg_w1_142b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly1014ugly363startup_seg_a4_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action ugly1015ugly245move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_cfbe1)
       (not_blocked seg_p163_0_75 airplane_daew8)
       (not_blocked seg_p163_0_75 airplane_daew9)
       (not_blocked seg_p163_0_75 airplane_daew0)
       (not_blocked seg_p163_0_75 airplane_daew3)
       (not_blocked seg_p163_0_75 airplane_daewh)
       (not_blocked seg_p163_0_75 airplane_daew1)
       (not_blocked seg_p163_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_p163_0_75)
       (not (not_occupied seg_p163_0_75)) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a)) (at-segment ?a seg_p163_0_75)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)))
 (:action ugly1016ugly1079move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a3a_0_80 airplane_daew8)
       (not_blocked seg_08l_a3a_0_80 airplane_daew9)
       (not_blocked seg_08l_a3a_0_80 airplane_daew0)
       (not_blocked seg_08l_a3a_0_80 airplane_daew3)
       (not_blocked seg_08l_a3a_0_80 airplane_daewh)
       (not_blocked seg_08l_a3a_0_80 airplane_daew1)
       (not_blocked seg_08l_a3a_0_80 airplane_daew2)
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
 (:action ugly1017ugly992startup_seg_s_b9b10c_2_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action ugly1018ugly211startup_seg_o1_111a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action ugly1019ugly123startup_seg_n_a9a10f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action ugly1020ugly1191startup_seg_w1_141c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly1021ugly660startup_seg_w1_152b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action ugly1022ugly1205move_seg_08r_b9c_0_80_seg_09r_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b9c_0_80) (not_occupied seg_09r_0_80)
       (not_blocked seg_09r_0_80 airplane_cfbeg)
       (not_blocked seg_09r_0_80 airplane_cfbe1)
       (not_blocked seg_09r_0_80 airplane_daew8)
       (not_blocked seg_09r_0_80 airplane_daew9)
       (not_blocked seg_09r_0_80 airplane_daew0)
       (not_blocked seg_09r_0_80 airplane_daew3)
       (not_blocked seg_09r_0_80 airplane_daewh)
       (not_blocked seg_09r_0_80 airplane_daew1)
       (not_blocked seg_09r_0_80 airplane_daew2)
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
 (:action ugly1023ugly561startup_seg_p109_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1024ugly1292startup_seg_b5_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_t_b5c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a))))
 (:action ugly1025ugly814startup_seg_s_b6b7b_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action ugly1026ugly1155startup_seg_o1_c1a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action ugly1027ugly268startup_seg_o1_104b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action ugly1028ugly397startup_seg_a2_a_0_90_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly1029ugly1206move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew0)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
       (not_blocked seg_w1_152c_0_34 airplane_daew2)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly1030ugly416startup_seg_o1_118c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action ugly1031ugly847startup_seg_s5_0_94_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_s_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a))))
 (:action
  ugly1032ugly909move_seg_o1_c2d_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew2)
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
  ugly1033ugly159move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew0)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
       (not_blocked seg_w1_152c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)))
 (:action
  ugly1034ugly1002move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew0)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew1)
       (not_blocked seg_o1_104b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p104_0_76)) (not_occupied seg_p104_0_76)
       (not (at-segment ?a seg_p104_0_76)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action ugly1035ugly22startup_seg_08l_a2b_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly1036ugly218move_seg_w1_142b_0_45_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew0)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
       (not_blocked seg_w1_142a_0_34 airplane_daew2)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p142_0_75 ?a)) (not_blocked seg_p142_0_75 ?a)
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly1037ugly465park_seg_p163_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action ugly1038ugly1024startup_seg_n_n2a4a_0_70_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly1039ugly1317move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew0)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p141_0_75)) (not_occupied seg_p141_0_75)
       (not (at-segment ?a seg_p141_0_75)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action ugly1040ugly1098move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_cfbe1)
       (not_blocked seg_n2_0_108 airplane_daew8)
       (not_blocked seg_n2_0_108 airplane_daew9)
       (not_blocked seg_n2_0_108 airplane_daew0)
       (not_blocked seg_n2_0_108 airplane_daew3)
       (not_blocked seg_n2_0_108 airplane_daewh)
       (not_blocked seg_n2_0_108 airplane_daew1)
       (not_blocked seg_n2_0_108 airplane_daew2))
  :effect
  (and (not (occupied seg_n_n2b_0_60)) (not_occupied seg_n_n2b_0_60)
       (not (at-segment ?a seg_n_n2b_0_60)) (occupied seg_n2_0_108)
       (not (not_occupied seg_n2_0_108)) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a)) (at-segment ?a seg_n2_0_108)
       (not (blocked seg_n_n2a_0_60 ?a)) (not_blocked seg_n_n2a_0_60 ?a)
       (not (blocked seg_n_n2c_0_60 ?a)) (not_blocked seg_n_n2c_0_60 ?a)))
 (:action ugly1041ugly636startup_seg_w1_c1a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly1042ugly599startup_seg_m_a6a8b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action ugly1043ugly913move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew0)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
       (not_blocked seg_w1_163b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p163_0_75)) (not_occupied seg_p163_0_75)
       (not (at-segment ?a seg_p163_0_75)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action ugly1044ugly1275startup_seg_s_b5d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5d_0_60)
       (not_occupied seg_s_b5a_0_60) (not_occupied seg_s_b5b_0_60)
       (not_occupied seg_s_b5c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a))))
 (:action ugly1045ugly961startup_seg_n_a9a10a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action ugly1046ugly1031startup_seg_w1_161c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action ugly1047ugly90move_seg_s6_0_94_seg_c4_s6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s6_0_94) (not_occupied seg_c4_s6b_0_60)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6b_0_60 airplane_daew8)
       (not_blocked seg_c4_s6b_0_60 airplane_daew9)
       (not_blocked seg_c4_s6b_0_60 airplane_daew0)
       (not_blocked seg_c4_s6b_0_60 airplane_daew3)
       (not_blocked seg_c4_s6b_0_60 airplane_daewh)
       (not_blocked seg_c4_s6b_0_60 airplane_daew1)
       (not_blocked seg_c4_s6b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s6_0_94)) (not_occupied seg_s6_0_94)
       (not (at-segment ?a seg_s6_0_94)) (occupied seg_c4_s6b_0_60)
       (not (not_occupied seg_c4_s6b_0_60)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (at-segment ?a seg_c4_s6b_0_60)
       (not (blocked seg_s_b5a_0_60 ?a)) (not_blocked seg_s_b5a_0_60 ?a)))
 (:action ugly1048ugly55startup_seg_m_a7d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action ugly1049ugly1111startup_seg_n_a7a6a_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly1050ugly729move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew0)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly1051ugly885move_seg_o1_115c_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew0)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew1)
       (not_blocked seg_o1_115b_0_60 airplane_daew2)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (at-segment ?a seg_o1_115b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (blocked seg_o1_115a_0_34 ?a) (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action ugly1052ugly437park_seg_p103_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action ugly1053ugly1353startup_seg_t_b2c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action ugly1054ugly183startup_seg_s_b6a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action ugly1055ugly833startup_seg_t_b2b3b_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action ugly1056ugly940startup_seg_p164_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1057ugly1103startup_seg_w1_c1b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly1058ugly503startup_seg_p112_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1059ugly63startup_seg_n_n2a4e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly1060ugly714startup_seg_m_a4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action ugly1061ugly1341startup_seg_s_b9b10a_0_125_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action ugly1062ugly632startup_seg_m_a4d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action ugly1063ugly98park_seg_p118_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly1064ugly1288move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew0)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
       (not_blocked seg_w1_153c_0_34 airplane_daew2)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly1065ugly1110park_seg_p117_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly1066ugly960move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
       (not_blocked seg_o1_102a_0_34 airplane_daew2)
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
  ugly1067ugly531move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew0)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew1)
       (not_blocked seg_o1_103b_0_60 airplane_daew2)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (at-segment ?a seg_o1_103b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly1068ugly37startup_seg_t_b8b9c_1_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action ugly1069ugly1325startup_seg_m_a6a8f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly1070ugly840startup_seg_w1_154a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly1071ugly845startup_seg_s_b7c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7b_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action
  ugly1072ugly873move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe1)
       (not_blocked seg_m_a8b_0_60 airplane_daew8)
       (not_blocked seg_m_a8b_0_60 airplane_daew9)
       (not_blocked seg_m_a8b_0_60 airplane_daew0)
       (not_blocked seg_m_a8b_0_60 airplane_daew3)
       (not_blocked seg_m_a8b_0_60 airplane_daewh)
       (not_blocked seg_m_a8b_0_60 airplane_daew1)
       (not_blocked seg_m_a8b_0_60 airplane_daew2)
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
 (:action ugly1073ugly1065startup_seg_a9_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action ugly1074ugly872startup_seg_m_a7c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action ugly1075ugly659startup_seg_08r_b4a_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4a_0_161_245)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action ugly1076ugly1094startup_seg_w1_152a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly1077ugly142move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew0)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew1)
       (not_blocked seg_o1_117a_0_34 airplane_daew2)
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
  ugly1078ugly1130move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew9)
       (not_blocked seg_c4_s6a_0_80 airplane_daew0)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_blocked seg_c4_s6a_0_80 airplane_daewh)
       (not_blocked seg_c4_s6a_0_80 airplane_daew1)
       (not_blocked seg_c4_s6a_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_c4_s6a_0_80)
       (not (not_occupied seg_c4_s6a_0_80)) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (at-segment ?a seg_c4_s6a_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action ugly1079ugly95startup_seg_m_a7a6b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly1080ugly810move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7c_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a4a7d_0_75)) (not_occupied seg_n_a4a7d_0_75)
       (not (at-segment ?a seg_n_a4a7d_0_75)) (occupied seg_n_a4a7c_0_75)
       (not (not_occupied seg_n_a4a7c_0_75)) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a)) (at-segment ?a seg_n_a4a7c_0_75)
       (not (blocked seg_n_a4a7e_0_75 ?a)) (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action ugly1081ugly1101startup_seg_s_b6c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action ugly1082ugly1320startup_seg_t_b4a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action ugly1083ugly853startup_seg_s_b5b8c_0_130_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action
  ugly1084ugly568pushback_seg_o1_c3b_0_60_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew0)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c3b_0_60)) (not_occupied seg_o1_c3b_0_60)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (at-segment ?a seg_o1_c3b_0_60)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly1085ugly170startup_seg_w1_154c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly1086ugly295startup_seg_o1_102b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly1087ugly493startup_seg_m_a8a9a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly1088ugly1220move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew0)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew2)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p119_0_76 ?a)) (not_blocked seg_p119_0_76 ?a)
       (blocked seg_o1_c4a_0_34 ?a) (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action ugly1089ugly57move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew0)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6d_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a6c_0_60)) (not_occupied seg_n_a6c_0_60)
       (not (at-segment ?a seg_n_a6c_0_60)) (occupied seg_n_a7a6d_0_75)
       (not (not_occupied seg_n_a7a6d_0_75)) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a)) (at-segment ?a seg_n_a7a6d_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a6a_0_60 ?a)) (not_blocked seg_n_a6a_0_60 ?a)
       (not (blocked seg_n_a6b_0_60 ?a)) (not_blocked seg_n_a6b_0_60 ?a)))
 (:action ugly1090ugly1217startup_seg_s_b8b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly1091ugly622pushback_seg_p133_0_75_seg_o1_110d_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew0)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
       (not_blocked seg_o1_110d_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p133_0_75)) (not_occupied seg_p133_0_75)
       (not (blocked seg_p133_0_75 ?a)) (not_blocked seg_p133_0_75 ?a)
       (not (at-segment ?a seg_p133_0_75)) (occupied seg_o1_110d_0_45)
       (not (not_occupied seg_o1_110d_0_45)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action
  ugly1092ugly1333pushback_seg_p111_0_76_seg_o1_111b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew0)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
       (not_blocked seg_o1_111b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p111_0_76)) (not_occupied seg_p111_0_76)
       (not (blocked seg_p111_0_76 ?a)) (not_blocked seg_p111_0_76 ?a)
       (not (at-segment ?a seg_p111_0_76)) (occupied seg_o1_111b_0_60)
       (not (not_occupied seg_o1_111b_0_60)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly1093ugly454move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew0)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew1)
       (not_blocked seg_o1_116a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_116a_0_34)
       (not (not_occupied seg_o1_116a_0_34)) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (at-segment ?a seg_o1_116a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly1094ugly806move_seg_o1_c2c_0_34_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew2)
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
 (:action ugly1095ugly143move_seg_b2_0_80_seg_b2_1_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_0_80) (not_occupied seg_b2_1_0_80)
       (not_blocked seg_b2_1_0_80 airplane_cfbeg)
       (not_blocked seg_b2_1_0_80 airplane_cfbe1)
       (not_blocked seg_b2_1_0_80 airplane_daew8)
       (not_blocked seg_b2_1_0_80 airplane_daew9)
       (not_blocked seg_b2_1_0_80 airplane_daew0)
       (not_blocked seg_b2_1_0_80 airplane_daew3)
       (not_blocked seg_b2_1_0_80 airplane_daewh)
       (not_blocked seg_b2_1_0_80 airplane_daew1)
       (not_blocked seg_b2_1_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_b2_0_80)) (not_occupied seg_b2_0_80)
       (not (at-segment ?a seg_b2_0_80)) (occupied seg_b2_1_0_80)
       (not (not_occupied seg_b2_1_0_80)) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a)) (at-segment ?a seg_b2_1_0_80)
       (not (blocked seg_t_b2c_0_60 ?a)) (not_blocked seg_t_b2c_0_60 ?a)))
 (:action
  ugly1096ugly1229move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe1)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew8)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew9)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew0)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew3)
       (not_blocked seg_n_a7a6a_0_85 airplane_daewh)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew1)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a7a6b_0_75)) (not_occupied seg_n_a7a6b_0_75)
       (not (at-segment ?a seg_n_a7a6b_0_75)) (occupied seg_n_a7a6a_0_85)
       (not (not_occupied seg_n_a7a6a_0_85)) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a)) (at-segment ?a seg_n_a7a6a_0_85)
       (not (blocked seg_n_a7a6c_0_75 ?a)) (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action ugly1097ugly701move_seg_s_b6a_0_60_seg_s_b6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60)
       (not_blocked seg_s_b6c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b6c_0_60 airplane_daew8)
       (not_blocked seg_s_b6c_0_60 airplane_daew9)
       (not_blocked seg_s_b6c_0_60 airplane_daew0)
       (not_blocked seg_s_b6c_0_60 airplane_daew3)
       (not_blocked seg_s_b6c_0_60 airplane_daewh)
       (not_blocked seg_s_b6c_0_60 airplane_daew1)
       (not_blocked seg_s_b6c_0_60 airplane_daew2)
       (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (occupied seg_s_b6a_0_60)) (not_occupied seg_s_b6a_0_60)
       (not (at-segment ?a seg_s_b6a_0_60)) (occupied seg_s_b6c_0_60)
       (not (not_occupied seg_s_b6c_0_60)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a)) (at-segment ?a seg_s_b6c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b6b7a_0_140 ?a)) (not_blocked seg_s_b6b7a_0_140 ?a)
       (blocked seg_s_b6b_0_60 ?a) (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action ugly1098ugly186startup_seg_m_a6c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action ugly1099ugly629startup_seg_m_a4a7c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action ugly1100ugly318move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_cfbe1)
       (not_blocked seg_p143_0_75 airplane_daew8)
       (not_blocked seg_p143_0_75 airplane_daew9)
       (not_blocked seg_p143_0_75 airplane_daew0)
       (not_blocked seg_p143_0_75 airplane_daew3)
       (not_blocked seg_p143_0_75 airplane_daewh)
       (not_blocked seg_p143_0_75 airplane_daew1)
       (not_blocked seg_p143_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_p143_0_75)
       (not (not_occupied seg_p143_0_75)) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a)) (at-segment ?a seg_p143_0_75)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)))
 (:action ugly1101ugly686startup_seg_t_b5c_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action ugly1102ugly1040startup_seg_a4_a_0_157_785_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly1103ugly750move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4d_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_n2a4e_0_75)) (not_occupied seg_n_n2a4e_0_75)
       (not (at-segment ?a seg_n_n2a4e_0_75)) (occupied seg_n_n2a4d_0_75)
       (not (not_occupied seg_n_n2a4d_0_75)) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a)) (at-segment ?a seg_n_n2a4d_0_75)
       (not (blocked seg_n_a4c_0_60 ?a)) (not_blocked seg_n_a4c_0_60 ?a)))
 (:action
  ugly1104ugly598move_seg_s_b6c_0_60_seg_s_b4b6c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b6c_0_60) (not_occupied seg_s_b4b6c_0_130)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbe1)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew8)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew9)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew0)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew3)
       (not_blocked seg_s_b4b6c_0_130 airplane_daewh)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew1)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b6c_0_60)) (not_occupied seg_s_b6c_0_60)
       (not (at-segment ?a seg_s_b6c_0_60)) (occupied seg_s_b4b6c_0_130)
       (not (not_occupied seg_s_b4b6c_0_130)) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))
       (at-segment ?a seg_s_b4b6c_0_130) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b6a_0_60 ?a))
       (not_blocked seg_s_b6a_0_60 ?a) (not (blocked seg_s_b6b_0_60 ?a))
       (not_blocked seg_s_b6b_0_60 ?a)))
 (:action ugly1105ugly566takeoff_seg_08r_0_80_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_08r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08r_0_80)) (not_occupied seg_08r_0_80)
       (not (blocked seg_08r_0_80 ?a)) (not_blocked seg_08r_0_80 ?a)
       (not (at-segment ?a seg_08r_0_80)) (airborne ?a seg_08r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b2b3_0_900 ?a))
       (not_blocked seg_08r_b2b3_0_900 ?a)))
 (:action ugly1106ugly708startup_seg_n_a7a6d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly1107ugly1122move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7b_0_60 airplane_daew8)
       (not_blocked seg_n_a7b_0_60 airplane_daew9)
       (not_blocked seg_n_a7b_0_60 airplane_daew0)
       (not_blocked seg_n_a7b_0_60 airplane_daew3)
       (not_blocked seg_n_a7b_0_60 airplane_daewh)
       (not_blocked seg_n_a7b_0_60 airplane_daew1)
       (not_blocked seg_n_a7b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a7a6a_0_85)) (not_occupied seg_n_a7a6a_0_85)
       (not (at-segment ?a seg_n_a7a6a_0_85)) (occupied seg_n_a7b_0_60)
       (not (not_occupied seg_n_a7b_0_60)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (at-segment ?a seg_n_a7b_0_60)
       (not (blocked seg_n_a7a6b_0_75 ?a)) (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action ugly1108ugly241park_seg_p109_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action ugly1109ugly282startup_seg_m_a4a7f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly1110ugly1052move_seg_o1_c4c_0_80_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew0)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew2)
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
  ugly1111ugly1322move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly1112ugly1042startup_seg_t_b5b8b_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action ugly1113ugly1023startup_seg_t_b6a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action ugly1114ugly932startup_seg_n_a6b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly1115ugly752move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew0)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
       (not_blocked seg_o1_116c_0_34 airplane_daew2)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p116_0_76 ?a)) (not_blocked seg_p116_0_76 ?a)
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action ugly1116ugly1284startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action ugly1117ugly152startup_seg_t_b5d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5d_0_60)
       (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action ugly1118ugly462startup_seg_t_b9b10c_2_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action ugly1119ugly124move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_cfbe1)
       (not_blocked seg_p118_0_76 airplane_daew8)
       (not_blocked seg_p118_0_76 airplane_daew9)
       (not_blocked seg_p118_0_76 airplane_daew0)
       (not_blocked seg_p118_0_76 airplane_daew3)
       (not_blocked seg_p118_0_76 airplane_daewh)
       (not_blocked seg_p118_0_76 airplane_daew1)
       (not_blocked seg_p118_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_p118_0_76)
       (not (not_occupied seg_p118_0_76)) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a)) (at-segment ?a seg_p118_0_76)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)))
 (:action ugly1120ugly1148startup_seg_m_a7a6a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action ugly1121ugly388startup_seg_s_b9a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action ugly1122ugly169startup_seg_w1_c1b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly1123ugly926startup_seg_n_a9b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action ugly1124ugly1352startup_seg_w1_153a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly1125ugly1309move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7b_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a4a7c_0_75)) (not_occupied seg_n_a4a7c_0_75)
       (not (at-segment ?a seg_n_a4a7c_0_75)) (occupied seg_n_a4a7b_0_75)
       (not (not_occupied seg_n_a4a7b_0_75)) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a)) (at-segment ?a seg_n_a4a7b_0_75)
       (not (blocked seg_n_a4a7d_0_75 ?a)) (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly1126ugly164move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew0)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
       (not_blocked seg_w1_152c_0_34 airplane_daew2)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p152_0_75 ?a)) (not_blocked seg_p152_0_75 ?a)
       (blocked seg_w1_152a_0_34 ?a) (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action ugly1127ugly989startup_seg_a2_a_0_90_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action ugly1128ugly258startup_seg_n_a6a8b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly1129ugly732move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2)
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
  ugly1130ugly285move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew0)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
       (not_blocked seg_w1_154a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action ugly1131ugly1301startup_seg_s_b4b6b_0_135_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action ugly1132ugly48startup_seg_w1_152c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly1133ugly638startup_seg_s_b9b10a_0_125_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a))))
 (:action ugly1134ugly982startup_seg_m_a9c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9b_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly1135ugly782move_seg_b8_a_0_156_924_seg_b8_b_1_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_a_0_156_924) (not_occupied seg_b8_b_1_0_80_6226)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbe1)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew9)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew0)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew3)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daewh)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew1)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew2))
  :effect
  (and (not (occupied seg_b8_a_0_156_924)) (not_occupied seg_b8_a_0_156_924)
       (not (at-segment ?a seg_b8_a_0_156_924)) (occupied seg_b8_b_1_0_80_6226)
       (not (not_occupied seg_b8_b_1_0_80_6226))
       (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))
       (at-segment ?a seg_b8_b_1_0_80_6226)
       (not (blocked seg_08r_b6a_0_161_245 ?a))
       (not_blocked seg_08r_b6a_0_161_245 ?a)))
 (:action ugly1136ugly335startup_seg_t_b8b9b_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action ugly1137ugly1313startup_seg_s_b6b7a_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action ugly1138ugly113startup_seg_p115_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly1139ugly191move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
       (not_blocked seg_o1_109a_0_34 airplane_daew2)
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
 (:action ugly1140ugly631startup_seg_m_a10c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly1141ugly173move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew0)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew2)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (at-segment ?a seg_o1_118b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly1142ugly709startup_seg_t_b3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly1143ugly818move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew9)
       (not_blocked seg_w1_c3c_0_48 airplane_daew0)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew1)
       (not_blocked seg_w1_c3c_0_48 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_c3c_0_48)
       (not (not_occupied seg_w1_c3c_0_48)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a)) (at-segment ?a seg_w1_c3c_0_48)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly1144ugly28move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2)
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
 (:action ugly1145ugly1374startup_seg_m_a9d_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9b_0_60)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action ugly1146ugly645startup_seg_o1_c3d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action ugly1147ugly766startup_seg_s_b3a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action ugly1148ugly1172startup_seg_o1_110c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action ugly1149ugly1104startup_seg_b5_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action ugly1150ugly243startup_seg_o1_115b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action ugly1151ugly998startup_seg_s_b9c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly1152ugly404move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew0)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
       (not_blocked seg_w1_154b_0_45 airplane_daew2)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (at-segment ?a seg_w1_154b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly1153ugly35move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1b_0_60 airplane_daew8)
       (not_blocked seg_w1_c1b_0_60 airplane_daew9)
       (not_blocked seg_w1_c1b_0_60 airplane_daew0)
       (not_blocked seg_w1_c1b_0_60 airplane_daew3)
       (not_blocked seg_w1_c1b_0_60 airplane_daewh)
       (not_blocked seg_w1_c1b_0_60 airplane_daew1)
       (not_blocked seg_w1_c1b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_c1_n2c_0_60)) (not_occupied seg_c1_n2c_0_60)
       (not (at-segment ?a seg_c1_n2c_0_60)) (occupied seg_w1_c1b_0_60)
       (not (not_occupied seg_w1_c1b_0_60)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (at-segment ?a seg_w1_c1b_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c1_n2a_0_60 ?a)) (not_blocked seg_c1_n2a_0_60 ?a)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)))
 (:action ugly1154ugly275startup_seg_o1_c2c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly1155ugly891startup_seg_m_a9a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9b_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly1156ugly694move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew0)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew2))
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
  ugly1157ugly656move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew0)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
       (not_blocked seg_w1_162c_0_34 airplane_daew2)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p162_0_75 ?a)) (not_blocked seg_p162_0_75 ?a)
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action ugly1158ugly995startup_seg_a8_b_1_0_79_7559_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action ugly1159ugly710park_seg_p153_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action ugly1160ugly1297startup_seg_o1_c2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action ugly1161ugly1198move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p112_0_76)) (not_occupied seg_p112_0_76)
       (not (at-segment ?a seg_p112_0_76)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)))
 (:action
  ugly1162ugly756move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew0)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
       (not_blocked seg_w1_143c_0_60 airplane_daew2)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_w1_143c_0_60)
       (not (not_occupied seg_w1_143c_0_60)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a)) (at-segment ?a seg_w1_143c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p143_0_75 ?a)) (not_blocked seg_p143_0_75 ?a)
       (blocked seg_w1_143a_0_34 ?a) (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action ugly1163ugly451startup_seg_m_a9a10a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action ugly1164ugly158park_seg_p152_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly1165ugly354move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew0)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew2)
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
  ugly1166ugly658move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew0)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
       (not_blocked seg_o1_115c_0_34 airplane_daew2)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_115c_0_34)
       (not (not_occupied seg_o1_115c_0_34)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a)) (at-segment ?a seg_o1_115c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action ugly1167ugly257startup_seg_t_b6b7b_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action ugly1168ugly890startup_seg_t_b3c_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3b_0_60)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly1169ugly1267move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew0)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
       (not_blocked seg_o1_104c_0_60 airplane_daew2)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly1170ugly265move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3d_0_60 airplane_daew8)
       (not_blocked seg_n_a3d_0_60 airplane_daew9)
       (not_blocked seg_n_a3d_0_60 airplane_daew0)
       (not_blocked seg_n_a3d_0_60 airplane_daew3)
       (not_blocked seg_n_a3d_0_60 airplane_daewh)
       (not_blocked seg_n_a3d_0_60 airplane_daew1)
       (not_blocked seg_n_a3d_0_60 airplane_daew2)
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
 (:action ugly1171ugly1039startup_seg_n_a7b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly1172ugly983move_seg_s_b4c_0_60_seg_s_b3b4d_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b4c_0_60) (not_occupied seg_s_b3b4d_0_140)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4d_0_140 airplane_daewh)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew1)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b4c_0_60)) (not_occupied seg_s_b4c_0_60)
       (not (at-segment ?a seg_s_b4c_0_60)) (occupied seg_s_b3b4d_0_140)
       (not (not_occupied seg_s_b3b4d_0_140)) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))
       (at-segment ?a seg_s_b3b4d_0_140) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b4a_0_60 ?a))
       (not_blocked seg_s_b4a_0_60 ?a) (not (blocked seg_s_b4b_0_60 ?a))
       (not_blocked seg_s_b4b_0_60 ?a)))
 (:action ugly1173ugly577startup_seg_n_a10b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action ugly1174ugly514startup_seg_w1_154b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action ugly1175ugly377move_seg_s5_0_94_seg_s_b7a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s5_0_94) (not_occupied seg_s_b7a_0_60)
       (not_blocked seg_s_b7a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b7a_0_60 airplane_daew8)
       (not_blocked seg_s_b7a_0_60 airplane_daew9)
       (not_blocked seg_s_b7a_0_60 airplane_daew0)
       (not_blocked seg_s_b7a_0_60 airplane_daew3)
       (not_blocked seg_s_b7a_0_60 airplane_daewh)
       (not_blocked seg_s_b7a_0_60 airplane_daew1)
       (not_blocked seg_s_b7a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s5_0_94)) (not_occupied seg_s5_0_94)
       (not (at-segment ?a seg_s5_0_94)) (occupied seg_s_b7a_0_60)
       (not (not_occupied seg_s_b7a_0_60)) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (at-segment ?a seg_s_b7a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c4c_0_60 ?a)) (not_blocked seg_w1_c4c_0_60 ?a)))
 (:action
  ugly1176ugly1318move_seg_o1_108c_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
       (not_blocked seg_o1_108d_0_45 airplane_daew2)
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
  ugly1177ugly1338move_seg_t_b8c_0_120_934_seg_t_b8a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b8c_0_120_934) (not_occupied seg_t_b8a_0_60)
       (not_blocked seg_t_b8a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b8a_0_60 airplane_cfbe1)
       (not_blocked seg_t_b8a_0_60 airplane_daew8)
       (not_blocked seg_t_b8a_0_60 airplane_daew9)
       (not_blocked seg_t_b8a_0_60 airplane_daew0)
       (not_blocked seg_t_b8a_0_60 airplane_daew3)
       (not_blocked seg_t_b8a_0_60 airplane_daewh)
       (not_blocked seg_t_b8a_0_60 airplane_daew1)
       (not_blocked seg_t_b8a_0_60 airplane_daew2)
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
 (:action ugly1178ugly1321startup_seg_o1_c2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly1179ugly150startup_seg_s_b6b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action ugly1180ugly1051startup_seg_w1_c4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly1181ugly1190pushback_seg_o1_108d_0_45_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly1182ugly759move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew0)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_p119_0_76)) (not_occupied seg_p119_0_76)
       (not (at-segment ?a seg_p119_0_76)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)))
 (:action ugly1183ugly1365startup_seg_p102_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly1184ugly118startup_seg_s_b8b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_t_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a))))
 (:action
  ugly1185ugly1117move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe1)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew9)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew0)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew3)
       (not_blocked seg_a8_b_0_80_6226 airplane_daewh)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew1)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew2))
  :effect
  (and (not (occupied seg_a8_b_1_0_79_7559))
       (not_occupied seg_a8_b_1_0_79_7559)
       (not (at-segment ?a seg_a8_b_1_0_79_7559)) (occupied seg_a8_b_0_80_6226)
       (not (not_occupied seg_a8_b_0_80_6226)) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))
       (at-segment ?a seg_a8_b_0_80_6226) (not (blocked seg_a8_a_0_157_785 ?a))
       (not_blocked seg_a8_a_0_157_785 ?a)))
 (:action
  ugly1186ugly606move_seg_o1_118c_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew0)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew2)
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
  ugly1187ugly731move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew0)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
       (not_blocked seg_w1_142c_0_34 airplane_daew2)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p142_0_75 ?a)) (not_blocked seg_p142_0_75 ?a)
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly1188ugly41park_seg_p152_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action ugly1189ugly799startup_seg_a4_a_0_157_785_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action ugly1190ugly456startup_seg_m_a6c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly1191ugly762startup_seg_b9_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly1192ugly532move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew0)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
       (not_blocked seg_w1_162c_0_34 airplane_daew2)
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
  ugly1193ugly457move_seg_s_b3b4b_0_140_seg_s_b3b4a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4b_0_140) (not_occupied seg_s_b3b4a_0_140)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4a_0_140 airplane_daewh)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew1)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b3b4b_0_140)) (not_occupied seg_s_b3b4b_0_140)
       (not (at-segment ?a seg_s_b3b4b_0_140)) (occupied seg_s_b3b4a_0_140)
       (not (not_occupied seg_s_b3b4a_0_140)) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))
       (at-segment ?a seg_s_b3b4a_0_140) (not (blocked seg_s_b3b4c_0_140 ?a))
       (not_blocked seg_s_b3b4c_0_140 ?a)))
 (:action ugly1194ugly1387startup_seg_c4_s6c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly1195ugly702park_seg_p111_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action ugly1196ugly1047move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_cfbe1)
       (not_blocked seg_a2_a_0_90 airplane_daew8)
       (not_blocked seg_a2_a_0_90 airplane_daew9)
       (not_blocked seg_a2_a_0_90 airplane_daew0)
       (not_blocked seg_a2_a_0_90 airplane_daew3)
       (not_blocked seg_a2_a_0_90 airplane_daewh)
       (not_blocked seg_a2_a_0_90 airplane_daew1)
       (not_blocked seg_a2_a_0_90 airplane_daew2))
  :effect
  (and (not (occupied seg_a2_b_0_90)) (not_occupied seg_a2_b_0_90)
       (not (at-segment ?a seg_a2_b_0_90)) (occupied seg_a2_a_0_90)
       (not (not_occupied seg_a2_a_0_90)) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a)) (at-segment ?a seg_a2_a_0_90)
       (not (blocked seg_a2_c_0_100 ?a)) (not_blocked seg_a2_c_0_100 ?a)))
 (:action ugly1197ugly551startup_seg_a10_1_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action ugly1198ugly401startup_seg_n_n2a4d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action ugly1199ugly1259startup_seg_m_a6a8b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly1200ugly147move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew0)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
       (not_blocked seg_o1_102c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly1201ugly997move_seg_w1_153b_0_45_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew0)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew1)
       (not_blocked seg_w1_153a_0_34 airplane_daew2)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p153_0_75 ?a)) (not_blocked seg_p153_0_75 ?a)
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly1202ugly1260startup_seg_p162_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly1203ugly1164move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8e_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a6a8f_0_75)) (not_occupied seg_n_a6a8f_0_75)
       (not (at-segment ?a seg_n_a6a8f_0_75)) (occupied seg_n_a6a8e_0_75)
       (not (not_occupied seg_n_a6a8e_0_75)) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a)) (at-segment ?a seg_n_a6a8e_0_75)
       (not (blocked seg_n_a8c_0_60 ?a)) (not_blocked seg_n_a8c_0_60 ?a)))
 (:action ugly1204ugly302startup_seg_m_a9b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action ugly1205ugly72startup_seg_m_a6a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6b_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly1206ugly15startup_seg_m_a8d_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly1207ugly132startup_seg_n1_0_108_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly1208ugly1377move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew0)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_c4_s6a_0_80)) (not_occupied seg_c4_s6a_0_80)
       (not (at-segment ?a seg_c4_s6a_0_80)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c4_s6b_0_60 ?a)) (not_blocked seg_c4_s6b_0_60 ?a)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)))
 (:action
  ugly1209ugly929move_seg_08r_b6c_0_80_seg_08r_b6a_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6a_0_161_245)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbeg)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbe1)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew8)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew9)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew0)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew3)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daewh)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew1)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew2)
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
 (:action ugly1210ugly715startup_seg_s_b8b9a_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action ugly1211ugly1080startup_seg_w1_152c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly1212ugly616startup_seg_o1_117c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly1213ugly1218move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew0)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew1)
       (not_blocked seg_w1_153a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action ugly1214ugly888startup_seg_m_a8b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly1215ugly1342startup_seg_b5_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly1216ugly901move_seg_w1_143b_0_45_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew0)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew1)
       (not_blocked seg_w1_143a_0_34 airplane_daew2)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p143_0_75 ?a)) (not_blocked seg_p143_0_75 ?a)
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly1217ugly612startup_seg_m_a4a7a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action ugly1218ugly16park_seg_p108_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly1219ugly1028move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2)
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
 (:action ugly1220ugly436startup_seg_n_a8c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly1221ugly996move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2))
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
  ugly1222ugly1238move_seg_w1_161b_0_45_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew0)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew1)
       (not_blocked seg_w1_161a_0_34 airplane_daew2)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_w1_161a_0_34)
       (not (not_occupied seg_w1_161a_0_34)) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (at-segment ?a seg_w1_161a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p161_0_75 ?a)) (not_blocked seg_p161_0_75 ?a)
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly1223ugly555startup_seg_a3_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action ugly1224ugly868startup_seg_w1_c3a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly1225ugly210startup_seg_s_b4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly1226ugly726pushback_seg_w1_163b_0_45_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew0)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
       (not_blocked seg_w1_163c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly1227ugly745move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_cfbe1)
       (not_blocked seg_p117_0_76 airplane_daew8)
       (not_blocked seg_p117_0_76 airplane_daew9)
       (not_blocked seg_p117_0_76 airplane_daew0)
       (not_blocked seg_p117_0_76 airplane_daew3)
       (not_blocked seg_p117_0_76 airplane_daewh)
       (not_blocked seg_p117_0_76 airplane_daew1)
       (not_blocked seg_p117_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_p117_0_76)
       (not (not_occupied seg_p117_0_76)) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a)) (at-segment ?a seg_p117_0_76)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)))
 (:action ugly1228ugly341startup_seg_n_a6c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action ugly1229ugly168startup_seg_m_a9a10f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly1230ugly1068move_seg_s_b6b7a_0_140_seg_s_b6a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7a_0_140) (not_occupied seg_s_b6a_0_60)
       (not_blocked seg_s_b6a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b6a_0_60 airplane_daew8)
       (not_blocked seg_s_b6a_0_60 airplane_daew9)
       (not_blocked seg_s_b6a_0_60 airplane_daew0)
       (not_blocked seg_s_b6a_0_60 airplane_daew3)
       (not_blocked seg_s_b6a_0_60 airplane_daewh)
       (not_blocked seg_s_b6a_0_60 airplane_daew1)
       (not_blocked seg_s_b6a_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b6b7a_0_140)) (not_occupied seg_s_b6b7a_0_140)
       (not (at-segment ?a seg_s_b6b7a_0_140)) (occupied seg_s_b6a_0_60)
       (not (not_occupied seg_s_b6a_0_60)) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (at-segment ?a seg_s_b6a_0_60)
       (not (blocked seg_s_b6b7b_0_140 ?a))
       (not_blocked seg_s_b6b7b_0_140 ?a)))
 (:action ugly1231ugly5move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew0)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
       (not_blocked seg_o1_104c_0_60 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c2a_0_60)) (not_occupied seg_o1_c2a_0_60)
       (not (at-segment ?a seg_o1_c2a_0_60)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action ugly1232ugly651startup_seg_m_a7a6c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action ugly1233ugly206move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_cfbe1)
       (not_blocked seg_p107_0_76 airplane_daew8)
       (not_blocked seg_p107_0_76 airplane_daew9)
       (not_blocked seg_p107_0_76 airplane_daew0)
       (not_blocked seg_p107_0_76 airplane_daew3)
       (not_blocked seg_p107_0_76 airplane_daewh)
       (not_blocked seg_p107_0_76 airplane_daew1)
       (not_blocked seg_p107_0_76 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_p107_0_76)
       (not (not_occupied seg_p107_0_76)) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a)) (at-segment ?a seg_p107_0_76)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly1234ugly950pushback_seg_p131_0_75_seg_o1_108d_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
       (not_blocked seg_o1_108d_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (blocked seg_p131_0_75 ?a)) (not_blocked seg_p131_0_75 ?a)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action ugly1235ugly850startup_seg_p102_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1236ugly755startup_seg_m_a7a_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action ugly1237ugly774startup_seg_t_b5b8c_0_130_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly1238ugly229startup_seg_t_b2b3c_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action ugly1239ugly624startup_seg_o1_110d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly1240ugly300move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew0)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew2)
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
  ugly1241ugly129move_seg_w1_143c_0_60_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew0)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew1)
       (not_blocked seg_w1_143b_0_45 airplane_daew2)
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
  ugly1242ugly1249move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe1)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew8)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew9)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew0)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew3)
       (not_blocked seg_n_a2a3f_0_115 airplane_daewh)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew1)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew2))
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
 (:action ugly1243ugly343move_seg_s_b8b_0_60_seg_s_b8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60)
       (not_blocked seg_s_b8c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b8c_0_60 airplane_daew8)
       (not_blocked seg_s_b8c_0_60 airplane_daew9)
       (not_blocked seg_s_b8c_0_60 airplane_daew0)
       (not_blocked seg_s_b8c_0_60 airplane_daew3)
       (not_blocked seg_s_b8c_0_60 airplane_daewh)
       (not_blocked seg_s_b8c_0_60 airplane_daew1)
       (not_blocked seg_s_b8c_0_60 airplane_daew2)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (occupied seg_s_b8b_0_60)) (not_occupied seg_s_b8b_0_60)
       (not (at-segment ?a seg_s_b8b_0_60)) (occupied seg_s_b8c_0_60)
       (not (not_occupied seg_s_b8c_0_60)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a)) (at-segment ?a seg_s_b8c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_t_b8a_0_60 ?a)) (not_blocked seg_t_b8a_0_60 ?a)
       (blocked seg_s_b8a_0_60 ?a) (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action ugly1244ugly340startup_seg_m_a6a8f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action ugly1245ugly768startup_seg_p132_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1246ugly30startup_seg_w1_161b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly1247ugly461startup_seg_n_a4a7a_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action ugly1248ugly1346startup_seg_m_a4a7d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly1249ugly80startup_seg_p108_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1250ugly1115startup_seg_w1_c1c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly1251ugly534move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew0)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
       (not_blocked seg_w1_142c_0_34 airplane_daew2)
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
  ugly1252ugly777move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe1)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew8)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew9)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew0)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew3)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daewh)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew1)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew2))
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
  ugly1253ugly403move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew0)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
       (not_blocked seg_w1_154a_0_34 airplane_daew2)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly1254ugly876startup_seg_08r_b9a_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action ugly1255ugly66startup_seg_m_a8a9a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action ugly1256ugly981startup_seg_p153_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly1257ugly157startup_seg_p117_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly1258ugly1064startup_seg_n_n2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly1259ugly1196startup_seg_o1_117b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action ugly1260ugly862startup_seg_a7_a_0_156_924_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly1261ugly1241move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew0)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
       (not_blocked seg_w1_161c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_161c_0_34)
       (not (not_occupied seg_w1_161c_0_34)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a)) (at-segment ?a seg_w1_161c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)))
 (:action ugly1262ugly578move_seg_s_b3a_0_60_seg_s_b3c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60)
       (not_blocked seg_s_b3c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b3c_0_60 airplane_daew8)
       (not_blocked seg_s_b3c_0_60 airplane_daew9)
       (not_blocked seg_s_b3c_0_60 airplane_daew0)
       (not_blocked seg_s_b3c_0_60 airplane_daew3)
       (not_blocked seg_s_b3c_0_60 airplane_daewh)
       (not_blocked seg_s_b3c_0_60 airplane_daew1)
       (not_blocked seg_s_b3c_0_60 airplane_daew2)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (occupied seg_s_b3a_0_60)) (not_occupied seg_s_b3a_0_60)
       (not (at-segment ?a seg_s_b3a_0_60)) (occupied seg_s_b3c_0_60)
       (not (not_occupied seg_s_b3c_0_60)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a)) (at-segment ?a seg_s_b3c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b3b4a_0_140 ?a)) (not_blocked seg_s_b3b4a_0_140 ?a)
       (blocked seg_s_b3b_0_60 ?a) (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action ugly1263ugly619startup_seg_t_b2b3a_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action ugly1264ugly838startup_seg_t_b3b4b_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action ugly1265ugly988move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew0)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew1)
       (not_blocked seg_w1_161b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p161_0_75)) (not_occupied seg_p161_0_75)
       (not (at-segment ?a seg_p161_0_75)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action ugly1266ugly1087startup_seg_08r_b6d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action ugly1267ugly262startup_seg_t_b2b3a_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action ugly1268ugly571move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew0)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew1)
       (not_blocked seg_w1_142b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p142_0_75)) (not_occupied seg_p142_0_75)
       (not (at-segment ?a seg_p142_0_75)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action ugly1269ugly648startup_seg_w1_c3a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly1270ugly385move_seg_c4_s6b_0_60_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew9)
       (not_blocked seg_c4_s6c_0_60 airplane_daew0)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
       (not_blocked seg_c4_s6c_0_60 airplane_daewh)
       (not_blocked seg_c4_s6c_0_60 airplane_daew1)
       (not_blocked seg_c4_s6c_0_60 airplane_daew2)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (occupied seg_c4_s6b_0_60)) (not_occupied seg_c4_s6b_0_60)
       (not (at-segment ?a seg_c4_s6b_0_60)) (occupied seg_c4_s6c_0_60)
       (not (not_occupied seg_c4_s6c_0_60)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a)) (at-segment ?a seg_c4_s6c_0_60)
       (not (facing ?a north)) (facing ?a south) (not (blocked seg_s6_0_94 ?a))
       (not_blocked seg_s6_0_94 ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action ugly1271ugly548startup_seg_o1_104a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly1272ugly125startup_seg_p110_0_76_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action ugly1273ugly379startup_seg_b9_a_0_156_924_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_08r_b9a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9a_0_161_245 ?a)
       (not (not_blocked seg_08r_b9a_0_161_245 ?a))))
 (:action ugly1274ugly242startup_seg_s_b5d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5d_0_60)
       (not_occupied seg_s_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a))))
 (:action
  ugly1275ugly700pushback_seg_o1_111b_0_60_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_111b_0_60)) (not_occupied seg_o1_111b_0_60)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (at-segment ?a seg_o1_111b_0_60)) (occupied seg_o1_111c_0_34)
       (not (not_occupied seg_o1_111c_0_34)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (at-segment ?a seg_o1_111c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly1276ugly879startup_seg_t_b8d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8d_0_60)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8b_0_60)
       (not_occupied seg_t_b8c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))))
 (:action ugly1277ugly1290startup_seg_m_a9a10d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action ugly1278ugly1331startup_seg_b8_a_0_156_924_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly1279ugly1179move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe1)
       (not_blocked seg_a8_a_0_157_785 airplane_daew8)
       (not_blocked seg_a8_a_0_157_785 airplane_daew9)
       (not_blocked seg_a8_a_0_157_785 airplane_daew0)
       (not_blocked seg_a8_a_0_157_785 airplane_daew3)
       (not_blocked seg_a8_a_0_157_785 airplane_daewh)
       (not_blocked seg_a8_a_0_157_785 airplane_daew1)
       (not_blocked seg_a8_a_0_157_785 airplane_daew2))
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
  ugly1280ugly944move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4d_0_80 airplane_daew8)
       (not_blocked seg_08l_a4d_0_80 airplane_daew9)
       (not_blocked seg_08l_a4d_0_80 airplane_daew0)
       (not_blocked seg_08l_a4d_0_80 airplane_daew3)
       (not_blocked seg_08l_a4d_0_80 airplane_daewh)
       (not_blocked seg_08l_a4d_0_80 airplane_daew1)
       (not_blocked seg_08l_a4d_0_80 airplane_daew2))
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
 (:action ugly1281ugly196startup_seg_b3_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action ugly1282ugly331startup_seg_s_b4b6c_0_130_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action ugly1283ugly1293startup_seg_o1_108d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action ugly1284ugly1088startup_seg_m_a8a9b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action ugly1285ugly820startup_seg_m_a7d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action ugly1286ugly135startup_seg_t_b4c_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4c_0_120_934)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action ugly1287ugly83startup_seg_n_a2a3c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action ugly1288ugly17move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew2)
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
  ugly1289ugly488move_seg_o1_c4a_0_34_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew0)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew2)
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
  ugly1290ugly1243move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew0)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew1)
       (not_blocked seg_o1_104b_0_60 airplane_daew2)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (at-segment ?a seg_o1_104b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly1291ugly139startup_seg_m_a8d_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action ugly1292ugly597startup_seg_m_a7a6a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action ugly1293ugly954startup_seg_n_a2a3f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action ugly1294ugly735startup_seg_o1_108c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action ugly1295ugly382startup_seg_m_a4a7b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly1296ugly128startup_seg_n_a3c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly1297ugly935startup_seg_p117_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1298ugly480startup_seg_w1_143b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action ugly1299ugly594startup_seg_p104_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1300ugly23startup_seg_t_b8b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly1301ugly679move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2))
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
  ugly1302ugly399move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew0)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
       (not_blocked seg_o1_102c_0_34 airplane_daew2)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p102_0_76 ?a)) (not_blocked seg_p102_0_76 ?a)
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action ugly1303ugly688startup_seg_t_b8c_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8b_0_60)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly1304ugly1381startup_seg_m_a7a6d_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly1305ugly843move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7d_0_80 airplane_daew8)
       (not_blocked seg_08l_a7d_0_80 airplane_daew9)
       (not_blocked seg_08l_a7d_0_80 airplane_daew0)
       (not_blocked seg_08l_a7d_0_80 airplane_daew3)
       (not_blocked seg_08l_a7d_0_80 airplane_daewh)
       (not_blocked seg_08l_a7d_0_80 airplane_daew1)
       (not_blocked seg_08l_a7d_0_80 airplane_daew2))
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
 (:action ugly1306ugly741startup_seg_t_b10c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action ugly1307ugly1304startup_seg_a7_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action ugly1308ugly312startup_seg_b6_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action ugly1309ugly175startup_seg_m_a6a8e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly1310ugly1273move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2)
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
 (:action ugly1311ugly146startup_seg_t_b7c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action ugly1312ugly654startup_seg_m_a4a7f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly1313ugly687startup_seg_t_b4b6c_0_130_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action ugly1314ugly1248startup_seg_n_a8b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action ugly1315ugly1268startup_seg_t_b6b7a_0_140_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action ugly1316ugly666startup_seg_o1_c1c_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly1317ugly1park_seg_p141_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action ugly1318ugly362startup_seg_m_a8a9c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly1319ugly279move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4c_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_n2a4d_0_75)) (not_occupied seg_n_n2a4d_0_75)
       (not (at-segment ?a seg_n_n2a4d_0_75)) (occupied seg_n_n2a4c_0_75)
       (not (not_occupied seg_n_n2a4c_0_75)) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a)) (at-segment ?a seg_n_n2a4c_0_75)
       (not (blocked seg_n_n2a4e_0_75 ?a)) (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action
  ugly1320ugly543move_seg_w1_154b_0_45_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew0)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
       (not_blocked seg_w1_154a_0_34 airplane_daew2)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p154_0_75 ?a)) (not_blocked seg_p154_0_75 ?a)
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly1321ugly934startup_seg_p154_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly1322ugly288startup_seg_o1_109b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly1323ugly444move_seg_08r_b6b9_0_420_seg_08r_b9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b9_0_420) (not_occupied seg_08r_b9c_0_80)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b9c_0_80 airplane_daew8)
       (not_blocked seg_08r_b9c_0_80 airplane_daew9)
       (not_blocked seg_08r_b9c_0_80 airplane_daew0)
       (not_blocked seg_08r_b9c_0_80 airplane_daew3)
       (not_blocked seg_08r_b9c_0_80 airplane_daewh)
       (not_blocked seg_08r_b9c_0_80 airplane_daew1)
       (not_blocked seg_08r_b9c_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_08r_b6b9_0_420)) (not_occupied seg_08r_b6b9_0_420)
       (not (at-segment ?a seg_08r_b6b9_0_420)) (occupied seg_08r_b9c_0_80)
       (not (not_occupied seg_08r_b9c_0_80)) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (at-segment ?a seg_08r_b9c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b6b_0_80 ?a)) (not_blocked seg_08r_b6b_0_80 ?a)))
 (:action
  ugly1324ugly1019move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew0)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew1)
       (not_blocked seg_w1_164c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_c4a_0_34)) (not_occupied seg_w1_c4a_0_34)
       (not (at-segment ?a seg_w1_c4a_0_34)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c4b_0_60 ?a)) (not_blocked seg_w1_c4b_0_60 ?a)
       (not (blocked seg_w1_c4c_0_60 ?a)) (not_blocked seg_w1_c4c_0_60 ?a)))
 (:action ugly1325ugly1203startup_seg_m_a7b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly1326ugly780move_seg_w1_c4b_0_60_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew9)
       (not_blocked seg_w1_c4c_0_60 airplane_daew0)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_blocked seg_w1_c4c_0_60 airplane_daewh)
       (not_blocked seg_w1_c4c_0_60 airplane_daew1)
       (not_blocked seg_w1_c4c_0_60 airplane_daew2)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (occupied seg_w1_c4b_0_60)) (not_occupied seg_w1_c4b_0_60)
       (not (at-segment ?a seg_w1_c4b_0_60)) (occupied seg_w1_c4c_0_60)
       (not (not_occupied seg_w1_c4c_0_60)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a)) (at-segment ?a seg_w1_c4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)
       (blocked seg_w1_c4a_0_34 ?a) (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action ugly1327ugly185startup_seg_t_b3b4b_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly1328ugly498move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_102a_0_34)) (not_occupied seg_o1_102a_0_34)
       (not (at-segment ?a seg_o1_102a_0_34)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)))
 (:action ugly1329ugly857startup_seg_o1_c4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action ugly1330ugly26move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew9)
       (not_blocked seg_w1_c1a_0_60 airplane_daew0)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew1)
       (not_blocked seg_w1_c1a_0_60 airplane_daew2)
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
  ugly1331ugly495move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8b_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a6a8c_0_75)) (not_occupied seg_n_a6a8c_0_75)
       (not (at-segment ?a seg_n_a6a8c_0_75)) (occupied seg_n_a6a8b_0_75)
       (not (not_occupied seg_n_a6a8b_0_75)) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a)) (at-segment ?a seg_n_a6a8b_0_75)
       (not (blocked seg_n_a6a8d_0_75 ?a)) (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action ugly1332ugly1236startup_seg_c1_n2c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action ugly1333ugly463startup_seg_08l_a4b_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_08l_a4a_0_80) (not_occupied seg_08l_a4c_0_161_245)
       (not_occupied seg_08l_a4d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a))
       (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))
       (blocked seg_08l_a4d_0_80 ?a) (not (not_blocked seg_08l_a4d_0_80 ?a))))
 (:action ugly1334ugly956park_seg_p143_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly1335ugly69move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew0)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
       (not_blocked seg_o1_103c_0_34 airplane_daew2)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p103_0_76 ?a)) (not_blocked seg_p103_0_76 ?a)
       (blocked seg_o1_103a_0_34 ?a) (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action ugly1336ugly526startup_seg_m_a3a4f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly1337ugly232move_seg_w1_164b_0_45_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew0)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
       (not_blocked seg_w1_164a_0_34 airplane_daew2)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p164_0_75 ?a)) (not_blocked seg_p164_0_75 ?a)
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly1338ugly110startup_seg_m_a8a9d_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action ugly1339ugly425park_seg_p154_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly1340ugly856move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3e_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2a3f_0_115)) (not_occupied seg_n_a2a3f_0_115)
       (not (at-segment ?a seg_n_a2a3f_0_115)) (occupied seg_n_a2a3e_0_75)
       (not (not_occupied seg_n_a2a3e_0_75)) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a)) (at-segment ?a seg_n_a2a3e_0_75)
       (not (blocked seg_n_a3d_0_60 ?a)) (not_blocked seg_n_a3d_0_60 ?a)))
 (:action ugly1341ugly727startup_seg_s_b8c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action
  ugly1342ugly487move_seg_o1_c3c_0_48_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew2)
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
 (:action ugly1343ugly1285startup_seg_w1_153c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly1344ugly870startup_seg_w1_142b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action
  ugly1345ugly693move_seg_o1_102b_0_60_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
       (not_blocked seg_o1_102a_0_34 airplane_daew2)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p102_0_76 ?a)) (not_blocked seg_p102_0_76 ?a)
       (blocked seg_o1_102c_0_34 ?a) (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly1346ugly1156startup_seg_s_b7b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7c_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action ugly1347ugly367startup_seg_n_a7a6c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly1348ugly1287move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3c_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew2))
  :effect
  (and (not (occupied seg_n_a2a3d_0_75)) (not_occupied seg_n_a2a3d_0_75)
       (not (at-segment ?a seg_n_a2a3d_0_75)) (occupied seg_n_a2a3c_0_75)
       (not (not_occupied seg_n_a2a3c_0_75)) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a)) (at-segment ?a seg_n_a2a3c_0_75)
       (not (blocked seg_n_a2a3e_0_75 ?a)) (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action ugly1349ugly1058startup_seg_08r_b10a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly1350ugly692pushback_seg_p163_0_75_seg_w1_163b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew0)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
       (not_blocked seg_w1_163b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p163_0_75)) (not_occupied seg_p163_0_75)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (not (at-segment ?a seg_p163_0_75)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action ugly1351ugly249move_seg_t_b2a_0_60_seg_t_b2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60)
       (not_blocked seg_t_b2c_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2c_0_60 airplane_cfbe1)
       (not_blocked seg_t_b2c_0_60 airplane_daew8)
       (not_blocked seg_t_b2c_0_60 airplane_daew9)
       (not_blocked seg_t_b2c_0_60 airplane_daew0)
       (not_blocked seg_t_b2c_0_60 airplane_daew3)
       (not_blocked seg_t_b2c_0_60 airplane_daewh)
       (not_blocked seg_t_b2c_0_60 airplane_daew1)
       (not_blocked seg_t_b2c_0_60 airplane_daew2)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (occupied seg_t_b2a_0_60)) (not_occupied seg_t_b2a_0_60)
       (not (at-segment ?a seg_t_b2a_0_60)) (occupied seg_t_b2c_0_60)
       (not (not_occupied seg_t_b2c_0_60)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a)) (at-segment ?a seg_t_b2c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b2b_0_60 ?a)) (not_blocked seg_s_b2b_0_60 ?a)
       (blocked seg_t_b2b_0_60 ?a) (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action ugly1352ugly815park_seg_p111_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly1353ugly511move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe1)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew8)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew9)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew0)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew3)
       (not_blocked seg_08l_a7a9_0_270 airplane_daewh)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew1)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew2)
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
  ugly1354ugly1037pushback_seg_o1_111a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_111a_0_34)) (not_occupied seg_o1_111a_0_34)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (at-segment ?a seg_o1_111a_0_34)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly1355ugly286move_seg_s_b6b7b_0_140_seg_s_b6b7a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7b_0_140) (not_occupied seg_s_b6b7a_0_140)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew9)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew0)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew3)
       (not_blocked seg_s_b6b7a_0_140 airplane_daewh)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew1)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b6b7b_0_140)) (not_occupied seg_s_b6b7b_0_140)
       (not (at-segment ?a seg_s_b6b7b_0_140)) (occupied seg_s_b6b7a_0_140)
       (not (not_occupied seg_s_b6b7a_0_140)) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))
       (at-segment ?a seg_s_b6b7a_0_140) (not (blocked seg_s_b7d_0_60 ?a))
       (not_blocked seg_s_b7d_0_60 ?a)))
 (:action ugly1356ugly899startup_seg_o1_118c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly1357ugly1077move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew9)
       (not_blocked seg_w1_c2a_0_60 airplane_daew0)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew1)
       (not_blocked seg_w1_c2a_0_60 airplane_daew2)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (occupied seg_w1_c2c_0_34)) (not_occupied seg_w1_c2c_0_34)
       (not (at-segment ?a seg_w1_c2c_0_34)) (occupied seg_w1_c2a_0_60)
       (not (not_occupied seg_w1_c2a_0_60)) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (at-segment ?a seg_w1_c2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (blocked seg_w1_c2b_0_60 ?a) (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action ugly1358ugly1076startup_seg_08l_a4c_0_161_245_south_medium
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
 (:action ugly1359ugly297startup_seg_w1_163b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action
  ugly1360ugly332move_seg_w1_151b_0_45_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew0)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew1)
       (not_blocked seg_w1_151a_0_34 airplane_daew2)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p151_0_75 ?a)) (not_blocked seg_p151_0_75 ?a)
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly1361ugly366move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew0)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
       (not_blocked seg_w1_154b_0_45 airplane_daew2))
  :effect
  (and (not (occupied seg_p154_0_75)) (not_occupied seg_p154_0_75)
       (not (at-segment ?a seg_p154_0_75)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action ugly1362ugly40startup_seg_n_n2a4b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly1363ugly718startup_seg_a10_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action ugly1364ugly1143startup_seg_w1_153b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly1365ugly912startup_seg_s_b9b10c_0_84_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action
  ugly1366ugly775move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew0)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew2)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (occupied seg_c1_n2a_0_60)) (not_occupied seg_c1_n2a_0_60)
       (not (at-segment ?a seg_c1_n2a_0_60)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_0_108 ?a)) (not_blocked seg_n2_0_108 ?a)
       (blocked seg_c1_n2c_0_60 ?a) (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly1367ugly371startup_seg_m_a4a7e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly1368ugly1007move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew0)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew1)
       (not_blocked seg_w1_153a_0_34 airplane_daew2)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly1369ugly467startup_seg_o1_109c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly1370ugly970startup_seg_o1_108d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action ugly1371ugly476startup_seg_t_b6b7b_0_140_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly1372ugly1001move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2)
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
 (:action ugly1373ugly674startup_seg_n_a2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action ugly1374ugly1232startup_seg_t_b9b10c_0_84_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action ugly1375ugly880move_seg_b2_1_0_80_seg_08r_b2a_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_1_0_80) (not_occupied seg_08r_b2a_0_80)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b2a_0_80 airplane_daew8)
       (not_blocked seg_08r_b2a_0_80 airplane_daew9)
       (not_blocked seg_08r_b2a_0_80 airplane_daew0)
       (not_blocked seg_08r_b2a_0_80 airplane_daew3)
       (not_blocked seg_08r_b2a_0_80 airplane_daewh)
       (not_blocked seg_08r_b2a_0_80 airplane_daew1)
       (not_blocked seg_08r_b2a_0_80 airplane_daew2))
  :effect
  (and (not (occupied seg_b2_1_0_80)) (not_occupied seg_b2_1_0_80)
       (not (at-segment ?a seg_b2_1_0_80)) (occupied seg_08r_b2a_0_80)
       (not (not_occupied seg_08r_b2a_0_80)) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a)) (at-segment ?a seg_08r_b2a_0_80)
       (not (blocked seg_b2_0_80 ?a)) (not_blocked seg_b2_0_80 ?a)))
 (:action ugly1376ugly12startup_seg_m_a8c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly1377ugly294move_seg_s_b3b4d_0_140_seg_s_b3b4c_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4d_0_140) (not_occupied seg_s_b3b4c_0_140)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4c_0_140 airplane_daewh)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew1)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew2))
  :effect
  (and (not (occupied seg_s_b3b4d_0_140)) (not_occupied seg_s_b3b4d_0_140)
       (not (at-segment ?a seg_s_b3b4d_0_140)) (occupied seg_s_b3b4c_0_140)
       (not (not_occupied seg_s_b3b4c_0_140)) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))
       (at-segment ?a seg_s_b3b4c_0_140) (not (blocked seg_s_b4c_0_60 ?a))
       (not_blocked seg_s_b4c_0_60 ?a)))
 (:action
  ugly1378ugly1308move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2))
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
  ugly1379ugly1100move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew0)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
       (not_blocked seg_o1_103c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)))
 (:action ugly1380ugly1041startup_seg_t_b8b9c_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action ugly1381ugly1180park_seg_p117_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly1382ugly562move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
       (not_blocked seg_o1_109a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action ugly1383ugly978startup_seg_p116_0_76_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1384ugly104startup_seg_o1_102a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly1385ugly1078startup_seg_m_a3a4c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly1386ugly1246move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew9)
       (not_blocked seg_w1_c4a_0_34 airplane_daew0)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_blocked seg_w1_c4a_0_34 airplane_daewh)
       (not_blocked seg_w1_c4a_0_34 airplane_daew1)
       (not_blocked seg_w1_c4a_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_c4a_0_34)
       (not (not_occupied seg_w1_c4a_0_34)) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (at-segment ?a seg_w1_c4a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly1387ugly889move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew2))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action ugly1388ugly1140startup_seg_t_b9b10a_0_125_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))) 