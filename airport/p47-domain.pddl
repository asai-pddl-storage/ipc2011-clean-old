
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (at-segment ?a - airplane ?s - segment)
  (is-parked ?a - airplane ?s - segment) (airborne ?a - airplane ?s - segment)
  (has-type ?a - airplane ?t - airplanetype) (occupied ?s - segment)
  (facing ?a - airplane ?d - direction) (is-moving ?a - airplane)
  (not_occupied ?s - segment) (is-start-runway ?s - segment ?d - direction)
  (not_blocked ?s - segment ?a - airplane) (blocked ?s - segment ?a - airplane)
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
  airplane_daew8 airplane_daew9 airplane_daew3 airplane_daewh airplane_cfbe2 -
  airplane)
 (:action
  ugly31924ugly32650ugly32276ugly32163ugly32718ugly33109ugly87ugly400ugly1181ugly519startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly31925ugly32142ugly32258ugly32150ugly33274ugly32735ugly550ugly1116ugly446ugly559move_seg_s_b4b6c_0_130_seg_s_b4b6b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6c_0_130) (not_occupied seg_s_b4b6b_0_135)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbe1)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbe3)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew9)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew3)
       (not_blocked seg_s_b4b6b_0_135 airplane_daewh)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b4b6c_0_130)) (not_occupied seg_s_b4b6c_0_130)
       (not (at-segment ?a seg_s_b4b6c_0_130)) (occupied seg_s_b4b6b_0_135)
       (not (not_occupied seg_s_b4b6b_0_135)) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))
       (at-segment ?a seg_s_b4b6b_0_135) (not (blocked seg_s_b6c_0_60 ?a))
       (not_blocked seg_s_b6c_0_60 ?a)))
 (:action
  ugly31926ugly32599ugly33068ugly33145ugly32391ugly33250ugly197ugly520ugly447ugly688move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe3)
       (not_blocked seg_n_a3d_0_60 airplane_daew8)
       (not_blocked seg_n_a3d_0_60 airplane_daew9)
       (not_blocked seg_n_a3d_0_60 airplane_daew3)
       (not_blocked seg_n_a3d_0_60 airplane_daewh)
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
  ugly31927ugly32083ugly32451ugly32933ugly32457ugly32950ugly1265ugly1322ugly739ugly224startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly31928ugly32918ugly32214ugly33022ugly32884ugly32962ugly1200ugly1136ugly115ugly1000startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly31929ugly32947ugly33107ugly32605ugly33153ugly33147ugly89ugly99ugly740ugly544startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly31930ugly32578ugly31933ugly32637ugly32191ugly33017ugly311ugly417ugly1281ugly359move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
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
  ugly31931ugly32777ugly31979ugly32753ugly33167ugly32283ugly1169ugly842ugly1033ugly1290startup_seg_s_b8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly31932ugly32717ugly32694ugly32544ugly32855ugly32347ugly997ugly667ugly787ugly336move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
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
  ugly31933ugly32637ugly32191ugly33017ugly32234ugly32876ugly504ugly303ugly752ugly652move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
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
  ugly31934ugly32999ugly33127ugly33063ugly32675ugly32698ugly560ugly1166ugly330ugly965move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a8c_0_60 airplane_daew8)
       (not_blocked seg_n_a8c_0_60 airplane_daew9)
       (not_blocked seg_n_a8c_0_60 airplane_daew3)
       (not_blocked seg_n_a8c_0_60 airplane_daewh)
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
  ugly31935ugly32296ugly32442ugly33046ugly32584ugly32652ugly1067ugly1205ugly344ugly853startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly31936ugly32858ugly33254ugly32081ugly32068ugly32429ugly956ugly340ugly1284ugly1029startup_seg_08l_a7b_0_161_245_south_medium
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
  ugly31937ugly32449ugly32512ugly32022ugly32165ugly31927ugly160ugly494ugly793ugly160startup_seg_t_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action
  ugly31938ugly33294ugly32357ugly32948ugly32869ugly33189ugly1020ugly1373ugly335ugly528move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe3)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew8)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew9)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew3)
       (not_blocked seg_08l_a3a4_0_450 airplane_daewh)
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
  ugly31939ugly32108ugly32133ugly32903ugly32030ugly32074ugly1270ugly771ugly546ugly1072startup_seg_s_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a))))
 (:action
  ugly31940ugly32997ugly33054ugly32603ugly32149ugly32418ugly1149ugly348ugly262ugly666move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
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
  ugly31941ugly31949ugly32159ugly32508ugly32890ugly32280ugly1372ugly759ugly149ugly669move_seg_c4_s6c_0_60_seg_w1_c4b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6c_0_60) (not_occupied seg_w1_c4b_0_60)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c4b_0_60 airplane_daew8)
       (not_blocked seg_w1_c4b_0_60 airplane_daew9)
       (not_blocked seg_w1_c4b_0_60 airplane_daew3)
       (not_blocked seg_w1_c4b_0_60 airplane_daewh)
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
  ugly31942ugly32900ugly32177ugly32548ugly32711ugly32951ugly852ugly260ugly1071ugly777startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action
  ugly31943ugly32011ugly32838ugly32127ugly33027ugly32115ugly396ugly101ugly696ugly1032startup_seg_s_b7c_0_60_south_medium
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
  ugly31944ugly32671ugly32942ugly32516ugly32580ugly32959ugly1343ugly86ugly235ugly410startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly31945ugly33286ugly32574ugly32790ugly32343ugly32057ugly510ugly662ugly48ugly809move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_cfbe1)
       (not_blocked seg_p143_0_75 airplane_cfbe3)
       (not_blocked seg_p143_0_75 airplane_daew8)
       (not_blocked seg_p143_0_75 airplane_daew9)
       (not_blocked seg_p143_0_75 airplane_daew3)
       (not_blocked seg_p143_0_75 airplane_daewh)
       (not_blocked seg_p143_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_p143_0_75)
       (not (not_occupied seg_p143_0_75)) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a)) (at-segment ?a seg_p143_0_75)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly31946ugly32503ugly32173ugly32228ugly32697ugly32118ugly349ugly487ugly352ugly176startup_seg_b3_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action
  ugly31947ugly32323ugly33047ugly32208ugly32029ugly32338ugly820ugly1167ugly1150ugly254move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
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
  ugly31948ugly32656ugly32814ugly32456ugly32036ugly32524ugly590ugly1255ugly451ugly951startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly31949ugly32159ugly32508ugly32890ugly32280ugly33295ugly700ugly857ugly1080ugly1100startup_seg_08r_b4d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action
  ugly31950ugly32218ugly32819ugly32930ugly32825ugly33215ugly636ugly628ugly949ugly486startup_seg_t_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly31951ugly32617ugly32051ugly32477ugly32351ugly32460ugly618ugly1052ugly163ugly496move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
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
  ugly31952ugly32101ugly32176ugly32467ugly33225ugly31959ugly659ugly38ugly167ugly794move_seg_w1_161c_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
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
  ugly31953ugly33149ugly32768ugly32922ugly32039ugly32539ugly687ugly140ugly1360ugly229move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
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
  ugly31954ugly32587ugly32744ugly33157ugly32705ugly32472ugly453ugly77ugly360ugly791startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly31955ugly32374ugly33184ugly32056ugly32131ugly32180ugly346ugly876ugly983ugly629startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly31956ugly32759ugly33117ugly32362ugly32739ugly32335ugly1173ugly288ugly245ugly11move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p111_0_76)) (not_occupied seg_p111_0_76)
       (not (at-segment ?a seg_p111_0_76)) (occupied seg_o1_111b_0_60)
       (not (not_occupied seg_o1_111b_0_60)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly31957ugly32053ugly32636ugly33008ugly33142ugly32525ugly1161ugly872ugly405ugly542startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly31958ugly33042ugly32222ugly32926ugly32700ugly32799ugly224ugly807ugly911ugly45startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly31959ugly32582ugly32654ugly32196ugly32981ugly32202ugly218ugly295ugly863ugly1198startup_seg_b3_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action
  ugly31960ugly33039ugly32966ugly32749ugly31970ugly32643ugly153ugly1025ugly756ugly1293startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly31961ugly32203ugly32892ugly32720ugly33197ugly32049ugly1218ugly1122ugly147ugly320startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly31962ugly33166ugly32803ugly32577ugly32773ugly32008ugly802ugly815ugly1004ugly656startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly31963ugly32264ugly33169ugly33216ugly32583ugly32780ugly379ugly564ugly976ugly707startup_seg_s_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly31964ugly33252ugly32415ugly33280ugly32871ugly32934ugly1203ugly595ugly675ugly286park_seg_p132_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly31965ugly32119ugly32220ugly32566ugly32422ugly32041ugly1342ugly1213ugly792ugly723startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly31966ugly32591ugly31968ugly32042ugly32160ugly32358ugly964ugly253ugly41ugly812startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly31967ugly32629ugly31984ugly32305ugly32490ugly31931ugly854ugly443ugly925ugly956move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
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
  ugly31968ugly32042ugly32160ugly32358ugly32887ugly32762ugly266ugly923ugly1323ugly504move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
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
  ugly31969ugly32294ugly33237ugly32538ugly33023ugly32170ugly319ugly562ugly488ugly979move_seg_s_b6b7a_0_140_seg_s_b6a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7a_0_140) (not_occupied seg_s_b6a_0_60)
       (not_blocked seg_s_b6a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b6a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b6a_0_60 airplane_daew8)
       (not_blocked seg_s_b6a_0_60 airplane_daew9)
       (not_blocked seg_s_b6a_0_60 airplane_daew3)
       (not_blocked seg_s_b6a_0_60 airplane_daewh)
       (not_blocked seg_s_b6a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b6b7a_0_140)) (not_occupied seg_s_b6b7a_0_140)
       (not (at-segment ?a seg_s_b6b7a_0_140)) (occupied seg_s_b6a_0_60)
       (not (not_occupied seg_s_b6a_0_60)) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (at-segment ?a seg_s_b6a_0_60)
       (not (blocked seg_s_b6b7b_0_140 ?a))
       (not_blocked seg_s_b6b7b_0_140 ?a)))
 (:action
  ugly31970ugly32643ugly32076ugly32792ugly32324ugly32630ugly194ugly1021ugly424ugly462startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly31971ugly33226ugly33136ugly32645ugly32402ugly32194ugly979ugly37ugly620ugly182startup_seg_s_b7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7d_0_60)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action
  ugly31972ugly32409ugly33170ugly32665ugly32620ugly33217ugly1323ugly504ugly303ugly752startup_seg_s_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action
  ugly31973ugly32500ugly32235ugly33056ugly33262ugly32479ugly21ugly1121ugly475ugly399startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly31974ugly32320ugly32835ugly32423ugly32704ugly32332ugly429ugly1287ugly690ugly610startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly31975ugly32893ugly32307ugly33143ugly31980ugly33146ugly837ugly205ugly350ugly422move_seg_w1_143b_0_45_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
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
  ugly31976ugly32658ugly32532ugly33175ugly33091ugly32237ugly569ugly428ugly927ugly873startup_seg_s_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action
  ugly31977ugly32952ugly32186ugly33030ugly32748ugly32928ugly662ugly48ugly809ugly202startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly31978ugly32199ugly33259ugly33231ugly33238ugly32634ugly301ugly1091ugly708ugly292startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly31979ugly32753ugly33167ugly32283ugly33092ugly32207ugly337ugly647ugly1019ugly1301move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
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
  ugly31980ugly33146ugly32760ugly32533ugly32991ugly32248ugly947ugly1082ugly995ugly919startup_seg_b2_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action
  ugly31981ugly32786ugly32171ugly33066ugly33148ugly33261ugly445ugly1131ugly1175ugly1003startup_seg_s_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly31982ugly32028ugly33272ugly32493ugly32741ugly31978ugly276ugly975ugly720ugly1260park_seg_p110_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action
  ugly31983ugly32940ugly32811ugly31987ugly32746ugly32155ugly1299ugly1270ugly771ugly546startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly31984ugly32305ugly32490ugly31931ugly32777ugly31979ugly830ugly341ugly53ugly892move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
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
  ugly31985ugly33071ugly32709ugly32782ugly32005ugly32702ugly103ugly1335ugly994ugly1090move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_cfbe1)
       (not_blocked seg_p151_0_75 airplane_cfbe3)
       (not_blocked seg_p151_0_75 airplane_daew8)
       (not_blocked seg_p151_0_75 airplane_daew9)
       (not_blocked seg_p151_0_75 airplane_daew3)
       (not_blocked seg_p151_0_75 airplane_daewh)
       (not_blocked seg_p151_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_p151_0_75)
       (not (not_occupied seg_p151_0_75)) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a)) (at-segment ?a seg_p151_0_75)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly31986ugly33236ugly32281ugly33101ugly33102ugly33154ugly637ugly1278ugly1061ugly1341pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly31987ugly32746ugly32155ugly33222ugly31947ugly32323ugly1124ugly997ugly667ugly787move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_cfbe1)
       (not_blocked seg_p103_0_76 airplane_cfbe3)
       (not_blocked seg_p103_0_76 airplane_daew8)
       (not_blocked seg_p103_0_76 airplane_daew9)
       (not_blocked seg_p103_0_76 airplane_daew3)
       (not_blocked seg_p103_0_76 airplane_daewh)
       (not_blocked seg_p103_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_p103_0_76)
       (not (not_occupied seg_p103_0_76)) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a)) (at-segment ?a seg_p103_0_76)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly31988ugly33276ugly32365ugly33191ugly33076ugly32993ugly471ugly123ugly1372ugly759move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe1)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe3)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew8)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew9)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew3)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daewh)
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
  ugly31989ugly32660ugly32710ugly33152ugly33151ugly32078ugly438ugly18ugly1228ugly1324move_seg_c4_s6b_0_60_seg_c4_s6a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe3)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew9)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_blocked seg_c4_s6a_0_80 airplane_daewh)
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
  ugly31990ugly33078ugly31943ugly32011ugly32838ugly32127ugly1104ugly46ugly188ugly508move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
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
  ugly31991ugly32965ugly32341ugly31961ugly32203ugly32892ugly797ugly32ugly900ugly705startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly31992ugly32085ugly32291ugly32692ugly32121ugly32779ugly245ugly11ugly389ugly280startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly31993ugly32608ugly32287ugly32769ugly32499ugly32921ugly388ugly727ugly1285ugly952startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly31994ugly32495ugly32848ugly33012ugly33214ugly31939ugly185ugly57ugly165ugly1184startup_seg_t_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b_0_60)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly31995ugly32390ugly32888ugly31934ugly32999ugly33127ugly1140ugly1102ugly713ugly1040move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
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
  ugly31996ugly32313ugly33105ugly32986ugly32213ugly32355ugly806ugly98ugly1062ugly766startup_seg_s_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action
  ugly31997ugly31957ugly32053ugly32636ugly33008ugly33142ugly602ugly549ugly877ugly1170startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly31998ugly32124ugly32315ugly32897ugly32960ugly32765ugly573ugly918ugly1314ugly154startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly31999ugly32385ugly32523ugly32789ugly32410ugly32122ugly1040ugly273ugly936ugly885startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly32000ugly32156ugly32167ugly32820ugly32217ugly32387ugly1014ugly132ugly753ugly314move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
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
  ugly32001ugly33004ugly32077ugly32414ugly31956ugly32759ugly1194ugly1326ugly583ugly724startup_seg_t_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly32002ugly32379ugly32695ugly32979ugly32889ugly32282ugly1281ugly359ugly258ugly1265startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly32003ugly32300ugly32103ugly32734ugly32099ugly32745ugly819ugly92ugly1011ugly133startup_seg_b8_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly32004ugly32404ugly33172ugly32321ugly32756ugly32430ugly241ugly136ugly698ugly868startup_seg_t_b3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action
  ugly32005ugly32702ugly32026ugly32754ugly32856ugly32766ugly318ugly619ugly283ugly1226park_seg_p131_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly32006ugly31960ugly33039ugly32966ugly32749ugly31970ugly720ugly1260ugly974ugly633startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly32007ugly32797ugly32834ugly33190ugly32537ugly32243ugly883ugly887ugly1351ugly276park_seg_p110_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action
  ugly32008ugly32725ugly32452ugly33140ugly32021ugly32881ugly1092ugly1089ugly896ugly28move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
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
  ugly32009ugly32075ugly32793ugly31992ugly32085ugly32291ugly769ugly467ugly1312ugly1128move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
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
  ugly32010ugly33155ugly32058ugly33285ugly33296ugly32000ugly233ugly594ugly590ugly1255pushback_seg_o1_c2b_0_60_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly32011ugly32838ugly32127ugly33027ugly32115ugly32319ugly963ugly841ugly444ugly1006move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_cfbe1)
       (not_blocked seg_p119_0_76 airplane_cfbe3)
       (not_blocked seg_p119_0_76 airplane_daew8)
       (not_blocked seg_p119_0_76 airplane_daew9)
       (not_blocked seg_p119_0_76 airplane_daew3)
       (not_blocked seg_p119_0_76 airplane_daewh)
       (not_blocked seg_p119_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_p119_0_76)
       (not (not_occupied seg_p119_0_76)) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a)) (at-segment ?a seg_p119_0_76)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly32012ugly32461ugly33206ugly33065ugly31962ugly33166ugly880ugly970ugly27ugly1069startup_seg_s_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a))))
 (:action
  ugly32013ugly32004ugly32404ugly33172ugly32321ugly32756ugly507ugly105ugly414ugly982startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly32014ugly33241ugly32788ugly32567ugly32859ugly32895ugly791ugly1339ugly1145ugly1057move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3d_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3e_0_75)) (not_occupied seg_n_a2a3e_0_75)
       (not (at-segment ?a seg_n_a2a3e_0_75)) (occupied seg_n_a2a3d_0_75)
       (not (not_occupied seg_n_a2a3d_0_75)) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a)) (at-segment ?a seg_n_a2a3d_0_75)
       (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action
  ugly32015ugly32227ugly31997ugly31957ugly32053ugly32636ugly1085ugly218ugly295ugly863startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly32016ugly32941ugly33040ugly32188ugly33073ugly33098ugly73ugly1240ugly372ugly651move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
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
  ugly32017ugly32651ugly33284ugly32614ugly31988ugly33276ugly442ugly1353ugly169ugly749startup_seg_m_a9c_0_60_south_medium
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
  ugly32018ugly32246ugly32181ugly33288ugly33130ugly32944ugly599ugly134ugly1173ugly288move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
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
  ugly32019ugly33052ugly33287ugly32309ugly32489ugly32435ugly25ugly263ugly219ugly591move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p116_0_76)) (not_occupied seg_p116_0_76)
       (not (at-segment ?a seg_p116_0_76)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action
  ugly32020ugly33192ugly32708ugly32906ugly32271ugly32867ugly1354ugly1245ugly818ugly441startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly32021ugly32881ugly33015ugly32140ugly32553ugly32712ugly1047ugly159ugly137ugly1035startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly32022ugly32165ugly31927ugly32083ugly32451ugly32933ugly534ugly500ugly668ugly898move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_cfbe1)
       (not_blocked seg_08l_0_80 airplane_cfbe3)
       (not_blocked seg_08l_0_80 airplane_daew8)
       (not_blocked seg_08l_0_80 airplane_daew9)
       (not_blocked seg_08l_0_80 airplane_daew3)
       (not_blocked seg_08l_0_80 airplane_daewh)
       (not_blocked seg_08l_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a2a3_0_970)) (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action
  ugly32023ugly32581ugly32331ugly31924ugly32650ugly32276ugly240ugly971ugly84ugly195startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly32024ugly33271ugly32232ugly32080ugly31966ugly32591ugly45ugly1334ugly157ugly1054park_seg_p164_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly32025ugly33248ugly32136ugly32096ugly32531ugly32065ugly705ugly844ugly529ugly829startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action
  ugly32026ugly32754ugly32856ugly32766ugly32241ugly32661ugly427ugly378ugly1164ugly315startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly32027ugly32647ugly32554ugly33182ugly32868ugly32899ugly363ugly796ugly152ugly585startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly32028ugly33272ugly32493ugly32741ugly31978ugly32199ugly1336ugly112ugly894ugly1056startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action
  ugly32029ugly32338ugly32743ugly32109ugly32299ugly32619ugly960ugly672ugly834ugly111startup_seg_m_a6a_0_60_south_medium
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
  ugly32030ugly32074ugly33193ugly32366ugly32100ugly32785ugly1044ugly142ugly299ugly279move_seg_o1_111d_0_45_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
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
  ugly32031ugly32349ugly32359ugly32852ugly32420ugly33005ugly1134ugly569ugly428ugly927startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly32032ugly32572ugly33187ugly32274ugly32421ugly31977ugly1029ugly1087ugly1219ugly81move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe3)
       (not_blocked seg_c1_n2a_0_60 airplane_daew8)
       (not_blocked seg_c1_n2a_0_60 airplane_daew9)
       (not_blocked seg_c1_n2a_0_60 airplane_daew3)
       (not_blocked seg_c1_n2a_0_60 airplane_daewh)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n2_0_108)) (not_occupied seg_n2_0_108)
       (not (at-segment ?a seg_n2_0_108)) (occupied seg_c1_n2a_0_60)
       (not (not_occupied seg_c1_n2a_0_60)) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (at-segment ?a seg_c1_n2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_n2b_0_60 ?a)) (not_blocked seg_n_n2b_0_60 ?a)))
 (:action
  ugly32033ugly33195ugly33289ugly32985ugly32816ugly32045ugly725ugly1047ugly159ugly137startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly32034ugly32219ugly33016ugly33075ugly32334ugly32426ugly239ugly1261ugly1031ugly309move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
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
  ugly32035ugly32388ugly33278ugly32557ugly31965ugly32119ugly297ugly588ugly47ugly567move_seg_o1_115b_0_60_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
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
  ugly32036ugly32524ugly32513ugly32046ugly33014ugly32092ugly1130ugly541ugly271ugly1028startup_seg_t_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action
  ugly32037ugly33058ugly32023ugly32581ugly32331ugly31924ugly727ugly1285ugly952ugly1133startup_seg_o1_c2a_0_60_south_medium
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
  ugly32038ugly32515ugly32505ugly32723ugly33043ugly32674ugly302ugly612ugly392ugly788startup_seg_b2_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_08r_b2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a))))
 (:action
  ugly32039ugly32539ugly32610ugly32267ugly32957ugly32830ugly889ugly697ugly10ugly1083move_seg_s_b5b_0_60_seg_s_b5a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b_0_60) (not_occupied seg_s_b5a_0_60)
       (not_blocked seg_s_b5a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b5a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b5a_0_60 airplane_daew8)
       (not_blocked seg_s_b5a_0_60 airplane_daew9)
       (not_blocked seg_s_b5a_0_60 airplane_daew3)
       (not_blocked seg_s_b5a_0_60 airplane_daewh)
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
  ugly32040ugly32635ugly32179ugly32946ugly32254ugly31976ugly735ugly408ugly50ugly357move_seg_w1_c4b_0_60_seg_w1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew9)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_blocked seg_w1_c4a_0_34 airplane_daewh)
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
  ugly32041ugly33265ugly32318ugly32807ugly32201ugly32815ugly372ugly651ugly277ugly483startup_seg_s_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly32042ugly32160ugly32358ugly32887ugly32762ugly32189ugly1160ugly968ugly822ugly342move_seg_o1_115c_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
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
  ugly32043ugly32519ugly32256ugly32622ugly32389ugly32854ugly1262ugly426ugly906ugly78startup_seg_t_b4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4d_0_60)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action
  ugly32044ugly32038ugly32515ugly32505ugly32723ugly33043ugly751ugly555ugly961ugly388startup_seg_b3_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action
  ugly32045ugly32648ugly31945ugly33286ugly32574ugly32790ugly420ugly430ugly477ugly929move_seg_o1_116c_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
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
  ugly32046ugly33014ugly32092ugly33053ugly31958ugly33042ugly299ugly279ugly396ugly101startup_seg_s_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action
  ugly32047ugly32551ugly32027ugly32647ugly32554ugly33182ugly945ugly1079ugly941ugly166startup_seg_s_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action
  ugly32048ugly33067ugly33178ugly33028ugly32485ugly33114ugly672ugly834ugly111ugly1169startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly32049ugly33141ugly32487ugly33163ugly31946ugly32503ugly250ugly1152ugly854ugly443startup_seg_o1_c2c_0_34_south_medium
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
  ugly32050ugly32972ugly32857ugly31999ugly32385ugly32523ugly866ugly765ugly572ugly25move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
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
  ugly32051ugly32477ugly32351ugly32460ugly32541ugly33202ugly639ugly252ugly247ugly1008startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly32052ugly33125ugly32017ugly32651ugly33284ugly32614ugly65ugly937ugly1138ugly1244startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly32053ugly32636ugly33008ugly33142ugly32525ugly33084ugly1050ugly1137ugly174ugly6startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly32054ugly32594ugly32767ugly32230ugly31969ugly32294ugly1314ugly154ugly1016ugly36startup_seg_t_b3d_0_60_south_medium
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
  ugly32055ugly32975ugly33211ugly32844ugly32907ugly32715ugly406ugly241ugly136ugly698startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32056ugly32131ugly32180ugly32269ugly33150ugly32308ugly1305ugly278ugly62ugly398move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p102_0_76)) (not_occupied seg_p102_0_76)
       (not (at-segment ?a seg_p102_0_76)) (occupied seg_o1_102b_0_60)
       (not (not_occupied seg_o1_102b_0_60)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action
  ugly32057ugly32433ugly32059ugly32322ugly32808ugly32673ugly407ugly851ugly1362ugly1053pushback_seg_w1_163a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly32058ugly33285ugly33296ugly32000ugly32156ugly32167ugly897ugly597ugly461ugly922startup_seg_s_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action
  ugly32059ugly32322ugly32808ugly32673ugly32330ugly32484ugly96ugly162ugly914ugly762startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly32060ugly32738ugly32476ugly31986ugly33236ugly32281ugly1178ugly345ugly731ugly1014move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew9)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
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
  ugly32061ugly32061ugly32061ugly32061ugly32061ugly32061ugly138ugly1010ugly729ugly385move_seg_s_b7a_0_60_seg_s_b7d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b7a_0_60) (not_occupied seg_s_b7d_0_60)
       (not_blocked seg_s_b7d_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7d_0_60 airplane_cfbe1)
       (not_blocked seg_s_b7d_0_60 airplane_cfbe3)
       (not_blocked seg_s_b7d_0_60 airplane_daew8)
       (not_blocked seg_s_b7d_0_60 airplane_daew9)
       (not_blocked seg_s_b7d_0_60 airplane_daew3)
       (not_blocked seg_s_b7d_0_60 airplane_daewh)
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
  ugly32062ugly32125ugly32716ugly32491ugly33001ugly32861ugly695ugly884ugly526ugly110startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly32063ugly32638ugly33255ugly32703ugly32649ugly32184ugly361ugly856ugly1325ugly655startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly32064ugly33275ugly33074ugly32206ugly33209ugly32752ugly303ugly752ugly652ugly394startup_seg_s5_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_s_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a))))
 (:action
  ugly32065ugly32628ugly31937ugly32449ugly32512ugly32022ugly242ugly1026ugly704ugly1005startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly32066ugly32685ugly32265ugly32089ugly32840ugly33165ugly1177ugly1320ugly181ugly881move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
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
  ugly32067ugly32093ugly31941ugly31949ugly32159ugly32508ugly967ugly782ugly1368ugly695park_seg_p101_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action
  ugly32068ugly32429ugly32879ugly32530ugly32751ugly33116ugly86ugly235ugly410ugly1180startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly32069ugly32837ugly32073ugly33164ugly32693ugly33103ugly905ugly455ugly353ugly401move_seg_s_b4a_0_60_seg_s_b4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60)
       (not_blocked seg_s_b4c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b4c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b4c_0_60 airplane_daew8)
       (not_blocked seg_s_b4c_0_60 airplane_daew9)
       (not_blocked seg_s_b4c_0_60 airplane_daew3)
       (not_blocked seg_s_b4c_0_60 airplane_daewh)
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
  ugly32070ugly32535ugly32878ugly32298ugly31989ugly32660ugly787ugly336ugly74ugly1012startup_seg_s6_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly32071ugly32252ugly33077ugly32843ugly32670ugly32255ugly910ugly1250ugly1248ugly632startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly32072ugly33298ugly33050ugly32325ugly33194ugly32570ugly548ugly557ugly636ugly628park_seg_p131_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly32073ugly33164ugly32693ugly33103ugly32828ugly32448ugly1346ugly1249ugly726ugly114startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly32074ugly33193ugly32366ugly32100ugly32785ugly32967ugly1250ugly1248ugly632ugly1370move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
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
  ugly32075ugly32793ugly31992ugly32085ugly32291ugly32692ugly198ugly640ugly395ugly730startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly32076ugly32792ugly32324ugly32630ugly32117ugly33013ugly274ugly179ugly374ugly1333move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
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
  ugly32077ugly32414ugly31956ugly32759ugly33117ugly32362ugly816ugly402ugly1126ugly1310move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
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
  ugly32078ugly32361ugly31936ugly32858ugly33254ugly32081ugly145ugly329ugly679ugly746startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly32079ugly32927ugly33059ugly33235ugly32849ugly32784ugly913ugly1206ugly1101ugly717startup_seg_s_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action
  ugly32080ugly31966ugly32591ugly31968ugly32042ugly32160ugly435ugly1275ugly67ugly60startup_seg_t_b3b_0_60_south_medium
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
  ugly32081ugly32068ugly32429ugly32879ugly32530ugly32751ugly1193ugly493ugly434ugly681startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly32082ugly32732ugly32007ugly32797ugly32834ugly33190ugly614ugly1149ugly348ugly262startup_seg_s_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action
  ugly32083ugly32451ugly32933ugly32457ugly32950ugly33188ugly200ugly306ugly814ugly284startup_seg_t_b3c_0_120_934_south_medium
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
  ugly32084ugly32408ugly32035ugly32388ugly33278ugly32557ugly42ugly213ugly634ugly26move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew9)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
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
  ugly32085ugly32291ugly32692ugly32121ugly32779ugly32168ugly1201ugly64ugly1224ugly1162startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly32086ugly33000ugly32342ugly32090ugly33270ugly32301ugly1328ugly1174ugly712ugly824move_seg_s_b2b3b_0_140_seg_s_b2b3a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3b_0_140) (not_occupied seg_s_b2b3a_0_140)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbe3)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3a_0_140 airplane_daewh)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b3b_0_140)) (not_occupied seg_s_b2b3b_0_140)
       (not (at-segment ?a seg_s_b2b3b_0_140)) (occupied seg_s_b2b3a_0_140)
       (not (not_occupied seg_s_b2b3a_0_140)) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))
       (at-segment ?a seg_s_b2b3a_0_140) (not (blocked seg_s_b2b3c_0_140 ?a))
       (not_blocked seg_s_b2b3c_0_140 ?a)))
 (:action
  ugly32087ugly32450ugly32381ugly33281ugly32200ugly32468ugly1002ugly406ugly241ugly136startup_seg_s_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly32088ugly32345ugly32161ugly32633ugly32681ugly32356ugly768ugly161ugly663ugly930park_seg_p115_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly32089ugly32840ugly33165ugly33100ugly32724ugly31991ugly1042ugly197ugly520ugly447startup_seg_s_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly32090ugly33270ugly32301ugly33251ugly33070ugly33264ugly632ugly1370ugly24ugly474startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly32091ugly32091ugly32091ugly32091ugly32091ugly32091ugly168ugly1247ugly257ugly103startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly32092ugly33053ugly31958ugly33042ugly32222ugly32926ugly777ugly862ugly845ugly1046park_seg_p162_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly32093ugly31941ugly31949ugly32159ugly32508ugly32890ugly357ugly122ugly1305ugly278move_seg_08r_b2b3_0_900_seg_08r_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b3_0_900) (not_occupied seg_08r_0_80)
       (not_blocked seg_08r_0_80 airplane_cfbeg)
       (not_blocked seg_08r_0_80 airplane_cfbe1)
       (not_blocked seg_08r_0_80 airplane_cfbe3)
       (not_blocked seg_08r_0_80 airplane_daew8)
       (not_blocked seg_08r_0_80 airplane_daew9)
       (not_blocked seg_08r_0_80 airplane_daew3)
       (not_blocked seg_08r_0_80 airplane_daewh)
       (not_blocked seg_08r_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b2b3_0_900)) (not_occupied seg_08r_b2b3_0_900)
       (not (at-segment ?a seg_08r_b2b3_0_900)) (occupied seg_08r_0_80)
       (not (not_occupied seg_08r_0_80)) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (at-segment ?a seg_08r_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b2b_0_80 ?a)) (not_blocked seg_08r_b2b_0_80 ?a)))
 (:action
  ugly32094ugly33243ugly32386ugly33080ugly33018ugly33062ugly1170ugly1316ugly1221ugly1331pushback_seg_o1_108c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly32095ugly32072ugly33298ugly33050ugly32325ugly33194ugly647ugly1019ugly1301ugly304startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly32096ugly32531ugly32065ugly32628ugly31937ugly32449ugly589ugly83ugly1271ugly171move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
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
  ugly32097ugly32182ugly32337ugly32240ugly32510ugly32511ugly1221ugly1331ugly457ugly73startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly32098ugly32520ugly33131ugly32707ugly32938ugly32719ugly41ugly812ugly1209ugly66startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action
  ugly32099ugly32745ugly32742ugly32111ugly32631ugly32547ugly906ugly78ugly536ugly799startup_seg_b4_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly32100ugly32785ugly32967ugly33173ugly32441ugly32644ugly1066ugly1124ugly997ugly667startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly32101ugly32176ugly32467ugly33225ugly31959ugly32582ugly731ugly1014ugly132ugly753move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
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
  ugly32102ugly32425ugly32239ugly32137ugly32646ugly32172ugly855ugly1065ugly623ugly1110startup_seg_t_b9c_0_120_934_south_medium
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
  ugly32103ugly32734ugly32099ugly32745ugly32742ugly32111ugly708ugly292ugly1332ugly810startup_seg_n_a3a_0_60_south_medium
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
  ugly32104ugly32253ugly33260ugly31981ugly32786ugly32171ugly1143ugly721ugly1259ugly531startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly32105ugly33181ugly33282ugly32259ugly32602ugly32956ugly255ugly338ugly1202ugly833startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action
  ugly32106ugly32764ugly32244ugly32130ugly32653ugly33291ugly391ugly1302ugly916ugly172startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly32107ugly32949ugly32025ugly33248ugly32136ugly32096ugly608ugly774ugly789ugly986startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly32108ugly32133ugly32903ugly32030ugly32074ugly33193ugly443ugly925ugly956ugly340startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly32109ugly32299ugly32619ugly32883ugly32113ugly32589ugly1112ugly381ugly1063ugly216move_seg_08r_b6a_0_161_245_seg_b8_a_0_156_924_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6a_0_161_245) (not_occupied seg_b8_a_0_156_924)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbeg)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbe1)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbe3)
       (not_blocked seg_b8_a_0_156_924 airplane_daew8)
       (not_blocked seg_b8_a_0_156_924 airplane_daew9)
       (not_blocked seg_b8_a_0_156_924 airplane_daew3)
       (not_blocked seg_b8_a_0_156_924 airplane_daewh)
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
  ugly32110ugly32231ugly32885ugly32730ugly32067ugly32093ugly18ugly1228ugly1324ugly293move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a4b_0_60 airplane_daew8)
       (not_blocked seg_n_a4b_0_60 airplane_daew9)
       (not_blocked seg_n_a4b_0_60 airplane_daew3)
       (not_blocked seg_n_a4b_0_60 airplane_daewh)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7a_0_115)) (not_occupied seg_n_a4a7a_0_115)
       (not (at-segment ?a seg_n_a4a7a_0_115)) (occupied seg_n_a4b_0_60)
       (not (not_occupied seg_n_a4b_0_60)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (at-segment ?a seg_n_a4b_0_60)
       (not (blocked seg_n_a4a7b_0_75 ?a)) (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action
  ugly32111ugly32631ugly32547ugly32829ugly32847ugly32976ugly681ugly1118ugly364ugly1024move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
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
  ugly32112ugly32953ugly32598ugly32037ugly33058ugly32023ugly658ugly1104ugly46ugly188startup_seg_t_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly32113ugly32589ugly33035ugly31982ugly32028ugly33272ugly570ugly942ugly1060ugly772startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly32114ugly32303ugly32556ugly32360ugly32446ugly32187ugly542ugly840ugly826ugly228move_seg_08r_b4b6_0_360_seg_08r_b6c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b6_0_360) (not_occupied seg_08r_b6c_0_80)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b6c_0_80 airplane_daew8)
       (not_blocked seg_08r_b6c_0_80 airplane_daew9)
       (not_blocked seg_08r_b6c_0_80 airplane_daew3)
       (not_blocked seg_08r_b6c_0_80 airplane_daewh)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b4b6_0_360)) (not_occupied seg_08r_b4b6_0_360)
       (not (at-segment ?a seg_08r_b4b6_0_360)) (occupied seg_08r_b6c_0_80)
       (not (not_occupied seg_08r_b6c_0_80)) (blocked seg_08r_b6c_0_80 ?a)
       (not (not_blocked seg_08r_b6c_0_80 ?a)) (at-segment ?a seg_08r_b6c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b4b_0_80 ?a)) (not_blocked seg_08r_b4b_0_80 ?a)))
 (:action
  ugly32115ugly32319ugly32886ugly33244ugly32102ugly32425ugly316ugly931ugly30ugly846move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_cfbe1)
       (not_blocked seg_p152_0_75 airplane_cfbe3)
       (not_blocked seg_p152_0_75 airplane_daew8)
       (not_blocked seg_p152_0_75 airplane_daew9)
       (not_blocked seg_p152_0_75 airplane_daew3)
       (not_blocked seg_p152_0_75 airplane_daewh)
       (not_blocked seg_p152_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_p152_0_75)
       (not (not_occupied seg_p152_0_75)) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a)) (at-segment ?a seg_p152_0_75)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly32116ugly33099ugly32054ugly32594ugly32767ugly32230ugly46ugly188ugly508ugly242startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly32117ugly33013ugly32197ugly32561ugly32839ugly32317ugly650ugly431ugly837ugly205move_seg_o1_c2c_0_34_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
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
  ugly32118ugly32272ugly33088ugly32185ugly32474ugly32346ugly942ugly1060ugly772ugly850startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly32119ugly32220ugly32566ugly32422ugly32041ugly33265ugly395ugly730ugly797ugly32startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly32120ugly33183ugly32215ugly32880ugly32690ugly32268ugly184ugly537ugly1058ugly511move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew9)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
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
  ugly32121ugly32779ugly32168ugly33124ugly32048ugly33067ugly1255ugly451ugly951ugly992startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly32122ugly32963ugly33179ugly32486ugly32139ugly32278ugly1212ugly129ugly201ugly932startup_seg_o1_111c_0_34_south_medium
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
  ugly32123ugly33263ugly32378ugly32152ugly32455ugly32796ugly484ugly370ugly1229ugly1022park_seg_p153_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action
  ugly32124ugly32315ugly32897ugly32960ugly32765ugly32496ugly83ugly1271ugly171ugly319startup_seg_t_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly32125ugly32716ugly32491ugly33001ugly32861ugly32618ugly908ugly1142ugly1027ugly563startup_seg_t_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly32126ugly31926ugly32599ugly33068ugly33145ugly32391ugly1327ugly1347ugly499ugly59move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
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
  ugly32127ugly33027ugly32115ugly32319ugly32886ugly33244ugly179ugly374ugly1333ugly300startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly32128ugly32158ugly33122ugly32001ugly33004ugly32077ugly491ugly718ugly425ugly1177startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly32129ugly33064ugly33257ugly31929ugly32947ugly33107ugly682ugly1151ugly946ugly1078move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
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
  ugly32130ugly32653ugly33291ugly32314ugly33267ugly32982ugly581ugly1195ugly1295ugly525startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly32131ugly32180ugly32269ugly33150ugly32308ugly33228ugly452ugly1239ugly744ugly469move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
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
  ugly32132ugly33113ugly33041ugly31935ugly32296ugly32442ugly1123ugly1357ugly702ugly130startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly32133ugly32903ugly32030ugly32074ugly33193ugly32366ugly177ugly71ugly904ugly901startup_seg_t_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action
  ugly32134ugly32945ugly32438ugly33138ugly33158ugly32776ugly642ugly95ugly1176ugly116startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly32135ugly32481ugly33213ugly32757ugly32478ugly32596ugly367ugly317ugly281ugly839startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32136ugly32096ugly32531ugly32065ugly32628ugly31937ugly526ugly110ugly1223ugly1241pushback_seg_p131_0_75_seg_o1_108d_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (blocked seg_p131_0_75 ?a)) (not_blocked seg_p131_0_75 ?a)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly32137ugly32646ugly32172ugly32778ugly33110ugly32688ugly1096ugly639ugly252ugly247startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32138ugly32066ugly32685ugly32265ugly32089ugly32840ugly1242ugly1232ugly1253ugly203startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly32139ugly32278ugly33135ugly32002ugly32379ugly32695ugly1056ugly1075ugly282ugly674startup_seg_s_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly32140ugly32553ugly32712ugly32970ugly32771ugly32506ugly677ugly944ugly1070ugly861startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly32141ugly32354ugly32373ugly33029ugly32873ugly32750ugly606ugly1297ugly404ugly1093move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_cfbe1)
       (not_blocked seg_p101_0_76 airplane_cfbe3)
       (not_blocked seg_p101_0_76 airplane_daew8)
       (not_blocked seg_p101_0_76 airplane_daew9)
       (not_blocked seg_p101_0_76 airplane_daew3)
       (not_blocked seg_p101_0_76 airplane_daewh)
       (not_blocked seg_p101_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_p101_0_76)
       (not (not_occupied seg_p101_0_76)) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a)) (at-segment ?a seg_p101_0_76)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly32142ugly32258ugly32150ugly33274ugly32735ugly32473ugly887ugly1351ugly276ugly975startup_seg_s_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action
  ugly32143ugly32249ugly33112ugly32727ugly32129ugly33064ugly1334ugly157ugly1054ugly867startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly32144ugly32364ugly32824ugly32875ugly32475ugly32310ugly1307ugly274ugly179ugly374startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly32145ugly32238ugly33258ugly32424ugly32846ugly32166ugly619ugly283ugly1226ugly948startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly32146ugly33174ugly32721ugly32193ugly32731ugly32145ugly315ugly1309ugly601ugly1197startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly32147ugly33081ugly32419ugly33089ugly32853ugly33205ugly48ugly809ugly202ugly1264move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
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
  ugly32148ugly32798ugly32071ugly32252ugly33077ugly32843ugly747ugly445ugly1131ugly1175startup_seg_o1_c3c_0_48_south_medium
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
  ugly32149ugly32418ugly33072ugly32443ugly33199ugly32348ugly959ugly908ugly1142ugly1027startup_seg_t_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly32150ugly33274ugly32735ugly32473ugly32810ugly32316ugly741ugly366ugly1038ugly1292move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
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
  ugly32151ugly33038ugly33031ugly33196ugly32571ugly32910ugly1296ugly699ugly93ugly773startup_seg_s_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_t_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a))))
 (:action
  ugly32152ugly32455ugly32796ugly32407ugly32279ugly32003ugly377ugly711ugly827ugly2startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly32153ugly32772ugly32363ugly31954ugly32587ugly32744ugly1234ugly200ugly306ugly814move_seg_o1_c4a_0_34_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
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
  ugly32154ugly32406ugly32110ugly32231ugly32885ugly32730ugly144ugly207ugly1348ugly670move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
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
  ugly32155ugly33222ugly31947ugly32323ugly33047ugly32208ugly106ugly346ugly876ugly983startup_seg_t_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_t_b10b_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly32156ugly32167ugly32820ugly32217ugly32387ugly32937ugly1073ugly890ugly604ugly767startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly32157ugly33156ugly33115ugly32672ugly32367ugly32250ugly1156ugly1227ugly653ugly1179move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
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
  ugly32158ugly33122ugly32001ugly33004ugly32077ugly32414ugly33ugly234ugly1208ugly427move_seg_o1_110b_0_60_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
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
  ugly32159ugly32508ugly32890ugly32280ugly33295ugly32623ugly111ugly1169ugly842ugly1033startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly32160ugly32358ugly32887ugly32762ugly32189ugly33083ugly161ugly663ugly930ugly1018startup_seg_08l_a4c_0_161_245_south_medium
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
  ugly32161ugly32633ugly32681ugly32356ugly32691ugly32896ugly52ugly460ugly883ugly887startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly32162ugly32069ugly32837ugly32073ugly33164ugly32693ugly1180ugly1189ugly692ugly261startup_seg_t_b3c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly32163ugly32718ugly33109ugly32010ugly33155ugly32058ugly1362ugly1053ugly442ugly1353move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a7b_0_60 airplane_daew8)
       (not_blocked seg_n_a7b_0_60 airplane_daew9)
       (not_blocked seg_n_a7b_0_60 airplane_daew3)
       (not_blocked seg_n_a7b_0_60 airplane_daewh)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6a_0_85)) (not_occupied seg_n_a7a6a_0_85)
       (not (at-segment ?a seg_n_a7a6a_0_85)) (occupied seg_n_a7b_0_60)
       (not (not_occupied seg_n_a7b_0_60)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (at-segment ?a seg_n_a7b_0_60)
       (not (blocked seg_n_a7a6b_0_75 ?a)) (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action
  ugly32164ugly32383ugly32306ugly32494ugly32062ugly32125ugly793ugly160ugly494ugly793move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8c_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8d_0_75)) (not_occupied seg_n_a6a8d_0_75)
       (not (at-segment ?a seg_n_a6a8d_0_75)) (occupied seg_n_a6a8c_0_75)
       (not (not_occupied seg_n_a6a8c_0_75)) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a)) (at-segment ?a seg_n_a6a8c_0_75)
       (not (blocked seg_n_a6a8e_0_75 ?a)) (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action
  ugly32165ugly31927ugly32083ugly32451ugly32933ugly32457ugly1027ugly563ugly631ugly1156startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly32166ugly32542ugly32095ugly32072ugly33298ugly33050ugly402ugly1126ugly1310ugly436startup_seg_t_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly32167ugly32820ugly32217ugly32387ugly32937ugly32996ugly1306ugly437ugly778ugly819move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a2a_0_80 airplane_daew8)
       (not_blocked seg_08l_a2a_0_80 airplane_daew9)
       (not_blocked seg_08l_a2a_0_80 airplane_daew3)
       (not_blocked seg_08l_a2a_0_80 airplane_daewh)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a2b_0_80)) (not_occupied seg_08l_a2b_0_80)
       (not (at-segment ?a seg_08l_a2b_0_80)) (occupied seg_08l_a2a_0_80)
       (not (not_occupied seg_08l_a2a_0_80)) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a)) (at-segment ?a seg_08l_a2a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a2_a_0_90 ?a)) (not_blocked seg_a2_a_0_90 ?a)))
 (:action
  ugly32168ugly33124ugly32048ugly33067ugly33178ugly33028ugly562ugly488ugly979ugly37startup_seg_b9_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action
  ugly32169ugly33168ugly31952ugly32101ugly32176ugly32467ugly1302ugly916ugly172ugly1296startup_seg_s_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action
  ugly32170ugly32242ugly32684ugly32445ugly32488ugly32192ugly1188ugly565ugly1096ugly639move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly32171ugly33066ugly33148ugly33261ugly32368ugly33020ugly480ugly270ugly150ugly570park_seg_p108_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly32172ugly32778ugly33110ugly32688ugly33019ugly32229ugly605ugly1276ugly527ugly859move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
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
  ugly32173ugly32228ugly32697ugly32118ugly32272ugly33088ugly262ugly666ugly8ugly609move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe1)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe3)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew8)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew9)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew3)
       (not_blocked seg_n_n2a4a_0_70 airplane_daewh)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4b_0_75)) (not_occupied seg_n_n2a4b_0_75)
       (not (at-segment ?a seg_n_n2a4b_0_75)) (occupied seg_n_n2a4a_0_70)
       (not (not_occupied seg_n_n2a4a_0_70)) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a)) (at-segment ?a seg_n_n2a4a_0_70)
       (not (blocked seg_n_n2a4c_0_75 ?a)) (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action
  ugly32174ugly32395ugly32845ugly32863ugly31950ugly32218ugly896ugly28ugly373ugly49startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly32175ugly32466ugly32687ugly32518ugly32850ugly32971ugly1113ugly1328ugly1174ugly712startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly32176ugly32467ugly33225ugly31959ugly32582ugly32654ugly273ugly936ugly885ugly1098startup_seg_m_a7c_0_60_south_medium
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
  ugly32177ugly32548ugly32711ugly32951ugly32775ugly32043ugly596ugly933ugly650ugly431park_seg_p161_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly32178ugly32821ugly33069ugly32536ugly32428ugly32755ugly1369ugly87ugly400ugly1181startup_seg_s_b3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly32179ugly32946ugly32254ugly31976ugly32658ugly32532ugly1252ugly127ugly507ugly105move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_cfbe1)
       (not_blocked seg_p115_0_76 airplane_cfbe3)
       (not_blocked seg_p115_0_76 airplane_daew8)
       (not_blocked seg_p115_0_76 airplane_daew9)
       (not_blocked seg_p115_0_76 airplane_daew3)
       (not_blocked seg_p115_0_76 airplane_daewh)
       (not_blocked seg_p115_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_p115_0_76)
       (not (not_occupied seg_p115_0_76)) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a)) (at-segment ?a seg_p115_0_76)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)))
 (:action
  ugly32180ugly32269ugly33150ugly32308ugly33228ugly32375ugly1031ugly309ugly328ugly480move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
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
  ugly32181ugly33288ugly33130ugly32944ugly32522ugly32958ugly1360ugly229ugly5ugly316startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly32182ugly32337ugly32240ugly32510ugly32511ugly33144ugly790ugly1288ugly1001ugly1286startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly32183ugly32801ugly32116ugly33099ugly32054ugly32594ugly844ugly529ugly829ugly816move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
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
  ugly32184ugly32284ugly32154ugly32406ugly32110ugly32231ugly962ugly660ugly589ugly83startup_seg_n_a3d_0_60_south_medium
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
  ugly32185ugly32474ugly32346ugly32865ugly32463ugly32400ugly1126ugly1310ugly436ugly497move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
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
  ugly32186ugly33030ugly32748ugly32928ugly32585ugly32020ugly1269ugly600ugly1361ugly895startup_seg_m_a9b_0_60_south_medium
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
  ugly32187ugly32465ugly32024ugly33271ugly32232ugly32080ugly43ugly823ugly852ugly260startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly32188ugly33073ugly33098ugly31996ugly32313ugly33105ugly1063ugly216ugly106ugly346startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly32189ugly33083ugly32084ugly32408ugly32035ugly32388ugly1355ugly72ugly1182ugly596startup_seg_o1_108a_0_34_south_medium
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
  ugly32190ugly32517ugly31995ugly32390ugly32888ugly31934ugly1076ugly17ugly409ugly466startup_seg_08r_b4a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4a_0_161_245)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action
  ugly32191ugly33017ugly32234ugly32876ugly32427ugly33006ugly421ugly878ugly194ugly1021move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
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
  ugly32192ugly33111ugly33128ugly33180ugly32860ugly32143ugly326ugly689ugly371ugly978startup_seg_o1_c3a_0_34_south_medium
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
  ugly32193ugly32731ugly32145ugly32238ugly33258ugly32424ugly923ugly1323ugly504ugly303startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32194ugly32902ugly32832ugly32018ugly32246ugly32181ugly1365ugly384ugly602ugly549startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly32195ugly32606ugly32432ugly32747ugly32377ugly32082ugly809ugly202ugly1264ugly144move_seg_w1_151c_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
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
  ugly32196ugly32981ugly32202ugly32141ugly32354ugly32373ugly1106ugly143ugly58ugly21startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly32197ugly32561ugly32839ugly32317ugly32573ugly32384ugly389ugly280ugly1158ugly1186startup_seg_t_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly32198ugly33011ugly32288ugly32983ugly33242ugly33162ugly404ugly1093ugly323ugly173move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
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
  ugly32199ugly33259ugly33231ugly33238ugly32634ugly32224ugly760ugly382ugly657ugly1358startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly32200ugly32468ugly32925ugly32894ugly32052ugly33125ugly94ugly733ugly124ugly432pushback_seg_o1_108d_0_45_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly32201ugly32815ugly32295ugly32626ugly33239ugly32088ugly422ugly199ugly56ugly238startup_seg_t_b5c_0_120_934_south_medium
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
  ugly32202ugly32141ugly32354ugly32373ugly33029ugly32873ugly827ugly2ugly1187ugly249move_seg_s5_0_94_seg_s_b7a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s5_0_94) (not_occupied seg_s_b7a_0_60)
       (not_blocked seg_s_b7a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b7a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b7a_0_60 airplane_daew8)
       (not_blocked seg_s_b7a_0_60 airplane_daew9)
       (not_blocked seg_s_b7a_0_60 airplane_daew3)
       (not_blocked seg_s_b7a_0_60 airplane_daewh)
       (not_blocked seg_s_b7a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s5_0_94)) (not_occupied seg_s5_0_94)
       (not (at-segment ?a seg_s5_0_94)) (occupied seg_s_b7a_0_60)
       (not (not_occupied seg_s_b7a_0_60)) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (at-segment ?a seg_s_b7a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c4c_0_60 ?a)) (not_blocked seg_w1_c4c_0_60 ?a)))
 (:action
  ugly32203ugly32892ugly32720ugly33197ugly32049ugly33141ugly564ugly976ugly707ugly646startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly32204ugly32209ugly31973ugly32500ugly32235ugly33056ugly1339ugly1145ugly1057ugly82startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly32205ugly32392ugly32936ugly32901ugly32261ugly33021ugly175ugly1125ugly558ugly1092startup_seg_08l_a7c_0_161_245_south_medium
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
  ugly32206ugly33209ugly32752ugly32226ugly33002ugly32458ugly1172ugly1374ugly1064ugly568startup_seg_b2_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action
  ugly32207ugly32260ugly33009ugly33060ugly32498ugly33240ugly124ugly432ugly456ugly1135startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32208ugly32029ugly32338ugly32743ugly32109ugly32299ugly696ugly1032ugly571ugly435startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly32209ugly31973ugly32500ugly32235ugly33056ugly33262ugly556ugly380ugly599ugly134startup_seg_m_a6c_0_60_south_medium
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
  ugly32210ugly32627ugly32640ugly32013ugly32004ugly32404ugly1249ugly726ugly114ugly1237move_seg_08r_b6b_0_80_seg_08r_b6b9_0_420_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b_0_80) (not_occupied seg_08r_b6b9_0_420)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbeg)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbe1)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbe3)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew8)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew9)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew3)
       (not_blocked seg_08r_b6b9_0_420 airplane_daewh)
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
  ugly32211ugly33177ugly32677ugly32502ugly32615ugly32106ugly841ugly444ugly1006ugly438move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
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
  ugly32212ugly31972ugly32409ugly33170ugly32665ugly32620ugly1294ugly386ugly509ugly1340startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly32213ugly32355ugly32729ugly32740ugly33273ugly32247ugly93ugly773ugly538ugly23startup_seg_t_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly32214ugly33022ugly32884ugly32962ugly33123ugly33290ugly598ugly128ugly1282ugly1045park_seg_p161_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action
  ugly32215ugly32880ugly32690ugly32268ugly32107ugly32949ugly102ugly325ugly307ugly880startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action
  ugly32216ugly32864ugly32174ugly32395ugly32845ugly32863ugly27ugly1069ugly715ugly361park_seg_p163_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action
  ugly32217ugly32387ugly32937ugly32996ugly33229ugly32597ugly9ugly485ugly784ugly407startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly32218ugly32819ugly32930ugly32825ugly33215ugly32559ugly171ugly319ugly562ugly488startup_seg_o1_111a_0_34_south_medium
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
  ugly32219ugly33016ugly33075ugly32334ugly32426ugly32162ugly146ugly581ugly1195ugly1295startup_seg_t_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly32220ugly32566ugly32422ugly32041ugly33265ugly32318ugly884ugly526ugly110ugly1223startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly32221ugly32431ugly32297ugly31967ugly32629ugly31984ugly382ugly657ugly1358ugly865startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly32222ugly32926ugly32700ugly32799ugly32147ugly33081ugly496ugly233ugly594ugly590startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly32223ugly32169ugly33168ugly31952ugly32101ugly32176ugly544ugly745ugly223ugly760move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
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
  ugly32224ugly32683ugly32827ugly32616ugly32657ugly32157ugly1233ugly1329ugly97ugly985startup_seg_s_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action
  ugly32225ugly32800ugly32593ugly33086ugly32802ugly32726ugly267ugly586ugly1048ugly661move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
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
  ugly32226ugly33002ugly32458ugly33095ugly32148ugly32798ugly148ugly256ugly131ugly574move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_cfbe1)
       (not_blocked seg_a2_b_0_90 airplane_cfbe3)
       (not_blocked seg_a2_b_0_90 airplane_daew8)
       (not_blocked seg_a2_b_0_90 airplane_daew9)
       (not_blocked seg_a2_b_0_90 airplane_daew3)
       (not_blocked seg_a2_b_0_90 airplane_daewh)
       (not_blocked seg_a2_b_0_90 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a2_c_0_100)) (not_occupied seg_a2_c_0_100)
       (not (at-segment ?a seg_a2_c_0_100)) (occupied seg_a2_b_0_90)
       (not (not_occupied seg_a2_b_0_90)) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a)) (at-segment ?a seg_a2_b_0_90)
       (not (blocked seg_n_a2a_0_60 ?a)) (not_blocked seg_n_a2a_0_60 ?a)))
 (:action
  ugly32227ugly31997ugly31957ugly32053ugly32636ugly33008ugly1219ugly81ugly187ugly1367move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
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
  ugly32228ugly32697ugly32118ugly32272ugly33088ugly32185ugly551ugly186ugly926ugly1262move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_cfbe1)
       (not_blocked seg_p117_0_76 airplane_cfbe3)
       (not_blocked seg_p117_0_76 airplane_daew8)
       (not_blocked seg_p117_0_76 airplane_daew9)
       (not_blocked seg_p117_0_76 airplane_daew3)
       (not_blocked seg_p117_0_76 airplane_daewh)
       (not_blocked seg_p117_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_p117_0_76)
       (not (not_occupied seg_p117_0_76)) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a)) (at-segment ?a seg_p117_0_76)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)))
 (:action
  ugly32229ugly32528ugly32984ugly32353ugly32257ugly32195ugly683ugly1ugly763ugly250startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly32230ugly31969ugly32294ugly33237ugly32538ugly33023ugly247ugly1008ugly1023ugly891startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly32231ugly32885ugly32730ugly32067ugly32093ugly31941ugly26ugly76ugly1146ugly817startup_seg_b6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action
  ugly32232ugly32080ugly31966ugly32591ugly31968ugly32042ugly237ugly1230ugly741ugly366park_seg_p117_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly32233ugly33200ugly33203ugly32439ugly32805ugly32590ugly1295ugly525ugly1343ugly86move_seg_w1_162b_0_45_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
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
  ugly32234ugly32876ugly32427ugly33006ugly32344ugly32212ugly49ugly828ugly1216ugly802startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly32235ugly33056ugly33262ugly32479ugly31944ugly32671ugly1019ugly1301ugly304ugly1303startup_seg_s_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly32236ugly32575ugly32055ugly32975ugly33211ugly32844ugly984ugly489ugly120ugly781startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly32237ugly32492ugly32210ugly32627ugly32640ugly32013ugly81ugly187ugly1367ugly19startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly32238ugly33258ugly32424ugly32846ugly32166ugly32542ugly172ugly1296ugly699ugly93startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly32239ugly32137ugly32646ugly32172ugly32778ugly33110ugly765ugly572ugly25ugly263move_seg_w1_153c_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
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
  ugly32240ugly32510ugly32511ugly33144ugly32713ugly33037ugly1333ugly300ugly1225ugly412startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action
  ugly32241ugly32661ugly32350ugly33232ugly32015ugly32227ugly74ugly1012ugly693ugly1352startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action
  ugly32242ugly32684ugly32445ugly32488ugly32192ugly33111ugly1205ugly344ugly853ugly754startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly32243ugly32806ugly33268ugly32211ugly33177ugly32677ugly579ugly285ugly1364ugly576startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly32244ugly32130ugly32653ugly33291ugly32314ugly33267ugly1059ugly215ugly63ugly1299startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly32245ugly32063ugly32638ugly33255ugly32703ugly32649ugly261ugly514ugly577ugly532startup_seg_t_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly32246ugly32181ugly33288ugly33130ugly32944ugly32522ugly1035ugly780ugly22ugly1084startup_seg_t_b6c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly32247ugly32016ugly32941ugly33040ugly32188ugly33073ugly1175ugly1003ugly716ugly1141startup_seg_t_b6c_0_120_934_south_medium
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
  ugly32248ugly32870ugly32459ugly32126ugly31926ugly32599ugly1145ugly1057ugly82ugly860move_seg_o1_111b_0_60_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
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
  ugly32249ugly33112ugly32727ugly32129ugly33064ugly33257ugly6ugly1200ugly1136ugly115startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action
  ugly32250ugly33079ugly32262ugly31990ugly33078ugly31943ugly88ugly313ugly311ugly417startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly32251ugly33055ugly32339ugly32706ugly33234ugly32153ugly849ugly540ugly450ugly910startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly32252ugly33077ugly32843ugly32670ugly32255ugly32833ugly574ugly89ugly99ugly740startup_seg_t_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action
  ugly32253ugly33260ugly31981ugly32786ugly32171ugly33066ugly1225ugly412ugly1201ugly64startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly32254ugly31976ugly32658ugly32532ugly33175ugly33091ugly314ugly418ugly1109ugly1254startup_seg_n_a3b_0_60_south_medium
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
  ugly32255ugly32833ugly32497ugly32031ugly32349ugly32359ugly929ugly419ugly737ugly953park_seg_p107_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly32256ugly32622ugly32389ugly32854ugly33185ugly33223ugly147ugly320ugly776ugly415move_seg_o1_108c_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
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
  ugly32257ugly32195ugly32606ugly32432ugly32747ugly32377ugly159ugly137ugly1035ugly780move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
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
  ugly32258ugly32150ugly33274ugly32735ugly32473ugly32810ugly393ugly269ugly1114ugly960startup_seg_s_b6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action
  ugly32259ugly32602ugly32956ugly32178ugly32821ugly33069ugly613ugly332ugly1321ugly622startup_seg_s_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action
  ugly32260ugly33009ugly33060ugly32498ugly33240ugly32047ugly628ugly949ugly486ugly638move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_cfbe1)
       (not_blocked seg_p109_0_76 airplane_cfbe3)
       (not_blocked seg_p109_0_76 airplane_daew8)
       (not_blocked seg_p109_0_76 airplane_daew9)
       (not_blocked seg_p109_0_76 airplane_daew3)
       (not_blocked seg_p109_0_76 airplane_daewh)
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
  ugly32261ugly33021ugly32098ugly32520ugly33131ugly32707ugly1015ugly104ugly902ugly530startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly32262ugly31990ugly33078ugly31943ugly32011ugly32838ugly204ugly966ugly268ugly135startup_seg_t_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly32263ugly31994ugly32495ugly32848ugly33012ugly33214ugly16ugly955ugly714ugly691move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
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
  ugly32264ugly33169ugly33216ugly32583ugly32780ugly32302ugly994ugly1090ugly208ugly220startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly32265ugly32089ugly32840ugly33165ugly33100ugly32724ugly68ugly521ugly1009ugly584startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly32266ugly32642ugly32454ugly32292ugly32263ugly31994ugly572ugly25ugly263ugly219startup_seg_t_b8a_0_60_south_medium
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
  ugly32267ugly32957ugly32830ugly32812ugly33025ugly33279ugly646ugly775ugly55ugly1168startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly32268ugly32107ugly32949ugly32025ugly33248ugly32136ugly173ugly433ugly1067ugly1205move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly32269ugly33150ugly32308ugly33228ugly32375ugly32954ugly895ugly1215ugly1342ugly1213startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly32270ugly32576ugly33159ugly32964ugly32464ugly32534ugly517ugly879ugly403ugly217move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p142_0_75)) (not_occupied seg_p142_0_75)
       (not (at-segment ?a seg_p142_0_75)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action
  ugly32271ugly32867ugly33277ugly32625ugly33134ugly32134ugly1022ugly808ugly272ugly337startup_seg_s_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action
  ugly32272ugly33088ugly32185ugly32474ugly32346ugly32865ugly540ugly450ugly910ugly1250startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly32273ugly32285ugly32682ugly32469ugly32405ugly32913ugly635ugly1165ugly1129ugly80startup_seg_o1_109d_0_45_south_medium
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
  ugly32274ugly32421ugly31977ugly32952ugly32186ugly33030ugly825ugly1355ugly72ugly1182startup_seg_t_b8d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8d_0_60)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action
  ugly32275ugly33129ugly32974ugly32304ugly32817ugly32444ugly474ugly1277ugly108ugly429startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly32276ugly32163ugly32718ugly33109ugly32010ugly33155ugly135ugly547ugly1130ugly541move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
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
  ugly32277ugly32563ugly33033ugly32774ugly33247ugly33044ugly91ugly736ugly204ugly966move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
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
  ugly32278ugly33135ugly32002ugly32379ugly32695ugly32979ugly966ugly268ugly135ugly547startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly32279ugly32003ugly32300ugly32103ugly32734ugly32099ugly822ugly342ugly413ugly785startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32280ugly33295ugly32623ugly32034ugly32219ugly33016ugly1152ugly854ugly443ugly925startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action
  ugly32281ugly33101ugly33102ugly33154ugly32560ugly32977ugly559ugly40ugly1294ugly386startup_seg_t_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action
  ugly32282ugly33204ugly32233ugly33200ugly33203ugly32439ugly882ugly440ugly7ugly1055startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly32283ugly33092ugly32207ugly32260ugly33009ugly33060ugly575ugly1318ugly626ugly349startup_seg_08r_b9a_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_08r_b9c_0_80) (not_occupied seg_09r_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (blocked seg_09r_0_80 ?a)
       (not (not_blocked seg_09r_0_80 ?a))))
 (:action
  ugly32284ugly32154ugly32406ugly32110ugly32231ugly32885ugly807ugly911ugly45ugly1334move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8f_0_75 airplane_daewh)
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
  ugly32285ugly32682ugly32469ugly32405ugly32913ugly32558ugly1064ugly568ugly464ugly790startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly32286ugly32064ugly33275ugly33074ugly32206ugly33209ugly829ugly816ugly402ugly1126startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly32287ugly32769ugly32499ugly32921ugly32311ugly32417ugly949ugly486ugly638ugly369park_seg_p141_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly32288ugly32983ugly33242ugly33162ugly32327ugly32371ugly539ugly1039ugly155ugly758startup_seg_t_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action
  ugly32289ugly33082ugly31985ugly33071ugly32709ugly32782ugly82ugly860ugly390ugly1103move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_cfbe1)
       (not_blocked seg_p141_0_75 airplane_cfbe3)
       (not_blocked seg_p141_0_75 airplane_daew8)
       (not_blocked seg_p141_0_75 airplane_daew9)
       (not_blocked seg_p141_0_75 airplane_daew3)
       (not_blocked seg_p141_0_75 airplane_daewh)
       (not_blocked seg_p141_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_p141_0_75)
       (not (not_occupied seg_p141_0_75)) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a)) (at-segment ?a seg_p141_0_75)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)))
 (:action
  ugly32290ugly32862ugly32686ugly32787ugly32104ugly32253ugly1337ugly621ugly686ugly1298park_seg_p141_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly32291ugly32692ugly32121ugly32779ugly32168ugly33124ugly125ugly990ugly1193ugly493move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p119_0_76)) (not_occupied seg_p119_0_76)
       (not (at-segment ?a seg_p119_0_76)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)))
 (:action
  ugly32292ugly32263ugly31994ugly32495ugly32848ugly33012ugly1291ugly1273ugly1371ugly1171move_seg_s_b7d_0_60_seg_s_b6b7b_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b7d_0_60) (not_occupied seg_s_b6b7b_0_140)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbe3)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew9)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew3)
       (not_blocked seg_s_b6b7b_0_140 airplane_daewh)
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
  ugly32293ugly32932ugly32236ugly32575ugly32055ugly32975ugly1288ugly1001ugly1286ugly1095startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly32294ugly33237ugly32538ugly33023ugly32170ugly32242ugly761ugly376ugly1051ugly290startup_seg_b6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly32295ugly32626ugly33239ugly32088ugly32345ugly32161ugly710ugly439ugly339ugly51startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly32296ugly32442ugly33046ugly32584ugly32652ugly32990ugly1111ugly991ugly1194ugly1326startup_seg_t_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a))))
 (:action
  ugly32297ugly31967ugly32629ugly31984ugly32305ugly32490ugly8ugly609ugly183ugly343startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32298ugly31989ugly32660ugly32710ugly33152ugly33151ugly155ugly758ugly582ugly798startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly32299ugly32619ugly32883ugly32113ugly32589ugly33035ugly59ugly75ugly383ugly180startup_seg_b6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly32300ugly32103ugly32734ugly32099ugly32745ugly32742ugly188ugly508ugly242ugly1026startup_seg_s_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action
  ugly32301ugly33251ugly33070ugly33264ugly32555ugly32416ugly1183ugly492ugly980ugly958startup_seg_t_b5a_0_60_south_medium
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
  ugly32302ugly32917ugly32935ugly33293ugly33051ugly33090ugly739ugly224ugly807ugly911move_seg_s_b3b4d_0_140_seg_s_b3b4c_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4d_0_140) (not_occupied seg_s_b3b4c_0_140)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4c_0_140 airplane_daewh)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4d_0_140)) (not_occupied seg_s_b3b4d_0_140)
       (not (at-segment ?a seg_s_b3b4d_0_140)) (occupied seg_s_b3b4c_0_140)
       (not (not_occupied seg_s_b3b4c_0_140)) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))
       (at-segment ?a seg_s_b3b4c_0_140) (not (blocked seg_s_b4c_0_60 ?a))
       (not_blocked seg_s_b4c_0_60 ?a)))
 (:action
  ugly32303ugly32556ugly32360ugly32446ugly32187ugly32465ugly101ugly696ugly1032ugly571move_seg_o1_c4b_0_60_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
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
  ugly32304ugly32817ugly32444ugly32397ugly32916ugly33212ugly403ugly217ugly192ugly153startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly32305ugly32490ugly31931ugly32777ugly31979ugly32753ugly1244ugly832ugly1188ugly565startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly32306ugly32494ugly32062ugly32125ugly32716ugly32491ugly1078ugly191ugly91ugly736move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p151_0_75)) (not_occupied seg_p151_0_75)
       (not (at-segment ?a seg_p151_0_75)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action
  ugly32307ugly33143ugly31980ugly33146ugly32760ugly32533ugly1068ugly61ugly368ugly1178move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
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
  ugly32308ugly33228ugly32375ugly32954ugly32818ugly33061ugly805ugly1049ugly259ugly1111park_seg_p111_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly32309ugly32489ugly32435ugly31948ugly32656ugly32814ugly533ugly606ugly1297ugly404startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly32310ugly33230ugly32804ugly32795ugly33253ugly33032ugly1057ugly82ugly860ugly390startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly32311ugly32417ugly32872ugly32588ugly32396ugly32919ugly986ugly1257ugly393ugly269startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly32312ugly32668ugly32040ugly32635ugly32179ugly32946ugly331ugly69ugly334ugly1185startup_seg_t_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action
  ugly32313ugly33105ugly32986ugly32213ugly32355ugly32729ugly817ugly560ugly1166ugly330park_seg_p132_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly32314ugly33267ugly32982ugly32504ugly32898ugly32955ugly322ugly858ugly554ugly1117startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly32315ugly32897ugly32960ugly32765ugly32496ugly32006ugly37ugly620ugly182ugly682startup_seg_m_a7b_0_60_south_medium
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
  ugly32316ugly32664ugly33104ugly32722ugly32328ugly32613ugly663ugly930ugly1018ugly1081startup_seg_t_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action
  ugly32317ugly32573ugly32384ugly32312ugly32668ugly32040ugly712ugly824ugly52ugly460startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly32318ugly32807ugly32201ugly32815ugly32295ugly32626ugly1316ugly1221ugly1331ugly457move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
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
  ugly32319ugly32886ugly33244ugly32102ugly32425ugly32239ugly214ugly643ugly240ugly971move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3b_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3c_0_75)) (not_occupied seg_n_a2a3c_0_75)
       (not (at-segment ?a seg_n_a2a3c_0_75)) (occupied seg_n_a2a3b_0_75)
       (not (not_occupied seg_n_a2a3b_0_75)) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a)) (at-segment ?a seg_n_a2a3b_0_75)
       (not (blocked seg_n_a2a3d_0_75 ?a)) (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action
  ugly32320ugly32835ugly32423ugly32704ugly32332ugly32352ugly182ugly682ugly1151ugly946startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly32321ugly32756ugly32430ugly32164ugly32383ugly32306ugly571ugly435ugly1275ugly67move_seg_08r_b2a_0_80_seg_08r_b2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b2a_0_80) (not_occupied seg_08r_b2b_0_80)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b2b_0_80 airplane_daew8)
       (not_blocked seg_08r_b2b_0_80 airplane_daew9)
       (not_blocked seg_08r_b2b_0_80 airplane_daew3)
       (not_blocked seg_08r_b2b_0_80 airplane_daewh)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b2a_0_80)) (not_occupied seg_08r_b2a_0_80)
       (not (at-segment ?a seg_08r_b2a_0_80)) (occupied seg_08r_b2b_0_80)
       (not (not_occupied seg_08r_b2b_0_80)) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a)) (at-segment ?a seg_08r_b2b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b2_1_0_80 ?a)) (not_blocked seg_b2_1_0_80 ?a)))
 (:action
  ugly32322ugly32808ugly32673ugly32330ugly32484ugly32019ugly1129ugly80ugly957ugly1337startup_seg_b9_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly32323ugly33047ugly32208ugly32029ugly32338ugly32743ugly186ugly926ugly1262ugly426park_seg_p103_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action
  ugly32324ugly32630ugly32117ugly33013ugly32197ugly32561ugly916ugly172ugly1296ugly699move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe1)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe3)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew8)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew9)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew3)
       (not_blocked seg_08l_a2a3_0_970 airplane_daewh)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08l_a2a_0_80)) (not_occupied seg_08l_a2a_0_80)
       (not (at-segment ?a seg_08l_a2a_0_80)) (occupied seg_08l_a2a3_0_970)
       (not (not_occupied seg_08l_a2a3_0_970)) (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action
  ugly32325ugly33194ugly32570ugly32471ugly32579ugly33171ugly40ugly1294ugly386ugly509startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly32326ugly32336ugly32877ugly32794ugly32393ugly33118ugly300ugly1225ugly412ugly1201move_seg_08r_b3a_0_80_seg_08r_b3b4_0_520_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3a_0_80) (not_occupied seg_08r_b3b4_0_520)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbeg)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbe1)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbe3)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew8)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew9)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew3)
       (not_blocked seg_08r_b3b4_0_520 airplane_daewh)
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
  ugly32327ugly32371ugly32462ugly32204ugly32209ugly31973ugly577ugly532ugly548ugly557startup_seg_b10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly32328ugly32613ugly32586ugly32097ugly32182ugly32337ugly317ugly281ugly839ugly1020startup_seg_t_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action
  ugly32329ugly32033ugly33195ugly33289ugly32985ugly32816ugly122ugly1305ugly278ugly62move_seg_o1_111c_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
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
  ugly32330ugly32484ugly32019ugly33052ugly33287ugly32309ugly566ugly1313ugly196ugly935move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_cfbe1)
       (not_blocked seg_p116_0_76 airplane_cfbe3)
       (not_blocked seg_p116_0_76 airplane_daew8)
       (not_blocked seg_p116_0_76 airplane_daew9)
       (not_blocked seg_p116_0_76 airplane_daew3)
       (not_blocked seg_p116_0_76 airplane_daewh)
       (not_blocked seg_p116_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_p116_0_76)
       (not (not_occupied seg_p116_0_76)) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a)) (at-segment ?a seg_p116_0_76)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly32331ugly31924ugly32650ugly32276ugly32163ugly32718ugly1186ugly545ugly294ugly1238startup_seg_s_b5c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5c_0_60)
       (not_occupied seg_t_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a))))
 (:action
  ugly32332ugly32352ugly32105ugly33181ugly33282ugly32259ugly679ugly746ugly1002ugly406move_seg_w1_163b_0_45_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
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
  ugly32333ugly32666ugly33045ugly32372ugly32968ugly32507ugly476ugly1157ugly184ugly537park_seg_p119_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action
  ugly32334ugly32426ugly32162ugly32069ugly32837ugly32073ugly1241ugly453ugly77ugly360startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly32335ugly33096ugly33233ugly31925ugly32142ugly32258ugly227ugly735ugly408ugly50move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_cfbe1)
       (not_blocked seg_p108_0_76 airplane_cfbe3)
       (not_blocked seg_p108_0_76 airplane_daew8)
       (not_blocked seg_p108_0_76 airplane_daew9)
       (not_blocked seg_p108_0_76 airplane_daew3)
       (not_blocked seg_p108_0_76 airplane_daewh)
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
  ugly32336ugly32877ugly32794ugly32393ugly33118ugly32223ugly246ugly769ugly467ugly1312startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly32337ugly32240ugly32510ugly32511ugly33144ugly32713ugly1114ugly960ugly672ugly834move_seg_t_b8a_0_60_seg_s_b8b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b8a_0_60) (not_occupied seg_s_b8b_0_60)
       (not_blocked seg_s_b8b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b8b_0_60 airplane_cfbe3)
       (not_blocked seg_s_b8b_0_60 airplane_daew8)
       (not_blocked seg_s_b8b_0_60 airplane_daew9)
       (not_blocked seg_s_b8b_0_60 airplane_daew3)
       (not_blocked seg_s_b8b_0_60 airplane_daewh)
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
  ugly32338ugly32743ugly32109ugly32299ugly32619ugly32883ugly190ugly310ugly495ugly266startup_seg_o1_c2b_0_60_south_medium
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
  ugly32339ugly32706ugly33234ugly32153ugly32772ugly32363ugly31ugly1231ugly198ugly640move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p134_0_75)) (not_occupied seg_p134_0_75)
       (not (at-segment ?a seg_p134_0_75)) (occupied seg_o1_111d_0_45)
       (not (not_occupied seg_o1_111d_0_45)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action
  ugly32340ugly32501ugly32641ugly33224ugly33198ugly33161ugly1001ugly1286ugly1095ugly871startup_seg_s_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action
  ugly32341ugly31961ugly32203ugly32892ugly32720ugly33197ugly126ugly706ugly899ugly1234move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
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
  ugly32342ugly32090ugly33270ugly32301ugly33251ugly33070ugly1341ugly449ugly1203ugly595startup_seg_s_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a))))
 (:action
  ugly32343ugly32057ugly32433ugly32059ugly32322ugly32808ugly750ugly331ugly69ugly334startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly32344ugly32212ugly31972ugly32409ugly33170ugly32665ugly697ugly10ugly1083ugly117startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly32345ugly32161ugly32633ugly32681ugly32356ugly32691ugly973ugly355ugly421ugly878move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
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
  ugly32346ugly32865ugly32463ugly32400ugly33049ugly33176ugly475ugly399ugly1204ugly265move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
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
  ugly32347ugly32920ugly32175ugly32466ugly32687ugly32518ugly927ugly873ugly722ugly1073startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly32348ugly32882ugly32437ugly32842ugly33048ugly33249ugly5ugly316ugly931ugly30park_seg_p162_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly32349ugly32359ugly32852ugly32420ugly33005ugly33057ugly347ugly100ugly800ugly1365move_seg_o1_110d_0_45_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
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
  ugly32350ugly33232ugly32015ugly32227ugly31997ugly31957ugly130ugly1369ugly87ugly400startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly32351ugly32460ugly32541ugly33202ugly32562ugly33133ugly1374ugly1064ugly568ugly464startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32352ugly32105ugly33181ugly33282ugly32259ugly32602ugly1033ugly1290ugly701ugly1346startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly32353ugly32257ugly32195ugly32606ugly32432ugly32747ugly454ugly31ugly1231ugly198startup_seg_s_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action
  ugly32354ugly32373ugly33029ugly32873ugly32750ugly32529ugly7ugly1055ugly747ugly445startup_seg_m_a4d_0_60_south_medium
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
  ugly32355ugly32729ugly32740ugly33273ugly32247ugly32016ugly1018ugly1081ugly624ugly786startup_seg_o1_111d_0_45_south_medium
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
  ugly32356ugly32691ugly32896ugly31975ugly32893ugly32307ugly1220ugly44ugly190ugly310startup_seg_t_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_t_b2b_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly32357ugly32948ugly32869ugly33189ugly32943ugly33139ugly1038ugly1292ugly12ugly1210move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
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
  ugly32358ugly32887ugly32762ugly32189ugly33083ugly32084ugly485ugly784ugly407ugly851startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly32359ugly32852ugly32420ugly33005ugly33057ugly32270ugly653ugly1179ugly145ugly329startup_seg_s_b7a_0_60_south_medium
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
  ugly32360ugly32446ugly32187ugly32465ugly32024ugly33271ugly309ugly328ugly480ugly270move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe1)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe3)
       (not_blocked seg_a8_a_0_157_785 airplane_daew8)
       (not_blocked seg_a8_a_0_157_785 airplane_daew9)
       (not_blocked seg_a8_a_0_157_785 airplane_daew3)
       (not_blocked seg_a8_a_0_157_785 airplane_daewh)
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
  ugly32361ugly31936ugly32858ugly33254ugly32081ugly32068ugly506ugly478ugly1366ugly90move_seg_s6_0_94_seg_c4_s6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s6_0_94) (not_occupied seg_c4_s6b_0_60)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbe3)
       (not_blocked seg_c4_s6b_0_60 airplane_daew8)
       (not_blocked seg_c4_s6b_0_60 airplane_daew9)
       (not_blocked seg_c4_s6b_0_60 airplane_daew3)
       (not_blocked seg_c4_s6b_0_60 airplane_daewh)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s6_0_94)) (not_occupied seg_s6_0_94)
       (not (at-segment ?a seg_s6_0_94)) (occupied seg_c4_s6b_0_60)
       (not (not_occupied seg_c4_s6b_0_60)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (at-segment ?a seg_c4_s6b_0_60)
       (not (blocked seg_s_b5a_0_60 ?a)) (not_blocked seg_s_b5a_0_60 ?a)))
 (:action
  ugly32362ugly32739ugly32335ugly33096ugly33233ugly31925ugly219ugly591ugly416ugly637startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly32363ugly31954ugly32587ugly32744ugly33157ugly32705ugly549ugly877ugly1170ugly1316startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action
  ugly32364ugly32824ugly32875ugly32475ugly32310ugly33230ugly881ugly221ugly820ugly1167startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly32365ugly33191ugly33076ugly32993ugly32394ugly32540ugly1087ugly1219ugly81ugly187startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly32366ugly32100ugly32785ugly32967ugly33173ugly32441ugly721ugly1259ugly531ugly909startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action
  ugly32367ugly32250ugly33079ugly32262ugly31990ugly33078ugly20ugly473ugly109ugly248move_seg_w1_162c_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
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
  ugly32368ugly33020ugly32403ugly33026ugly32601ugly33160ugly1174ugly712ugly824ugly52takeoff_seg_09l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action
  ugly32369ugly33210ugly32293ugly32932ugly32236ugly32575ugly132ugly753ugly314ugly418startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly32370ugly32251ugly33055ugly32339ugly32706ugly33234ugly230ugly377ugly711ugly827move_seg_w1_141b_0_45_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
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
  ugly32371ugly32462ugly32204ugly32209ugly31973ugly32500ugly312ugly912ugly1251ugly391startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly32372ugly32968ugly32507ugly32399ugly32904ugly32480ugly511ugly3ugly1300ugly289startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly32373ugly33029ugly32873ugly32750ugly32529ugly31930ugly655ugly1191ugly54ugly678startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly32374ugly33184ugly32056ugly32131ugly32180ugly32269ugly1227ugly653ugly1179ugly145move_seg_o1_102c_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
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
  ugly32375ugly32954ugly32818ugly33061ugly32728ugly33220ugly15ugly1212ugly129ugly201startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly32376ugly33227ugly32612ugly32737ugly32060ugly32738ugly553ugly539ugly1039ugly155startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly32377ugly32082ugly32732ugly32007ugly32797ugly32834ugly1267ugly1050ugly1137ugly174move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
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
  ugly32378ugly32152ugly32455ugly32796ugly32407ugly32279ugly80ugly957ugly1337ugly621startup_seg_s_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5d_0_60)
       (not_occupied seg_s_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a))))
 (:action
  ugly32379ugly32695ugly32979ugly32889ugly32282ugly33204ugly310ugly495ugly266ugly923startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly32380ugly33201ugly32275ugly33129ugly32974ugly32304ugly894ugly1056ugly1075ugly282startup_seg_s_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action
  ugly32381ugly33281ugly32200ugly32468ugly32925ugly32894ugly129ugly201ugly932ugly987move_seg_b8_a_0_156_924_seg_b8_b_1_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_a_0_156_924) (not_occupied seg_b8_b_1_0_80_6226)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbe1)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbe3)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew9)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew3)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daewh)
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
  ugly32382ugly32132ugly33113ugly33041ugly31935ugly32296ugly519ugly801ugly1099ugly1134startup_seg_t_b7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action
  ugly32383ugly32306ugly32494ugly32062ugly32125ugly32716ugly568ugly464ugly790ugly1288startup_seg_o1_c3b_0_60_south_medium
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
  ugly32384ugly32312ugly32668ugly32040ugly32635ugly32179ugly1023ugly891ugly913ugly1206startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action
  ugly32385ugly32523ugly32789ugly32410ugly32122ugly32963ugly1256ugly297ugly588ugly47startup_seg_t_b7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly32386ugly33080ugly33018ugly33062ugly33093ugly32841ugly627ugly939ugly1336ugly112startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly32387ugly32937ugly32996ugly33229ugly32597ugly31932ugly794ugly231ugly246ugly769startup_seg_08r_b3c_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_08r_0_80) (not_occupied seg_08r_b3a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (blocked seg_08r_b3a_0_80 ?a)
       (not (not_blocked seg_08r_b3a_0_80 ?a))))
 (:action
  ugly32388ugly33278ugly32557ugly31965ugly32119ugly32220ugly643ugly240ugly971ugly84move_seg_w1_142c_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
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
  ugly32389ugly32854ugly33185ugly33223ugly32070ugly32535ugly955ugly714ugly691ugly367move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
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
  ugly32390ugly32888ugly31934ugly32999ugly33127ugly33063ugly752ugly652ugly394ugly684park_seg_p108_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action
  ugly32391ugly33250ugly32120ugly33183ugly32215ugly32880ugly767ugly869ugly855ugly1065startup_seg_t_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action
  ugly32392ugly32936ugly32901ugly32261ugly33021ugly32098ugly597ugly461ugly922ugly700park_seg_p163_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly32393ugly33118ugly32223ugly32169ugly33168ugly31952ugly178ugly1107ugly510ugly662move_seg_s_b3b4a_0_140_seg_s_b3a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4a_0_140) (not_occupied seg_s_b3a_0_60)
       (not_blocked seg_s_b3a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b3a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b3a_0_60 airplane_daew8)
       (not_blocked seg_s_b3a_0_60 airplane_daew9)
       (not_blocked seg_s_b3a_0_60 airplane_daew3)
       (not_blocked seg_s_b3a_0_60 airplane_daewh)
       (not_blocked seg_s_b3a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4a_0_140)) (not_occupied seg_s_b3b4a_0_140)
       (not (at-segment ?a seg_s_b3b4a_0_140)) (occupied seg_s_b3a_0_60)
       (not (not_occupied seg_s_b3a_0_60)) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (at-segment ?a seg_s_b3a_0_60)
       (not (blocked seg_s_b3b4b_0_140 ?a))
       (not_blocked seg_s_b3b4b_0_140 ?a)))
 (:action
  ugly32394ugly32540ugly33010ugly33003ugly32333ugly32666ugly1122ugly147ugly320ugly776move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
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
  ugly32395ugly32845ugly32863ugly31950ugly32218ugly32819ugly1007ugly1086ugly15ugly1212move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
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
  ugly32396ugly32919ugly32909ugly33119ugly32079ugly32927ugly1136ugly115ugly1000ugly1306move_seg_o1_c4c_0_80_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
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
  ugly32397ugly32916ugly33212ugly32326ugly32336ugly32877ugly871ugly501ugly969ugly264startup_seg_o1_110a_0_34_south_medium
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
  ugly32398ugly32411ugly32758ugly32667ugly32552ugly32679ugly985ugly676ugly1263ugly940park_seg_p109_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action
  ugly32399ugly32904ugly32480ugly32434ugly32216ugly32864ugly251ugly831ugly302ugly612move_seg_o1_111c_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
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
  ugly32400ugly33049ugly33176ugly32398ugly32411ugly32758ugly744ugly469ugly318ugly619move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
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
  ugly32401ugly32592ugly31940ugly32997ugly33054ugly32603ugly226ugly1119ugly687ugly140startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly32402ugly32194ugly32902ugly32832ugly32018ugly32246ugly258ugly1265ugly1322ugly739move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
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
  ugly32403ugly33026ugly32601ugly33160ugly33097ugly32915ugly982ugly1243ugly524ugly934startup_seg_t_b4c_0_120_934_south_medium
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
  ugly32404ugly33172ugly32321ugly32756ugly32430ugly32164ugly460ugly883ugly887ugly1351move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
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
  ugly32405ugly32913ugly32558ugly32987ugly32086ugly33000ugly419ugly737ugly953ugly928move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
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
  ugly32406ugly32110ugly32231ugly32885ugly32730ugly32067ugly170ugly830ugly341ugly53startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action
  ugly32407ugly32279ugly32003ugly32300ugly32103ugly32734ugly176ugly523ugly988ugly1236startup_seg_t_b9d_0_60_south_medium
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
  ugly32408ugly32035ugly32388ugly33278ugly32557ugly31965ugly196ugly935ugly420ugly430startup_seg_b4_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action
  ugly32409ugly33170ugly32665ugly32620ugly33217ugly33246ugly989ugly1319ugly1344ugly141startup_seg_s5_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly32410ugly32122ugly32963ugly33179ugly32486ugly32139ugly355ugly421ugly878ugly194startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly32411ugly32758ugly32667ugly32552ugly32679ugly32908ugly899ugly1234ugly200ugly306startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action
  ugly32412ugly32678ugly32676ugly32621ugly32527ugly32696ugly60ugly513ugly725ugly1047move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8d_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8e_0_75)) (not_occupied seg_n_a6a8e_0_75)
       (not (at-segment ?a seg_n_a6a8e_0_75)) (occupied seg_n_a6a8d_0_75)
       (not (not_occupied seg_n_a6a8d_0_75)) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a)) (at-segment ?a seg_n_a6a8d_0_75)
       (not (blocked seg_n_a6a8f_0_75 ?a)) (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action
  ugly32413ugly33245ugly32969ugly31998ugly32124ugly32315ugly974ugly633ugly1258ugly459startup_seg_t_b2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action
  ugly32414ugly31956ugly32759ugly33117ugly32362ugly32739ugly412ugly1201ugly64ugly1224startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly32415ugly33280ugly32871ugly32934ugly33126ugly33087ugly1263ugly940ugly959ugly908startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly32416ugly33106ugly32701ugly32380ugly33201ugly32275ugly1206ugly1101ugly717ugly719startup_seg_b3_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action
  ugly32417ugly32872ugly32588ugly32396ugly32919ugly32909ugly1196ugly1147ugly972ugly1256move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
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
  ugly32418ugly33072ugly32443ugly33199ugly32348ugly32882ugly514ugly577ugly532ugly548startup_seg_s_b6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly32419ugly33089ugly32853ugly33205ugly31971ugly33226ugly1213ugly792ugly723ugly742startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly32420ugly33005ugly33057ugly32270ugly32576ugly33159ugly1041ugly607ugly673ugly1183startup_seg_b10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action
  ugly32421ugly31977ugly32952ugly32186ugly33030ugly32748ugly1005ugly803ugly649ugly1017startup_seg_t_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action
  ugly32422ugly32041ugly33265ugly32318ugly32807ugly32201ugly892ugly206ugly1007ugly1086move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
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
  ugly32423ugly32704ugly32332ugly32352ugly32105ugly33181ugly1359ugly761ugly376ugly1051move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
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
  ugly32424ugly32846ugly32166ugly32542ugly32095ugly32072ugly1375ugly1350ugly358ugly1076move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
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
  ugly32425ugly32239ugly32137ugly32646ugly32172ugly32778ugly1187ugly249ugly33ugly234startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly32426ugly32162ugly32069ugly32837ugly32073ugly33164ugly770ugly981ugly354ugly291startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly32427ugly33006ugly32344ugly32212ugly31972ugly32409ugly1247ugly257ugly103ugly1335park_seg_p134_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly32428ugly32755ugly33292ugly32151ugly33038ugly33031ugly1273ugly1371ugly1171ugly35move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c1b_0_60 airplane_daew8)
       (not_blocked seg_w1_c1b_0_60 airplane_daew9)
       (not_blocked seg_w1_c1b_0_60 airplane_daew3)
       (not_blocked seg_w1_c1b_0_60 airplane_daewh)
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
  ugly32429ugly32879ugly32530ugly32751ugly33116ugly32009ugly152ugly585ugly889ugly697move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew9)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
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
  ugly32430ugly32164ugly32383ugly32306ugly32494ugly32062ugly202ugly1264ugly144ugly207startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly32431ugly32297ugly31967ugly32629ugly31984ugly32305ugly567ugly411ugly1127ugly627startup_seg_o1_108c_0_34_south_medium
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
  ugly32432ugly32747ugly32377ugly32082ugly32732ugly32007ugly874ugly1094ugly1120ugly239startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly32433ugly32059ugly32322ugly32808ugly32673ugly32330ugly561ugly645ugly298ugly88move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
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
  ugly32434ugly32216ugly32864ugly32174ugly32395ugly32845ugly940ugly959ugly908ugly1142startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly32435ugly31948ugly32656ugly32814ugly32456ugly32036ugly601ugly1197ugly1043ugly479move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
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
  ugly32436ugly32791ugly33207ugly32632ugly32992ugly32546ugly886ugly587ugly533ugly606startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly32437ugly32842ugly33048ugly33249ugly31928ugly32918ugly291ugly1354ugly1245ugly818pushback_seg_w1_163b_0_45_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly32438ugly33138ugly33158ugly32776ugly32565ugly32198ugly1088ugly1041ugly607ugly673startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly32439ugly32805ugly32590ugly33218ugly32663ugly33024ugly776ugly415ugly356ugly603startup_seg_08r_b2a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_08r_b2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a))))
 (:action
  ugly32440ugly32340ugly32501ugly32641ugly33224ugly33198ugly1238ugly580ugly170ugly830move_seg_o1_104c_0_60_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
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
  ugly32441ugly32644ugly32989ugly32183ugly32801ugly32116ugly1176ugly116ugly1074ugly635startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly32442ugly33046ugly32584ugly32652ugly32990ugly33034ugly164ugly212ugly1199ugly608startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly32443ugly33199ugly32348ugly32882ugly32437ugly32842ugly1125ugly558ugly1092ugly1089park_seg_p102_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly32444ugly32397ugly32916ugly33212ugly32326ugly32336ugly954ugly614ugly1149ugly348move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
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
  ugly32445ugly32488ugly32192ugly33111ugly33128ugly33180ugly937ugly1138ugly1244ugly832startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly32446ugly32187ugly32465ugly32024ugly33271ugly32232ugly157ugly1054ugly867ugly893startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly32447ugly32826ugly32733ugly32609ugly31951ugly32617ugly128ugly1282ugly1045ugly836move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
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
  ugly32448ugly33269ugly32891ugly32289ugly33082ugly31985ugly1148ugly210ugly125ugly990startup_seg_m_a8a_0_60_south_medium
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
  ugly32449ugly32512ugly32022ugly32165ugly31927ugly32083ugly528ugly96ugly162ugly914startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32450ugly32381ugly33281ugly32200ugly32468ugly32925ugly971ugly84ugly195ugly738park_seg_p102_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly32451ugly32933ugly32457ugly32950ugly33188ugly32123ugly1340ugly1190ugly998ugly452startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly32452ugly33140ugly32021ugly32881ugly33015ugly32140ugly630ugly1143ugly721ugly1259startup_seg_t_b4a_0_60_south_medium
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
  ugly32453ugly32144ugly32364ugly32824ugly32875ugly32475ugly387ugly244ugly243ugly907move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p154_0_75)) (not_occupied seg_p154_0_75)
       (not (at-segment ?a seg_p154_0_75)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action
  ugly32454ugly32292ugly32263ugly31994ugly32495ugly32848ugly1089ugly896ugly28ugly373move_seg_s_b3a_0_60_seg_s_b3c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60)
       (not_blocked seg_s_b3c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b3c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b3c_0_60 airplane_daew8)
       (not_blocked seg_s_b3c_0_60 airplane_daew9)
       (not_blocked seg_s_b3c_0_60 airplane_daew3)
       (not_blocked seg_s_b3c_0_60 airplane_daewh)
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
  ugly32455ugly32796ugly32407ugly32279ugly32003ugly32300ugly180ugly484ugly370ugly1229startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly32456ugly32036ugly32524ugly32513ugly32046ugly33014ugly169ugly749ugly1217ugly835startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly32457ugly32950ugly33188ugly32123ugly33263ugly32378ugly229ugly5ugly316ugly931move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew9)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_blocked seg_w1_c4a_0_34 airplane_daewh)
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
  ugly32458ugly33095ugly32148ugly32798ugly32071ugly32252ugly1154ugly471ugly123ugly1372startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly32459ugly32126ugly31926ugly32599ugly33068ugly33145ugly468ugly1097ugly185ugly57move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6d_0_75 airplane_daewh)
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
  ugly32460ugly32541ugly33202ugly32562ugly33133ugly33297ugly282ugly674ugly659ugly38move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6b_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6c_0_75)) (not_occupied seg_n_a7a6c_0_75)
       (not (at-segment ?a seg_n_a7a6c_0_75)) (occupied seg_n_a7a6b_0_75)
       (not (not_occupied seg_n_a7a6b_0_75)) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a)) (at-segment ?a seg_n_a7a6b_0_75)
       (not (blocked seg_n_a7a6d_0_75 ?a)) (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly32461ugly33206ugly33065ugly31962ugly33166ugly32803ugly654ugly1059ugly215ugly63startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly32462ugly32204ugly32209ugly31973ugly32500ugly32235ugly1133ugly921ugly924ugly454move_seg_w1_c4a_0_34_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew9)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_blocked seg_w1_c4c_0_60 airplane_daewh)
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
  ugly32463ugly32400ugly33049ugly33176ugly32398ugly32411ugly835ugly1233ugly1329ugly97startup_seg_o1_111b_0_60_south_medium
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
  ugly32464ugly32534ugly32440ugly32340ugly32501ugly32641ugly1301ugly304ugly1303ugly680startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32465ugly32024ugly33271ugly32232ugly32080ugly31966ugly668ugly898ugly94ugly733move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
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
  ugly32466ugly32687ugly32518ugly32850ugly32971ugly33036ugly943ugly1088ugly1041ugly607startup_seg_s_b6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly32467ugly33225ugly31959ugly32582ugly32654ugly32196ugly1058ugly511ugly3ugly1300move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
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
  ugly32468ugly32925ugly32894ugly32052ugly33125ugly32017ugly728ugly164ugly212ugly1199startup_seg_t_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9a_0_60)
       (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly32469ugly32405ugly32913ugly32558ugly32987ugly32086ugly1077ugly1266ugly423ugly1066startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly32470ugly32413ugly33245ugly32969ugly31998ugly32124ugly392ugly788ugly465ugly795move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
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
  ugly32471ugly32579ugly33171ugly31963ugly32264ugly33169ugly1293ugly1307ugly274ugly179move_seg_o1_109c_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
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
  ugly32472ugly32376ugly33227ugly32612ugly32737ugly32060ugly815ugly1004ugly656ugly1161startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly32473ugly32810ugly32316ugly32664ugly33104ugly32722ugly405ugly542ugly840ugly826move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p161_0_75)) (not_occupied seg_p161_0_75)
       (not (at-segment ?a seg_p161_0_75)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action
  ugly32474ugly32346ugly32865ugly32463ugly32400ugly33049ugly1253ugly203ugly1115ugly448startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly32475ugly32310ugly33230ugly32804ugly32795ugly33253ugly1109ugly1254ugly1267ugly1050startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly32476ugly31986ugly33236ugly32281ugly33101ugly33102ugly1231ugly198ugly640ugly395startup_seg_b8_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action
  ugly32477ugly32351ugly32460ugly32541ugly33202ugly32562ugly1210ugly16ugly955ugly714startup_seg_s_b5b_0_60_south_medium
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
  ugly32478ugly32596ugly32290ugly32862ugly32686ugly32787ugly181ugly881ugly221ugly820startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly32479ugly31944ugly32671ugly32942ugly32516ugly32580ugly1036ugly1155ugly138ugly1010startup_seg_b4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action
  ugly32480ugly32434ugly32216ugly32864ugly32174ugly32395ugly922ugly700ugly857ugly1080startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly32481ugly33213ugly32757ugly32478ugly32596ugly32290ugly939ugly1336ugly112ugly894startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly32482ugly32470ugly32413ugly33245ugly32969ugly31998ugly201ugly932ugly987ugly107startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly32483ugly32763ugly32044ugly32038ugly32515ugly32505ugly800ugly1365ugly384ugly602startup_seg_t_b6a_0_60_south_medium
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
  ugly32484ugly32019ugly33052ugly33287ugly32309ugly32489ugly512ugly347ugly100ugly800startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly32485ugly33114ugly32595ugly33108ugly32851ugly32112ugly1030ugly4ugly1207ugly151startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly32486ugly32139ugly32278ugly33135ugly32002ugly32379ugly772ugly850ugly1139ugly29startup_seg_s_b6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly32487ugly33163ugly31946ugly32503ugly32173ugly32228ugly774ugly789ugly986ugly1257move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_cfbe1)
       (not_blocked seg_p111_0_76 airplane_cfbe3)
       (not_blocked seg_p111_0_76 airplane_daew8)
       (not_blocked seg_p111_0_76 airplane_daew9)
       (not_blocked seg_p111_0_76 airplane_daew3)
       (not_blocked seg_p111_0_76 airplane_daewh)
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
  ugly32488ugly32192ugly33111ugly33128ugly33180ugly32860ugly220ugly1108ugly1159ugly193startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly32489ugly32435ugly31948ugly32656ugly32814ugly32456ugly113ugly1034ugly917ugly1036startup_seg_m_a7d_0_60_south_medium
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
  ugly32490ugly31931ugly32777ugly31979ugly32753ugly33167ugly360ugly791ugly1339ugly1145startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly32491ugly33001ugly32861ugly32618ugly32831ugly32509ugly478ugly1366ugly90ugly119startup_seg_s_b8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action
  ugly32492ugly32210ugly32627ugly32640ugly32013ugly32004ugly481ugly146ugly581ugly1195startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly32493ugly32741ugly31978ugly32199ugly33259ugly33231ugly1315ugly255ugly338ugly1202startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly32494ugly32062ugly32125ugly32716ugly32491ugly33001ugly938ugly102ugly325ugly307startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly32495ugly32848ugly33012ugly33214ugly31939ugly32108ugly210ugly125ugly990ugly1193startup_seg_b10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_08r_b10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10a_0_80 ?a)
       (not (not_blocked seg_08r_b10a_0_80 ?a))))
 (:action
  ugly32496ugly32006ugly31960ugly33039ugly32966ugly32749ugly47ugly567ugly411ugly1127startup_seg_t_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action
  ugly32497ugly32031ugly32349ugly32359ugly32852ugly32420ugly1082ugly995ugly919ugly505startup_seg_t_b5c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly32498ugly33240ugly32047ugly32551ugly32027ugly32647ugly631ugly1156ugly1227ugly653startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly32499ugly32921ugly32311ugly32417ugly32872ugly32588ugly473ugly109ugly248ugly237startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly32500ugly32235ugly33056ugly33262ugly32479ugly31944ugly748ugly1242ugly1232ugly1253move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
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
  ugly32501ugly32641ugly33224ugly33198ugly33161ugly32924ugly736ugly204ugly966ugly268move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
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
  ugly32502ugly32615ugly32106ugly32764ugly32244ugly32130ugly730ugly797ugly32ugly900startup_seg_s_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action
  ugly32503ugly32173ugly32228ugly32697ugly32118ugly32272ugly1165ugly1129ugly80ugly957startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly32504ugly32898ugly32955ugly32245ugly32063ugly32638ugly1332ugly810ugly1113ugly1328startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly32505ugly32723ugly33043ugly32674ugly32225ugly32800ugly670ugly312ugly912ugly1251move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
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
  ugly32506ugly32600ugly31942ugly32900ugly32177ugly32548ugly788ugly465ugly795ugly324move_seg_w1_152b_0_45_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
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
  ugly32507ugly32399ugly32904ugly32480ugly32434ugly32216ugly941ugly166ugly642ugly95startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly32508ugly32890ugly32280ugly33295ugly32623ugly32034ugly296ugly1042ugly197ugly520pushback_seg_o1_c1c_0_80_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly32509ugly32401ugly32592ugly31940ugly32997ugly33054ugly680ugly996ugly227ugly735move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_cfbe1)
       (not_blocked seg_p112_0_76 airplane_cfbe3)
       (not_blocked seg_p112_0_76 airplane_daew8)
       (not_blocked seg_p112_0_76 airplane_daew9)
       (not_blocked seg_p112_0_76 airplane_daew3)
       (not_blocked seg_p112_0_76 airplane_daewh)
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
  ugly32510ugly32511ugly33144ugly32713ugly33037ugly33256ugly1071ugly777ugly862ugly845startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly32511ugly33144ugly32713ugly33037ugly33256ugly32994ugly489ugly120ugly781ugly805park_seg_p118_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly32512ugly32022ugly32165ugly31927ugly32083ugly32451ugly1010ugly729ugly385ugly34startup_seg_08r_b10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_08r_b10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10b_0_80 ?a)
       (not (not_blocked seg_08r_b10b_0_80 ?a))))
 (:action
  ugly32513ugly32046ugly33014ugly32092ugly33053ugly31958ugly1119ugly687ugly140ugly1360move_seg_w1_161b_0_45_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
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
  ugly32514ugly32135ugly32481ugly33213ugly32757ugly32478ugly673ugly1183ugly492ugly980park_seg_p109_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action
  ugly32515ugly32505ugly32723ugly33043ugly32674ugly32225ugly877ugly1170ugly1316ugly1221startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly32516ugly32580ugly32959ugly33266ugly32146ugly33174ugly798ugly1317ugly843ugly813park_seg_p164_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action
  ugly32517ugly31995ugly32390ugly32888ugly31934ugly32999ugly1204ugly265ugly301ugly1091startup_seg_s_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly32518ugly32850ugly32971ugly33036ugly32866ugly32266ugly719ugly468ugly1097ugly185move_seg_t_b2c_0_60_seg_b2_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b2c_0_60) (not_occupied seg_b2_0_80)
       (not_blocked seg_b2_0_80 airplane_cfbeg)
       (not_blocked seg_b2_0_80 airplane_cfbe1)
       (not_blocked seg_b2_0_80 airplane_cfbe3)
       (not_blocked seg_b2_0_80 airplane_daew8)
       (not_blocked seg_b2_0_80 airplane_daew9)
       (not_blocked seg_b2_0_80 airplane_daew3)
       (not_blocked seg_b2_0_80 airplane_daewh)
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
  ugly32519ugly32256ugly32622ugly32389ugly32854ugly33185ugly1300ugly289ugly1160ugly968startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly32520ugly33131ugly32707ugly32938ugly32719ugly31964ugly1329ugly97ugly985ugly676startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly32521ugly32369ugly33210ugly32293ugly32932ugly32236ugly652ugly394ugly684ugly943startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly32522ugly32958ugly33283ugly32549ugly32761ugly32545ugly688ugly79ugly593ugly481move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
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
  ugly32523ugly32789ugly32410ugly32122ugly32963ugly33179ugly563ugly631ugly1156ugly1227startup_seg_s_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a))))
 (:action
  ugly32524ugly32513ugly32046ugly33014ugly32092ugly33053ugly35ugly189ugly1375ugly1350move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
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
  ugly32525ugly33084ugly32973ugly32277ugly32563ugly33033ugly851ugly1362ugly1053ugly442startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly32526ugly31993ugly32608ugly32287ugly32769ugly32499ugly998ugly452ugly1239ugly744startup_seg_b3_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_08r_b3c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b3c_0_161_245 ?a)
       (not (not_blocked seg_08r_b3c_0_161_245 ?a))))
 (:action
  ugly32527ugly32696ugly31983ugly32940ugly32811ugly31987ugly823ugly852ugly260ugly1071startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly32528ugly32984ugly32353ugly32257ugly32195ugly32606ugly509ugly1340ugly1190ugly998pushback_seg_o1_c2d_0_60_seg_c2_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_cfbe1)
       (not_blocked seg_c2_b_0_80 airplane_cfbe3)
       (not_blocked seg_c2_b_0_80 airplane_daew8)
       (not_blocked seg_c2_b_0_80 airplane_daew9)
       (not_blocked seg_c2_b_0_80 airplane_daew3)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
       (not_blocked seg_c2_b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_c2_b_0_80)
       (not (not_occupied seg_c2_b_0_80)) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a)) (at-segment ?a seg_c2_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly32529ugly31930ugly32578ugly31933ugly32637ugly32191ugly1094ugly1120ugly239ugly1261startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly32530ugly32751ugly33116ugly32009ugly32075ugly32793ugly69ugly334ugly1185ugly566startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly32531ugly32065ugly32628ugly31937ugly32449ugly32512ugly99ugly740ugly544ugly745move_seg_w1_154b_0_45_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
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
  ugly32532ugly33175ugly33091ugly32237ugly32492ugly32210ugly704ugly1005ugly803ugly649startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly32533ugly32991ugly32248ugly32870ugly32459ugly32126ugly3ugly1300ugly289ugly1160startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly32534ugly32440ugly32340ugly32501ugly32641ugly33224ugly1275ugly67ugly60ugly513startup_seg_s_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action
  ugly32535ugly32878ugly32298ugly31989ugly32660ugly32710ugly1229ugly1022ugly808ugly272move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
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
  ugly32536ugly32428ugly32755ugly33292ugly32151ugly33038ugly1108ugly1159ugly193ugly1132move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
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
  ugly32537ugly32243ugly32806ugly33268ugly32211ugly33177ugly754ugly1172ugly1374ugly1064startup_seg_t_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action
  ugly32538ugly33023ugly32170ugly32242ugly32684ugly32445ugly565ugly1096ugly639ugly252move_seg_w1_164b_0_45_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
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
  ugly32539ugly32610ugly32267ugly32957ugly32830ugly32812ugly1102ugly713ugly1040ugly273startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly32540ugly33010ugly33003ugly32333ugly32666ugly33045ugly449ugly1203ugly595ugly675move_seg_c4_s6a_0_80_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe3)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew9)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
       (not_blocked seg_c4_s6c_0_60 airplane_daewh)
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
  ugly32541ugly33202ugly32562ugly33133ugly33297ugly32205ugly469ugly318ugly619ugly283startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly32542ugly32095ugly32072ugly33298ugly33050ugly32325ugly1271ugly171ugly319ugly562startup_seg_b9_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly32543ugly32050ugly32972ugly32857ugly31999ugly32385ugly600ugly1361ugly895ugly1215startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly32544ugly32855ugly32347ugly32920ugly32175ugly32466ugly764ugly748ugly1242ugly1232startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly32545ugly32611ugly32607ugly33094ugly32813ugly32273ugly362ugly518ugly251ugly831move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
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
  ugly32546ugly32809ugly32221ugly32431ugly32297ugly31967ugly706ugly899ugly1234ugly200move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
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
  ugly32547ugly32829ugly32847ugly32976ugly32604ugly33208ugly1162ugly1315ugly255ugly338startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action
  ugly32548ugly32711ugly32951ugly32775ugly32043ugly32519ugly333ugly616ugly1246ugly734startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly32549ugly32761ugly32545ugly32611ugly32607ugly33094ugly890ugly604ugly767ugly869startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly32550ugly33120ugly32128ugly32158ugly33122ugly32001ugly1081ugly624ugly786ugly989startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly32551ugly32027ugly32647ugly32554ugly33182ugly32868ugly976ugly707ugly646ugly775move_seg_s_b2b_0_60_seg_t_b2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b2b_0_60) (not_occupied seg_t_b2a_0_60)
       (not_blocked seg_t_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2a_0_60 airplane_cfbe1)
       (not_blocked seg_t_b2a_0_60 airplane_cfbe3)
       (not_blocked seg_t_b2a_0_60 airplane_daew8)
       (not_blocked seg_t_b2a_0_60 airplane_daew9)
       (not_blocked seg_t_b2a_0_60 airplane_daew3)
       (not_blocked seg_t_b2a_0_60 airplane_daewh)
       (not_blocked seg_t_b2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b_0_60)) (not_occupied seg_s_b2b_0_60)
       (not (at-segment ?a seg_s_b2b_0_60)) (occupied seg_t_b2a_0_60)
       (not (not_occupied seg_t_b2a_0_60)) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (at-segment ?a seg_t_b2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_s_b2a_0_60 ?a)) (not_blocked seg_s_b2a_0_60 ?a)))
 (:action
  ugly32552ugly32679ugly32908ugly32822ugly32543ugly32050ugly1049ugly259ugly1111ugly991startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action
  ugly32553ugly32712ugly32970ugly32771ugly32506ugly32600ugly19ugly915ugly1148ugly210move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
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
  ugly32554ugly33182ugly32868ugly32899ugly32286ugly32064ugly1352ugly1044ugly142ugly299move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
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
  ugly32555ugly32416ugly33106ugly32701ugly32380ugly33201ugly352ugly176ugly523ugly988startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly32556ugly32360ugly32446ugly32187ugly32465ugly32024ugly1348ugly670ugly312ugly912startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly32557ugly31965ugly32119ugly32220ugly32566ugly32422ugly118ugly611ugly804ugly947startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly32558ugly32987ugly32086ugly33000ugly32342ugly32090ugly1347ugly499ugly59ugly75move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p133_0_75)) (not_occupied seg_p133_0_75)
       (not (at-segment ?a seg_p133_0_75)) (occupied seg_o1_110d_0_45)
       (not (not_occupied seg_o1_110d_0_45)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action
  ugly32559ugly32094ugly33243ugly32386ugly33080ugly33018ugly1139ugly29ugly671ugly1235startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly32560ugly32977ugly32482ugly32470ugly32413ugly33245ugly1046ugly847ugly1274ugly1291startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly32561ugly32839ugly32317ugly32573ugly32384ugly32312ugly745ugly223ugly760ugly382startup_seg_s_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action
  ugly32562ugly33133ugly33297ugly32205ugly32392ugly32936ugly978ugly999ugly1308ugly1030move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
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
  ugly32563ugly33033ugly32774ugly33247ugly33044ugly32014ugly1318ugly626ugly349ugly487move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
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
  ugly32564ugly32939ugly32526ugly31993ugly32608ugly32287ugly846ugly214ugly643ugly240startup_seg_o1_110c_0_34_south_medium
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
  ugly32565ugly32198ugly33011ugly32288ugly32983ugly33242ugly1239ugly744ugly469ugly318startup_seg_t_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a))))
 (:action
  ugly32566ugly32422ugly32041ugly33265ugly32318ugly32807ugly278ugly62ugly398ugly326startup_seg_s_b5a_0_60_south_medium
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
  ugly32567ugly32859ugly32895ugly32714ugly31955ugly32374ugly1261ugly1031ugly309ugly328startup_seg_08r_b6d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly32568ugly31974ugly32320ugly32835ugly32423ugly32704ugly409ugly466ugly470ugly874startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly32569ugly32923ugly32447ugly32826ugly32733ugly32609ugly28ugly373ugly49ugly828startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly32570ugly32471ugly32579ugly33171ugly31963ugly32264ugly1246ugly734ugly967ugly782startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly32571ugly32910ugly33219ugly32874ugly32998ugly32114ugly380ugly599ugly134ugly1173move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
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
  ugly32572ugly33187ugly32274ugly32421ugly31977ugly32952ugly263ugly219ugly591ugly416startup_seg_b10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly32573ugly32384ugly32312ugly32668ugly32040ugly32635ugly256ugly131ugly574ugly89move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe3)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew8)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew9)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew3)
       (not_blocked seg_08l_a6a7_0_450 airplane_daewh)
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
  ugly32574ugly32790ugly32343ugly32057ugly32433ugly32059ugly399ugly1204ugly265ugly301startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action
  ugly32575ugly32055ugly32975ugly33211ugly32844ugly32907ugly792ugly723ugly742ugly888startup_seg_s_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly32576ugly33159ugly32964ugly32464ugly32534ugly32440ugly417ugly1281ugly359ugly258startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly32577ugly32773ugly32008ugly32725ugly32452ugly33140ugly98ugly1062ugly766ugly641startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly32578ugly31933ugly32637ugly32191ugly33017ugly32234ugly953ugly928ugly14ugly375startup_seg_b4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action
  ugly32579ugly33171ugly31963ugly32264ugly33169ugly33216ugly660ugly589ugly83ugly1271move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7f_0_75 airplane_daewh)
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
  ugly32580ugly32959ugly33266ugly32146ugly33174ugly32721ugly270ugly150ugly570ugly942startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32581ugly32331ugly31924ugly32650ugly32276ugly32163ugly795ugly324ugly211ugly503startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly32582ugly32654ugly32196ugly32981ugly32202ugly32141ugly431ugly837ugly205ugly350move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p117_0_76)) (not_occupied seg_p117_0_76)
       (not (at-segment ?a seg_p117_0_76)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action
  ugly32583ugly32780ugly32302ugly32917ugly32935ugly33293ugly1128ugly321ugly882ugly440move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
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
  ugly32584ugly32652ugly32990ugly33034ugly32087ugly32450ugly458ugly476ugly1157ugly184startup_seg_t_b4d_0_60_south_medium
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
  ugly32585ugly32020ugly33192ugly32708ugly32906ugly32271ugly944ugly1070ugly861ugly1349startup_seg_s_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action
  ugly32586ugly32097ugly32182ugly32337ugly32240ugly32510ugly588ugly47ugly567ugly411startup_seg_m_a4b_0_60_south_medium
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
  ugly32587ugly32744ugly33157ugly32705ugly32472ugly32376ugly1304ugly993ugly783ugly1356move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8e_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8f_0_75)) (not_occupied seg_n_a6a8f_0_75)
       (not (at-segment ?a seg_n_a6a8f_0_75)) (occupied seg_n_a6a8e_0_75)
       (not (not_occupied seg_n_a6a8e_0_75)) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a)) (at-segment ?a seg_n_a6a8e_0_75)
       (not (blocked seg_n_a8c_0_60 ?a)) (not_blocked seg_n_a8c_0_60 ?a)))
 (:action
  ugly32588ugly32396ugly32919ugly32909ugly33119ugly32079ugly1004ugly656ugly1161ugly872move_seg_o1_c3d_0_60_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
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
  ugly32589ugly33035ugly31982ugly32028ugly33272ugly32493ugly818ugly441ugly757ugly1163startup_seg_s_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly32590ugly33218ugly32663ugly33024ugly32699ugly32370ugly328ugly480ugly270ugly150startup_seg_s_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_t_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a))))
 (:action
  ugly32591ugly31968ugly32042ugly32160ugly32358ugly32887ugly839ugly1020ugly1373ugly335startup_seg_t_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action
  ugly32592ugly31940ugly32997ugly33054ugly32603ugly32149ugly495ugly266ugly923ugly1323startup_seg_b2_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly32593ugly33086ugly32802ugly32726ugly32190ugly32517ugly72ugly1182ugly596ugly933startup_seg_s_b3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action
  ugly32594ugly32767ugly32230ugly31969ugly32294ugly33237ugly615ugly327ugly506ugly478startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly32595ugly33108ugly32851ugly32112ugly32953ugly32598ugly114ugly1237ugly70ugly365startup_seg_s_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action
  ugly32596ugly32290ugly32862ugly32686ugly32787ugly32104ugly330ugly965ugly156ugly920startup_seg_n_a3c_0_60_south_medium
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
  ugly32597ugly31932ugly32717ugly32694ugly32544ugly32855ugly424ugly462ugly1192ugly1222startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action
  ugly32598ugly32037ugly33058ugly32023ugly32581ugly32331ugly1ugly763ugly250ugly1152startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly32599ugly33068ugly33145ugly32391ugly33250ugly32120ugly1260ugly974ugly633ugly1258takeoff_seg_08r_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08r_0_80)) (not_occupied seg_08r_0_80)
       (not (blocked seg_08r_0_80 ?a)) (not_blocked seg_08r_0_80 ?a)
       (not (at-segment ?a seg_08r_0_80)) (airborne ?a seg_08r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b2b3_0_900 ?a))
       (not_blocked seg_08r_b2b3_0_900 ?a)))
 (:action
  ugly32600ugly31942ugly32900ugly32177ugly32548ugly32711ugly1028ugly625ugly1252ugly127startup_seg_t_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action
  ugly32601ugly33160ugly33097ugly32915ugly32905ugly32995ugly1298ugly751ugly555ugly961move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
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
  ugly32602ugly32956ugly32178ugly32821ugly33069ugly32536ugly505ugly578ugly1363ugly825startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly32603ugly32149ugly32418ugly33072ugly32443ugly33199ugly425ugly1177ugly1320ugly181startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly32604ugly33208ugly33085ugly32823ugly32911ugly33137ugly746ugly1002ugly406ugly241move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
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
  ugly32605ugly33153ugly33147ugly32012ugly32461ugly33206ugly1142ugly1027ugly563ugly631startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action
  ugly32606ugly32432ugly32747ugly32377ugly32082ugly32732ugly84ugly195ugly738ugly897startup_seg_t_b8d_0_60_south_medium
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
  ugly32607ugly33094ugly32813ugly32273ugly32285ugly32682ugly546ugly1072ugly665ugly945startup_seg_08l_a4b_0_161_245_south_medium
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
  ugly32608ugly32287ugly32769ugly32499ugly32921ugly32311ugly494ugly793ugly160ugly494startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly32609ugly31951ugly32617ugly32051ugly32477ugly32351ugly537ugly1058ugly511ugly3startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly32610ugly32267ugly32957ugly32830ugly32812ugly33025ugly1356ugly158ugly811ugly175startup_seg_m_a4a_0_120_934_south_medium
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
  ugly32611ugly32607ugly33094ugly32813ugly32273ugly32285ugly759ugly149ugly669ugly121startup_seg_s_b9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly32612ugly32737ugly32060ugly32738ugly32476ugly31986ugly1313ugly196ugly935ugly420move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
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
  ugly32613ugly32586ugly32097ugly32182ugly32337ugly32240ugly587ugly533ugly606ugly1297move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c3_b_0_80)) (not_occupied seg_c3_b_0_80)
       (not (at-segment ?a seg_c3_b_0_80)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c3_a_0_80 ?a)) (not_blocked seg_c3_a_0_80 ?a)))
 (:action
  ugly32614ugly31988ugly33276ugly32365ugly33191ugly33076ugly1070ugly861ugly1349ugly694startup_seg_s_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_t_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a))))
 (:action
  ugly32615ugly32106ugly32764ugly32244ugly32130ugly32653ugly1368ugly695ugly884ugly526move_seg_t_b8c_0_120_934_seg_t_b8a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b8c_0_120_934) (not_occupied seg_t_b8a_0_60)
       (not_blocked seg_t_b8a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b8a_0_60 airplane_cfbe1)
       (not_blocked seg_t_b8a_0_60 airplane_cfbe3)
       (not_blocked seg_t_b8a_0_60 airplane_daew8)
       (not_blocked seg_t_b8a_0_60 airplane_daew9)
       (not_blocked seg_t_b8a_0_60 airplane_daew3)
       (not_blocked seg_t_b8a_0_60 airplane_daewh)
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
  ugly32616ugly32657ugly32157ugly33156ugly33115ugly32672ugly444ugly1006ugly438ugly18startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly32617ugly32051ugly32477ugly32351ugly32460ugly32541ugly1279ugly770ugly981ugly354move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe3)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew9)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
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
  ugly32618ugly32831ugly32509ugly32401ugly32592ugly31940ugly1074ugly635ugly1165ugly1129move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe1)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe3)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew8)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew9)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew3)
       (not_blocked seg_n_a2a3f_0_115 airplane_daewh)
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
  ugly32619ugly32883ugly32113ugly32589ugly33035ugly31982ugly105ugly414ugly982ugly1243startup_seg_t_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action
  ugly32620ugly33217ugly33246ugly32912ugly32783ugly32736ugly732ugly644ugly821ugly1123startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly32621ugly32527ugly32696ugly31983ugly32940ugly32811ugly64ugly1224ugly1162ugly1315move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
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
  ugly32622ugly32389ugly32854ugly33185ugly33223ugly32070ugly612ugly392ugly788ugly465startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly32623ugly32034ugly32219ugly33016ugly33075ugly32334ugly503ugly1345ugly732ugly644startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly32624ugly33132ugly32781ugly33007ugly32914ugly32514ugly212ugly1199ugly608ugly774park_seg_p151_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly32625ugly33134ugly32134ugly32945ugly32438ugly33138ugly1235ugly764ugly748ugly1242startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly32626ugly33239ugly32088ugly32345ugly32161ugly32633ugly758ugly582ugly798ugly1317startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly32627ugly32640ugly32013ugly32004ugly32404ugly33172ugly398ugly326ugly689ugly371startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly32628ugly31937ugly32449ugly32512ugly32022ugly32165ugly4ugly1207ugly151ugly903move_seg_s_b6c_0_60_seg_s_b4b6c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b6c_0_60) (not_occupied seg_s_b4b6c_0_130)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbe1)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbe3)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew8)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew9)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew3)
       (not_blocked seg_s_b4b6c_0_130 airplane_daewh)
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
  ugly32629ugly31984ugly32305ugly32490ugly31931ugly32777ugly56ugly238ugly579ugly285startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly32630ugly32117ugly33013ugly32197ugly32561ugly32839ugly394ugly684ugly943ugly1088startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly32631ugly32547ugly32829ugly32847ugly32976ugly32604ugly1285ugly952ugly1133ugly921startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly32632ugly32992ugly32546ugly32809ugly32221ugly32431ugly374ugly1333ugly300ugly1225move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
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
  ugly32633ugly32681ugly32356ugly32691ugly32896ugly31975ugly970ugly27ugly1069ugly715move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
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
  ugly32634ugly32224ugly32683ugly32827ugly32616ugly32657ugly234ugly1208ugly427ugly378startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly32635ugly32179ugly32946ugly32254ugly31976ugly32658ugly609ugly183ugly343ugly950startup_seg_s_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_t_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a))))
 (:action
  ugly32636ugly33008ugly33142ugly32525ugly33084ugly32973ugly354ugly291ugly1354ugly1245park_seg_p154_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly32637ugly32191ugly33017ugly32234ugly32876ugly32427ugly1083ugly117ugly962ugly660startup_seg_t_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action
  ugly32638ugly33255ugly32703ugly32649ugly32184ugly32284ugly231ugly246ugly769ugly467startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly32639ugly32680ugly32929ugly32689ugly32568ugly31974ugly397ugly226ugly1119ugly687move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
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
  ugly32640ugly32013ugly32004ugly32404ugly33172ugly32321ugly833ugly768ugly161ugly663startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32641ugly33224ugly33198ugly33161ugly32924ugly32659ugly1198ugly522ugly458ugly476startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly32642ugly32454ugly32292ugly32263ugly31994ugly32495ugly925ugly956ugly340ugly1284park_seg_p116_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly32643ugly32076ugly32792ugly32324ugly32630ugly32117ugly1090ugly208ugly220ugly1108startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly32644ugly32989ugly32183ugly32801ugly32116ugly33099ugly131ugly574ugly89ugly99startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly32645ugly32402ugly32194ugly32902ugly32832ugly32018ugly323ugly173ugly433ugly1067startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly32646ugly32172ugly32778ugly33110ugly32688ugly33019ugly306ugly814ugly284ugly515move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
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
  ugly32647ugly32554ugly33182ugly32868ugly32899ugly32286ugly141ugly685ugly113ugly1034park_seg_p104_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly32648ugly31945ugly33286ugly32574ugly32790ugly32343ugly134ugly1173ugly288ugly245move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew9)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
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
  ugly32649ugly32184ugly32284ugly32154ugly32406ugly32110ugly308ugly308ugly308ugly308move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
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
  ugly32650ugly32276ugly32163ugly32718ugly33109ugly32010ugly1232ugly1253ugly203ugly1115pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly32651ugly33284ugly32614ugly31988ugly33276ugly32365ugly1268ugly139ugly1211ugly287startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly32652ugly32990ugly33034ugly32087ugly32450ugly32381ugly1358ugly865ugly1037ugly1279park_seg_p143_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly32653ugly33291ugly32314ugly33267ugly32982ugly32504ugly975ugly720ugly1260ugly974startup_seg_t_b10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly32654ugly32196ugly32981ugly32202ugly32141ugly32354ugly450ugly910ugly1250ugly1248startup_seg_t_b10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action
  ugly32655ugly32988ugly32382ugly32132ugly33113ugly33041ugly12ugly1210ugly16ugly955startup_seg_s_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action
  ugly32656ugly32814ugly32456ugly32036ugly32524ugly32513ugly123ugly1372ugly759ugly149startup_seg_s_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly32657ugly32157ugly33156ugly33115ugly32672ugly32367ugly327ugly506ugly478ugly1366move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_cfbe1)
       (not_blocked seg_a2_a_0_90 airplane_cfbe3)
       (not_blocked seg_a2_a_0_90 airplane_daew8)
       (not_blocked seg_a2_a_0_90 airplane_daew9)
       (not_blocked seg_a2_a_0_90 airplane_daew3)
       (not_blocked seg_a2_a_0_90 airplane_daewh)
       (not_blocked seg_a2_a_0_90 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a2_b_0_90)) (not_occupied seg_a2_b_0_90)
       (not (at-segment ?a seg_a2_b_0_90)) (occupied seg_a2_a_0_90)
       (not (not_occupied seg_a2_a_0_90)) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a)) (at-segment ?a seg_a2_a_0_90)
       (not (blocked seg_a2_c_0_100 ?a)) (not_blocked seg_a2_c_0_100 ?a)))
 (:action
  ugly32658ugly32532ugly33175ugly33091ugly32237ugly32492ugly287ugly1338ugly1154ugly471move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
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
  ugly32659ugly33121ugly32564ugly32939ugly32526ugly31993ugly685ugly113ugly1034ugly917startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly32660ugly32710ugly33152ugly33151ugly32078ugly32361ugly13ugly20ugly473ugly109move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
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
  ugly32661ugly32350ugly33232ugly32015ugly32227ugly31997ugly34ugly491ugly718ugly425startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action
  ugly32662ugly32138ugly32066ugly32685ugly32265ugly32089ugly917ugly1036ugly1155ugly138startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly32663ugly33024ugly32699ugly32370ugly32251ugly33055ugly416ugly637ugly1278ugly1061startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly32664ugly33104ugly32722ugly32328ugly32613ugly32586ugly174ugly6ugly1200ugly1136move_seg_s_b5b8b_0_135_seg_s_b5b8a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8b_0_135) (not_occupied seg_s_b5b8a_0_135)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbe1)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbe3)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew9)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew3)
       (not_blocked seg_s_b5b8a_0_135 airplane_daewh)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b5b8b_0_135)) (not_occupied seg_s_b5b8b_0_135)
       (not (at-segment ?a seg_s_b5b8b_0_135)) (occupied seg_s_b5b8a_0_135)
       (not (not_occupied seg_s_b5b8a_0_135)) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))
       (at-segment ?a seg_s_b5b8a_0_135) (not (blocked seg_s_b5b8c_0_130 ?a))
       (not_blocked seg_s_b5b8c_0_130 ?a)))
 (:action
  ugly32665ugly32620ugly33217ugly33246ugly32912ugly32783ugly813ugly866ugly765ugly572move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
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
  ugly32666ugly33045ugly32372ugly32968ugly32507ugly32399ugly981ugly354ugly291ugly1354startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly32667ugly32552ugly32679ugly32908ugly32822ugly32543ugly127ugly507ugly105ugly414startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32668ugly32040ugly32635ugly32179ugly32946ugly32254ugly53ugly892ugly206ugly1007startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly32669ugly32436ugly32791ugly33207ugly32632ugly32992ugly623ugly1110ugly613ugly332startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly32670ugly32255ugly32833ugly32497ugly32031ugly32349ugly436ugly497ugly230ugly377startup_seg_s_b9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly32671ugly32942ugly32516ugly32580ugly32959ugly33266ugly223ugly760ugly382ugly657startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly32672ugly32367ugly32250ugly33079ugly32262ugly31990ugly1155ugly138ugly1010ugly729move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
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
  ugly32673ugly32330ugly32484ugly32019ugly33052ugly33287ugly386ugly509ugly1340ugly1190startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly32674ugly32225ugly32800ugly32593ugly33086ugly32802ugly803ugly649ugly1017ugly630startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly32675ugly32698ugly32483ugly32763ugly32044ugly32038ugly592ugly1268ugly139ugly1211move_seg_w1_c4b_0_60_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew9)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_blocked seg_w1_c4c_0_60 airplane_daewh)
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
  ugly32676ugly32621ugly32527ugly32696ugly31983ugly32940ugly888ugly658ugly1104ugly46move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe3)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew9)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
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
  ugly32677ugly32502ugly32615ugly32106ugly32764ugly32244ugly207ugly1348ugly670ugly312startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action
  ugly32678ugly32676ugly32621ugly32527ugly32696ugly31983ugly1017ugly630ugly1143ugly721startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly32679ugly32908ugly32822ugly32543ugly32050ugly32972ugly934ugly535ugly534ugly500startup_seg_s_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly32680ugly32929ugly32689ugly32568ugly31974ugly32320ugly912ugly1251ugly391ugly1302park_seg_p104_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action
  ugly32681ugly32356ugly32691ugly32896ugly31975ugly32893ugly384ugly602ugly549ugly877startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly32682ugly32469ugly32405ugly32913ugly32558ugly32987ugly163ugly496ugly233ugly594startup_seg_t_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action
  ugly32683ugly32827ugly32616ugly32657ugly32157ugly33156ugly1192ugly1222ugly984ugly489move_seg_c4_s6b_0_60_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe1)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbe3)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew9)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
       (not_blocked seg_c4_s6c_0_60 airplane_daewh)
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
  ugly32684ugly32445ugly32488ugly32192ugly33111ugly33128ugly1257ugly393ugly269ugly1114startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32685ugly32265ugly32089ugly32840ugly33165ugly33100ugly801ugly1099ugly1134ugly569move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly32686ugly32787ugly32104ugly32253ugly33260ugly31981ugly863ugly1198ugly522ugly458startup_seg_b4_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly32687ugly32518ugly32850ugly32971ugly33036ugly32866ugly343ugly950ugly556ugly380startup_seg_s_b8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly32688ugly33019ugly32229ugly32528ugly32984ugly32353ugly334ugly1185ugly566ugly1313move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_cfbe1)
       (not_blocked seg_p142_0_75 airplane_cfbe3)
       (not_blocked seg_p142_0_75 airplane_daew8)
       (not_blocked seg_p142_0_75 airplane_daew9)
       (not_blocked seg_p142_0_75 airplane_daew3)
       (not_blocked seg_p142_0_75 airplane_daewh)
       (not_blocked seg_p142_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_p142_0_75)
       (not (not_occupied seg_p142_0_75)) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a)) (at-segment ?a seg_p142_0_75)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly32689ugly32568ugly31974ugly32320ugly32835ugly32423ugly781ugly805ugly1049ugly259startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly32690ugly32268ugly32107ugly32949ugly32025ugly33248ugly213ugly634ugly26ugly76startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly32691ugly32896ugly31975ugly32893ugly32307ugly33143ugly57ugly165ugly1184ugly550startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly32692ugly32121ugly32779ugly32168ugly33124ugly32048ugly1144ugly1105ugly85ugly1327startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly32693ugly33103ugly32828ugly32448ugly33269ugly32891ugly366ugly1038ugly1292ugly12startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action
  ugly32694ugly32544ugly32855ugly32347ugly32920ugly32175ugly543ugly168ugly1247ugly257move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a9c_0_80 airplane_daew8)
       (not_blocked seg_08l_a9c_0_80 airplane_daew9)
       (not_blocked seg_08l_a9c_0_80 airplane_daew3)
       (not_blocked seg_08l_a9c_0_80 airplane_daewh)
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
  ugly32695ugly32979ugly32889ugly32282ugly33204ugly32233ugly1277ugly108ugly429ugly1287startup_seg_s_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action
  ugly32696ugly31983ugly32940ugly32811ugly31987ugly32746ugly232ugly683ugly1ugly763move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_cfbe1)
       (not_blocked seg_p164_0_75 airplane_cfbe3)
       (not_blocked seg_p164_0_75 airplane_daew8)
       (not_blocked seg_p164_0_75 airplane_daew9)
       (not_blocked seg_p164_0_75 airplane_daew3)
       (not_blocked seg_p164_0_75 airplane_daewh)
       (not_blocked seg_p164_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_p164_0_75)
       (not (not_occupied seg_p164_0_75)) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a)) (at-segment ?a seg_p164_0_75)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly32697ugly32118ugly32272ugly33088ugly32185ugly32474ugly423ugly1066ugly1124ugly997startup_seg_s_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action
  ugly32698ugly32483ugly32763ugly32044ugly32038ugly32515ugly582ugly798ugly1317ugly843startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly32699ugly32370ugly32251ugly33055ugly32339ugly32706ugly1311ugly236ugly13ugly20startup_seg_08r_b4d_0_161_245_south_medium
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
  ugly32700ugly32799ugly32147ugly33081ugly32419ugly33089ugly930ugly1018ugly1081ugly624startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly32701ugly32380ugly33201ugly32275ugly33129ugly32974ugly381ugly1063ugly216ugly106move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_cfbe1)
       (not_blocked seg_c2_b_0_80 airplane_cfbe3)
       (not_blocked seg_c2_b_0_80 airplane_daew8)
       (not_blocked seg_c2_b_0_80 airplane_daew9)
       (not_blocked seg_c2_b_0_80 airplane_daew3)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
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
  ugly32702ugly32026ugly32754ugly32856ugly32766ugly32241ugly738ugly897ugly597ugly461startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action
  ugly32703ugly32649ugly32184ugly32284ugly32154ugly32406ugly187ugly1367ugly19ugly915startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly32704ugly32332ugly32352ugly32105ugly33181ugly33282ugly336ugly74ugly1012ugly693startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly32705ugly32472ugly32376ugly33227ugly32612ugly32737ugly137ugly1035ugly780ugly22startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly32706ugly33234ugly32153ugly32772ugly32363ugly31954ugly664ugly126ugly706ugly899startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly32707ugly32938ugly32719ugly31964ugly33252ugly32415ugly1357ugly702ugly130ugly1369move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe3)
       (not_blocked seg_n_a2a_0_60 airplane_daew8)
       (not_blocked seg_n_a2a_0_60 airplane_daew9)
       (not_blocked seg_n_a2a_0_60 airplane_daew3)
       (not_blocked seg_n_a2a_0_60 airplane_daewh)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2b_0_60)) (not_occupied seg_n_a2b_0_60)
       (not (at-segment ?a seg_n_a2b_0_60)) (occupied seg_n_a2a_0_60)
       (not (not_occupied seg_n_a2a_0_60)) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a)) (at-segment ?a seg_n_a2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action
  ugly32708ugly32906ugly32271ugly32867ugly33277ugly32625ugly1211ugly287ugly1338ugly1154startup_seg_08r_b4a_0_161_245_south_medium
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
  ugly32709ugly32782ugly32005ugly32702ugly32026ugly32754ugly933ugly650ugly431ugly837move_seg_w1_151b_0_45_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
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
  ugly32710ugly33152ugly33151ugly32078ugly32361ugly31936ugly935ugly420ugly430ugly477park_seg_p107_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action
  ugly32711ugly32951ugly32775ugly32043ugly32519ugly32256ugly699ugly93ugly773ugly538move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
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
  ugly32712ugly32970ugly32771ugly32506ugly32600ugly31942ugly977ugly362ugly518ugly251startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly32713ugly33037ugly33256ugly32994ugly32412ugly32678ugly753ugly314ugly418ugly1109startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly32714ugly31955ugly32374ugly33184ugly32056ugly32131ugly257ugly103ugly1335ugly994startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly32715ugly32329ugly32033ugly33195ugly33289ugly32985ugly893ugly1289ugly65ugly937startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly32716ugly32491ugly33001ugly32861ugly32618ugly32831ugly586ugly1048ugly661ugly379startup_seg_t_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action
  ugly32717ugly32694ugly32544ugly32855ugly32347ugly32920ugly252ugly247ugly1008ugly1023startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly32718ugly33109ugly32010ugly33155ugly32058ugly33285ugly1373ugly335ugly528ugly96move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe3)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew8)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew9)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew3)
       (not_blocked seg_n_a6a8a_0_115 airplane_daewh)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8b_0_75)) (not_occupied seg_n_a6a8b_0_75)
       (not (at-segment ?a seg_n_a6a8b_0_75)) (occupied seg_n_a6a8a_0_115)
       (not (not_occupied seg_n_a6a8a_0_115)) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly32719ugly31964ugly33252ugly32415ugly33280ugly32871ugly1011ugly133ugly482ugly592startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly32720ugly33197ugly32049ugly33141ugly32487ugly33163ugly23ugly605ugly1276ugly527startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly32721ugly32193ugly32731ugly32145ugly32238ugly33258ugly501ugly969ugly264ugly963startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly32722ugly32328ugly32613ugly32586ugly32097ugly32182ugly414ugly982ugly1243ugly524startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly32723ugly33043ugly32674ugly32225ugly32800ugly32593ugly1163ugly664ugly126ugly706startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly32724ugly31991ugly32965ugly32341ugly31961ugly32203ugly969ugly264ugly963ugly841pushback_seg_w1_163c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly32725ugly32452ugly33140ugly32021ugly32881ugly33015ugly217ugly192ugly153ugly1025startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action
  ugly32726ugly32190ugly32517ugly31995ugly32390ugly32888ugly11ugly389ugly280ugly1158startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly32727ugly32129ugly33064ugly33257ugly31929ugly32947ugly1184ugly550ugly1116ugly446startup_seg_t_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a))))
 (:action
  ugly32728ugly33220ugly31938ugly33294ugly32357ugly32948ugly946ugly1078ugly191ugly91startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly32729ugly32740ugly33273ugly32247ugly32016ugly32941ugly1117ugly1220ugly44ugly190move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
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
  ugly32730ugly32067ugly32093ugly31941ugly31949ugly32159ugly585ugly889ugly697ugly10startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly32731ugly32145ugly32238ugly33258ugly32424ugly32846ugly243ugly907ugly222ugly1068move_seg_08r_b2b_0_80_seg_08r_b2b3_0_900_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b_0_80) (not_occupied seg_08r_b2b3_0_900)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbeg)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbe1)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbe3)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew8)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew9)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew3)
       (not_blocked seg_08r_b2b3_0_900 airplane_daewh)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b2b_0_80)) (not_occupied seg_08r_b2b_0_80)
       (not (at-segment ?a seg_08r_b2b_0_80)) (occupied seg_08r_b2b3_0_900)
       (not (not_occupied seg_08r_b2b3_0_900)) (blocked seg_08r_b2b3_0_900 ?a)
       (not (not_blocked seg_08r_b2b3_0_900 ?a))
       (at-segment ?a seg_08r_b2b3_0_900) (not (blocked seg_08r_b2a_0_80 ?a))
       (not_blocked seg_08r_b2a_0_80 ?a)))
 (:action
  ugly32732ugly32007ugly32797ugly32834ugly33190ugly32537ugly320ugly776ugly415ugly356startup_seg_b8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly32733ugly32609ugly31951ugly32617ugly32051ugly32477ugly428ugly927ugly873ugly722startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly32734ugly32099ugly32745ugly32742ugly32111ugly32631ugly624ugly786ugly989ugly1319startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly32735ugly32473ugly32810ugly32316ugly32664ugly33104ugly799ugly543ugly168ugly1247move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
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
  ugly32736ugly32655ugly32988ugly32382ugly32132ugly33113ugly1118ugly364ugly1024ugly275startup_seg_w1_c4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly32737ugly32060ugly32738ugly32476ugly31986ugly33236ugly358ugly1076ugly17ugly409startup_seg_08r_b3c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action
  ugly32738ugly32476ugly31986ugly33236ugly32281ugly33101ugly1179ugly145ugly329ugly679startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly32739ugly32335ugly33096ugly33233ugly31925ugly32142ugly335ugly528ugly96ugly162startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly32740ugly33273ugly32247ugly32016ugly32941ugly33040ugly265ugly301ugly1091ugly708move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew9)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
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
  ugly32741ugly31978ugly32199ugly33259ugly33231ugly33238ugly711ugly827ugly2ugly1187move_seg_w1_164c_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
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
  ugly32742ugly32111ugly32631ugly32547ugly32829ugly32847ugly1053ugly442ugly1353ugly169startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly32743ugly32109ugly32299ugly32619ugly32883ugly32113ugly666ugly8ugly609ugly183move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
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
  ugly32744ugly33157ugly32705ugly32472ugly32376ugly33227ugly689ugly371ugly978ugly999startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly32745ugly32742ugly32111ugly32631ugly32547ugly32829ugly924ugly454ugly31ugly1231move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p143_0_75)) (not_occupied seg_p143_0_75)
       (not (at-segment ?a seg_p143_0_75)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action
  ugly32746ugly32155ugly33222ugly31947ugly32323ugly33047ugly285ugly1364ugly576ugly779startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly32747ugly32377ugly32082ugly32732ugly32007ugly32797ugly911ugly45ugly1334ugly157startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action
  ugly32748ugly32928ugly32585ugly32020ugly33192ugly32708ugly983ugly629ugly806ugly98startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly32749ugly31970ugly32643ugly32076ugly32792ugly32324ugly707ugly646ugly775ugly55startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly32750ugly32529ugly31930ugly32578ugly31933ugly32637ugly268ugly135ugly547ugly1130startup_seg_t_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a))))
 (:action
  ugly32751ugly33116ugly32009ugly32075ugly32793ugly31992ugly162ugly914ugly762ugly1013startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly32752ugly32226ugly33002ugly32458ugly33095ugly32148ugly875ugly42ugly213ugly634move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
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
  ugly32753ugly33167ugly32283ugly33092ugly32207ugly32260ugly1086ugly15ugly1212ugly129move_seg_w1_143c_0_60_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
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
  ugly32754ugly32856ugly32766ugly32241ugly32661ugly32350ugly1309ugly601ugly1197ugly1043startup_seg_08r_b6a_0_161_245_south_medium
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
  ugly32755ugly33292ugly32151ugly33038ugly33031ugly33196ugly648ugly938ugly102ugly325move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
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
  ugly32756ugly32430ugly32164ugly32383ugly32306ugly32494ugly139ugly1211ugly287ugly1338startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly32757ugly32478ugly32596ugly32290ugly32862ugly32686ugly864ugly1283ugly178ugly1107startup_seg_t_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3a_0_60)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly32758ugly32667ugly32552ugly32679ugly32908ugly32822ugly620ugly182ugly682ugly1151startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly32759ugly33117ugly32362ugly32739ugly32335ugly33096ugly1310ugly436ugly497ugly230move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p110_0_76)) (not_occupied seg_p110_0_76)
       (not (at-segment ?a seg_p110_0_76)) (occupied seg_o1_110b_0_60)
       (not (not_occupied seg_o1_110b_0_60)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly32760ugly32533ugly32991ugly32248ugly32870ugly32459ugly203ugly1115ugly448ugly864startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly32761ugly32545ugly32611ugly32607ugly33094ugly32813ugly350ugly422ugly199ugly56move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_cfbe1)
       (not_blocked seg_p162_0_75 airplane_cfbe3)
       (not_blocked seg_p162_0_75 airplane_daew8)
       (not_blocked seg_p162_0_75 airplane_daew9)
       (not_blocked seg_p162_0_75 airplane_daew3)
       (not_blocked seg_p162_0_75 airplane_daewh)
       (not_blocked seg_p162_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_p162_0_75)
       (not (not_occupied seg_p162_0_75)) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a)) (at-segment ?a seg_p162_0_75)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly32762ugly32189ugly33083ugly32084ugly32408ugly32035ugly465ugly795ugly324ugly211startup_seg_t_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action
  ugly32763ugly32044ugly32038ugly32515ugly32505ugly32723ugly1120ugly239ugly1261ugly1031move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
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
  ugly32764ugly32244ugly32130ugly32653ugly33291ugly32314ugly1344ugly141ugly685ugly113startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action
  ugly32765ugly32496ugly32006ugly31960ugly33039ugly32966ugly826ugly228ugly68ugly521startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly32766ugly32241ugly32661ugly32350ugly33232ugly32015ugly304ugly1303ugly680ugly996move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
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
  ugly32767ugly32230ugly31969ugly32294ugly33237ugly32538ugly1100ugly472ugly225ugly351startup_seg_o1_110d_0_45_south_medium
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
  ugly32768ugly32922ugly32039ugly32539ugly32610ugly32267ugly1034ugly917ugly1036ugly1155move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
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
  ugly32769ugly32499ugly32921ugly32311ugly32417ugly32872ugly665ugly945ugly1079ugly941move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6c_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6d_0_75)) (not_occupied seg_n_a7a6d_0_75)
       (not (at-segment ?a seg_n_a7a6d_0_75)) (occupied seg_n_a7a6c_0_75)
       (not (not_occupied seg_n_a7a6c_0_75)) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a)) (at-segment ?a seg_n_a7a6c_0_75)
       (not (blocked seg_n_a6c_0_60 ?a)) (not_blocked seg_n_a6c_0_60 ?a)))
 (:action
  ugly32770ugly32624ugly33132ugly32781ugly33007ugly32914ugly591ugly416ugly637ugly1278startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly32771ugly32506ugly32600ugly31942ugly32900ugly32177ugly625ugly1252ugly127ugly507move_seg_08r_b6c_0_80_seg_08r_b6a_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6a_0_161_245)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbeg)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbe1)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbe3)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew8)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew9)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew3)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daewh)
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
  ugly32772ugly32363ugly31954ugly32587ugly32744ugly33157ugly782ugly1368ugly695ugly884startup_seg_t_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action
  ugly32773ugly32008ugly32725ugly32452ugly33140ugly32021ugly958ugly575ugly1318ugly626move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
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
  ugly32774ugly33247ugly33044ugly32014ugly33241ugly32788ugly644ugly821ugly1123ugly1357startup_seg_s_b8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action
  ugly32775ugly32043ugly32519ugly32256ugly32622ugly32389ugly931ugly30ugly846ugly214startup_seg_s_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action
  ugly32776ugly32565ugly32198ugly33011ugly32288ugly32983ugly1319ugly1344ugly141ugly685move_seg_s_b8c_0_60_seg_s_b5b8c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b8c_0_60) (not_occupied seg_s_b5b8c_0_130)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbe1)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbe3)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew8)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew9)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew3)
       (not_blocked seg_s_b5b8c_0_130 airplane_daewh)
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
  ugly32777ugly31979ugly32753ugly33167ugly32283ugly33092ugly284ugly515ugly305ugly755move_seg_s_b5a_0_60_seg_s6_0_94_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b5a_0_60) (not_occupied seg_s6_0_94)
       (not_blocked seg_s6_0_94 airplane_cfbeg)
       (not_blocked seg_s6_0_94 airplane_cfbe1)
       (not_blocked seg_s6_0_94 airplane_cfbe3)
       (not_blocked seg_s6_0_94 airplane_daew8)
       (not_blocked seg_s6_0_94 airplane_daew9)
       (not_blocked seg_s6_0_94 airplane_daew3)
       (not_blocked seg_s6_0_94 airplane_daewh)
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
  ugly32778ugly33110ugly32688ugly33019ugly32229ugly32528ugly1061ugly1341ugly449ugly1203startup_seg_t_b8c_0_120_934_south_medium
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
  ugly32779ugly32168ugly33124ugly32048ugly33067ugly33178ugly1105ugly85ugly1327ugly1347startup_seg_t_b2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action
  ugly32780ugly32302ugly32917ugly32935ugly33293ugly33051ugly1167ugly1150ugly254ugly397move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_cfbe1)
       (not_blocked seg_p154_0_75 airplane_cfbe3)
       (not_blocked seg_p154_0_75 airplane_daew8)
       (not_blocked seg_p154_0_75 airplane_daew9)
       (not_blocked seg_p154_0_75 airplane_daew3)
       (not_blocked seg_p154_0_75 airplane_daewh)
       (not_blocked seg_p154_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_p154_0_75)
       (not (not_occupied seg_p154_0_75)) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a)) (at-segment ?a seg_p154_0_75)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)))
 (:action
  ugly32781ugly33007ugly32914ugly32514ugly32135ugly32481ugly1290ugly701ugly1346ugly1249startup_seg_b3_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly32782ugly32005ugly32702ugly32026ugly32754ugly32856ugly843ugly813ugly866ugly765startup_seg_t_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5d_0_60)
       (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action
  ugly32783ugly32736ugly32655ugly32988ugly32382ugly32132ugly1190ugly998ugly452ugly1239startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly32784ugly32836ugly32032ugly32572ugly33187ugly32274ugly498ugly1218ugly1122ugly147move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
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
  ugly32785ugly32967ugly33173ugly32441ugly32644ugly32989ugly260ugly1071ugly777ugly862startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly32786ugly32171ugly33066ugly33148ugly33261ugly32368ugly1097ugly185ugly57ugly165startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly32787ugly32104ugly32253ugly33260ugly31981ugly32786ugly248ugly237ugly1230ugly741move_seg_o1_109b_0_60_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
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
  ugly32788ugly32567ugly32859ugly32895ugly32714ugly31955ugly451ugly951ugly992ugly1015move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_cfbe1)
       (not_blocked seg_09l_0_80 airplane_cfbe3)
       (not_blocked seg_09l_0_80 airplane_daew8)
       (not_blocked seg_09l_0_80 airplane_daew9)
       (not_blocked seg_09l_0_80 airplane_daew3)
       (not_blocked seg_09l_0_80 airplane_daewh)
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
  ugly32789ugly32410ugly32122ugly32963ugly33179ugly32486ugly216ugly106ugly346ugly876startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly32790ugly32343ugly32057ugly32433ugly32059ugly32322ugly885ugly1098ugly1153ugly954startup_seg_t_b9d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action
  ugly32791ugly33207ugly32632ugly32992ugly32546ugly32809ugly298ugly88ugly313ugly311move_seg_o1_116b_0_60_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
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
  ugly32792ugly32324ugly32630ugly32117ugly33013ugly32197ugly638ugly369ugly750ugly331move_seg_08r_b6c_0_80_seg_08r_b6b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6b_0_80)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b6b_0_80 airplane_daew8)
       (not_blocked seg_08r_b6b_0_80 airplane_daew9)
       (not_blocked seg_08r_b6b_0_80 airplane_daew3)
       (not_blocked seg_08r_b6b_0_80 airplane_daewh)
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
  ugly32793ugly31992ugly32085ugly32291ugly32692ugly32121ugly856ugly1325ugly655ugly1191move_seg_s_b2a_0_60_seg_s_b2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2a_0_60) (not_occupied seg_s_b2b_0_60)
       (not_blocked seg_s_b2b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b2b_0_60 airplane_cfbe3)
       (not_blocked seg_s_b2b_0_60 airplane_daew8)
       (not_blocked seg_s_b2b_0_60 airplane_daew9)
       (not_blocked seg_s_b2b_0_60 airplane_daew3)
       (not_blocked seg_s_b2b_0_60 airplane_daewh)
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
  ugly32794ugly32393ugly33118ugly32223ugly32169ugly33168ugly29ugly671ugly1235ugly764startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly32795ugly33253ugly33032ugly32980ugly31953ugly33149ugly845ugly1046ugly847ugly1274startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly32796ugly32407ugly32279ugly32003ugly32300ugly32103ugly811ugly175ugly1125ugly558startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly32797ugly32834ugly33190ugly32537ugly32243ugly32806ugly1345ugly732ugly644ugly821startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly32798ugly32071ugly32252ugly33077ugly32843ugly32670ugly332ugly1321ugly622ugly709startup_seg_t_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action
  ugly32799ugly32147ugly33081ugly32419ugly33089ugly32853ugly1282ugly1045ugly836ugly9startup_seg_b6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action
  ugly32800ugly32593ugly33086ugly32802ugly32726ugly32190ugly594ugly590ugly1255ugly451startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly32801ugly32116ugly33099ugly32054ugly32594ugly32767ugly307ugly880ugly970ugly27startup_seg_c4_s6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly32802ugly32726ugly32190ugly32517ugly31995ugly32390ugly965ugly156ugly920ugly1269startup_seg_t_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action
  ugly32803ugly32577ugly32773ugly32008ugly32725ugly32452ugly1217ugly835ugly1233ugly1329move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a4d_0_80 airplane_daew8)
       (not_blocked seg_08l_a4d_0_80 airplane_daew9)
       (not_blocked seg_08l_a4d_0_80 airplane_daew3)
       (not_blocked seg_08l_a4d_0_80 airplane_daewh)
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
  ugly32804ugly32795ugly33253ugly33032ugly32980ugly31953ugly1226ugly948ugly1106ugly143move_seg_b2_0_80_seg_b2_1_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_0_80) (not_occupied seg_b2_1_0_80)
       (not_blocked seg_b2_1_0_80 airplane_cfbeg)
       (not_blocked seg_b2_1_0_80 airplane_cfbe1)
       (not_blocked seg_b2_1_0_80 airplane_cfbe3)
       (not_blocked seg_b2_1_0_80 airplane_daew8)
       (not_blocked seg_b2_1_0_80 airplane_daew9)
       (not_blocked seg_b2_1_0_80 airplane_daew3)
       (not_blocked seg_b2_1_0_80 airplane_daewh)
       (not_blocked seg_b2_1_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_b2_0_80)) (not_occupied seg_b2_0_80)
       (not (at-segment ?a seg_b2_0_80)) (occupied seg_b2_1_0_80)
       (not (not_occupied seg_b2_1_0_80)) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a)) (at-segment ?a seg_b2_1_0_80)
       (not (blocked seg_t_b2c_0_60 ?a)) (not_blocked seg_t_b2c_0_60 ?a)))
 (:action
  ugly32805ugly32590ugly33218ugly32663ugly33024ugly32699ugly447ugly688ugly79ugly593startup_seg_08r_b6d_0_161_245_south_medium
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
  ugly32806ugly33268ugly32211ugly33177ugly32677ugly32502ugly692ugly261ugly514ugly577startup_seg_t_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly32807ugly32201ugly32815ugly32295ugly32626ugly33239ugly165ugly1184ugly550ugly1116pushback_seg_o1_c1a_0_60_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly32808ugly32673ugly32330ugly32484ugly32019ugly33052ugly1364ugly576ugly779ugly905pushback_seg_o1_108a_0_34_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly32809ugly32221ugly32431ugly32297ugly31967ugly32629ugly61ugly368ugly1178ugly345startup_seg_b8_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action
  ugly32810ugly32316ugly32664ugly33104ugly32722ugly32328ugly690ugly610ugly1304ugly993startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly32811ugly31987ugly32746ugly32155ugly33222ugly31947ugly400ugly1181ugly519ugly801startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action
  ugly32812ugly33025ugly33279ugly32569ugly32923ugly32447ugly903ugly39ugly1359ugly761move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
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
  ugly32813ugly32273ugly32285ugly32682ugly32469ugly32405ugly990ugly1193ugly493ugly434startup_seg_s_b7b_0_60_south_medium
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
  ugly32814ugly32456ugly32036ugly32524ugly32513ugly32046ugly1091ugly708ugly292ugly1332startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32815ugly32295ugly32626ugly33239ugly32088ugly32345ugly238ugly579ugly285ugly1364startup_seg_t_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b_0_60)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly32816ugly32045ugly32648ugly31945ugly33286ugly32574ugly867ugly893ugly1289ugly65startup_seg_o1_108b_0_60_south_medium
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
  ugly32817ugly32444ugly32397ugly32916ugly33212ugly32326ugly413ugly785ugly886ugly587startup_seg_t_b4b_0_60_south_medium
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
  ugly32818ugly33061ugly32728ugly33220ugly31938ugly33294ugly434ugly681ugly1118ugly364startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action
  ugly32819ugly32930ugly32825ugly33215ugly32559ugly32094ugly1320ugly181ugly881ugly221startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32820ugly32217ugly32387ugly32937ugly32996ugly33229ugly674ugly659ugly38ugly167startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action
  ugly32821ugly33069ugly32536ugly32428ugly32755ugly33292ugly228ugly68ugly521ugly1009startup_seg_b5_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_t_b5c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a))))
 (:action
  ugly32822ugly32543ugly32050ugly32972ugly32857ugly31999ugly462ugly1192ugly1222ugly984startup_seg_b9_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_08r_b9a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9a_0_161_245 ?a)
       (not (not_blocked seg_08r_b9a_0_161_245 ?a))))
 (:action
  ugly32823ugly32911ugly33137ugly32669ugly32436ugly32791ugly1284ugly1029ugly1087ugly1219move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3e_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3f_0_115)) (not_occupied seg_n_a2a3f_0_115)
       (not (at-segment ?a seg_n_a2a3f_0_115)) (occupied seg_n_a2a3e_0_75)
       (not (not_occupied seg_n_a2a3e_0_75)) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a)) (at-segment ?a seg_n_a2a3e_0_75)
       (not (blocked seg_n_a3d_0_60 ?a)) (not_blocked seg_n_a3d_0_60 ?a)))
 (:action
  ugly32824ugly32875ugly32475ugly32310ugly33230ugly32804ugly872ugly405ugly542ugly840startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly32825ugly33215ugly32559ugly32094ugly33243ugly32386ugly1157ugly184ugly537ugly1058startup_seg_t_b3a_0_60_south_medium
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
  ugly32826ugly32733ugly32609ugly31951ugly32617ugly32051ugly554ugly1117ugly1220ugly44move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew9)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
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
  ugly32827ugly32616ugly32657ugly32157ugly33156ugly33115ugly749ugly1217ugly835ugly1233startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly32828ugly32448ugly33269ugly32891ugly32289ugly33082ugly62ugly398ugly326ugly689move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p132_0_75)) (not_occupied seg_p132_0_75)
       (not (at-segment ?a seg_p132_0_75)) (occupied seg_o1_109d_0_45)
       (not (not_occupied seg_o1_109d_0_45)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action
  ugly32829ugly32847ugly32976ugly32604ugly33208ugly33085ugly900ugly705ugly844ugly529startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly32830ugly32812ugly33025ugly33279ugly32569ugly32923ugly524ugly934ugly535ugly534startup_seg_s_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_t_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a))))
 (:action
  ugly32831ugly32509ugly32401ugly32592ugly31940ugly32997ugly1131ugly1175ugly1003ugly716startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly32832ugly32018ugly32246ugly32181ugly33288ugly33130ugly1021ugly424ugly462ugly1192startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action
  ugly32833ugly32497ugly32031ugly32349ugly32359ugly32852ugly497ugly230ugly377ugly711startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly32834ugly33190ugly32537ugly32243ugly32806ugly33268ugly288ugly245ugly11ugly389move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
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
  ugly32835ugly32423ugly32704ugly32332ugly32352ugly32105ugly1258ugly459ugly498ugly1218startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly32836ugly32032ugly32572ugly33187ugly32274ugly32421ugly54ugly678ugly1272ugly743startup_seg_s_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly32837ugly32073ugly33164ugly32693ugly33103ugly32828ugly525ugly1343ugly86ugly235move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p115_0_76)) (not_occupied seg_p115_0_76)
       (not (at-segment ?a seg_p115_0_76)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action
  ugly32838ugly32127ugly33027ugly32115ugly32319ugly32886ugly1321ugly622ugly709ugly502startup_seg_s_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly32839ugly32317ugly32573ugly32384ugly32312ugly32668ugly117ugly962ugly660ugly589move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3c_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3d_0_75)) (not_occupied seg_n_a2a3d_0_75)
       (not (at-segment ?a seg_n_a2a3d_0_75)) (occupied seg_n_a2a3c_0_75)
       (not (not_occupied seg_n_a2a3c_0_75)) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a)) (at-segment ?a seg_n_a2a3c_0_75)
       (not (blocked seg_n_a2a3e_0_75 ?a)) (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action
  ugly32840ugly33165ugly33100ugly32724ugly31991ugly32965ugly418ugly1109ugly1254ugly1267startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32841ugly32550ugly33120ugly32128ugly32158ugly33122ugly78ugly536ugly799ugly543move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe1)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe3)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew8)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew9)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew3)
       (not_blocked seg_n_a7a6a_0_85 airplane_daewh)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a7a6b_0_75)) (not_occupied seg_n_a7a6b_0_75)
       (not (at-segment ?a seg_n_a7a6b_0_75)) (occupied seg_n_a7a6a_0_85)
       (not (not_occupied seg_n_a7a6a_0_85)) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a)) (at-segment ?a seg_n_a7a6a_0_85)
       (not (blocked seg_n_a7a6c_0_75 ?a)) (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action
  ugly32842ugly33048ugly33249ugly31928ugly32918ugly32214ugly1099ugly1134ugly569ugly428startup_seg_o1_c2d_0_60_south_medium
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
  ugly32843ugly32670ugly32255ugly32833ugly32497ugly32031ugly426ugly906ugly78ugly536park_seg_p152_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly32844ugly32907ugly32715ugly32329ugly32033ugly33195ugly1366ugly90ugly119ugly703move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_cfbe1)
       (not_blocked seg_p131_0_75 airplane_cfbe3)
       (not_blocked seg_p131_0_75 airplane_daew8)
       (not_blocked seg_p131_0_75 airplane_daew9)
       (not_blocked seg_p131_0_75 airplane_daew3)
       (not_blocked seg_p131_0_75 airplane_daewh)
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
  ugly32845ugly32863ugly31950ugly32218ugly32819ugly32930ugly902ugly530ugly1140ugly1102startup_seg_s_b9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly32846ugly32166ugly32542ugly32095ugly32072ugly33298ugly1127ugly627ugly939ugly1336move_seg_s_b8b_0_60_seg_s_b8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60)
       (not_blocked seg_s_b8c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b8c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b8c_0_60 airplane_daew8)
       (not_blocked seg_s_b8c_0_60 airplane_daew9)
       (not_blocked seg_s_b8c_0_60 airplane_daew3)
       (not_blocked seg_s_b8c_0_60 airplane_daewh)
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
  ugly32847ugly32976ugly32604ugly33208ugly33085ugly32823ugly988ugly1236ugly615ugly327startup_seg_t_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action
  ugly32848ugly33012ugly33214ugly31939ugly32108ugly32133ugly980ugly958ugly575ugly1318startup_seg_t_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly32849ugly32784ugly32836ugly32032ugly32572ugly33187ugly351ugly973ugly355ugly421startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action
  ugly32850ugly32971ugly33036ugly32866ugly32266ugly32642ugly531ugly909ugly977ugly362startup_seg_s_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_t_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a))))
 (:action
  ugly32851ugly32112ugly32953ugly32598ugly32037ugly33058ugly100ugly800ugly1365ugly384startup_seg_b8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_t_b8c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))))
 (:action
  ugly32852ugly32420ugly33005ugly33057ugly32270ugly32576ugly1236ugly615ugly327ugly506startup_seg_08r_b6a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6a_0_161_245)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action
  ugly32853ugly33205ugly31971ugly33226ugly33136ugly32645ugly479ugly209ugly551ugly186startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly32854ugly33185ugly33223ugly32070ugly32535ugly32878ugly375ugly728ugly164ugly212startup_seg_m_a8d_0_120_934_south_medium
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
  ugly32855ugly32347ugly32920ugly32175ugly32466ugly32687ugly595ugly675ugly286ugly964move_seg_o1_c1a_0_60_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
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
  ugly32856ugly32766ugly32241ugly32661ugly32350ugly33232ugly92ugly1011ugly133ugly482startup_seg_t_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly32857ugly31999ugly32385ugly32523ugly32789ugly32410ugly199ugly56ugly238ugly579move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe3)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew9)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_blocked seg_c4_s6a_0_80 airplane_daewh)
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
  ugly32858ugly33254ugly32081ugly32068ugly32429ugly32879ugly607ugly673ugly1183ugly492park_seg_p133_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action
  ugly32859ugly32895ugly32714ugly31955ugly32374ugly33184ugly133ugly482ugly592ugly1268move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
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
  ugly32860ugly32143ugly32249ugly33112ugly32727ugly32129ugly1141ugly553ugly539ugly1039move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe3)
       (not_blocked seg_n_a8a_0_60 airplane_daew8)
       (not_blocked seg_n_a8a_0_60 airplane_daew9)
       (not_blocked seg_n_a8a_0_60 airplane_daew3)
       (not_blocked seg_n_a8a_0_60 airplane_daewh)
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
  ugly32861ugly32618ugly32831ugly32509ugly32401ugly32592ugly17ugly409ugly466ugly470startup_seg_w1_c4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly32862ugly32686ugly32787ugly32104ugly32253ugly33260ugly58ugly21ugly1121ugly475move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_cfbe1)
       (not_blocked seg_p134_0_75 airplane_cfbe3)
       (not_blocked seg_p134_0_75 airplane_daew8)
       (not_blocked seg_p134_0_75 airplane_daew9)
       (not_blocked seg_p134_0_75 airplane_daew3)
       (not_blocked seg_p134_0_75 airplane_daewh)
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
  ugly32863ugly31950ugly32218ugly32819ugly32930ugly32825ugly1292ugly12ugly1210ugly16startup_seg_o1_109c_0_34_south_medium
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
  ugly32864ugly32174ugly32395ugly32845ugly32863ugly31950ugly295ugly863ugly1198ugly522takeoff_seg_09r_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09r_0_80)) (not_occupied seg_09r_0_80)
       (not (blocked seg_09r_0_80 ?a)) (not_blocked seg_09r_0_80 ?a)
       (not (at-segment ?a seg_09r_0_80)) (airborne ?a seg_09r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b9b10_0_980 ?a))
       (not_blocked seg_08r_b9b10_0_980 ?a)))
 (:action
  ugly32865ugly32463ugly32400ugly33049ugly33176ugly32398ugly488ugly979ugly37ugly620move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4b_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4c_0_75)) (not_occupied seg_n_n2a4c_0_75)
       (not (at-segment ?a seg_n_n2a4c_0_75)) (occupied seg_n_n2a4b_0_75)
       (not (not_occupied seg_n_n2a4b_0_75)) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a)) (at-segment ?a seg_n_n2a4b_0_75)
       (not (blocked seg_n_n2a4d_0_75 ?a)) (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action
  ugly32866ugly32266ugly32642ugly32454ugly32292ugly32263ugly71ugly904ugly901ugly618startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly32867ugly33277ugly32625ugly33134ugly32134ugly32945ugly515ugly305ugly755ugly118startup_seg_t_b9b_0_60_south_medium
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
  ugly32868ugly32899ugly32286ugly32064ugly33275ugly33074ugly283ugly1226ugly948ugly1106move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe3)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
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
  ugly32869ugly33189ugly32943ugly33139ugly32961ugly32770ugly701ugly1346ugly1249ugly726move_seg_s_b5b8c_0_130_seg_s_b5b8b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8c_0_130) (not_occupied seg_s_b5b8b_0_135)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbe1)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbe3)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew9)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew3)
       (not_blocked seg_s_b5b8b_0_135 airplane_daewh)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b5b8c_0_130)) (not_occupied seg_s_b5b8c_0_130)
       (not (at-segment ?a seg_s_b5b8c_0_130)) (occupied seg_s_b5b8b_0_135)
       (not (not_occupied seg_s_b5b8b_0_135)) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))
       (at-segment ?a seg_s_b5b8b_0_135) (not (blocked seg_s_b8c_0_60 ?a))
       (not_blocked seg_s_b8c_0_60 ?a)))
 (:action
  ugly32870ugly32459ugly32126ugly31926ugly32599ugly33068ugly1222ugly984ugly489ugly120startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly32871ugly32934ugly33126ugly33087ugly33186ugly32931ugly716ugly1141ugly553ugly539park_seg_p117_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly32872ugly32588ugly32396ugly32919ugly32909ugly33119ugly156ugly920ugly1269ugly600startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly32873ugly32750ugly32529ugly31930ugly32578ugly31933ugly714ugly691ugly367ugly317move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
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
  ugly32874ugly32998ugly32114ugly32303ugly32556ugly32360ugly523ugly988ugly1236ugly615move_seg_o1_102b_0_60_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
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
  ugly32875ugly32475ugly32310ugly33230ugly32804ugly32795ugly1330ugly1311ugly236ugly13move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew9)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
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
  ugly32876ugly32427ugly33006ugly32344ugly32212ugly31972ugly486ugly638ugly369ugly750move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
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
  ugly32877ugly32794ugly32393ugly33118ugly32223ugly32169ugly1245ugly818ugly441ugly757startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly32878ugly32298ugly31989ugly32660ugly32710ugly33152ugly1228ugly1324ugly293ugly177move_seg_08r_b6b9_0_420_seg_08r_b9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b9_0_420) (not_occupied seg_08r_b9c_0_80)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b9c_0_80 airplane_daew8)
       (not_blocked seg_08r_b9c_0_80 airplane_daew9)
       (not_blocked seg_08r_b9c_0_80 airplane_daew3)
       (not_blocked seg_08r_b9c_0_80 airplane_daewh)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_08r_b6b9_0_420)) (not_occupied seg_08r_b6b9_0_420)
       (not (at-segment ?a seg_08r_b6b9_0_420)) (occupied seg_08r_b9c_0_80)
       (not (not_occupied seg_08r_b9c_0_80)) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (at-segment ?a seg_08r_b9c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b6b_0_80 ?a)) (not_blocked seg_08r_b6b_0_80 ?a)))
 (:action
  ugly32879ugly32530ugly32751ugly33116ugly32009ugly32075ugly870ugly1280ugly333ugly616startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly32880ugly32690ugly32268ugly32107ugly32949ugly32025ugly1325ugly655ugly1191ugly54startup_seg_s_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly32881ugly33015ugly32140ugly32553ugly32712ugly32970ugly848ugly490ugly232ugly683move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p141_0_75)) (not_occupied seg_p141_0_75)
       (not (at-segment ?a seg_p141_0_75)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action
  ugly32882ugly32437ugly32842ugly33048ugly33249ugly31928ugly995ugly919ugly505ugly578startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly32883ugly32113ugly32589ugly33035ugly31982ugly32028ugly1349ugly694ugly598ugly128startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly32884ugly32962ugly33123ugly33290ugly32521ugly32369ugly1287ugly690ugly610ugly1304startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly32885ugly32730ugly32067ugly32093ugly31941ugly31949ugly236ugly13ugly20ugly473move_seg_b8_b_0_80_6226_seg_t_b8c_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_0_80_6226) (not_occupied seg_t_b8c_0_120_934)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbeg)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbe1)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbe3)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew8)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew9)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew3)
       (not_blocked seg_t_b8c_0_120_934 airplane_daewh)
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
  ugly32886ugly33244ugly32102ugly32425ugly32239ugly32137ugly723ugly742ugly888ugly658startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly32887ugly32762ugly32189ugly33083ugly32084ugly32408ugly112ugly894ugly1056ugly1075move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
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
  ugly32888ugly31934ugly32999ugly33127ugly33063ugly32675ugly775ugly55ugly1168ugly1077startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly32889ugly32282ugly33204ugly32233ugly33200ugly33203ugly516ugly870ugly1280ugly333startup_seg_s_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_t_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a))))
 (:action
  ugly32890ugly32280ugly33295ugly32623ugly32034ugly32219ugly1093ugly323ugly173ugly433startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly32891ugly32289ugly33082ugly31985ugly33071ugly32709ugly859ugly296ugly1042ugly197startup_seg_t_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action
  ugly32892ugly32720ugly33197ugly32049ugly33141ugly32487ugly1240ugly372ugly651ugly277startup_seg_b8_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_08r_b6a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))))
 (:action
  ugly32893ugly32307ugly33143ugly31980ugly33146ugly32760ugly610ugly1304ugly993ugly783startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly32894ugly32052ugly33125ugly32017ugly32651ugly33284ugly691ugly367ugly317ugly281startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly32895ugly32714ugly31955ugly32374ugly33184ugly32056ugly208ugly220ugly1108ugly1159move_seg_w1_142b_0_45_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
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
  ugly32896ugly31975ugly32893ugly32307ugly33143ugly31980ugly1223ugly1241ugly453ugly77move_seg_o1_108d_0_45_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
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
  ugly32897ugly32960ugly32765ugly32496ugly32006ugly31960ugly1116ugly446ugly559ugly40startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly32898ugly32955ugly32245ugly32063ugly32638ugly33255ugly780ugly22ugly1084ugly552move_seg_o1_c1b_0_34_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
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
  ugly32899ugly32286ugly32064ugly33275ugly33074ugly32206ugly1286ugly1095ugly871ugly501startup_seg_o1_110b_0_60_south_medium
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
  ugly32900ugly32177ugly32548ugly32711ugly32951ugly32775ugly120ugly781ugly805ugly1049move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
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
  ugly32901ugly32261ugly33021ugly32098ugly32520ugly33131ugly784ugly407ugly851ugly1362startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly32902ugly32832ugly32018ugly32246ugly32181ugly33288ugly1207ugly151ugly903ugly39startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly32903ugly32030ugly32074ugly33193ugly32366ugly32100ugly862ugly845ugly1046ugly847startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly32904ugly32480ugly32434ugly32216ugly32864ugly32174ugly472ugly225ugly351ugly973move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
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
  ugly32905ugly32995ugly33221ugly32978ugly32453ugly32144ugly441ugly757ugly1163ugly664move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
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
  ugly32906ugly32271ugly32867ugly33277ugly32625ugly33134ugly211ugly503ugly1345ugly732startup_seg_s_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action
  ugly32907ugly32715ugly32329ugly32033ugly33195ugly33289ugly1062ugly766ugly641ugly1144startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly32908ugly32822ugly32543ugly32050ugly32972ugly32857ugly76ugly1146ugly817ugly560startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly32909ugly33119ugly32079ugly32927ugly33059ugly33235ugly926ugly1262ugly426ugly906move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a3c_0_60 airplane_daew8)
       (not_blocked seg_n_a3c_0_60 airplane_daew9)
       (not_blocked seg_n_a3c_0_60 airplane_daew3)
       (not_blocked seg_n_a3c_0_60 airplane_daewh)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n1_0_108)) (not_occupied seg_n1_0_108)
       (not (at-segment ?a seg_n1_0_108)) (occupied seg_n_a3c_0_60)
       (not (not_occupied seg_n_a3c_0_60)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (at-segment ?a seg_n_a3c_0_60)
       (not (blocked seg_w1_c1a_0_60 ?a)) (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action
  ugly32910ugly33219ugly32874ugly32998ugly32114ugly32303ugly633ugly1258ugly459ugly498startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly32911ugly33137ugly32669ugly32436ugly32791ugly33207ugly709ugly502ugly677ugly944startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly32912ugly32783ugly32736ugly32655ugly32988ugly32382ugly209ugly551ugly186ugly926startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly32913ugly32558ugly32987ugly32086ugly33000ugly32342ugly167ugly794ugly231ugly246startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly32914ugly32514ugly32135ugly32481ugly33213ugly32757ugly555ugly961ugly388ugly727startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly32915ugly32905ugly32995ugly33221ugly32978ugly32453ugly221ugly820ugly1167ugly1150move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
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
  ugly32916ugly33212ugly32326ugly32336ugly32877ugly32794ugly470ugly874ugly1094ugly1120move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
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
  ugly32917ugly32935ugly33293ugly33051ugly33090ugly32662ugly215ugly63ugly1299ugly1270park_seg_p143_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly32918ugly32214ugly33022ugly32884ugly32962ugly33123ugly1367ugly19ugly915ugly1148move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p152_0_75)) (not_occupied seg_p152_0_75)
       (not (at-segment ?a seg_p152_0_75)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action
  ugly32919ugly32909ugly33119ugly32079ugly32927ugly33059ugly1312ugly1128ugly321ugly882pushback_seg_p163_0_75_seg_w1_163b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p163_0_75)) (not_occupied seg_p163_0_75)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (not (at-segment ?a seg_p163_0_75)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly32920ugly32175ugly32466ugly32687ugly32518ugly32850ugly1048ugly661ugly379ugly564startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32921ugly32311ugly32417ugly32872ugly32588ugly32396ugly996ugly227ugly735ugly408move_seg_s_b3c_0_60_seg_s_b2b3c_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b3c_0_60) (not_occupied seg_s_b2b3c_0_140)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbe3)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3c_0_140 airplane_daewh)
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
  ugly32922ugly32039ugly32539ugly32610ugly32267ugly32957ugly907ugly222ugly1068ugly61move_seg_o1_109c_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
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
  ugly32923ugly32447ugly32826ugly32733ugly32609ugly31951ugly694ugly598ugly128ugly1282startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly32924ugly32659ugly33121ugly32564ugly32939ugly32526ugly70ugly365ugly710ugly439move_seg_o1_104b_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
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
  ugly32925ugly32894ugly32052ugly33125ugly32017ugly32651ugly1361ugly895ugly1215ugly1342startup_seg_m_a9a_0_60_south_medium
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
  ugly32926ugly32700ugly32799ugly32147ugly33081ugly32419ugly1166ugly330ugly965ugly156startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly32927ugly33059ugly33235ugly32849ugly32784ugly32836ugly109ugly248ugly237ugly1230startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly32928ugly32585ugly32020ugly33192ugly32708ugly32906ugly348ugly262ugly666ugly8startup_seg_t_b9a_0_60_south_medium
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
  ugly32929ugly32689ugly32568ugly31974ugly32320ugly32835ugly500ugly668ugly898ugly94startup_seg_b9_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly32930ugly32825ugly33215ugly32559ugly32094ugly33243ugly463ugly573ugly918ugly1314move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe1)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe3)
       (not_blocked seg_m_a8b_0_60 airplane_daew8)
       (not_blocked seg_m_a8b_0_60 airplane_daew9)
       (not_blocked seg_m_a8b_0_60 airplane_daew3)
       (not_blocked seg_m_a8b_0_60 airplane_daewh)
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
  ugly32931ugly32639ugly32680ugly32929ugly32689ugly32568ugly51ugly1330ugly1311ugly236move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
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
  ugly32932ugly32236ugly32575ugly32055ugly32975ugly33211ugly921ugly924ugly454ugly31startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly32933ugly32457ugly32950ugly33188ugly32123ugly33263ugly455ugly353ugly401ugly43startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly32934ugly33126ugly33087ugly33186ugly32931ugly32639ugly757ugly1163ugly664ugly126startup_seg_s_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly32935ugly33293ugly33051ugly33090ugly32662ugly32138ugly143ugly58ugly21ugly1121startup_seg_b5_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_08r_b4a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))))
 (:action
  ugly32936ugly32901ugly32261ugly33021ugly32098ugly32520ugly1208ugly427ugly378ugly1164move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
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
  ugly32937ugly32996ugly33229ugly32597ugly31932ugly32717ugly771ugly546ugly1072ugly665startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly32938ugly32719ugly31964ugly33252ugly32415ugly33280ugly948ugly1106ugly143ugly58move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew9)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
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
  ugly32939ugly32526ugly31993ugly32608ugly32287ugly32769ugly576ugly779ugly905ugly455move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p108_0_76)) (not_occupied seg_p108_0_76)
       (not (at-segment ?a seg_p108_0_76)) (occupied seg_o1_108b_0_60)
       (not (not_occupied seg_o1_108b_0_60)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action
  ugly32940ugly32811ugly31987ugly32746ugly32155ugly33222ugly24ugly474ugly1277ugly108move_seg_o1_118b_0_60_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
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
  ugly32941ugly33040ugly32188ugly33073ugly33098ugly31996ugly390ugly1103ugly148ugly256move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew9)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
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
  ugly32942ugly32516ugly32580ugly32959ugly33266ugly32146ugly1251ugly391ugly1302ugly916move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7e_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7f_0_75)) (not_occupied seg_n_a4a7f_0_75)
       (not (at-segment ?a seg_n_a4a7f_0_75)) (occupied seg_n_a4a7e_0_75)
       (not (not_occupied seg_n_a4a7e_0_75)) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a)) (at-segment ?a seg_n_a4a7e_0_75)
       (not (blocked seg_n_a7c_0_60 ?a)) (not_blocked seg_n_a7c_0_60 ?a)))
 (:action
  ugly32943ugly33139ugly32961ugly32770ugly32624ugly33132ugly858ugly554ugly1117ugly1220move_seg_s_b4c_0_60_seg_s_b3b4d_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b4c_0_60) (not_occupied seg_s_b3b4d_0_140)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4d_0_140 airplane_daewh)
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
  ugly32944ugly32522ugly32958ugly33283ugly32549ugly32761ugly622ugly709ugly502ugly677startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32945ugly32438ugly33138ugly33158ugly32776ugly32565ugly275ugly875ugly42ugly213startup_seg_s_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_t_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a))))
 (:action
  ugly32946ugly32254ugly31976ugly32658ugly32532ugly33175ugly1168ugly1077ugly1266ugly423startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly32947ugly33107ugly32605ugly33153ugly33147ugly32012ugly538ugly23ugly605ugly1276startup_seg_t_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action
  ugly32948ugly32869ugly33189ugly32943ugly33139ugly32961ugly847ugly1274ugly1291ugly1273startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly32949ugly32025ugly33248ugly32136ugly32096ugly32531ugly142ugly299ugly279ugly396move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a7a_0_80 airplane_daew8)
       (not_blocked seg_08l_a7a_0_80 airplane_daew9)
       (not_blocked seg_08l_a7a_0_80 airplane_daew3)
       (not_blocked seg_08l_a7a_0_80 airplane_daewh)
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
  ugly32950ugly33188ugly32123ugly33263ugly32378ugly32152ugly532ugly548ugly557ugly636startup_seg_t_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly32951ugly32775ugly32043ugly32519ugly32256ugly32622ugly466ugly470ugly874ugly1094startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly32952ugly32186ugly33030ugly32748ugly32928ugly32585ugly97ugly985ugly676ugly1263startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action
  ugly32953ugly32598ugly32037ugly33058ugly32023ugly32581ugly408ugly50ugly357ugly122startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly32954ugly32818ugly33061ugly32728ugly33220ugly31938ugly1371ugly1171ugly35ugly189startup_seg_s_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly32955ugly32245ugly32063ugly32638ugly33255ugly32703ugly726ugly114ugly1237ugly70move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p109_0_76)) (not_occupied seg_p109_0_76)
       (not (at-segment ?a seg_p109_0_76)) (occupied seg_o1_109b_0_60)
       (not (not_occupied seg_o1_109b_0_60)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action
  ugly32956ugly32178ugly32821ugly33069ugly32536ugly32428ugly832ugly1188ugly565ugly1096startup_seg_t_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly32957ugly32830ugly32812ugly33025ugly33279ugly32569ugly1000ugly1306ugly437ugly778park_seg_p154_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly32958ugly33283ugly32549ugly32761ugly32545ugly32611ugly684ugly943ugly1088ugly1041startup_seg_t_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action
  ugly32959ugly33266ugly32146ugly33174ugly32721ugly32193ugly808ugly272ugly337ugly647park_seg_p115_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly32960ugly32765ugly32496ugly32006ugly31960ugly33039ugly1043ugly479ugly209ugly551move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_cfbe1)
       (not_blocked seg_n2_0_108 airplane_cfbe3)
       (not_blocked seg_n2_0_108 airplane_daew8)
       (not_blocked seg_n2_0_108 airplane_daew9)
       (not_blocked seg_n2_0_108 airplane_daew3)
       (not_blocked seg_n2_0_108 airplane_daewh)
       (not_blocked seg_n2_0_108 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2b_0_60)) (not_occupied seg_n_n2b_0_60)
       (not (at-segment ?a seg_n_n2b_0_60)) (occupied seg_n2_0_108)
       (not (not_occupied seg_n2_0_108)) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a)) (at-segment ?a seg_n2_0_108)
       (not (blocked seg_n_n2a_0_60 ?a)) (not_blocked seg_n_n2a_0_60 ?a)
       (not (blocked seg_n_n2c_0_60 ?a)) (not_blocked seg_n_n2c_0_60 ?a)))
 (:action
  ugly32961ugly32770ugly32624ugly33132ugly32781ugly33007ugly991ugly1194ugly1326ugly583startup_seg_s_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action
  ugly32962ugly33123ugly33290ugly32521ugly32369ugly33210ugly370ugly1229ugly1022ugly808move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
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
  ugly32963ugly33179ugly32486ugly32139ugly32278ugly33135ugly79ugly593ugly481ugly146startup_seg_s_b5c_0_60_south_medium
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
  ugly32964ugly32464ugly32534ugly32440ugly32340ugly32501ugly718ugly425ugly1177ugly1320move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4c_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4d_0_75)) (not_occupied seg_n_n2a4d_0_75)
       (not (at-segment ?a seg_n_n2a4d_0_75)) (occupied seg_n_n2a4c_0_75)
       (not (not_occupied seg_n_n2a4c_0_75)) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a)) (at-segment ?a seg_n_n2a4c_0_75)
       (not (blocked seg_n_n2a4e_0_75 ?a)) (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action
  ugly32965ugly32341ugly31961ugly32203ugly32892ugly32720ugly1274ugly1291ugly1273ugly1371startup_seg_m_a6b_0_60_south_medium
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
  ugly32966ugly32749ugly31970ugly32643ugly32076ugly32792ugly401ugly43ugly823ugly852move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
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
  ugly32967ugly33173ugly32441ugly32644ugly32989ugly32183ugly878ugly194ugly1021ugly424startup_seg_08r_b2a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action
  ugly32968ugly32507ugly32399ugly32904ugly32480ugly32434ugly293ugly177ugly71ugly904startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly32969ugly31998ugly32124ugly32315ugly32897ugly32960ugly842ugly1033ugly1290ugly701startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly32970ugly32771ugly32506ugly32600ugly31942ugly32900ugly254ugly397ugly226ugly1119startup_seg_s_b5d_0_60_south_medium
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
  ugly32971ugly33036ugly32866ugly32266ugly32642ugly32454ugly369ugly750ugly331ugly69move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
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
  ugly32972ugly32857ugly31999ugly32385ugly32523ugly32789ugly487ugly352ugly176ugly523startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action
  ugly32973ugly32277ugly32563ugly33033ugly32774ugly33247ugly1121ugly475ugly399ugly1204move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
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
  ugly32974ugly32304ugly32817ugly32444ugly32397ugly32916ugly1289ugly65ugly937ugly1138startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly32975ugly33211ugly32844ugly32907ugly32715ugly32329ugly110ugly1223ugly1241ugly453move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_cfbe1)
       (not_blocked seg_n1_0_108 airplane_cfbe3)
       (not_blocked seg_n1_0_108 airplane_daew8)
       (not_blocked seg_n1_0_108 airplane_daew9)
       (not_blocked seg_n1_0_108 airplane_daew3)
       (not_blocked seg_n1_0_108 airplane_daewh)
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
  ugly32976ugly32604ugly33208ugly33085ugly32823ugly32911ugly1214ugly838ugly387ugly244move_seg_w1_163c_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
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
  ugly32977ugly32482ugly32470ugly32413ugly33245ugly32969ugly75ugly383ugly180ugly484move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
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
  ugly32978ugly32453ugly32144ugly32364ugly32824ugly32875ugly552ugly322ugly858ugly554startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly32979ugly32889ugly32282ugly33204ugly32233ugly33200ugly1280ugly333ugly616ugly1246startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly32980ugly31953ugly33149ugly32768ugly32922ugly32039ugly616ugly1246ugly734ugly967startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly32981ugly32202ugly32141ugly32354ugly32373ugly33029ugly950ugly556ugly380ugly599move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
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
  ugly32982ugly32504ugly32898ugly32955ugly32245ugly32063ugly715ugly361ugly856ugly1325startup_seg_s_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly32983ugly33242ugly33162ugly32327ugly32371ugly32462ugly281ugly839ugly1020ugly1373move_seg_o1_103c_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
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
  ugly32984ugly32353ugly32257ugly32195ugly32606ugly32432ugly824ugly52ugly460ugly883startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly32985ugly32816ugly32045ugly32648ugly31945ugly33286ugly651ugly277ugly483ugly654park_seg_p119_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly32986ugly32213ugly32355ugly32729ugly32740ugly33273ugly324ugly211ugly503ugly1345startup_seg_b9_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly32987ugly32086ugly33000ugly32342ugly32090ugly33270ugly378ugly1164ugly315ugly1309startup_seg_t_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a))))
 (:action
  ugly32988ugly32382ugly32132ugly33113ugly33041ugly31935ugly373ugly49ugly828ugly1216startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly32989ugly32183ugly32801ugly32116ugly33099ugly32054ugly671ugly1235ugly764ugly748startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly32990ugly33034ugly32087ugly32450ugly32381ugly33281ugly277ugly483ugly654ugly1059move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
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
  ugly32991ugly32248ugly32870ugly32459ugly32126ugly31926ugly676ugly1263ugly940ugly959startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly32992ugly32546ugly32809ugly32221ugly32431ugly32297ugly44ugly190ugly310ugly495move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
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
  ugly32993ugly32394ugly32540ugly33010ugly33003ugly32333ugly743ugly648ugly938ugly102move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
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
  ugly32994ugly32412ugly32678ugly32676ugly32621ugly32527ugly773ugly538ugly23ugly605startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly32995ugly33221ugly32978ugly32453ugly32144ugly32364ugly901ugly618ugly1052ugly163startup_seg_t_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action
  ugly32996ugly33229ugly32597ugly31932ugly32717ugly32694ugly621ugly686ugly1298ugly751startup_seg_t_b6d_0_60_south_medium
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
  ugly32997ugly33054ugly32603ugly32149ugly32418ugly33072ugly520ugly447ugly688ugly79startup_seg_t_b8b_0_60_south_medium
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
  ugly32998ugly32114ugly32303ugly32556ugly32360ugly32446ugly264ugly963ugly841ugly444park_seg_p112_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action
  ugly32999ugly33127ugly33063ugly32675ugly32698ugly32483ugly840ugly826ugly228ugly68startup_seg_t_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a))))
 (:action
  ugly33000ugly32342ugly32090ugly33270ugly32301ugly33251ugly1147ugly972ugly1256ugly297startup_seg_t_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action
  ugly33001ugly32861ugly32618ugly32831ugly32509ugly32401ugly669ugly121ugly617ugly1196startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly33002ugly32458ugly33095ugly32148ugly32798ugly32071ugly329ugly679ugly746ugly1002move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
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
  ugly33003ugly32333ugly32666ugly33045ugly32372ugly32968ugly584ugly1085ugly218ugly295startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly33004ugly32077ugly32414ugly31956ugly32759ugly33117ugly439ugly339ugly51ugly1330startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly33005ugly33057ugly32270ugly32576ugly33159ugly32964ugly541ugly271ugly1028ugly625startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly33006ugly32344ugly32212ugly31972ugly32409ugly33170ugly742ugly888ugly658ugly1104move_seg_s_b3b4c_0_140_seg_s_b3b4b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4c_0_140) (not_occupied seg_s_b3b4b_0_140)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4b_0_140 airplane_daewh)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4c_0_140)) (not_occupied seg_s_b3b4c_0_140)
       (not (at-segment ?a seg_s_b3b4c_0_140)) (occupied seg_s_b3b4b_0_140)
       (not (not_occupied seg_s_b3b4b_0_140)) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))
       (at-segment ?a seg_s_b3b4b_0_140) (not (blocked seg_s_b3b4d_0_140 ?a))
       (not_blocked seg_s_b3b4d_0_140 ?a)))
 (:action
  ugly33007ugly32914ugly32514ugly32135ugly32481ugly33213ugly834ugly111ugly1169ugly842startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly33008ugly33142ugly32525ugly33084ugly32973ugly32277ugly640ugly395ugly730ugly797move_seg_w1_c4c_0_60_seg_s5_0_94_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4c_0_60) (not_occupied seg_s5_0_94)
       (not_blocked seg_s5_0_94 airplane_cfbeg)
       (not_blocked seg_s5_0_94 airplane_cfbe1)
       (not_blocked seg_s5_0_94 airplane_cfbe3)
       (not_blocked seg_s5_0_94 airplane_daew8)
       (not_blocked seg_s5_0_94 airplane_daew9)
       (not_blocked seg_s5_0_94 airplane_daew3)
       (not_blocked seg_s5_0_94 airplane_daewh)
       (not_blocked seg_s5_0_94 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_c4c_0_60)) (not_occupied seg_w1_c4c_0_60)
       (not (at-segment ?a seg_w1_c4c_0_60)) (occupied seg_s5_0_94)
       (not (not_occupied seg_s5_0_94)) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a)) (at-segment ?a seg_s5_0_94)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (not (blocked seg_w1_c4b_0_60 ?a)) (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action
  ugly33009ugly33060ugly32498ugly33240ugly32047ugly32551ugly104ugly902ugly530ugly1140startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly33010ugly33003ugly32333ugly32666ugly33045ugly32372ugly1045ugly836ugly9ugly485startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly33011ugly32288ugly32983ugly33242ugly33162ugly32327ugly448ugly864ugly1283ugly178startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly33012ugly33214ugly31939ugly32108ugly32133ugly32903ugly107ugly849ugly540ugly450startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly33013ugly32197ugly32561ugly32839ugly32317ugly32573ugly461ugly922ugly700ugly857startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly33014ugly32092ugly33053ugly31958ugly33042ugly32222ugly1003ugly716ugly1141ugly553startup_seg_s_b4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly33015ugly32140ugly32553ugly32712ugly32970ugly32771ugly583ugly724ugly512ugly347move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a7d_0_80 airplane_daew8)
       (not_blocked seg_08l_a7d_0_80 airplane_daew9)
       (not_blocked seg_08l_a7d_0_80 airplane_daew3)
       (not_blocked seg_08l_a7d_0_80 airplane_daewh)
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
  ugly33016ugly33075ugly32334ugly32426ugly32162ugly32069ugly914ugly762ugly1013ugly1112move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_cfbe1)
       (not_blocked seg_p110_0_76 airplane_cfbe3)
       (not_blocked seg_p110_0_76 airplane_daew8)
       (not_blocked seg_p110_0_76 airplane_daew9)
       (not_blocked seg_p110_0_76 airplane_daew3)
       (not_blocked seg_p110_0_76 airplane_daewh)
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
  ugly33017ugly32234ugly32876ugly32427ugly33006ugly32344ugly289ugly1160ugly968ugly822move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_cfbe1)
       (not_blocked seg_p104_0_76 airplane_cfbe3)
       (not_blocked seg_p104_0_76 airplane_daew8)
       (not_blocked seg_p104_0_76 airplane_daew9)
       (not_blocked seg_p104_0_76 airplane_daew3)
       (not_blocked seg_p104_0_76 airplane_daewh)
       (not_blocked seg_p104_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_p104_0_76)
       (not (not_occupied seg_p104_0_76)) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a)) (at-segment ?a seg_p104_0_76)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)))
 (:action
  ugly33018ugly33062ugly33093ugly32841ugly32550ugly33120ugly205ugly350ugly422ugly199move_seg_t_b2a_0_60_seg_t_b2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60)
       (not_blocked seg_t_b2c_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2c_0_60 airplane_cfbe1)
       (not_blocked seg_t_b2c_0_60 airplane_cfbe3)
       (not_blocked seg_t_b2c_0_60 airplane_daew8)
       (not_blocked seg_t_b2c_0_60 airplane_daew9)
       (not_blocked seg_t_b2c_0_60 airplane_daew3)
       (not_blocked seg_t_b2c_0_60 airplane_daewh)
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
  ugly33019ugly32229ugly32528ugly32984ugly32353ugly32257ugly272ugly337ugly647ugly1019startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly33020ugly32403ugly33026ugly32601ugly33160ugly33097ugly992ugly1015ugly104ugly902startup_seg_t_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly33021ugly32098ugly32520ugly33131ugly32707ugly32938ugly796ugly152ugly585ugly889startup_seg_s_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action
  ugly33022ugly32884ugly32962ugly33123ugly33290ugly32521ugly446ugly559ugly40ugly1294move_seg_o1_110c_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
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
  ugly33023ugly32170ugly32242ugly32684ugly32445ugly32488ugly269ugly1114ugly960ugly672startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly33024ugly32699ugly32370ugly32251ugly33055ugly32339ugly783ugly1356ugly158ugly811move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7b_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7c_0_75)) (not_occupied seg_n_a4a7c_0_75)
       (not (at-segment ?a seg_n_a4a7c_0_75)) (occupied seg_n_a4a7b_0_75)
       (not (not_occupied seg_n_a4a7b_0_75)) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a)) (at-segment ?a seg_n_a4a7b_0_75)
       (not (blocked seg_n_a4a7d_0_75 ?a)) (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly33025ugly33279ugly32569ugly32923ugly32447ugly32826ugly810ugly1113ugly1328ugly1174startup_seg_s_b9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly33026ugly32601ugly33160ugly33097ugly32915ugly32905ugly1072ugly665ugly945ugly1079startup_seg_o1_108d_0_45_south_medium
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
  ugly33027ugly32115ugly32319ugly32886ugly33244ugly32102ugly502ugly677ugly944ugly1070startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly33028ugly32485ugly33114ugly32595ugly33108ugly32851ugly189ugly1375ugly1350ugly358startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly33029ugly32873ugly32750ugly32529ugly31930ugly32578ugly10ugly1083ugly117ugly962startup_seg_s_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action
  ugly33030ugly32748ugly32928ugly32585ugly32020ugly33192ugly785ugly886ugly587ugly533startup_seg_t_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action
  ugly33031ugly33196ugly32571ugly32910ugly33219ugly32874ugly1075ugly282ugly674ugly659move_seg_s_b6a_0_60_seg_s_b6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60)
       (not_blocked seg_s_b6c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6c_0_60 airplane_cfbe1)
       (not_blocked seg_s_b6c_0_60 airplane_cfbe3)
       (not_blocked seg_s_b6c_0_60 airplane_daew8)
       (not_blocked seg_s_b6c_0_60 airplane_daew9)
       (not_blocked seg_s_b6c_0_60 airplane_daew3)
       (not_blocked seg_s_b6c_0_60 airplane_daewh)
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
  ugly33032ugly32980ugly31953ugly33149ugly32768ugly32922ugly116ugly1074ugly635ugly1165startup_seg_m_a4c_0_60_south_medium
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
  ugly33033ugly32774ugly33247ugly33044ugly32014ugly33241ugly865ugly1037ugly1279ugly770park_seg_p133_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly33034ugly32087ugly32450ugly32381ugly33281ugly32200ugly545ugly294ugly1238ugly580move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a7c_0_60 airplane_daew8)
       (not_blocked seg_n_a7c_0_60 airplane_daew9)
       (not_blocked seg_n_a7c_0_60 airplane_daew3)
       (not_blocked seg_n_a7c_0_60 airplane_daewh)
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
  ugly33035ugly31982ugly32028ugly33272ugly32493ugly32741ugly55ugly1168ugly1077ugly1266move_seg_o1_117b_0_60_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
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
  ugly33036ugly32866ugly32266ugly32642ugly32454ugly32292ugly340ugly1284ugly1029ugly1087startup_seg_m_a9d_0_120_934_south_medium
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
  ugly33037ugly33256ugly32994ugly32412ugly32678ugly32676ugly698ugly868ugly516ugly870startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly33038ugly33031ugly33196ugly32571ugly32910ugly33219ugly951ugly992ugly1015ugly104startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action
  ugly33039ugly32966ugly32749ugly31970ugly32643ugly32076ugly869ugly855ugly1065ugly623startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly33040ugly32188ugly33073ugly33098ugly31996ugly32313ugly1182ugly596ugly933ugly650move_seg_o1_118c_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
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
  ugly33041ugly31935ugly32296ugly32442ugly33046ugly32584ugly729ugly385ugly34ugly491startup_seg_s_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly33042ugly32222ugly32926ugly32700ugly32799ugly32147ugly1158ugly1186ugly545ugly294startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly33043ugly32674ugly32225ugly32800ugly32593ugly33086ugly879ugly403ugly217ugly192move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe1)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe3)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew8)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew9)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew3)
       (not_blocked seg_m_a8d_0_120_934 airplane_daewh)
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
  ugly33044ugly32014ugly33241ugly32788ugly32567ugly32859ugly972ugly1256ugly297ugly588move_seg_s_b3b4b_0_140_seg_s_b3b4a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4b_0_140) (not_occupied seg_s_b3b4a_0_140)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbe3)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew3)
       (not_blocked seg_s_b3b4a_0_140 airplane_daewh)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b3b4b_0_140)) (not_occupied seg_s_b3b4b_0_140)
       (not (at-segment ?a seg_s_b3b4b_0_140)) (occupied seg_s_b3b4a_0_140)
       (not (not_occupied seg_s_b3b4a_0_140)) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))
       (at-segment ?a seg_s_b3b4a_0_140) (not (blocked seg_s_b3b4c_0_140 ?a))
       (not_blocked seg_s_b3b4c_0_140 ?a)))
 (:action
  ugly33045ugly32372ugly32968ugly32507ugly32399ugly32904ugly557ugly636ugly628ugly949startup_seg_08r_b9a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly33046ugly32584ugly32652ugly32990ugly33034ugly32087ugly527ugly859ugly296ugly1042move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
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
  ugly33047ugly32208ugly32029ugly32338ugly32743ugly32109ugly376ugly1051ugly290ugly561startup_seg_s_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action
  ugly33048ugly33249ugly31928ugly32918ugly32214ugly33022ugly961ugly388ugly727ugly1285startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action
  ugly33049ugly33176ugly32398ugly32411ugly32758ugly32667ugly629ugly806ugly98ugly1062startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action
  ugly33050ugly32325ugly33194ugly32570ugly32471ugly32579ugly1248ugly632ugly1370ugly24startup_seg_b5_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly33051ugly33090ugly32662ugly32138ugly32066ugly32685ugly342ugly413ugly785ugly886startup_seg_t_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly33052ugly33287ugly32309ugly32489ugly32435ugly31948ugly733ugly124ugly432ugly456startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action
  ugly33053ugly31958ugly33042ugly32222ugly32926ugly32700ugly876ugly983ugly629ugly806move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a4a_0_80 airplane_daew8)
       (not_blocked seg_08l_a4a_0_80 airplane_daew9)
       (not_blocked seg_08l_a4a_0_80 airplane_daew3)
       (not_blocked seg_08l_a4a_0_80 airplane_daewh)
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
  ugly33054ugly32603ugly32149ugly32418ugly33072ugly32443ugly1276ugly527ugly859ugly296startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly33055ugly32339ugly32706ugly33234ugly32153ugly32772ugly440ugly7ugly1055ugly747pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly33056ugly33262ugly32479ugly31944ugly32671ugly32942ugly593ugly481ugly146ugly581startup_seg_m_a8b_0_60_south_medium
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
  ugly33057ugly32270ugly32576ugly33159ugly32964ugly32464ugly611ugly804ugly947ugly1082park_seg_p134_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly33058ugly32023ugly32581ugly32331ugly31924ugly32650ugly353ugly401ugly43ugly823startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action
  ugly33059ugly33235ugly32849ugly32784ugly32836ugly32032ugly649ugly1017ugly630ugly1143startup_seg_s_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action
  ugly33060ugly32498ugly33240ugly32047ugly32551ugly32027ugly724ugly512ugly347ugly100startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33061ugly32728ugly33220ugly31938ugly33294ugly32357ugly1025ugly756ugly1293ugly1307move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
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
  ugly33062ugly33093ugly32841ugly32550ugly33120ugly32128ugly235ugly410ugly1180ugly1189startup_seg_s6_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_s_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a))))
 (:action
  ugly33063ugly32675ugly32698ugly32483ugly32763ugly32044ugly115ugly1000ugly1306ugly437startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly33064ugly33257ugly31929ugly32947ugly33107ugly32605ugly1230ugly741ugly366ugly1038startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly33065ugly31962ugly33166ugly32803ugly32577ugly32773ugly85ugly1327ugly1347ugly499move_seg_b2_1_0_80_seg_08r_b2a_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_1_0_80) (not_occupied seg_08r_b2a_0_80)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b2a_0_80 airplane_daew8)
       (not_blocked seg_08r_b2a_0_80 airplane_daew9)
       (not_blocked seg_08r_b2a_0_80 airplane_daew3)
       (not_blocked seg_08r_b2a_0_80 airplane_daewh)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_b2_1_0_80)) (not_occupied seg_b2_1_0_80)
       (not (at-segment ?a seg_b2_1_0_80)) (occupied seg_08r_b2a_0_80)
       (not (not_occupied seg_08r_b2a_0_80)) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a)) (at-segment ?a seg_08r_b2a_0_80)
       (not (blocked seg_b2_0_80 ?a)) (not_blocked seg_b2_0_80 ?a)))
 (:action
  ugly33066ugly33148ugly33261ugly32368ugly33020ugly32403ugly1103ugly148ugly256ugly131startup_seg_t_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_s_b5c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a))))
 (:action
  ugly33067ugly33178ugly33028ugly32485ugly33114ugly32595ugly1185ugly566ugly1313ugly196startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly33068ugly33145ugly32391ugly33250ugly32120ugly33183ugly292ugly1332ugly810ugly1113startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly33069ugly32536ugly32428ugly32755ugly33292ugly32151ugly1115ugly448ugly864ugly1283move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a4c_0_60 airplane_daew8)
       (not_blocked seg_n_a4c_0_60 airplane_daew9)
       (not_blocked seg_n_a4c_0_60 airplane_daew3)
       (not_blocked seg_n_a4c_0_60 airplane_daewh)
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
  ugly33070ugly33264ugly32555ugly32416ugly33106ugly32701ugly457ugly73ugly1240ugly372startup_seg_s_b3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly33071ugly32709ugly32782ugly32005ugly32702ugly32026ugly831ugly302ugly612ugly392park_seg_p151_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action
  ugly33072ugly32443ugly33199ugly32348ugly32882ugly32437ugly919ugly505ugly578ugly1363startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly33073ugly33098ugly31996ugly32313ugly33105ugly32986ugly290ugly561ugly645ugly298move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_cfbe1)
       (not_blocked seg_a2_c_0_100 airplane_cfbe3)
       (not_blocked seg_a2_c_0_100 airplane_daew8)
       (not_blocked seg_a2_c_0_100 airplane_daew9)
       (not_blocked seg_a2_c_0_100 airplane_daew3)
       (not_blocked seg_a2_c_0_100 airplane_daewh)
       (not_blocked seg_a2_c_0_100 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a_0_60)) (not_occupied seg_n_a2a_0_60)
       (not (at-segment ?a seg_n_a2a_0_60)) (occupied seg_a2_c_0_100)
       (not (not_occupied seg_a2_c_0_100)) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a)) (at-segment ?a seg_a2_c_0_100)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action
  ugly33074ugly32206ugly33209ugly32752ugly32226ugly33002ugly535ugly534ugly500ugly668startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33075ugly32334ugly32426ugly32162ugly32069ugly32837ugly150ugly570ugly942ugly1060startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33076ugly32993ugly32394ugly32540ugly33010ugly33003ugly410ugly1180ugly1189ugly692move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
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
  ugly33077ugly32843ugly32670ugly32255ugly32833ugly32497ugly108ugly429ugly1287ugly690startup_seg_t_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b_0_60)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action
  ugly33078ugly31943ugly32011ugly32838ugly32127ugly33027ugly192ugly153ugly1025ugly756startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly33079ugly32262ugly31990ugly33078ugly31943ugly32011ugly915ugly1148ugly210ugly125park_seg_p111_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action
  ugly33080ugly33018ugly33062ugly33093ugly32841ugly32550ugly1197ugly1043ugly479ugly209startup_seg_t_b6b_0_60_south_medium
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
  ugly33081ugly32419ugly33089ugly32853ugly33205ugly31971ugly1303ugly680ugly996ugly227startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly33082ugly31985ugly33071ugly32709ugly32782ugly32005ugly779ugly905ugly455ugly353move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p112_0_76)) (not_occupied seg_p112_0_76)
       (not (at-segment ?a seg_p112_0_76)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)))
 (:action
  ugly33083ugly32084ugly32408ugly32035ugly32388ugly33278ugly634ugly26ugly76ugly1146startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly33084ugly32973ugly32277ugly32563ugly33033ugly32774ugly1324ugly293ugly177ugly71startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly33085ugly32823ugly32911ugly33137ugly32669ugly32436ugly868ugly516ugly870ugly1280move_seg_o1_103b_0_60_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
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
  ugly33086ugly32802ugly32726ugly32190ugly32517ugly31995ugly467ugly1312ugly1128ugly321startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly33087ugly33186ugly32931ugly32639ugly32680ugly32929ugly766ugly641ugly1144ugly1105move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe3)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3a_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3b_0_75)) (not_occupied seg_n_a2a3b_0_75)
       (not (at-segment ?a seg_n_a2a3b_0_75)) (occupied seg_n_a2a3a_0_75)
       (not (not_occupied seg_n_a2a3a_0_75)) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a)) (at-segment ?a seg_n_a2a3a_0_75)
       (not (blocked seg_n_a2a3c_0_75 ?a)) (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action
  ugly33088ugly32185ugly32474ugly32346ugly32865ugly32463ugly477ugly929ugly419ugly737startup_seg_o1_109b_0_60_south_medium
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
  ugly33089ugly32853ugly33205ugly31971ugly33226ugly33136ugly722ugly1073ugly890ugly604startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly33090ugly32662ugly32138ugly32066ugly32685ugly32265ugly166ugly642ugly95ugly1176move_seg_s_b5b8a_0_135_seg_s_b5b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8a_0_135) (not_occupied seg_s_b5b_0_60)
       (not_blocked seg_s_b5b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5b_0_60 airplane_cfbe1)
       (not_blocked seg_s_b5b_0_60 airplane_cfbe3)
       (not_blocked seg_s_b5b_0_60 airplane_daew8)
       (not_blocked seg_s_b5b_0_60 airplane_daew9)
       (not_blocked seg_s_b5b_0_60 airplane_daew3)
       (not_blocked seg_s_b5b_0_60 airplane_daewh)
       (not_blocked seg_s_b5b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b5b8a_0_135)) (not_occupied seg_s_b5b8a_0_135)
       (not (at-segment ?a seg_s_b5b8a_0_135)) (occupied seg_s_b5b_0_60)
       (not (not_occupied seg_s_b5b_0_60)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (at-segment ?a seg_s_b5b_0_60)
       (not (blocked seg_s_b5b8b_0_135 ?a))
       (not_blocked seg_s_b5b8b_0_135 ?a)))
 (:action
  ugly33091ugly32237ugly32492ugly32210ugly32627ugly32640ugly90ugly119ugly703ugly363startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly33092ugly32207ugly32260ugly33009ugly33060ugly32498ugly1317ugly843ugly813ugly866startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly33093ugly32841ugly32550ugly33120ugly32128ugly32158ugly1199ugly608ugly774ugly789startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action
  ugly33094ugly32813ugly32273ugly32285ugly32682ugly32469ugly482ugly592ugly1268ugly139startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly33095ugly32148ugly32798ugly32071ugly32252ugly33077ugly920ugly1269ugly600ugly1361startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly33096ugly33233ugly31925ugly32142ugly32258ugly32150ugly1351ugly276ugly975ugly720startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly33097ugly32915ugly32905ugly32995ugly33221ugly32978ugly530ugly1140ugly1102ugly713startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33098ugly31996ugly32313ugly33105ugly32986ugly32213ugly432ugly456ugly1135ugly848startup_seg_08r_b10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly33099ugly32054ugly32594ugly32767ugly32230ugly31969ugly371ugly978ugly999ugly1308startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33100ugly32724ugly31991ugly32965ugly32341ugly31961ugly280ugly1158ugly1186ugly545move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
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
  ugly33101ugly33102ugly33154ugly32560ugly32977ugly32482ugly547ugly1130ugly541ugly271park_seg_p116_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action
  ugly33102ugly33154ugly32560ugly32977ugly32482ugly32470ugly490ugly232ugly683ugly1startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly33103ugly32828ugly32448ugly33269ugly32891ugly32289ugly1159ugly193ugly1132ugly267startup_seg_t_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action
  ugly33104ugly32722ugly32328ugly32613ugly32586ugly32097ugly259ugly1111ugly991ugly1194startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly33105ugly32986ugly32213ugly32355ugly32729ugly32740ugly1350ugly358ugly1076ugly17move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
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
  ugly33106ugly32701ugly32380ugly33201ugly32275ugly33129ugly1051ugly290ugly561ugly645move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
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
  ugly33107ugly32605ugly33153ugly33147ugly32012ugly32461ugly1283ugly178ugly1107ugly510startup_seg_s_b4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action
  ugly33108ugly32851ugly32112ugly32953ugly32598ugly32037ugly1135ugly848ugly490ugly232startup_seg_s_b7d_0_60_south_medium
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
  ugly33109ugly32010ugly33155ugly32058ugly33285ugly33296ugly77ugly360ugly791ugly1339startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly33110ugly32688ugly33019ugly32229ugly32528ugly32984ugly430ugly477ugly929ugly419startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly33111ugly33128ugly33180ugly32860ugly32143ugly32249ugly1189ugly692ugly261ugly514startup_seg_t_b5b_0_60_south_medium
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
  ugly33112ugly32727ugly32129ugly33064ugly33257ugly31929ugly1024ugly275ugly875ugly42move_seg_w1_152c_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
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
  ugly33113ugly33041ugly31935ugly32296ugly32442ugly33046ugly661ugly379ugly564ugly976startup_seg_s_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action
  ugly33114ugly32595ugly33108ugly32851ugly32112ugly32953ugly675ugly286ugly964ugly253move_seg_s_b4b6b_0_135_seg_s_b4b6a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6b_0_135) (not_occupied seg_s_b4b6a_0_135)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbe1)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbe3)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew9)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew3)
       (not_blocked seg_s_b4b6a_0_135 airplane_daewh)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b4b6b_0_135)) (not_occupied seg_s_b4b6b_0_135)
       (not (at-segment ?a seg_s_b4b6b_0_135)) (occupied seg_s_b4b6a_0_135)
       (not (not_occupied seg_s_b4b6a_0_135)) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))
       (at-segment ?a seg_s_b4b6a_0_135) (not (blocked seg_s_b4b6c_0_130 ?a))
       (not_blocked seg_s_b4b6c_0_130 ?a)))
 (:action
  ugly33115ugly32672ugly32367ugly32250ugly33079ugly32262ugly67ugly60ugly513ugly725startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly33116ugly32009ugly32075ugly32793ugly31992ugly32085ugly368ugly1178ugly345ugly731startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly33117ugly32362ugly32739ugly32335ugly33096ugly33233ugly2ugly1187ugly249ugly33move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p162_0_75)) (not_occupied seg_p162_0_75)
       (not (at-segment ?a seg_p162_0_75)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action
  ugly33118ugly32223ugly32169ugly33168ugly31952ugly32101ugly253ugly41ugly812ugly1209move_seg_08r_b4c_0_80_seg_08r_b4b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b4c_0_80) (not_occupied seg_08r_b4b_0_80)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b4b_0_80 airplane_daew8)
       (not_blocked seg_08r_b4b_0_80 airplane_daew9)
       (not_blocked seg_08r_b4b_0_80 airplane_daew3)
       (not_blocked seg_08r_b4b_0_80 airplane_daewh)
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
  ugly33119ugly32079ugly32927ugly33059ugly33235ugly32849ugly861ugly1349ugly694ugly598move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
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
  ugly33120ugly32128ugly32158ugly33122ugly32001ugly33004ugly154ugly1016ugly36ugly517startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly33121ugly32564ugly32939ugly32526ugly31993ugly32608ugly364ugly1024ugly275ugly875move_seg_s_b4b6a_0_135_seg_s_b4a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6a_0_135) (not_occupied seg_s_b4a_0_60)
       (not_blocked seg_s_b4a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b4a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b4a_0_60 airplane_daew8)
       (not_blocked seg_s_b4a_0_60 airplane_daew9)
       (not_blocked seg_s_b4a_0_60 airplane_daew3)
       (not_blocked seg_s_b4a_0_60 airplane_daewh)
       (not_blocked seg_s_b4a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b4b6a_0_135)) (not_occupied seg_s_b4b6a_0_135)
       (not (at-segment ?a seg_s_b4b6a_0_135)) (occupied seg_s_b4a_0_60)
       (not (not_occupied seg_s_b4a_0_60)) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (at-segment ?a seg_s_b4a_0_60)
       (not (blocked seg_s_b4b6b_0_135 ?a))
       (not_blocked seg_s_b4b6b_0_135 ?a)))
 (:action
  ugly33122ugly32001ugly33004ugly32077ugly32414ugly31956ugly836ugly9ugly485ugly784move_seg_o1_c3c_0_48_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
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
  ugly33123ugly33290ugly32521ugly32369ugly33210ugly32293ugly1009ugly584ugly1085ugly218move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
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
  ugly33124ugly32048ugly33067ugly33178ugly33028ugly32485ugly1191ugly54ugly678ugly1272startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly33125ugly32017ugly32651ugly33284ugly32614ugly31988ugly1353ugly169ugly749ugly1217startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly33126ugly33087ugly33186ugly32931ugly32639ugly32680ugly1006ugly438ugly18ugly1228startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly33127ugly33063ugly32675ugly32698ugly32483ugly32763ugly121ugly617ugly1196ugly1147startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly33128ugly33180ugly32860ugly32143ugly32249ugly33112ugly804ugly947ugly1082ugly995startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly33129ugly32974ugly32304ugly32817ugly32444ugly32397ugly993ugly783ugly1356ugly158startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly33130ugly32944ugly32522ugly32958ugly33283ugly32549ugly838ugly387ugly244ugly243park_seg_p103_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly33131ugly32707ugly32938ugly32719ugly31964ugly33252ugly492ugly980ugly958ugly575startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly33132ugly32781ugly33007ugly32914ugly32514ugly32135ugly558ugly1092ugly1089ugly896move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
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
  ugly33133ugly33297ugly32205ugly32392ugly32936ugly32901ugly338ugly1202ugly833ugly768move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe3)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8b_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8c_0_75)) (not_occupied seg_n_a6a8c_0_75)
       (not (at-segment ?a seg_n_a6a8c_0_75)) (occupied seg_n_a6a8b_0_75)
       (not (not_occupied seg_n_a6a8b_0_75)) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a)) (at-segment ?a seg_n_a6a8b_0_75)
       (not (blocked seg_n_a6a8d_0_75 ?a)) (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action
  ugly33134ugly32134ugly32945ugly32438ugly33138ugly33158ugly853ugly754ugly1172ugly1374startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly33135ugly32002ugly32379ugly32695ugly32979ugly32889ugly359ugly258ugly1265ugly1322startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly33136ugly32645ugly32402ugly32194ugly32902ugly32832ugly95ugly1176ugly116ugly1074startup_seg_s_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action
  ugly33137ugly32669ugly32436ugly32791ugly33207ugly32632ugly1069ugly715ugly361ugly856startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly33138ugly33158ugly32776ugly32565ugly32198ugly33011ugly365ugly710ugly439ugly339move_seg_s_b2b3c_0_140_seg_s_b2b3b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3c_0_140) (not_occupied seg_s_b2b3b_0_140)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbe1)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbe3)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew3)
       (not_blocked seg_s_b2b3b_0_140 airplane_daewh)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b3c_0_140)) (not_occupied seg_s_b2b3c_0_140)
       (not (at-segment ?a seg_s_b2b3c_0_140)) (occupied seg_s_b2b3b_0_140)
       (not (not_occupied seg_s_b2b3b_0_140)) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))
       (at-segment ?a seg_s_b2b3b_0_140) (not (blocked seg_s_b3c_0_60 ?a))
       (not_blocked seg_s_b3c_0_60 ?a)))
 (:action
  ugly33139ugly32961ugly32770ugly32624ugly33132ugly32781ugly1084ugly552ugly322ugly858startup_seg_t_b6d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action
  ugly33140ugly32021ugly32881ugly33015ugly32140ugly32553ugly789ugly986ugly1257ugly393move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
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
  ugly33141ugly32487ugly33163ugly31946ugly32503ugly32173ugly305ugly755ugly118ugly611startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly33142ugly32525ugly33084ugly32973ugly32277ugly32563ugly1110ugly613ugly332ugly1321startup_seg_t_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action
  ugly33143ugly31980ugly33146ugly32760ugly32533ugly32991ugly325ugly307ugly880ugly970move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
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
  ugly33144ugly32713ugly33037ugly33256ugly32994ugly32412ugly755ugly118ugly611ugly804startup_seg_o1_109a_0_34_south_medium
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
  ugly33145ugly32391ugly33250ugly32120ugly33183ugly32215ugly957ugly1337ugly621ugly686startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly33146ugly32760ugly32533ugly32991ugly32248ugly32870ugly536ugly799ugly543ugly168startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly33147ugly32012ugly32461ugly33206ugly33065ugly31962ugly1243ugly524ugly934ugly535startup_seg_t_b4c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4c_0_120_934)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action
  ugly33148ugly33261ugly32368ugly33020ugly32403ugly33026ugly678ugly1272ugly743ugly648startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly33149ugly32768ugly32922ugly32039ugly32539ugly32610ugly344ugly853ugly754ugly1172startup_seg_s_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action
  ugly33150ugly32308ugly33228ugly32375ugly32954ugly32818ugly1138ugly1244ugly832ugly1188startup_seg_t_b7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_t_b7b_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly33151ugly32078ugly32361ugly31936ugly32858ugly33254ugly158ugly811ugly175ugly1125startup_seg_t_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action
  ugly33152ugly33151ugly32078ugly32361ugly31936ugly32858ugly1331ugly457ugly73ugly1240move_seg_o1_109d_0_45_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
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
  ugly33153ugly33147ugly32012ugly32461ugly33206ugly33065ugly39ugly1359ugly761ugly376startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly33154ugly32560ugly32977ugly32482ugly32470ugly32413ugly1322ugly739ugly224ugly807startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly33155ugly32058ugly33285ugly33296ugly32000ugly32156ugly244ugly243ugly907ugly222startup_seg_c4_s6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly33156ugly33115ugly32672ugly32367ugly32250ugly33079ugly339ugly51ugly1330ugly1311move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
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
  ugly33157ugly32705ugly32472ugly32376ugly33227ugly32612ugly814ugly284ugly515ugly305startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly33158ugly32776ugly32565ugly32198ugly33011ugly32288ugly1060ugly772ugly850ugly1139move_seg_w1_164a_0_34_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
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
  ugly33159ugly32964ugly32464ugly32534ugly32440ugly32340ugly578ugly1363ugly825ugly1355move_seg_08r_b9c_0_80_seg_09r_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b9c_0_80) (not_occupied seg_09r_0_80)
       (not_blocked seg_09r_0_80 airplane_cfbeg)
       (not_blocked seg_09r_0_80 airplane_cfbe1)
       (not_blocked seg_09r_0_80 airplane_cfbe3)
       (not_blocked seg_09r_0_80 airplane_daew8)
       (not_blocked seg_09r_0_80 airplane_daew9)
       (not_blocked seg_09r_0_80 airplane_daew3)
       (not_blocked seg_09r_0_80 airplane_daewh)
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
  ugly33160ugly33097ugly32915ugly32905ugly32995ugly33221ugly1055ugly747ugly445ugly1131startup_seg_m_a6d_0_120_934_south_medium
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
  ugly33161ugly32924ugly32659ugly33121ugly32564ugly32939ugly603ugly463ugly573ugly918startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly33162ugly32327ugly32371ugly32462ugly32204ugly32209ugly50ugly357ugly122ugly1305move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
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
  ugly33163ugly31946ugly32503ugly32173ugly32228ugly32697ugly195ugly738ugly897ugly597takeoff_seg_08l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action
  ugly33164ugly32693ugly33103ugly32828ugly32448ugly33269ugly968ugly822ugly342ugly413startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly33165ugly33100ugly32724ugly31991ugly32965ugly32341ugly38ugly167ugly794ugly231move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p164_0_75)) (not_occupied seg_p164_0_75)
       (not (at-segment ?a seg_p164_0_75)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action
  ugly33166ugly32803ugly32577ugly32773ugly32008ugly32725ugly529ugly829ugly816ugly402startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly33167ugly32283ugly33092ugly32207ugly32260ugly33009ugly1137ugly174ugly6ugly1200startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly33168ugly31952ugly32101ugly32176ugly32467ugly33225ugly36ugly517ugly879ugly403move_seg_w1_153b_0_45_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
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
  ugly33169ugly33216ugly32583ugly32780ugly32302ugly32917ugly1012ugly693ugly1352ugly1044move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe3)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew9)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
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
  ugly33170ugly32665ugly32620ugly33217ugly33246ugly32912ugly860ugly390ugly1103ugly148move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
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
  ugly33171ugly31963ugly32264ugly33169ugly33216ugly32583ugly857ugly1080ugly1100ugly472move_seg_w1_154c_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
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
  ugly33172ugly32321ugly32756ugly32430ugly32164ugly32383ugly383ugly180ugly484ugly370startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly33173ugly32441ugly32644ugly32989ugly32183ugly32801ugly193ugly1132ugly267ugly586park_seg_p118_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly33174ugly32721ugly32193ugly32731ugly32145ugly32238ugly1335ugly994ugly1090ugly208move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_cfbe1)
       (not_blocked seg_p153_0_75 airplane_cfbe3)
       (not_blocked seg_p153_0_75 airplane_daew8)
       (not_blocked seg_p153_0_75 airplane_daew9)
       (not_blocked seg_p153_0_75 airplane_daew3)
       (not_blocked seg_p153_0_75 airplane_daewh)
       (not_blocked seg_p153_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_p153_0_75)
       (not (not_occupied seg_p153_0_75)) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a)) (at-segment ?a seg_p153_0_75)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)))
 (:action
  ugly33175ugly33091ugly32237ugly32492ugly32210ugly32627ugly717ugly719ugly468ugly1097move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe3)
       (not_blocked seg_n_n2b_0_60 airplane_daew8)
       (not_blocked seg_n_n2b_0_60 airplane_daew9)
       (not_blocked seg_n_n2b_0_60 airplane_daew3)
       (not_blocked seg_n_n2b_0_60 airplane_daewh)
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
  ugly33176ugly32398ugly32411ugly32758ugly32667ugly32552ugly756ugly1293ugly1307ugly274move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4e_0_75 airplane_daewh)
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
  ugly33177ugly32677ugly32502ugly32615ugly32106ugly32764ugly321ugly882ugly440ugly7startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly33178ugly33028ugly32485ugly33114ugly32595ugly33108ugly928ugly14ugly375ugly728move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe3)
       (not_blocked seg_n_a6c_0_60 airplane_daew8)
       (not_blocked seg_n_a6c_0_60 airplane_daew9)
       (not_blocked seg_n_a6c_0_60 airplane_daew3)
       (not_blocked seg_n_a6c_0_60 airplane_daewh)
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
  ugly33179ugly32486ugly32139ugly32278ugly33135ugly32002ugly456ugly1135ugly848ugly490move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_cfbe1)
       (not_blocked seg_p161_0_75 airplane_cfbe3)
       (not_blocked seg_p161_0_75 airplane_daew8)
       (not_blocked seg_p161_0_75 airplane_daew9)
       (not_blocked seg_p161_0_75 airplane_daew3)
       (not_blocked seg_p161_0_75 airplane_daewh)
       (not_blocked seg_p161_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_p161_0_75)
       (not (not_occupied seg_p161_0_75)) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a)) (at-segment ?a seg_p161_0_75)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly33180ugly32860ugly32143ugly32249ugly33112ugly32727ugly206ugly1007ugly1086ugly15startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly33181ugly33282ugly32259ugly32602ugly32956ugly32178ugly898ugly94ugly733ugly124move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_cfbe1)
       (not_blocked seg_p118_0_76 airplane_cfbe3)
       (not_blocked seg_p118_0_76 airplane_daew8)
       (not_blocked seg_p118_0_76 airplane_daew9)
       (not_blocked seg_p118_0_76 airplane_daew3)
       (not_blocked seg_p118_0_76 airplane_daewh)
       (not_blocked seg_p118_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_p118_0_76)
       (not (not_occupied seg_p118_0_76)) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a)) (at-segment ?a seg_p118_0_76)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly33182ugly32868ugly32899ugly32286ugly32064ugly33275ugly1151ugly946ugly1078ugly191move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a2b_0_80 airplane_daew8)
       (not_blocked seg_08l_a2b_0_80 airplane_daew9)
       (not_blocked seg_08l_a2b_0_80 airplane_daew3)
       (not_blocked seg_08l_a2b_0_80 airplane_daewh)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe2))
  :effect
  (and (not (occupied seg_a2_a_0_90)) (not_occupied seg_a2_a_0_90)
       (not (at-segment ?a seg_a2_a_0_90)) (occupied seg_08l_a2b_0_80)
       (not (not_occupied seg_08l_a2b_0_80)) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a)) (at-segment ?a seg_08l_a2b_0_80)
       (not (blocked seg_a2_b_0_90 ?a)) (not_blocked seg_a2_b_0_90 ?a)))
 (:action
  ugly33183ugly32215ugly32880ugly32690ugly32268ugly32107ugly1026ugly704ugly1005ugly803startup_seg_s_b3a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly33184ugly32056ugly32131ugly32180ugly32269ugly33150ugly385ugly34ugly491ugly718move_seg_o1_117c_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
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
  ugly33185ugly33223ugly32070ugly32535ugly32878ugly32298ugly66ugly1214ugly838ugly387move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_cfbe1)
       (not_blocked seg_p163_0_75 airplane_cfbe3)
       (not_blocked seg_p163_0_75 airplane_daew8)
       (not_blocked seg_p163_0_75 airplane_daew9)
       (not_blocked seg_p163_0_75 airplane_daew3)
       (not_blocked seg_p163_0_75 airplane_daewh)
       (not_blocked seg_p163_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_p163_0_75)
       (not (not_occupied seg_p163_0_75)) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a)) (at-segment ?a seg_p163_0_75)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)))
 (:action
  ugly33186ugly32931ugly32639ugly32680ugly32929ugly32689ugly645ugly298ugly88ugly313move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
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
  ugly33187ugly32274ugly32421ugly31977ugly32952ugly32186ugly1107ugly510ugly662ugly48park_seg_p153_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly33188ugly32123ugly33263ugly32378ugly32152ugly32455ugly873ugly722ugly1073ugly890startup_seg_t_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action
  ugly33189ugly32943ugly33139ugly32961ugly32770ugly32624ugly1209ugly66ugly1214ugly838move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_cfbe1)
       (not_blocked seg_p133_0_75 airplane_cfbe3)
       (not_blocked seg_p133_0_75 airplane_daew8)
       (not_blocked seg_p133_0_75 airplane_daew9)
       (not_blocked seg_p133_0_75 airplane_daew3)
       (not_blocked seg_p133_0_75 airplane_daewh)
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
  ugly33190ugly32537ugly32243ugly32806ugly33268ugly32211ugly1254ugly1267ugly1050ugly1137move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7c_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7d_0_75)) (not_occupied seg_n_a4a7d_0_75)
       (not (at-segment ?a seg_n_a4a7d_0_75)) (occupied seg_n_a4a7c_0_75)
       (not (not_occupied seg_n_a4a7c_0_75)) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a)) (at-segment ?a seg_n_a4a7c_0_75)
       (not (blocked seg_n_a4a7e_0_75 ?a)) (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action
  ugly33191ugly33076ugly32993ugly32394ugly32540ugly33010ugly1080ugly1100ugly472ugly225move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_cfbe1)
       (not_blocked seg_p107_0_76 airplane_cfbe3)
       (not_blocked seg_p107_0_76 airplane_daew8)
       (not_blocked seg_p107_0_76 airplane_daew9)
       (not_blocked seg_p107_0_76 airplane_daew3)
       (not_blocked seg_p107_0_76 airplane_daewh)
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
  ugly33192ugly32708ugly32906ugly32271ugly32867ugly33277ugly702ugly130ugly1369ugly87move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
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
  ugly33193ugly32366ugly32100ugly32785ugly32967ugly33173ugly518ugly251ugly831ugly302startup_seg_t_b9c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9c_0_120_934)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly33194ugly32570ugly32471ugly32579ugly33171ugly31963ugly341ugly53ugly892ugly206park_seg_p112_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly33195ugly33289ugly32985ugly32816ugly32045ugly32648ugly22ugly1084ugly552ugly322startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33196ugly32571ugly32910ugly33219ugly32874ugly32998ugly191ugly91ugly736ugly204startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33197ugly32049ugly33141ugly32487ugly33163ugly31946ugly580ugly170ugly830ugly341move_seg_s_b2b3a_0_140_seg_s_b2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3a_0_140) (not_occupied seg_s_b2a_0_60)
       (not_blocked seg_s_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2a_0_60 airplane_cfbe1)
       (not_blocked seg_s_b2a_0_60 airplane_cfbe3)
       (not_blocked seg_s_b2a_0_60 airplane_daew8)
       (not_blocked seg_s_b2a_0_60 airplane_daew9)
       (not_blocked seg_s_b2a_0_60 airplane_daew3)
       (not_blocked seg_s_b2a_0_60 airplane_daewh)
       (not_blocked seg_s_b2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b2b3a_0_140)) (not_occupied seg_s_b2b3a_0_140)
       (not (at-segment ?a seg_s_b2b3a_0_140)) (occupied seg_s_b2a_0_60)
       (not (not_occupied seg_s_b2a_0_60)) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a)) (at-segment ?a seg_s_b2a_0_60)
       (not (blocked seg_s_b2b3b_0_140 ?a))
       (not_blocked seg_s_b2b3b_0_140 ?a)))
 (:action
  ugly33198ugly33161ugly32924ugly32659ugly33121ugly32564ugly1016ugly36ugly517ugly879move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_cfbe1)
       (not_blocked seg_c3_b_0_80 airplane_cfbe3)
       (not_blocked seg_c3_b_0_80 airplane_daew8)
       (not_blocked seg_c3_b_0_80 airplane_daew9)
       (not_blocked seg_c3_b_0_80 airplane_daew3)
       (not_blocked seg_c3_b_0_80 airplane_daewh)
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
  ugly33199ugly32348ugly32882ugly32437ugly32842ugly33048ugly1326ugly583ugly724ugly512move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_c2_b_0_80)) (not_occupied seg_c2_b_0_80)
       (not (at-segment ?a seg_c2_b_0_80)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c2_a_0_80 ?a)) (not_blocked seg_c2_a_0_80 ?a)))
 (:action
  ugly33200ugly33203ugly32439ugly32805ugly32590ugly33218ugly740ugly544ugly745ugly223park_seg_p142_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action
  ugly33201ugly32275ugly33129ugly32974ugly32304ugly32817ugly521ugly1009ugly584ugly1085move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
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
  ugly33202ugly32562ugly33133ugly33297ugly32205ugly32392ugly1013ugly1112ugly381ugly1063move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p153_0_75)) (not_occupied seg_p153_0_75)
       (not (at-segment ?a seg_p153_0_75)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action
  ugly33203ugly32439ugly32805ugly32590ugly33218ugly32663ugly1101ugly717ugly719ugly468startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action
  ugly33204ugly32233ugly33200ugly33203ugly32439ugly32805ugly667ugly787ugly336ugly74startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly33205ugly31971ugly33226ugly33136ugly32645ugly32402ugly271ugly1028ugly625ugly1252move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
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
  ugly33206ugly33065ugly31962ugly33166ugly32803ugly32577ugly850ugly1139ugly29ugly671startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly33207ugly32632ugly32992ugly32546ugly32809ugly32221ugly508ugly242ugly1026ugly704startup_seg_o1_c3d_0_60_south_medium
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
  ugly33208ugly33085ugly32823ugly32911ugly33137ugly32669ugly513ugly725ugly1047ugly159move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
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
  ugly33209ugly32752ugly32226ugly33002ugly32458ugly33095ugly225ugly351ugly973ugly355move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
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
  ugly33210ugly32293ugly32932ugly32236ugly32575ugly32055ugly1052ugly163ugly496ugly233startup_seg_t_b8c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action
  ugly33211ugly32844ugly32907ugly32715ugly32329ugly32033ugly1272ugly743ugly648ugly938move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe1)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe3)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew8)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew9)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew3)
       (not_blocked seg_08l_a7a9_0_270 airplane_daewh)
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
  ugly33212ugly32326ugly32336ugly32877ugly32794ugly32393ugly1195ugly1295ugly525ugly1343move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a2b_0_60 airplane_daew8)
       (not_blocked seg_n_a2b_0_60 airplane_daew9)
       (not_blocked seg_n_a2b_0_60 airplane_daew3)
       (not_blocked seg_n_a2b_0_60 airplane_daewh)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a2a3a_0_75)) (not_occupied seg_n_a2a3a_0_75)
       (not (at-segment ?a seg_n_a2a3a_0_75)) (occupied seg_n_a2b_0_60)
       (not (not_occupied seg_n_a2b_0_60)) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a)) (at-segment ?a seg_n_a2b_0_60)
       (not (blocked seg_n_a2a3b_0_75 ?a)) (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action
  ugly33213ugly32757ugly32478ugly32596ugly32290ugly32862ugly763ugly250ugly1152ugly854pushback_seg_w1_163b_0_45_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly33214ugly31939ugly32108ugly32133ugly32903ugly32030ugly151ugly903ugly39ugly1359park_seg_p142_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly33215ugly32559ugly32094ugly33243ugly32386ugly33080ugly1095ugly871ugly501ugly969move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
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
  ugly33216ugly32583ugly32780ugly32302ugly32917ugly32935ugly1370ugly24ugly474ugly1277move_seg_b8_b_1_0_80_6226_seg_b8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_1_0_80_6226) (not_occupied seg_b8_b_0_80_6226)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbe1)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbe3)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew9)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew3)
       (not_blocked seg_b8_b_0_80_6226 airplane_daewh)
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
  ugly33217ugly33246ugly32912ugly32783ugly32736ugly32655ugly1065ugly623ugly1110ugly613move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p103_0_76)) (not_occupied seg_p103_0_76)
       (not (at-segment ?a seg_p103_0_76)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action
  ugly33218ugly32663ugly33024ugly32699ugly32370ugly32251ugly1132ugly267ugly586ugly1048startup_seg_s_b4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly33219ugly32874ugly32998ugly32114ugly32303ugly32556ugly437ugly778ugly819ugly92startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly33220ugly31938ugly33294ugly32357ugly32948ugly32869ugly1266ugly423ugly1066ugly1124startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly33221ugly32978ugly32453ugly32144ugly32364ugly32824ugly952ugly1133ugly921ugly924pushback_seg_o1_108d_0_45_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly33222ugly31947ugly32323ugly33047ugly32208ugly32029ugly415ugly356ugly603ugly463startup_seg_t_b5d_0_60_south_medium
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
  ugly33223ugly32070ugly32535ugly32878ugly32298ugly31989ugly737ugly953ugly928ugly14move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_cfbe1)
       (not_blocked seg_p132_0_75 airplane_cfbe3)
       (not_blocked seg_p132_0_75 airplane_daew8)
       (not_blocked seg_p132_0_75 airplane_daew9)
       (not_blocked seg_p132_0_75 airplane_daew3)
       (not_blocked seg_p132_0_75 airplane_daewh)
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
  ugly33224ugly33198ugly33161ugly32924ugly32659ugly33121ugly641ugly1144ugly1105ugly85startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly33225ugly31959ugly32582ugly32654ugly32196ugly32981ugly279ugly396ugly101ugly696startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly33226ugly33136ugly32645ugly32402ugly32194ugly32902ugly909ugly977ugly362ugly518move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
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
  ugly33227ugly32612ugly32737ugly32060ugly32738ugly32476ugly63ugly1299ugly1270ugly771startup_seg_t_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly33228ugly32375ugly32954ugly32818ugly33061ugly32728ugly1297ugly404ugly1093ugly323move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe3)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7d_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7e_0_75)) (not_occupied seg_n_a4a7e_0_75)
       (not (at-segment ?a seg_n_a4a7e_0_75)) (occupied seg_n_a4a7d_0_75)
       (not (not_occupied seg_n_a4a7d_0_75)) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a)) (at-segment ?a seg_n_a4a7d_0_75)
       (not (blocked seg_n_a4a7f_0_75 ?a)) (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action
  ugly33229ugly32597ugly31932ugly32717ugly32694ugly32544ugly932ugly987ugly107ugly849startup_seg_t_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly33230ugly32804ugly32795ugly33253ugly33032ugly32980ugly30ugly846ugly214ugly643move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p163_0_75)) (not_occupied seg_p163_0_75)
       (not (at-segment ?a seg_p163_0_75)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly33231ugly33238ugly32634ugly32224ugly32683ugly32827ugly693ugly1352ugly1044ugly142move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
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
  ugly33232ugly32015ugly32227ugly31997ugly31957ugly32053ugly713ugly1040ugly273ugly936park_seg_p101_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly33233ugly31925ugly32142ugly32258ugly32150ugly33274ugly812ugly1209ugly66ugly1214startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33234ugly32153ugly32772ugly32363ugly31954ugly32587ugly821ugly1123ugly1357ugly702move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe3)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
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
  ugly33235ugly32849ugly32784ugly32836ugly32032ugly32572ugly1264ugly144ugly207ugly1348startup_seg_s_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly33236ugly32281ugly33101ugly33102ugly33154ugly32560ugly1054ugly867ugly893ugly1289move_seg_08r_b3b4_0_520_seg_08r_b4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3b4_0_520) (not_occupied seg_08r_b4c_0_80)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b4c_0_80 airplane_daew8)
       (not_blocked seg_08r_b4c_0_80 airplane_daew9)
       (not_blocked seg_08r_b4c_0_80 airplane_daew3)
       (not_blocked seg_08r_b4c_0_80 airplane_daewh)
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
  ugly33237ugly32538ugly33023ugly32170ugly32242ugly32684ugly522ugly458ugly476ugly1157move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe3)
       (not_blocked seg_n_n2a_0_60 airplane_daew8)
       (not_blocked seg_n_n2a_0_60 airplane_daew9)
       (not_blocked seg_n_n2a_0_60 airplane_daew3)
       (not_blocked seg_n_n2a_0_60 airplane_daewh)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4a_0_70)) (not_occupied seg_n_n2a4a_0_70)
       (not (at-segment ?a seg_n_n2a4a_0_70)) (occupied seg_n_n2a_0_60)
       (not (not_occupied seg_n_n2a_0_60)) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (at-segment ?a seg_n_n2a_0_60)
       (not (blocked seg_n_n2a4b_0_75 ?a)) (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action
  ugly33238ugly32634ugly32224ugly32683ugly32827ugly32616ugly734ugly967ugly782ugly1368startup_seg_s_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a))))
 (:action
  ugly33239ugly32088ugly32345ugly32161ugly32633ugly32681ugly433ugly1067ugly1205ugly344startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly33240ugly32047ugly32551ugly32027ugly32647ugly32554ugly1259ugly531ugly909ugly977move_seg_o1_108c_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
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
  ugly33241ugly32788ugly32567ugly32859ugly32895ugly32714ugly32ugly900ugly705ugly844startup_seg_t_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action
  ugly33242ugly33162ugly32327ugly32371ugly32462ugly32204ugly286ugly964ugly253ugly41startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly33243ugly32386ugly33080ugly33018ugly33062ugly33093ugly918ugly1314ugly154ugly1016move_seg_s_b6b7b_0_140_seg_s_b6b7a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7b_0_140) (not_occupied seg_s_b6b7a_0_140)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbe1)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbe3)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew9)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew3)
       (not_blocked seg_s_b6b7a_0_140 airplane_daewh)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbe2))
  :effect
  (and (not (occupied seg_s_b6b7b_0_140)) (not_occupied seg_s_b6b7b_0_140)
       (not (at-segment ?a seg_s_b6b7b_0_140)) (occupied seg_s_b6b7a_0_140)
       (not (not_occupied seg_s_b6b7a_0_140)) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))
       (at-segment ?a seg_s_b6b7a_0_140) (not (blocked seg_s_b7d_0_60 ?a))
       (not_blocked seg_s_b7d_0_60 ?a)))
 (:action
  ugly33244ugly32102ugly32425ugly32239ugly32137ugly32646ugly249ugly33ugly234ugly1208move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
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
  ugly33245ugly32969ugly31998ugly32124ugly32315ugly32897ugly1037ugly1279ugly770ugly981move_seg_o1_108b_0_60_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe3)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
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
  ugly33246ugly32912ugly32783ugly32736ugly32655ugly32988ugly459ugly498ugly1218ugly1122move_seg_w1_141c_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe3)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
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
  ugly33247ugly33044ugly32014ugly33241ugly32788ugly32567ugly936ugly885ugly1098ugly1153startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly33248ugly32136ugly32096ugly32531ugly32065ugly32628ugly14ugly375ugly728ugly164move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
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
  ugly33249ugly31928ugly32918ugly32214ugly33022ugly32884ugly1039ugly155ugly758ugly582park_seg_p152_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly33250ugly32120ugly33183ugly32215ugly32880ugly32690ugly345ugly731ugly1014ugly132startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly33251ugly33070ugly33264ugly32555ugly32416ugly33106ugly778ugly819ugly92ugly1011move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
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
  ugly33252ugly32415ugly33280ugly32871ugly32934ugly33126ugly1164ugly315ugly1309ugly601startup_seg_m_a8c_0_60_south_medium
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
  ugly33253ugly33032ugly32980ugly31953ugly33149ugly32768ugly999ugly1308ugly1030ugly4startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly33254ugly32081ugly32068ugly32429ugly32879ugly32530ugly828ugly1216ugly802ugly815startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly33255ugly32703ugly32649ugly32184ugly32284ugly32154ugly483ugly654ugly1059ugly215move_seg_08r_0_80_seg_08r_b3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_0_80) (not_occupied seg_08r_b3a_0_80)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbe1)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbe3)
       (not_blocked seg_08r_b3a_0_80 airplane_daew8)
       (not_blocked seg_08r_b3a_0_80 airplane_daew9)
       (not_blocked seg_08r_b3a_0_80 airplane_daew3)
       (not_blocked seg_08r_b3a_0_80 airplane_daewh)
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
  ugly33256ugly32994ugly32412ugly32678ugly32676ugly32621ugly604ugly767ugly869ugly855startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly33257ugly31929ugly32947ugly33107ugly32605ugly33153ugly1224ugly1162ugly1315ugly255move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p104_0_76)) (not_occupied seg_p104_0_76)
       (not (at-segment ?a seg_p104_0_76)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action
  ugly33258ugly32424ugly32846ugly32166ugly32542ugly32095ugly149ugly669ugly121ugly617startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly33259ugly33231ugly33238ugly32634ugly32224ugly32683ugly904ugly901ugly618ugly1052move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe3)
       (not_blocked seg_n_a6b_0_60 airplane_daew8)
       (not_blocked seg_n_a6b_0_60 airplane_daew9)
       (not_blocked seg_n_a6b_0_60 airplane_daew3)
       (not_blocked seg_n_a6b_0_60 airplane_daewh)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a6a8a_0_115)) (not_occupied seg_n_a6a8a_0_115)
       (not (at-segment ?a seg_n_a6a8a_0_115)) (occupied seg_n_a6b_0_60)
       (not (not_occupied seg_n_a6b_0_60)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (at-segment ?a seg_n_a6b_0_60)
       (not (blocked seg_n_a6a8b_0_75 ?a)) (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action
  ugly33260ugly31981ugly32786ugly32171ugly33066ugly33148ugly1338ugly1154ugly471ugly123startup_seg_t_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action
  ugly33261ugly32368ugly33020ugly32403ugly33026ugly32601ugly1237ugly70ugly365ugly710move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
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
  ugly33262ugly32479ugly31944ugly32671ugly32942ugly32516ugly657ugly1358ugly865ugly1037startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly33263ugly32378ugly32152ugly32455ugly32796ugly32407ugly356ugly603ugly463ugly573startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33264ugly32555ugly32416ugly33106ugly32701ugly32380ugly1278ugly1061ugly1341ugly449startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly33265ugly32318ugly32807ugly32201ugly32815ugly32295ugly703ugly363ugly796ugly152startup_seg_b5_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action
  ugly33266ugly32146ugly33174ugly32721ugly32193ugly32731ugly222ugly1068ugly61ugly368startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly33267ugly32982ugly32504ugly32898ugly32955ugly32245ugly140ugly1360ugly229ugly5move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe3)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
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
  ugly33268ugly32211ugly33177ugly32677ugly32502ugly32615ugly183ugly343ugly950ugly556move_seg_o1_110c_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
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
  ugly33269ugly32891ugly32289ugly33082ugly31985ugly33071ugly786ugly989ugly1319ugly1344move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew9)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
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
  ugly33270ugly32301ugly33251ugly33070ugly33264ugly32555ugly493ugly434ugly681ugly1118move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
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
  ugly33271ugly32232ugly32080ugly31966ugly32591ugly31968ugly119ugly703ugly363ugly796move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe1)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe3)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew9)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew3)
       (not_blocked seg_a8_b_0_80_6226 airplane_daewh)
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
  ugly33272ugly32493ugly32741ugly31978ugly32199ugly33259ugly1308ugly1030ugly4ugly1207move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe1)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe3)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew8)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew9)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew3)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daewh)
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
  ugly33273ugly32247ugly32016ugly32941ugly33040ugly32188ugly1150ugly254ugly397ugly226startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly33274ugly32735ugly32473ugly32810ugly32316ugly32664ugly1181ugly519ugly801ugly1099startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly33275ugly33074ugly32206ugly33209ugly32752ugly32226ugly1079ugly941ugly166ugly642move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe3)
       (not_blocked seg_08l_a3a_0_80 airplane_daew8)
       (not_blocked seg_08l_a3a_0_80 airplane_daew9)
       (not_blocked seg_08l_a3a_0_80 airplane_daew3)
       (not_blocked seg_08l_a3a_0_80 airplane_daewh)
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
  ugly33276ugly32365ugly33191ugly33076ugly32993ugly32394ugly617ugly1196ugly1147ugly972startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly33277ugly32625ugly33134ugly32134ugly32945ugly32438ugly1215ugly1342ugly1213ugly792startup_seg_s_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly33278ugly32557ugly31965ugly32119ugly32220ugly32566ugly499ugly59ugly75ugly383move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe3)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4d_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_n2a4e_0_75)) (not_occupied seg_n_n2a4e_0_75)
       (not (at-segment ?a seg_n_n2a4e_0_75)) (occupied seg_n_n2a4d_0_75)
       (not (not_occupied seg_n_n2a4d_0_75)) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a)) (at-segment ?a seg_n_n2a4d_0_75)
       (not (blocked seg_n_a4c_0_60 ?a)) (not_blocked seg_n_a4c_0_60 ?a)))
 (:action
  ugly33279ugly32569ugly32923ugly32447ugly32826ugly32733ugly686ugly1298ugly751ugly555startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly33280ugly32871ugly32934ugly33126ugly33087ugly33186ugly1008ugly1023ugly891ugly913startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly33281ugly32200ugly32468ugly32925ugly32894ugly32052ugly1202ugly833ugly768ugly161startup_seg_s_b4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly33282ugly32259ugly32602ugly32956ugly32178ugly32821ugly1146ugly817ugly560ugly1166move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_cfbe1)
       (not_blocked seg_p102_0_76 airplane_cfbe3)
       (not_blocked seg_p102_0_76 airplane_daew8)
       (not_blocked seg_p102_0_76 airplane_daew9)
       (not_blocked seg_p102_0_76 airplane_daew3)
       (not_blocked seg_p102_0_76 airplane_daewh)
       (not_blocked seg_p102_0_76 airplane_cfbe2))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_p102_0_76)
       (not (not_occupied seg_p102_0_76)) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a)) (at-segment ?a seg_p102_0_76)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly33283ugly32549ugly32761ugly32545ugly32611ugly32607ugly1171ugly35ugly189ugly1375startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly33284ugly32614ugly31988ugly33276ugly32365ugly33191ugly1153ugly954ugly614ugly1149move_seg_o1_c2d_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
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
  ugly33285ugly33296ugly32000ugly32156ugly32167ugly32820ugly294ugly1238ugly580ugly170startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly33286ugly32574ugly32790ugly32343ugly32057ugly32433ugly136ugly698ugly868ugly516startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly33287ugly32309ugly32489ugly32435ugly31948ugly32656ugly891ugly913ugly1206ugly1101startup_seg_s_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly33288ugly33130ugly32944ugly32522ugly32958ugly33283ugly626ugly349ugly487ugly352move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe3)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew8)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew9)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew3)
       (not_blocked seg_n_a4a7a_0_115 airplane_daewh)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe2))
  :effect
  (and (not (occupied seg_n_a4a7b_0_75)) (not_occupied seg_n_a4a7b_0_75)
       (not (at-segment ?a seg_n_a4a7b_0_75)) (occupied seg_n_a4a7a_0_115)
       (not (not_occupied seg_n_a4a7a_0_115)) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action
  ugly33289ugly32985ugly32816ugly32045ugly32648ugly31945ugly1363ugly825ugly1355ugly72startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly33290ugly32521ugly32369ugly33210ugly32293ugly32932ugly313ugly311ugly417ugly1281move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe3)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly33291ugly32314ugly33267ugly32982ugly32504ugly32898ugly1032ugly571ugly435ugly1275move_seg_08r_b4b_0_80_seg_08r_b4b6_0_360_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b_0_80) (not_occupied seg_08r_b4b6_0_360)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbeg)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbe1)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbe3)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew8)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew9)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew3)
       (not_blocked seg_08r_b4b6_0_360 airplane_daewh)
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
  ugly33292ugly32151ugly33038ugly33031ugly33196ugly32571ugly987ugly107ugly849ugly540pushback_seg_p107_0_76_seg_o1_c2b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe2))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (blocked seg_p107_0_76 ?a)) (not_blocked seg_p107_0_76 ?a)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly33293ugly33051ugly33090ugly32662ugly32138ugly32066ugly762ugly1013ugly1112ugly381startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly33294ugly32357ugly32948ugly32869ugly33189ugly32943ugly1216ugly802ugly815ugly1004startup_seg_s_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action
  ugly33295ugly32623ugly32034ugly32219ugly33016ugly33075ugly411ugly1127ugly627ugly939startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly33296ugly32000ugly32156ugly32167ugly32820ugly32217ugly464ugly790ugly1288ugly1001startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly33297ugly32205ugly32392ugly32936ugly32901ugly32261ugly1098ugly1153ugly954ugly614startup_seg_m_a7a_0_120_934_south_medium
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
  ugly33298ugly33050ugly32325ugly33194ugly32570ugly32471ugly656ugly1161ugly872ugly405startup_seg_b4_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_t_b4c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a))))) 