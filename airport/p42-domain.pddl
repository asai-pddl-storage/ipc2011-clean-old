
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (not_occupied ?s - segment)
  (is-parked ?a - airplane ?s - segment) (airborne ?a - airplane ?s - segment)
  (is-moving ?a - airplane) (occupied ?s - segment)
  (facing ?a - airplane ?d - direction)
  (has-type ?a - airplane ?t - airplanetype)
  (at-segment ?a - airplane ?s - segment)
  (is-start-runway ?s - segment ?d - direction)
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
  seg_s_b9b10c_2_0_83 - segment airplane_cfbeg airplane_daew8 airplane_daew9
  airplane_daew0 airplane_daew3 - airplane)
 (:action ugly1ugly763ugly747ugly1241startup_seg_t_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action ugly2ugly1187ugly564ugly1095startup_seg_s_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action ugly3ugly1300ugly540ugly270park_seg_p116_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly4ugly1207ugly314ugly1308move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_daew8)
       (not_blocked seg_p141_0_75 airplane_daew9)
       (not_blocked seg_p141_0_75 airplane_daew0)
       (not_blocked seg_p141_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_p141_0_75)
       (not (not_occupied seg_p141_0_75)) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a)) (at-segment ?a seg_p141_0_75)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)))
 (:action ugly5ugly316ugly280ugly838startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action ugly6ugly1200ugly110ugly1223startup_seg_b9_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly7ugly1055ugly116ugly1074move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew0)
       (not_blocked seg_o1_118a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_117c_0_34)) (not_occupied seg_o1_117c_0_34)
       (not (at-segment ?a seg_o1_117c_0_34)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action ugly8ugly609ugly1303ugly992startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly9ugly485ugly637ugly61move_seg_o1_109c_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew0)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
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
 (:action ugly10ugly1083ugly551ugly321startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly11ugly389ugly1102ugly255startup_seg_t_b5a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_t_b5b_0_60) (not_occupied seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly12ugly1210ugly816ugly559startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly13ugly20ugly473ugly1276move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew0)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly14ugly375ugly1050ugly289startup_seg_t_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly15ugly1212ugly720ugly1258move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew9)
       (not_blocked seg_w1_c2a_0_60 airplane_daew0)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
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
  ugly16ugly955ugly339ugly1283move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew0)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
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
 (:action ugly17ugly409ugly1179ugly1188startup_seg_s6_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly18ugly1228ugly287ugly244move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew0)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
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
 (:action ugly19ugly915ugly1295ugly1343takeoff_seg_09l_0_80_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action ugly20ugly473ugly1276ugly19park_seg_p104_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly21ugly1121ugly403ugly1092move_seg_o1_c1b_0_34_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly22ugly1084ugly217ugly294startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly23ugly605ugly172ugly1296move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew0)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action ugly24ugly474ugly62ugly398startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action ugly25ugly263ugly117ugly962startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly26ugly76ugly1146ugly880move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_daew8)
       (not_blocked seg_p153_0_75 airplane_daew9)
       (not_blocked seg_p153_0_75 airplane_daew0)
       (not_blocked seg_p153_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_p153_0_75)
       (not (not_occupied seg_p153_0_75)) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a)) (at-segment ?a seg_p153_0_75)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)))
 (:action ugly27ugly1069ugly82ugly860startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action ugly28ugly373ugly1332ugly197startup_seg_s_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action ugly29ugly671ugly833ugly55startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action ugly30ugly846ugly1273ugly470startup_seg_t_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action
  ugly31ugly1231ugly847ugly489move_seg_w1_161c_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew0)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (at-segment ?a seg_w1_161b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action ugly32ugly900ugly121ugly617startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly33ugly234ugly17ugly409startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly34ugly491ugly979ugly80park_seg_p109_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action ugly35ugly189ugly309ugly160startup_seg_t_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action ugly36ugly517ugly250ugly170startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action ugly37ugly620ugly141ugly685startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly38ugly167ugly794ugly323move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew0)
       (not_blocked seg_w1_152b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p152_0_75)) (not_occupied seg_p152_0_75)
       (not (at-segment ?a seg_p152_0_75)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action ugly39ugly1359ugly689ugly8startup_seg_t_b9b_0_60_south_medium
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
  ugly40ugly1294ugly253ugly396move_seg_w1_154c_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew0)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (at-segment ?a seg_w1_154b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (blocked seg_w1_154a_0_34 ?a) (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action ugly41ugly812ugly865ugly764startup_seg_t_b5d_0_60_south_medium
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
  ugly42ugly213ugly166ugly642move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew0)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (at-segment ?a seg_w1_162b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly43ugly823ugly459ugly882startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly44ugly190ugly735ugly203startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly45ugly1334ugly841ugly1032startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action ugly46ugly188ugly508ugly1339startup_seg_s_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_t_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a))))
 (:action ugly47ugly567ugly463ugly789startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly48ugly809ugly1112ugly85startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly49ugly828ugly815ugly401move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a4a7c_0_75)) (not_occupied seg_n_a4a7c_0_75)
       (not (at-segment ?a seg_n_a4a7c_0_75)) (occupied seg_n_a4a7b_0_75)
       (not (not_occupied seg_n_a4a7b_0_75)) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a)) (at-segment ?a seg_n_a4a7b_0_75)
       (not (blocked seg_n_a4a7d_0_75 ?a)) (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly50ugly357ugly1075ugly408startup_seg_08r_b3c_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_08r_0_80) (not_occupied seg_08r_b3a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (blocked seg_08r_b3a_0_80 ?a)
       (not (not_blocked seg_08r_b3a_0_80 ?a))))
 (:action ugly51ugly1330ugly893ugly7startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly52ugly460ugly921ugly699startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly53ugly892ugly1288ugly428startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly54ugly678ugly745ugly1001move_seg_o1_c3d_0_60_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew0)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
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
 (:action ugly55ugly1168ugly1266ugly810startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action ugly56ugly238ugly1260ugly15startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action ugly57ugly165ugly1184ugly565startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly58ugly21ugly1121ugly403startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action ugly59ugly75ugly383ugly601startup_seg_t_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b_0_60)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly60ugly513ugly576ugly531move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew0)
       (not_blocked seg_w1_153c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)))
 (:action
  ugly61ugly368ugly169ugly749move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_daew8)
       (not_blocked seg_p102_0_76 airplane_daew9)
       (not_blocked seg_p102_0_76 airplane_daew0)
       (not_blocked seg_p102_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_p102_0_76)
       (not (not_occupied seg_p102_0_76)) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a)) (at-segment ?a seg_p102_0_76)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly62ugly398ugly1203ugly264move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew0)
       (not_blocked seg_o1_116c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_117a_0_34)) (not_occupied seg_o1_117a_0_34)
       (not (at-segment ?a seg_o1_117a_0_34)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)))
 (:action ugly63ugly1299ugly1015ugly516startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly64ugly1224ugly936ugly1137move_seg_o1_115b_0_60_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew0)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p115_0_76 ?a)) (not_blocked seg_p115_0_76 ?a)
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly65ugly937ugly324ugly306startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly66ugly1214ugly1341ugly209park_seg_p111_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action ugly67ugly60ugly513ugly576startup_seg_t_b4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly68ugly521ugly457ugly475startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action ugly69ugly334ugly527ugly913startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action ugly70ugly365ugly1037ugly1291startup_seg_t_b5b_0_60_south_medium
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
  ugly71ugly904ugly454ugly352move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_daew8)
       (not_blocked seg_n_a2a_0_60 airplane_daew9)
       (not_blocked seg_n_a2a_0_60 airplane_daew0)
       (not_blocked seg_n_a2a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2b_0_60)) (not_occupied seg_n_a2b_0_60)
       (not (at-segment ?a seg_n_a2b_0_60)) (occupied seg_n_a2a_0_60)
       (not (not_occupied seg_n_a2a_0_60)) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a)) (at-segment ?a seg_n_a2a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action ugly72ugly1182ugly939ugly958startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly73ugly1240ugly452ugly359startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly74ugly1012ugly1111ugly380move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_daew8)
       (not_blocked seg_08l_a4a_0_80 airplane_daew9)
       (not_blocked seg_08l_a4a_0_80 airplane_daew0)
       (not_blocked seg_08l_a4a_0_80 airplane_daew3)
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
 (:action ugly75ugly383ugly601ugly548startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action ugly76ugly1146ugly880ugly220startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly77ugly360ugly855ugly1324move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_daew8)
       (not_blocked seg_n_a8a_0_60 airplane_daew9)
       (not_blocked seg_n_a8a_0_60 airplane_daew0)
       (not_blocked seg_n_a8a_0_60 airplane_daew3))
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
  ugly78ugly536ugly1057ugly510move_seg_08r_0_80_seg_08r_b3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_0_80) (not_occupied seg_08r_b3a_0_80)
       (not_blocked seg_08r_b3a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b3a_0_80 airplane_daew8)
       (not_blocked seg_08r_b3a_0_80 airplane_daew9)
       (not_blocked seg_08r_b3a_0_80 airplane_daew0)
       (not_blocked seg_08r_b3a_0_80 airplane_daew3)
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
  ugly79ugly593ugly589ugly1254move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew0)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p119_0_76 ?a)) (not_blocked seg_p119_0_76 ?a)
       (blocked seg_o1_c4a_0_34 ?a) (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action ugly80ugly957ugly131ugly574startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action ugly81ugly187ugly1367ugly422startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly82ugly860ugly1348ugly347move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew0)
       (not_blocked seg_o1_104a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action ugly83ugly1271ugly426ugly377startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly84ugly195ugly934ugly419move_seg_b8_b_1_0_80_6226_seg_b8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_1_0_80_6226) (not_occupied seg_b8_b_0_80_6226)
       (not_blocked seg_b8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew9)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew0)
       (not_blocked seg_b8_b_0_80_6226 airplane_daew3))
  :effect
  (and (not (occupied seg_b8_b_1_0_80_6226))
       (not_occupied seg_b8_b_1_0_80_6226)
       (not (at-segment ?a seg_b8_b_1_0_80_6226)) (occupied seg_b8_b_0_80_6226)
       (not (not_occupied seg_b8_b_0_80_6226)) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))
       (at-segment ?a seg_b8_b_0_80_6226) (not (blocked seg_b8_a_0_156_924 ?a))
       (not_blocked seg_b8_a_0_156_924 ?a)))
 (:action ugly85ugly1327ugly206ugly1347startup_seg_s_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly86ugly235ugly472ugly247move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew0)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
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
  ugly87ugly400ugly822ugly851move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew0)
       (not_blocked seg_o1_103a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_102c_0_34)) (not_occupied seg_o1_102c_0_34)
       (not (at-segment ?a seg_o1_102c_0_34)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action ugly88ugly313ugly417ugly1108startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly89ugly99ugly740ugly70move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew0)
       (not_blocked seg_o1_109b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p109_0_76)) (not_occupied seg_p109_0_76)
       (not (at-segment ?a seg_p109_0_76)) (occupied seg_o1_109b_0_60)
       (not (not_occupied seg_o1_109b_0_60)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action ugly90ugly119ugly703ugly1004startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly91ugly736ugly952ugly927move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a4c_0_60)) (not_occupied seg_n_a4c_0_60)
       (not (at-segment ?a seg_n_a4c_0_60)) (occupied seg_n_n2a4e_0_75)
       (not (not_occupied seg_n_n2a4e_0_75)) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a)) (at-segment ?a seg_n_n2a4e_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a4a_0_60 ?a)) (not_blocked seg_n_a4a_0_60 ?a)
       (not (blocked seg_n_a4b_0_60 ?a)) (not_blocked seg_n_a4b_0_60 ?a)))
 (:action
  ugly92ugly1011ugly692ugly1351move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_daew8)
       (not_blocked seg_p134_0_75 airplane_daew9)
       (not_blocked seg_p134_0_75 airplane_daew0)
       (not_blocked seg_p134_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_111d_0_45)) (not_occupied seg_o1_111d_0_45)
       (not (at-segment ?a seg_o1_111d_0_45)) (occupied seg_p134_0_75)
       (not (not_occupied seg_p134_0_75)) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a)) (at-segment ?a seg_p134_0_75)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)))
 (:action ugly93ugly773ugly788ugly97startup_seg_o1_111c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly94ugly733ugly966ugly120startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly95ugly1176ugly1319ugly530startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly96ugly162ugly914ugly1147startup_seg_t_b9a_0_60_south_medium
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
  ugly97ugly985ugly1256ugly1128move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew0)
       (not_blocked seg_w1_142b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p142_0_75)) (not_occupied seg_p142_0_75)
       (not (at-segment ?a seg_p142_0_75)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action ugly98ugly1062ugly215ugly345startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action ugly99ugly740ugly70ugly365park_seg_p117_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly100ugly800ugly1098ugly1133move_seg_w1_c4a_0_34_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew9)
       (not_blocked seg_w1_c4c_0_60 airplane_daew0)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (occupied seg_w1_c4a_0_34)) (not_occupied seg_w1_c4a_0_34)
       (not (at-segment ?a seg_w1_c4a_0_34)) (occupied seg_w1_c4c_0_60)
       (not (not_occupied seg_w1_c4c_0_60)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a)) (at-segment ?a seg_w1_c4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)
       (blocked seg_w1_c4b_0_60 ?a) (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly101ugly696ugly1082ugly961startup_seg_s_b4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action ugly102ugly325ugly688ugly370startup_seg_o1_111a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly103ugly1335ugly288ugly1159startup_seg_o1_109b_0_60_south_medium
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
  ugly104ugly902ugly1358ugly56move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_daew8)
       (not_blocked seg_p162_0_75 airplane_daew9)
       (not_blocked seg_p162_0_75 airplane_daew0)
       (not_blocked seg_p162_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_p162_0_75)
       (not (not_occupied seg_p162_0_75)) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a)) (at-segment ?a seg_p162_0_75)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)))
 (:action ugly105ugly414ugly355ugly602startup_seg_b2_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action
  ugly106ugly346ugly799ugly1364move_seg_o1_111b_0_60_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
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
  ugly107ugly849ugly1138ugly1244move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a6a8c_0_75)) (not_occupied seg_n_a6a8c_0_75)
       (not (at-segment ?a seg_n_a6a8c_0_75)) (occupied seg_n_a6a8b_0_75)
       (not (not_occupied seg_n_a6a8b_0_75)) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a)) (at-segment ?a seg_n_a6a8b_0_75)
       (not (blocked seg_n_a6a8d_0_75 ?a)) (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action
  ugly108ugly429ugly476ugly928move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew0)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_o1_116c_0_34)
       (not (not_occupied seg_o1_116c_0_34)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a)) (at-segment ?a seg_o1_116c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p116_0_76 ?a)) (not_blocked seg_p116_0_76 ?a)
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action ugly109ugly248ugly233ugly4startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action ugly110ugly1223ugly731ugly643startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly111ugly1169ugly1290ugly1346move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
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
 (:action ugly112ugly894ugly66ugly1214startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action ugly113ugly1034ugly779ugly10startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly114ugly1237ugly579ugly829move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew0)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p104_0_76 ?a)) (not_blocked seg_p104_0_76 ?a)
       (blocked seg_o1_104a_0_34 ?a) (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action ugly115ugly1000ugly1285ugly296startup_seg_t_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action ugly116ugly1074ugly281ugly673startup_seg_s_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action ugly117ugly962ugly840ugly443park_seg_p112_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly118ugly611ugly391ugly787startup_seg_08r_b3c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action ugly119ugly703ugly1004ugly802startup_seg_s_b3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action ugly120ugly781ugly81ugly187startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly121ugly617ugly1051ugly495move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_daew8)
       (not_blocked seg_p161_0_75 airplane_daew9)
       (not_blocked seg_p161_0_75 airplane_daew0)
       (not_blocked seg_p161_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_161b_0_45)) (not_occupied seg_w1_161b_0_45)
       (not (at-segment ?a seg_w1_161b_0_45)) (occupied seg_p161_0_75)
       (not (not_occupied seg_p161_0_75)) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a)) (at-segment ?a seg_p161_0_75)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)))
 (:action ugly122ugly1305ugly702ugly362startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly123ugly1372ugly1043ugly298move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew8)
       (not_blocked seg_o1_116c_0_34 airplane_daew9)
       (not_blocked seg_o1_116c_0_34 airplane_daew0)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
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
  ugly124ugly432ugly1066ugly1204move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew8)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew9)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew0)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew3))
  :effect
  (and (not (occupied seg_n_n2a4b_0_75)) (not_occupied seg_n_n2a4b_0_75)
       (not (at-segment ?a seg_n_n2a4b_0_75)) (occupied seg_n_n2a4a_0_70)
       (not (not_occupied seg_n_n2a4a_0_70)) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a)) (at-segment ?a seg_n_n2a4a_0_70)
       (not (blocked seg_n_n2a4c_0_75 ?a)) (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action ugly125ugly990ugly1193ugly1325startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly126ugly706ugly645ugly774startup_seg_m_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6b_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly127ugly507ugly241ugly153startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly128ugly1282ugly1030ugly308move_seg_o1_102b_0_60_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
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
  ugly129ugly201ugly1263ugly760move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew0)
       (not_blocked seg_w1_152a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action ugly130ugly1369ugly1002ugly715startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action ugly131ugly574ugly1317ugly115startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action ugly132ugly753ugly1171ugly1373startup_seg_t_b10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly133ugly482ugly653ugly1058move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_daew8)
       (not_blocked seg_p152_0_75 airplane_daew9)
       (not_blocked seg_p152_0_75 airplane_daew0)
       (not_blocked seg_p152_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_p152_0_75)
       (not (not_occupied seg_p152_0_75)) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a)) (at-segment ?a seg_p152_0_75)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)))
 (:action ugly134ugly1173ugly711ugly43startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly135ugly547ugly556ugly635startup_seg_t_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_t_b10b_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action ugly136ugly698ugly772ugly184startup_seg_s_b4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action ugly137ugly1035ugly1154ugly954startup_seg_s_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a))))
 (:action ugly138ugly1010ugly481ugly591startup_seg_n_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly139ugly1211ugly200ugly931startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action ugly140ugly1360ugly1356ugly769startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly141ugly685ugly1297ugly156startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action ugly142ugly299ugly64ugly1224startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly143ugly58ugly21ugly1121move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daew8)
       (not_blocked seg_c3_b_0_80 airplane_daew9)
       (not_blocked seg_c3_b_0_80 airplane_daew0)
       (not_blocked seg_c3_b_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_c3_b_0_80)
       (not (not_occupied seg_c3_b_0_80)) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a)) (at-segment ?a seg_c3_b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)))
 (:action ugly144ugly207ugly219ugly178startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action ugly145ugly329ugly964ugly919startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action ugly146ugly581ugly797ugly1316startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly147ugly320ugly181ugly881move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew0)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly148ugly256ugly45ugly1334startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly149ugly669ugly311ugly911startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly150ugly570ugly434ugly1274move_seg_o1_117c_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew0)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
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
  ugly151ugly903ugly32ugly900move_seg_c4_s6c_0_60_seg_w1_c4b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6c_0_60) (not_occupied seg_w1_c4b_0_60)
       (not_blocked seg_w1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4b_0_60 airplane_daew8)
       (not_blocked seg_w1_c4b_0_60 airplane_daew9)
       (not_blocked seg_w1_c4b_0_60 airplane_daew0)
       (not_blocked seg_w1_c4b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_c4_s6c_0_60)) (not_occupied seg_c4_s6c_0_60)
       (not (at-segment ?a seg_c4_s6c_0_60)) (occupied seg_w1_c4b_0_60)
       (not (not_occupied seg_w1_c4b_0_60)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (at-segment ?a seg_w1_c4b_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (not (blocked seg_c4_s6b_0_60 ?a)) (not_blocked seg_c4_s6b_0_60 ?a)))
 (:action
  ugly152ugly585ugly1047ugly660move_seg_o1_110b_0_60_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
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
 (:action ugly153ugly1025ugly90ugly119startup_seg_s_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action
  ugly154ugly1016ugly629ugly1142move_seg_08r_b4b6_0_360_seg_08r_b6c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b6_0_360) (not_occupied seg_08r_b6c_0_80)
       (not_blocked seg_08r_b6c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6c_0_80 airplane_daew8)
       (not_blocked seg_08r_b6c_0_80 airplane_daew9)
       (not_blocked seg_08r_b6c_0_80 airplane_daew0)
       (not_blocked seg_08r_b6c_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_08r_b4b6_0_360)) (not_occupied seg_08r_b4b6_0_360)
       (not (at-segment ?a seg_08r_b4b6_0_360)) (occupied seg_08r_b6c_0_80)
       (not (not_occupied seg_08r_b6c_0_80)) (blocked seg_08r_b6c_0_80 ?a)
       (not (not_blocked seg_08r_b6c_0_80 ?a)) (at-segment ?a seg_08r_b6c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b4b_0_80 ?a)) (not_blocked seg_08r_b4b_0_80 ?a)))
 (:action ugly155ugly758ugly668ugly616startup_seg_m_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly156ugly920ugly923ugly453startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action ugly157ugly1054ugly746ugly444startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action ugly158ugly811ugly1208ugly1213park_seg_p116_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action ugly159ugly137ugly1035ugly1154startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action ugly160ugly494ugly265ugly922startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action ugly161ugly663ugly705ugly898startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly162ugly914ugly1147ugly607move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew8)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew9)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew0)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew3))
  :effect
  (and (not (occupied seg_08l_a2a_0_80)) (not_occupied seg_08l_a2a_0_80)
       (not (at-segment ?a seg_08l_a2a_0_80)) (occupied seg_08l_a2a3_0_970)
       (not (not_occupied seg_08l_a2a3_0_970)) (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action ugly163ugly496ugly229ugly376startup_seg_s_b9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly164ugly212ugly633ugly1145move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_daew8)
       (not_blocked seg_09l_0_80 airplane_daew9)
       (not_blocked seg_09l_0_80 airplane_daew0)
       (not_blocked seg_09l_0_80 airplane_daew3)
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
 (:action ugly165ugly1184ugly565ugly1312startup_seg_b2_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action
  ugly166ugly642ugly239ugly970move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew0)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p142_0_75 ?a)) (not_blocked seg_p142_0_75 ?a)
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly167ugly794ugly323ugly210startup_seg_b2_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly168ugly1247ugly626ugly938move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_daew8)
       (not_blocked seg_08l_a9c_0_80 airplane_daew9)
       (not_blocked seg_08l_a9c_0_80 airplane_daew0)
       (not_blocked seg_08l_a9c_0_80 airplane_daew3))
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
  ugly169ugly749ugly330ugly333move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_daew8)
       (not_blocked seg_n_n2b_0_60 airplane_daew9)
       (not_blocked seg_n_n2b_0_60 airplane_daew0)
       (not_blocked seg_n_n2b_0_60 airplane_daew3)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (occupied seg_n_n2a_0_60)) (not_occupied seg_n_n2a_0_60)
       (not (at-segment ?a seg_n_n2a_0_60)) (occupied seg_n_n2b_0_60)
       (not (not_occupied seg_n_n2b_0_60)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (at-segment ?a seg_n_n2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_n2a4a_0_70 ?a)) (not_blocked seg_n_n2a4a_0_70 ?a)
       (blocked seg_n_n2c_0_60 ?a) (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly170ugly830ugly301ugly118startup_seg_t_b9c_0_120_934_south_medium
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
  ugly171ugly319ugly775ugly105move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_daew8)
       (not_blocked seg_p115_0_76 airplane_daew9)
       (not_blocked seg_p115_0_76 airplane_daew0)
       (not_blocked seg_p115_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_115b_0_60)) (not_occupied seg_o1_115b_0_60)
       (not (at-segment ?a seg_o1_115b_0_60)) (occupied seg_p115_0_76)
       (not (not_occupied seg_p115_0_76)) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a)) (at-segment ?a seg_p115_0_76)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)))
 (:action ugly172ugly1296ugly13ugly20startup_seg_b5_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_08r_b4a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))))
 (:action
  ugly173ugly433ugly680ugly1117move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_daew8)
       (not_blocked seg_p131_0_75 airplane_daew9)
       (not_blocked seg_p131_0_75 airplane_daew0)
       (not_blocked seg_p131_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_p131_0_75)
       (not (not_occupied seg_p131_0_75)) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a)) (at-segment ?a seg_p131_0_75)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)))
 (:action ugly174ugly6ugly1200ugly110startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action ugly175ugly1125ugly748ugly1216park_seg_p161_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action ugly176ugly523ugly933ugly534startup_seg_t_b4c_0_120_934_south_medium
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
  ugly177ugly71ugly904ugly454move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
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
  ugly178ugly1107ugly1158ugly435move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_daew8)
       (not_blocked seg_n_a6b_0_60 airplane_daew9)
       (not_blocked seg_n_a6b_0_60 airplane_daew0)
       (not_blocked seg_n_a6b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a6a8a_0_115)) (not_occupied seg_n_a6a8a_0_115)
       (not (at-segment ?a seg_n_a6a8a_0_115)) (occupied seg_n_a6b_0_60)
       (not (not_occupied seg_n_a6b_0_60)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (at-segment ?a seg_n_a6b_0_60)
       (not (blocked seg_n_a6a8b_0_75 ?a)) (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action ugly179ugly374ugly727ugly211startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action ugly180ugly484ugly783ugly406startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action ugly181ugly881ugly439ugly157startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action ugly182ugly682ugly762ugly249startup_seg_m_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly183ugly343ugly852ugly132startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly184ugly537ugly604ugly1275startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly185ugly57ugly165ugly1184startup_seg_t_b7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly186ugly926ugly872ugly721startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly187ugly1367ugly422ugly1065startup_seg_m_a4a_0_120_934_south_medium
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
  ugly188ugly508ugly1339ugly498move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew0)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
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
  ugly189ugly309ugly160ugly494move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3))
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
  ugly190ugly735ugly203ugly965move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3))
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
  ugly191ugly1024ugly755ugly1292move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew0)
       (not_blocked seg_w1_143c_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c2a_0_60)) (not_occupied seg_w1_c2a_0_60)
       (not (at-segment ?a seg_w1_c2a_0_60)) (occupied seg_w1_143c_0_60)
       (not (not_occupied seg_w1_143c_0_60)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a)) (at-segment ?a seg_w1_143c_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c2b_0_60 ?a)) (not_blocked seg_w1_c2b_0_60 ?a)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)))
 (:action ugly192ugly1131ugly770ugly545startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action ugly193ugly1020ugly423ugly461startup_seg_m_a8a_0_60_south_medium
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
  ugly194ugly737ugly896ugly596move_seg_s_b2b3b_0_140_seg_s_b2b3a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3b_0_140) (not_occupied seg_s_b2b3a_0_140)
       (not_blocked seg_s_b2b3a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew0)
       (not_blocked seg_s_b2b3a_0_140 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b2b3b_0_140)) (not_occupied seg_s_b2b3b_0_140)
       (not (at-segment ?a seg_s_b2b3b_0_140)) (occupied seg_s_b2b3a_0_140)
       (not (not_occupied seg_s_b2b3a_0_140)) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))
       (at-segment ?a seg_s_b2b3a_0_140) (not (blocked seg_s_b2b3c_0_140 ?a))
       (not_blocked seg_s_b2b3c_0_140 ?a)))
 (:action
  ugly195ugly934ugly419ugly108move_seg_o1_118b_0_60_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew0)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (blocked seg_o1_118c_0_34 ?a) (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly196ugly519ugly446ugly687startup_seg_t_b8c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action ugly197ugly639ugly394ugly729park_seg_p152_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action ugly198ugly237ugly578ugly284startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action ugly199ugly305ugly813ugly283startup_seg_t_b3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action ugly200ugly931ugly986ugly848startup_seg_t_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a))))
 (:action
  ugly201ugly1263ugly760ugly14move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_daew8)
       (not_blocked seg_p132_0_75 airplane_daew9)
       (not_blocked seg_p132_0_75 airplane_daew0)
       (not_blocked seg_p132_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_109d_0_45)) (not_occupied seg_o1_109d_0_45)
       (not (at-segment ?a seg_o1_109d_0_45)) (occupied seg_p132_0_75)
       (not (not_occupied seg_p132_0_75)) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a)) (at-segment ?a seg_p132_0_75)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)))
 (:action
  ugly202ugly1114ugly447ugly863move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew0)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly203ugly965ugly267ugly546startup_seg_m_a4d_0_60_south_medium
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
  ugly204ugly349ugly421ugly198move_seg_w1_162c_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew0)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (at-segment ?a seg_w1_162b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action ugly205ugly1006ugly1085ugly139startup_seg_m_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9b_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly206ugly1347ugly686ugly39startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action ugly207ugly219ugly178ugly1107startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly208ugly550ugly925ugly1261pushback_seg_p131_0_75_seg_o1_108d_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (blocked seg_p131_0_75 ?a)) (not_blocked seg_p131_0_75 ?a)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly209ugly989ugly1192ugly145move_seg_o1_102c_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew0)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
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
  ugly210ugly502ugly1344ugly1144move_seg_s_b3b4a_0_140_seg_s_b3a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4a_0_140) (not_occupied seg_s_b3a_0_60)
       (not_blocked seg_s_b3a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3a_0_60 airplane_daew8)
       (not_blocked seg_s_b3a_0_60 airplane_daew9)
       (not_blocked seg_s_b3a_0_60 airplane_daew0)
       (not_blocked seg_s_b3a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b3b4a_0_140)) (not_occupied seg_s_b3b4a_0_140)
       (not (at-segment ?a seg_s_b3b4a_0_140)) (occupied seg_s_b3a_0_60)
       (not (not_occupied seg_s_b3a_0_60)) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (at-segment ?a seg_s_b3a_0_60)
       (not (blocked seg_s_b3b4b_0_140 ?a))
       (not_blocked seg_s_b3b4b_0_140 ?a)))
 (:action ugly211ugly1198ugly96ugly162park_seg_p104_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action ugly212ugly633ugly1145ugly104startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action ugly213ugly166ugly642ugly239startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly214ugly1298ugly1161ugly84move_seg_w1_142c_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew0)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (at-segment ?a seg_w1_142b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (blocked seg_w1_142a_0_34 ?a) (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly215ugly345ugly875ugly982startup_seg_t_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action ugly216ugly191ugly1024ugly755startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly217ugly294ugly862ugly1197move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_daew8)
       (not_blocked seg_n_a3c_0_60 airplane_daew9)
       (not_blocked seg_n_a3c_0_60 airplane_daew0)
       (not_blocked seg_n_a3c_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n1_0_108)) (not_occupied seg_n1_0_108)
       (not (at-segment ?a seg_n1_0_108)) (occupied seg_n_a3c_0_60)
       (not (not_occupied seg_n_a3c_0_60)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (at-segment ?a seg_n_a3c_0_60)
       (not (blocked seg_w1_c1a_0_60 ?a)) (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action ugly218ugly590ugly415ugly636startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly219ugly178ugly1107ugly1158move_seg_o1_c4b_0_60_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew0)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p119_0_76 ?a)) (not_blocked seg_p119_0_76 ?a)
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly220ugly819ugly1166ugly1269startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly221ugly1067ugly367ugly1177move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action ugly222ugly759ugly381ugly656startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action ugly223ugly806ugly910ugly1333park_seg_p154_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly224ugly350ugly972ugly354move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_daew8)
       (not_blocked seg_p116_0_76 airplane_daew9)
       (not_blocked seg_p116_0_76 airplane_daew0)
       (not_blocked seg_p116_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_116b_0_60)) (not_occupied seg_o1_116b_0_60)
       (not (at-segment ?a seg_o1_116b_0_60)) (occupied seg_p116_0_76)
       (not (not_occupied seg_p116_0_76)) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a)) (at-segment ?a seg_p116_0_76)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly225ugly1118ugly1060ugly1340move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew9)
       (not_blocked seg_w1_c1a_0_60 airplane_daew0)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (occupied seg_w1_c1b_0_60)) (not_occupied seg_w1_c1b_0_60)
       (not (at-segment ?a seg_w1_c1b_0_60)) (occupied seg_w1_c1a_0_60)
       (not (not_occupied seg_w1_c1a_0_60)) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (at-segment ?a seg_w1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)
       (blocked seg_w1_c1c_0_34 ?a) (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly226ugly734ugly407ugly356startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly227ugly520ugly1008ugly583move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew0)
       (not_blocked seg_w1_161a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c3c_0_48)) (not_occupied seg_w1_c3c_0_48)
       (not (at-segment ?a seg_w1_c3c_0_48)) (occupied seg_w1_161a_0_34)
       (not (not_occupied seg_w1_161a_0_34)) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (at-segment ?a seg_w1_161a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (not (blocked seg_w1_c3b_0_60 ?a)) (not_blocked seg_w1_c3b_0_60 ?a)))
 (:action
  ugly228ugly315ugly930ugly845move_seg_s_b4b6a_0_135_seg_s_b4a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6a_0_135) (not_occupied seg_s_b4a_0_60)
       (not_blocked seg_s_b4a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4a_0_60 airplane_daew8)
       (not_blocked seg_s_b4a_0_60 airplane_daew9)
       (not_blocked seg_s_b4a_0_60 airplane_daew0)
       (not_blocked seg_s_b4a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b4b6a_0_135)) (not_occupied seg_s_b4b6a_0_135)
       (not (at-segment ?a seg_s_b4b6a_0_135)) (occupied seg_s_b4a_0_60)
       (not (not_occupied seg_s_b4a_0_60)) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (at-segment ?a seg_s_b4a_0_60)
       (not (blocked seg_s_b4b6b_0_135 ?a))
       (not_blocked seg_s_b4b6b_0_135 ?a)))
 (:action ugly229ugly376ugly710ugly826startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action ugly230ugly245ugly768ugly466startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly231ugly182ugly682ugly762move_seg_w1_164c_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew0)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (at-segment ?a seg_w1_164b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action ugly232ugly79ugly593ugly589startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action ugly233ugly4ugly1207ugly314startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action ugly234ugly17ugly409ugly1179startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly235ugly472ugly247ugly236startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action ugly236ugly1229ugly89ugly99startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action ugly237ugly578ugly284ugly1363startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly238ugly1260ugly15ugly1212startup_seg_s_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action ugly239ugly970ugly194ugly737startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly240ugly697ugly867ugly515startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly241ugly153ugly1025ugly90move_seg_s6_0_94_seg_c4_s6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s6_0_94) (not_occupied seg_c4_s6b_0_60)
       (not_blocked seg_c4_s6b_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6b_0_60 airplane_daew8)
       (not_blocked seg_c4_s6b_0_60 airplane_daew9)
       (not_blocked seg_c4_s6b_0_60 airplane_daew0)
       (not_blocked seg_c4_s6b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s6_0_94)) (not_occupied seg_s6_0_94)
       (not (at-segment ?a seg_s6_0_94)) (occupied seg_c4_s6b_0_60)
       (not (not_occupied seg_c4_s6b_0_60)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (at-segment ?a seg_c4_s6b_0_60)
       (not (blocked seg_s_b5a_0_60 ?a)) (not_blocked seg_s_b5a_0_60 ?a)))
 (:action
  ugly242ugly906ugly221ugly1067move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
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
 (:action ugly243ugly242ugly906ugly221startup_seg_c4_s6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly244ugly388ugly279ugly1157startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly245ugly768ugly466ugly1311startup_seg_t_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a))))
 (:action ugly246ugly1007ugly1022ugly890startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly247ugly236ugly1229ugly89move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew8)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew9)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew0)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew3)
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
  ugly248ugly233ugly4ugly1207move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3))
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
  ugly249ugly1151ugly147ugly320move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_n2a4d_0_75)) (not_occupied seg_n_n2a4d_0_75)
       (not (at-segment ?a seg_n_n2a4d_0_75)) (occupied seg_n_n2a4c_0_75)
       (not (not_occupied seg_n_n2a4c_0_75)) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a)) (at-segment ?a seg_n_n2a4c_0_75)
       (not (blocked seg_n_n2a4e_0_75 ?a)) (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action
  ugly250ugly170ugly830ugly301move_seg_s_b5a_0_60_seg_s6_0_94_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b5a_0_60) (not_occupied seg_s6_0_94)
       (not_blocked seg_s6_0_94 airplane_cfbeg)
       (not_blocked seg_s6_0_94 airplane_daew8)
       (not_blocked seg_s6_0_94 airplane_daew9)
       (not_blocked seg_s6_0_94 airplane_daew0)
       (not_blocked seg_s6_0_94 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b5a_0_60)) (not_occupied seg_s_b5a_0_60)
       (not (at-segment ?a seg_s_b5a_0_60)) (occupied seg_s6_0_94)
       (not (not_occupied seg_s6_0_94)) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a)) (at-segment ?a seg_s6_0_94)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_s_b5b_0_60 ?a)) (not_blocked seg_s_b5b_0_60 ?a)
       (not (blocked seg_s_b5c_0_60 ?a)) (not_blocked seg_s_b5c_0_60 ?a)
       (not (blocked seg_s_b5d_0_60 ?a)) (not_blocked seg_s_b5d_0_60 ?a)))
 (:action ugly251ugly246ugly1007ugly1022startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action ugly252ugly158ugly811ugly1208startup_seg_m_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly253ugly396ugly225ugly1118startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly254ugly337ugly1201ugly832startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action ugly255ugly573ugly739ugly543startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action ugly256ugly45ugly1334ugly841startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action ugly257ugly1264ugly621ugly708startup_seg_t_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action ugly258ugly1110ugly125ugly990startup_seg_m_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly259ugly1070ugly776ugly861park_seg_p162_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action ugly260ugly67ugly60ugly513startup_seg_t_b5c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action ugly261ugly665ugly608ugly342startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly262ugly218ugly590ugly415startup_seg_t_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly263ugly117ugly962ugly840pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly264ugly300ugly1090ugly707move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew9)
       (not_blocked seg_c1_n2c_0_60 airplane_daew0)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (occupied seg_c1_n2b_0_80)) (not_occupied seg_c1_n2b_0_80)
       (not (at-segment ?a seg_c1_n2b_0_80)) (occupied seg_c1_n2c_0_60)
       (not (not_occupied seg_c1_n2c_0_60)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a)) (at-segment ?a seg_c1_n2c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)
       (blocked seg_c1_n2a_0_60 ?a) (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action ugly265ugly922ugly1322ugly801startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action ugly266ugly152ugly585ugly1047startup_seg_s_b4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action ugly267ugly546ugly1129ugly286startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action ugly268ugly1113ugly959ugly29startup_seg_s_b6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action ugly269ugly569ugly941ugly1059startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly270ugly1027ugly624ugly1251move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew0)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
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
  ugly271ugly336ugly646ugly1018move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew9)
       (not_blocked seg_w1_c1c_0_34 airplane_daew0)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_141a_0_34)) (not_occupied seg_w1_141a_0_34)
       (not (at-segment ?a seg_w1_141a_0_34)) (occupied seg_w1_c1c_0_34)
       (not (not_occupied seg_w1_c1c_0_34)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a)) (at-segment ?a seg_w1_c1c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)))
 (:action ugly272ugly935ugly884ugly1097startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly273ugly28ugly373ugly1332move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daew8)
       (not_blocked seg_w1_142b_0_45 airplane_daew9)
       (not_blocked seg_w1_142b_0_45 airplane_daew0)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_142b_0_45)
       (not (not_occupied seg_w1_142b_0_45)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (at-segment ?a seg_w1_142b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (blocked seg_w1_142c_0_34 ?a) (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly274ugly874ugly164ugly212startup_seg_s_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action ugly275ugly974ugly719ugly1259startup_seg_s_b8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action ugly276ugly133ugly482ugly653startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly277ugly397ugly102ugly325startup_seg_s_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action
  ugly278ugly395ugly695ugly1031move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_daew8)
       (not_blocked seg_a8_a_0_157_785 airplane_daew9)
       (not_blocked seg_a8_a_0_157_785 airplane_daew0)
       (not_blocked seg_a8_a_0_157_785 airplane_daew3))
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
  ugly279ugly1157ugly1021ugly807move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_110c_0_34)) (not_occupied seg_o1_110c_0_34)
       (not (at-segment ?a seg_o1_110c_0_34)) (occupied seg_o1_111a_0_34)
       (not (not_occupied seg_o1_111a_0_34)) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (at-segment ?a seg_o1_111a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly280ugly838ugly1019ugly123startup_seg_s_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action
  ugly281ugly673ugly658ugly793move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew0)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
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
  ugly282ugly1225ugly24ugly474move_seg_08r_b2b3_0_900_seg_08r_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b3_0_900) (not_occupied seg_08r_0_80)
       (not_blocked seg_08r_0_80 airplane_cfbeg)
       (not_blocked seg_08r_0_80 airplane_daew8)
       (not_blocked seg_08r_0_80 airplane_daew9)
       (not_blocked seg_08r_0_80 airplane_daew0)
       (not_blocked seg_08r_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_08r_b2b3_0_900)) (not_occupied seg_08r_b2b3_0_900)
       (not (at-segment ?a seg_08r_b2b3_0_900)) (occupied seg_08r_0_80)
       (not (not_occupied seg_08r_0_80)) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (at-segment ?a seg_08r_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b2b_0_80 ?a)) (not_blocked seg_08r_b2b_0_80 ?a)))
 (:action ugly283ugly514ugly304ugly754startup_seg_t_b9c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9c_0_120_934)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly284ugly1363ugly1053ugly866move_seg_s_b2b3a_0_140_seg_s_b2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3a_0_140) (not_occupied seg_s_b2a_0_60)
       (not_blocked seg_s_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2a_0_60 airplane_daew8)
       (not_blocked seg_s_b2a_0_60 airplane_daew9)
       (not_blocked seg_s_b2a_0_60 airplane_daew0)
       (not_blocked seg_s_b2a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b2b3a_0_140)) (not_occupied seg_s_b2b3a_0_140)
       (not (at-segment ?a seg_s_b2b3a_0_140)) (occupied seg_s_b2a_0_60)
       (not (not_occupied seg_s_b2a_0_60)) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a)) (at-segment ?a seg_s_b2a_0_60)
       (not (blocked seg_s_b2b3b_0_140 ?a))
       (not_blocked seg_s_b2b3b_0_140 ?a)))
 (:action ugly285ugly963ugly252ugly158startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly286ugly1337ugly984ugly675startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly287ugly244ugly388ugly279startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly288ugly1159ugly951ugly1132move_seg_o1_111c_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew0)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
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
  ugly289ugly560ugly644ugly297move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3))
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
  ugly290ugly1353ugly725ugly1236move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
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
  ugly291ugly1331ugly1199ugly999move_seg_w1_c4b_0_60_seg_w1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew9)
       (not_blocked seg_w1_c4a_0_34 airplane_daew0)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (occupied seg_w1_c4b_0_60)) (not_occupied seg_w1_c4b_0_60)
       (not (at-segment ?a seg_w1_c4b_0_60)) (occupied seg_w1_c4a_0_34)
       (not (not_occupied seg_w1_c4a_0_34)) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (at-segment ?a seg_w1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)
       (blocked seg_w1_c4c_0_60 ?a) (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly292ugly151ugly903ugly32startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action ugly293ugly114ugly1237ugly579startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly294ugly862ugly1197ugly78startup_seg_s_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_t_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a))))
 (:action
  ugly295ugly1041ugly196ugly519pushback_seg_o1_c2b_0_60_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew0)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly296ugly587ugly566ugly410startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action ugly297ugly312ugly310ugly416startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action ugly298ugly278ugly395ugly695startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly299ugly64ugly1224ugly936startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action ugly300ugly1090ugly707ugly291startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action ugly301ugly118ugly611ugly391park_seg_p151_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action ugly302ugly751ugly651ugly393startup_seg_s5_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly303ugly1302ugly842ugly41startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action ugly304ugly754ugly610ugly803park_seg_p131_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly305ugly813ugly283ugly514move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew0)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_c3c_0_48)
       (not (not_occupied seg_o1_c3c_0_48)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (at-segment ?a seg_o1_c3c_0_48)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)))
 (:action ugly306ugly879ugly969ugly1068startup_seg_s_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly307ugly307ugly307ugly307move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
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
 (:action ugly308ugly327ugly479ugly269startup_seg_s_b7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7b_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action ugly309ugly160ugly494ugly265startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly310ugly416ugly1280ugly701startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly311ugly911ugly1250ugly1248startup_seg_t_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action ugly312ugly310ugly416ugly1280startup_seg_s_b8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action ugly313ugly417ugly1108ugly1253startup_seg_t_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly314ugly1308ugly148ugly256move_seg_s_b3b4d_0_140_seg_s_b3b4c_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4d_0_140) (not_occupied seg_s_b3b4c_0_140)
       (not_blocked seg_s_b3b4c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4c_0_140 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b3b4d_0_140)) (not_occupied seg_s_b3b4d_0_140)
       (not (at-segment ?a seg_s_b3b4d_0_140)) (occupied seg_s_b3b4c_0_140)
       (not (not_occupied seg_s_b3b4c_0_140)) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))
       (at-segment ?a seg_s_b3b4c_0_140) (not (blocked seg_s_b4c_0_60 ?a))
       (not_blocked seg_s_b4c_0_60 ?a)))
 (:action
  ugly315ugly930ugly845ugly42move_seg_w1_152c_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew0)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
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
  ugly316ugly280ugly838ugly1019move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew0)
       (not_blocked seg_w1_164c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c4a_0_34)) (not_occupied seg_w1_c4a_0_34)
       (not (at-segment ?a seg_w1_c4a_0_34)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c4b_0_60 ?a)) (not_blocked seg_w1_c4b_0_60 ?a)
       (not (blocked seg_w1_c4c_0_60 ?a)) (not_blocked seg_w1_c4c_0_60 ?a)))
 (:action
  ugly317ugly618ugly282ugly1225move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew0)
       (not_blocked seg_w1_162a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action ugly318ugly561ugly487ugly978startup_seg_b9_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly319ugly775ugly105ugly414move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
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
  ugly320ugly181ugly881ugly439move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a8c_0_60)) (not_occupied seg_n_a8c_0_60)
       (not (at-segment ?a seg_n_a8c_0_60)) (occupied seg_n_a6a8f_0_75)
       (not (not_occupied seg_n_a6a8f_0_75)) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a)) (at-segment ?a seg_n_a6a8f_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a8a_0_60 ?a)) (not_blocked seg_n_a8a_0_60 ?a)
       (not (blocked seg_n_a8b_0_60 ?a)) (not_blocked seg_n_a8b_0_60 ?a)))
 (:action ugly321ugly857ugly553ugly1116startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action ugly322ugly124ugly432ugly1066startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action ugly323ugly210ugly502ugly1344startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly324ugly306ugly879ugly969startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action ugly325ugly688ugly370ugly977startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action ugly326ugly505ugly477ugly1365startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action ugly327ugly479ugly269ugly569park_seg_p108_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action ugly328ugly54ugly678ugly745startup_seg_o1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action ugly329ugly964ugly919ugly1268startup_seg_s_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action
  ugly330ugly333ugly185ugly57move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew0)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a6c_0_60)) (not_occupied seg_n_a6c_0_60)
       (not (at-segment ?a seg_n_a6c_0_60)) (occupied seg_n_a7a6d_0_75)
       (not (not_occupied seg_n_a7a6d_0_75)) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a)) (at-segment ?a seg_n_a7a6d_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a6a_0_60 ?a)) (not_blocked seg_n_a6a_0_60 ?a)
       (not (blocked seg_n_a6b_0_60 ?a)) (not_blocked seg_n_a6b_0_60 ?a)))
 (:action ugly331ugly1320ugly266ugly152startup_seg_t_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action ugly332ugly615ugly1245ugly94startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly333ugly185ugly57ugly165startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly334ugly527ugly913ugly761move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew0)
       (not_blocked seg_w1_141c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)))
 (:action ugly335ugly92ugly1011ugly692startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action ugly336ugly646ugly1018ugly3startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action ugly337ugly1201ugly832ugly767startup_seg_s_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action ugly338ugly1329ugly1106ugly509startup_seg_s_b4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action ugly339ugly1283ugly358ugly257startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly340ugly891ugly205ugly1006startup_seg_08l_a7b_0_161_245_south_medium
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
 (:action ugly341ugly412ugly784ugly885startup_seg_t_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly342ugly949ugly555ugly379startup_seg_t_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action ugly343ugly852ugly132ugly753startup_seg_m_a6c_0_60_south_medium
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
  ugly344ugly730ugly1013ugly752move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_daew8)
       (not_blocked seg_a2_c_0_100 airplane_daew9)
       (not_blocked seg_a2_c_0_100 airplane_daew0)
       (not_blocked seg_a2_c_0_100 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2a_0_60)) (not_occupied seg_n_a2a_0_60)
       (not (at-segment ?a seg_n_a2a_0_60)) (occupied seg_a2_c_0_100)
       (not (not_occupied seg_a2_c_0_100)) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a)) (at-segment ?a seg_a2_c_0_100)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action ugly345ugly875ugly982ugly628startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly346ugly799ugly1364ugly390startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly347ugly261ugly665ugly608move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_daew8)
       (not_blocked seg_p104_0_76 airplane_daew9)
       (not_blocked seg_p104_0_76 airplane_daew0)
       (not_blocked seg_p104_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_p104_0_76)
       (not (not_occupied seg_p104_0_76)) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a)) (at-segment ?a seg_p104_0_76)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)))
 (:action ugly348ugly486ugly351ugly522startup_seg_o1_111d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action ugly349ugly421ugly198ugly237startup_seg_s_b5c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5c_0_60)
       (not_occupied seg_t_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a))))
 (:action ugly350ugly972ugly354ugly420startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly351ugly522ugly987ugly1235startup_seg_s_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_t_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a))))
 (:action ugly352ugly87ugly400ugly822startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly353ugly290ugly1353ugly725startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action ugly354ugly420ugly877ugly193startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly355ugly602ugly462ugly572startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly356ugly1304ugly1243ugly831move_seg_w1_141b_0_45_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew0)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
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
  ugly357ugly1075ugly408ugly465startup_seg_08r_b4a_0_161_245_south_medium
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
 (:action ugly358ugly257ugly1264ugly621startup_seg_s_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action ugly359ugly790ugly1338ugly1209startup_seg_s_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5d_0_60)
       (not_occupied seg_s_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a))))
 (:action ugly360ugly855ugly1324ugly155park_seg_p142_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action
  ugly361ugly36ugly517ugly250move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_daew8)
       (not_blocked seg_n_a7c_0_60 airplane_daew9)
       (not_blocked seg_n_a7c_0_60 airplane_daew0)
       (not_blocked seg_n_a7c_0_60 airplane_daew3)
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
  ugly362ugly795ugly584ugly888move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_daew8)
       (not_blocked seg_08l_a7a_0_80 airplane_daew9)
       (not_blocked seg_08l_a7a_0_80 airplane_daew0)
       (not_blocked seg_08l_a7a_0_80 airplane_daew3)
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
  ugly363ugly1023ugly274ugly874move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_daew8)
       (not_blocked seg_n_a6c_0_60 airplane_daew9)
       (not_blocked seg_n_a6c_0_60 airplane_daew0)
       (not_blocked seg_n_a6c_0_60 airplane_daew3)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (occupied seg_n_a6b_0_60)) (not_occupied seg_n_a6b_0_60)
       (not (at-segment ?a seg_n_a6b_0_60)) (occupied seg_n_a6c_0_60)
       (not (not_occupied seg_n_a6c_0_60)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a)) (at-segment ?a seg_n_a6c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a6a8a_0_115 ?a)) (not_blocked seg_n_a6a8a_0_115 ?a)
       (blocked seg_n_a6a_0_60 ?a) (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action ugly364ugly709ugly438ugly338startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action ugly365ugly1037ugly1291ugly575startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action ugly366ugly5ugly316ugly280startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly367ugly1177ugly344ugly730startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly368ugly169ugly749ugly330move_seg_o1_103b_0_60_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew0)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
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
  ugly369ugly18ugly1228ugly287move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_daew8)
       (not_blocked seg_p163_0_75 airplane_daew9)
       (not_blocked seg_p163_0_75 airplane_daew0)
       (not_blocked seg_p163_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_p163_0_75)
       (not (not_occupied seg_p163_0_75)) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a)) (at-segment ?a seg_p163_0_75)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)))
 (:action ugly370ugly977ugly998ugly1307startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly371ugly650ugly276ugly133startup_seg_b6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly372ugly827ugly1215ugly871move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew0)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_c3_b_0_80)) (not_occupied seg_c3_b_0_80)
       (not (at-segment ?a seg_c3_b_0_80)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c3_a_0_80 ?a)) (not_blocked seg_c3_a_0_80 ?a)))
 (:action
  ugly373ugly1332ugly197ugly639move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew0)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
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
  ugly374ugly727ugly211ugly1198move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew8)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew9)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew0)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew3)
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
 (:action ugly375ugly1050ugly289ugly560startup_seg_s_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly376ugly710ugly826ugly1186move_seg_b8_b_0_80_6226_seg_t_b8c_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_b_0_80_6226) (not_occupied seg_t_b8c_0_120_934)
       (not_blocked seg_t_b8c_0_120_934 airplane_cfbeg)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew8)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew9)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew0)
       (not_blocked seg_t_b8c_0_120_934 airplane_daew3))
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
  ugly377ugly1163ugly670ugly1234move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew0)
       (not_blocked seg_w1_141b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p141_0_75)) (not_occupied seg_p141_0_75)
       (not (at-segment ?a seg_p141_0_75)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action ugly378ugly563ugly975ugly126startup_seg_s_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action ugly379ugly598ugly1172ugly1185startup_seg_t_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action
  ugly380ugly98ugly1062ugly215move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew0)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
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
 (:action ugly381ugly656ugly1357ugly176startup_seg_t_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action ugly382ugly483ugly369ugly18startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly383ugly601ugly548ugly876move_seg_t_b8a_0_60_seg_s_b8b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b8a_0_60) (not_occupied seg_s_b8b_0_60)
       (not_blocked seg_s_b8b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8b_0_60 airplane_daew8)
       (not_blocked seg_s_b8b_0_60 airplane_daew9)
       (not_blocked seg_s_b8b_0_60 airplane_daew0)
       (not_blocked seg_s_b8b_0_60 airplane_daew3))
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
  ugly384ugly490ugly717ugly424move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_daew8)
       (not_blocked seg_08l_a3a_0_80 airplane_daew9)
       (not_blocked seg_08l_a3a_0_80 airplane_daew0)
       (not_blocked seg_08l_a3a_0_80 airplane_daew3)
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
 (:action ugly385ugly46ugly188ugly508startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly386ugly243ugly242ugly906move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew0)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (at-segment ?a seg_w1_153b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly387ugly726ugly1284ugly332startup_seg_s_b9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action ugly388ugly279ugly1157ugly1021park_seg_p153_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action ugly389ugly1102ugly255ugly573startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action ugly390ugly1301ugly524ugly1342startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly391ugly787ugly464ugly38move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew0)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a7a6c_0_75)) (not_occupied seg_n_a7a6c_0_75)
       (not (at-segment ?a seg_n_a7a6c_0_75)) (occupied seg_n_a7a6b_0_75)
       (not (not_occupied seg_n_a7a6b_0_75)) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a)) (at-segment ?a seg_n_a7a6b_0_75)
       (not (blocked seg_n_a7a6d_0_75 ?a)) (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly392ugly268ugly1113ugly959move_seg_w1_164a_0_34_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew0)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly393ugly683ugly942ugly1087startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly394ugly729ugly796ugly899startup_seg_s_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action ugly395ugly695ugly1031ugly150startup_seg_t_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5d_0_60)
       (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action ugly396ugly225ugly1118ugly1060startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly397ugly102ugly325ugly688move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daew8)
       (not_blocked seg_o1_109b_0_60 airplane_daew9)
       (not_blocked seg_o1_109b_0_60 airplane_daew0)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
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
 (:action ugly398ugly1203ugly264ugly300startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly399ugly1180ugly568ugly427move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_daew8)
       (not_blocked seg_n2_0_108 airplane_daew9)
       (not_blocked seg_n2_0_108 airplane_daew0)
       (not_blocked seg_n2_0_108 airplane_daew3))
  :effect
  (and (not (occupied seg_n_n2b_0_60)) (not_occupied seg_n_n2b_0_60)
       (not (at-segment ?a seg_n_n2b_0_60)) (occupied seg_n2_0_108)
       (not (not_occupied seg_n2_0_108)) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a)) (at-segment ?a seg_n2_0_108)
       (not (blocked seg_n_n2a_0_60 ?a)) (not_blocked seg_n_n2a_0_60 ?a)
       (not (blocked seg_n_n2c_0_60 ?a)) (not_blocked seg_n_n2c_0_60 ?a)))
 (:action ugly400ugly822ugly851ugly259startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action ugly401ugly175ugly1125ugly748startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action ugly402ugly216ugly191ugly1024startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly403ugly1092ugly322ugly124move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_daew8)
       (not_blocked seg_p118_0_76 airplane_daew9)
       (not_blocked seg_p118_0_76 airplane_daew0)
       (not_blocked seg_p118_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_p118_0_76)
       (not (not_occupied seg_p118_0_76)) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a)) (at-segment ?a seg_p118_0_76)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly404ugly541ugly839ugly825move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew0)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (occupied seg_w1_154a_0_34)) (not_occupied seg_w1_154a_0_34)
       (not (at-segment ?a seg_w1_154a_0_34)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (at-segment ?a seg_w1_154b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly405ugly240ugly697ugly867startup_seg_t_b3d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3b_0_60)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action ugly406ugly850ugly1361ugly654startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action ugly407ugly356ugly1304ugly1243startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly408ugly465ugly469ugly873startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly409ugly1179ugly1188ugly691move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew0)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly410ugly1126ugly1310ugly864park_seg_p117_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly411ugly174ugly6ugly1200move_seg_t_b8c_0_120_934_seg_t_b8a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b8c_0_120_934) (not_occupied seg_t_b8a_0_60)
       (not_blocked seg_t_b8a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b8a_0_60 airplane_daew8)
       (not_blocked seg_t_b8a_0_60 airplane_daew9)
       (not_blocked seg_t_b8a_0_60 airplane_daew0)
       (not_blocked seg_t_b8a_0_60 airplane_daew3)
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
 (:action ugly412ugly784ugly885ugly586startup_seg_t_b4c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4c_0_120_934)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action
  ugly413ugly981ugly1242ugly853pushback_seg_o1_c1c_0_80_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew0)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly414ugly355ugly602ugly462startup_seg_t_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_s_b5c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a))))
 (:action
  ugly415ugly636ugly1277ugly1063move_seg_s_b3b4b_0_140_seg_s_b3b4a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4b_0_140) (not_occupied seg_s_b3b4a_0_140)
       (not_blocked seg_s_b3b4a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4a_0_140 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b3b4b_0_140)) (not_occupied seg_s_b3b4b_0_140)
       (not (at-segment ?a seg_s_b3b4b_0_140)) (occupied seg_s_b3b4a_0_140)
       (not (not_occupied seg_s_b3b4a_0_140)) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))
       (at-segment ?a seg_s_b3b4a_0_140) (not (blocked seg_s_b3b4c_0_140 ?a))
       (not_blocked seg_s_b3b4c_0_140 ?a)))
 (:action
  ugly416ugly1280ugly701ugly1368move_seg_08r_b6c_0_80_seg_08r_b6b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6b_0_80)
       (not_blocked seg_08r_b6b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b6b_0_80 airplane_daew8)
       (not_blocked seg_08r_b6b_0_80 airplane_daew9)
       (not_blocked seg_08r_b6b_0_80 airplane_daew0)
       (not_blocked seg_08r_b6b_0_80 airplane_daew3)
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
  ugly417ugly1108ugly1253ugly506move_seg_o1_115c_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew0)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (at-segment ?a seg_o1_115b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (blocked seg_o1_115a_0_34 ?a) (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action ugly418ugly91ugly736ugly952park_seg_p107_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action ugly419ugly108ugly429ugly476startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly420ugly877ugly193ugly1020move_seg_o1_117b_0_60_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew0)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
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
  ugly421ugly198ugly237ugly578move_seg_o1_c4a_0_34_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew0)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly422ugly1065ugly1123ugly1056startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly423ugly461ugly1191ugly1221startup_seg_o1_109c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly424ugly95ugly1176ugly1319startup_seg_t_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action ugly425ugly905ugly535ugly798startup_seg_t_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action ugly426ugly377ugly1163ugly670startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action ugly427ugly186ugly926ugly872startup_seg_s_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly428ugly1286ugly742ugly647move_seg_08r_b3b4_0_520_seg_08r_b4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3b4_0_520) (not_occupied seg_08r_b4c_0_80)
       (not_blocked seg_08r_b4c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4c_0_80 airplane_daew8)
       (not_blocked seg_08r_b4c_0_80 airplane_daew9)
       (not_blocked seg_08r_b4c_0_80 airplane_daew0)
       (not_blocked seg_08r_b4c_0_80 airplane_daew3))
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
  ugly429ugly476ugly928ugly418move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_daew8)
       (not_blocked seg_08l_a2b_0_80 airplane_daew9)
       (not_blocked seg_08l_a2b_0_80 airplane_daew0)
       (not_blocked seg_08l_a2b_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_a2_a_0_90)) (not_occupied seg_a2_a_0_90)
       (not (at-segment ?a seg_a2_a_0_90)) (occupied seg_08l_a2b_0_80)
       (not (not_occupied seg_08l_a2b_0_80)) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a)) (at-segment ?a seg_08l_a2b_0_80)
       (not (blocked seg_a2_b_0_90 ?a)) (not_blocked seg_a2_b_0_90 ?a)))
 (:action
  ugly430ugly836ugly204ugly349move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew0)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (at-segment ?a seg_o1_116b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_115c_0_34 ?a)) (not_blocked seg_o1_115c_0_34 ?a)
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly431ugly455ugly1134ugly1321startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly432ugly1066ugly1204ugly183move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew0)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (at-segment ?a seg_o1_104b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly433ugly680ugly1117ugly363startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly434ugly1274ugly425ugly905startup_seg_t_b4d_0_60_south_medium
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
  ugly435ugly163ugly496ugly229move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew0)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
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
 (:action ugly436ugly777ugly818ugly138startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly437ugly1227ugly1323ugly254move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew0)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (at-segment ?a seg_o1_103b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly438ugly338ugly1329ugly1106startup_seg_t_b3a_0_60_south_medium
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
  ugly439ugly157ugly1054ugly746pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly440ugly756ugly1162ugly1315startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly441ugly1352ugly136ugly698startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly442ugly924ugly16ugly955move_seg_o1_104b_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew0)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (occupied seg_o1_104b_0_60)) (not_occupied seg_o1_104b_0_60)
       (not (at-segment ?a seg_o1_104b_0_60)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p104_0_76 ?a)) (not_blocked seg_p104_0_76 ?a)
       (blocked seg_o1_104c_0_60 ?a) (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly443ugly1005ugly437ugly1227startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly444ugly1130ugly1252ugly1135startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly445ugly558ugly1293ugly277move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
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
 (:action ugly446ugly687ugly592ugly480startup_seg_t_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action ugly447ugly863ugly128ugly1282startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly448ugly1202ugly594ugly674move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew9)
       (not_blocked seg_c4_s6a_0_80 airplane_daew0)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_c4_s6a_0_80)
       (not (not_occupied seg_c4_s6a_0_80)) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (at-segment ?a seg_c4_s6a_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly449ugly909ugly1249ugly1220move_seg_s_b2b3c_0_140_seg_s_b2b3b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2b3c_0_140) (not_occupied seg_s_b2b3b_0_140)
       (not_blocked seg_s_b2b3b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew0)
       (not_blocked seg_s_b2b3b_0_140 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b2b3c_0_140)) (not_occupied seg_s_b2b3c_0_140)
       (not (at-segment ?a seg_s_b2b3c_0_140)) (occupied seg_s_b2b3b_0_140)
       (not (not_occupied seg_s_b2b3b_0_140)) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))
       (at-segment ?a seg_s_b2b3b_0_140) (not (blocked seg_s_b3c_0_60 ?a))
       (not_blocked seg_s_b3c_0_60 ?a)))
 (:action ugly450ugly950ugly991ugly1014startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly451ugly1238ugly743ugly468move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daew8)
       (not_blocked seg_o1_104a_0_34 airplane_daew9)
       (not_blocked seg_o1_104a_0_34 airplane_daew0)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_104a_0_34)
       (not (not_occupied seg_o1_104a_0_34)) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (at-segment ?a seg_o1_104a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly452ugly359ugly790ugly1338startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action ugly453ugly1230ugly1073ugly634startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action ugly454ugly352ugly87ugly400startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly455ugly1134ugly1321ugly1349move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_daew8)
       (not_blocked seg_p143_0_75 airplane_daew9)
       (not_blocked seg_p143_0_75 airplane_daew0)
       (not_blocked seg_p143_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_p143_0_75)
       (not (not_occupied seg_p143_0_75)) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a)) (at-segment ?a seg_p143_0_75)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly456ugly1239ugly371ugly650move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew0)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_115c_0_34)
       (not (not_occupied seg_o1_115c_0_34)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a)) (at-segment ?a seg_o1_115c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action ugly457ugly475ugly1156ugly1094startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly458ugly497ugly1217ugly171move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daew8)
       (not_blocked seg_o1_103a_0_34 airplane_daew9)
       (not_blocked seg_o1_103a_0_34 airplane_daew0)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_103a_0_34)
       (not (not_occupied seg_o1_103a_0_34)) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (at-segment ?a seg_o1_103a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly459ugly882ugly886ugly1350startup_seg_b8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_t_b8c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))))
 (:action
  ugly460ugly921ugly699ugly856startup_seg_08l_a4c_0_161_245_south_medium
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
 (:action ugly461ugly1191ugly1221ugly953startup_seg_t_b9d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b9a_0_60) (not_occupied seg_t_b9b_0_60)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a)) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a)) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action ugly462ugly572ugly917ugly1313park_seg_p110_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action ugly463ugly789ugly1287ugly679startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly464ugly38ugly167ugly794move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_daew8)
       (not_blocked seg_p101_0_76 airplane_daew9)
       (not_blocked seg_p101_0_76 airplane_daew0)
       (not_blocked seg_p101_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_p101_0_76)
       (not (not_occupied seg_p101_0_76)) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a)) (at-segment ?a seg_p101_0_76)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action ugly465ugly469ugly873ugly1093startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action ugly466ugly1311ugly557ugly1091startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action ugly467ugly1096ugly1183ugly549startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action ugly468ugly317ugly618ugly282startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action ugly469ugly873ugly1093ugly1119startup_seg_t_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a))))
 (:action
  ugly470ugly1371ugly967ugly821move_seg_o1_104c_0_60_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew0)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
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
  ugly471ugly224ugly350ugly972move_seg_o1_108b_0_60_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
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
  ugly472ugly247ugly236ugly1229move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_daew8)
       (not_blocked seg_a2_b_0_90 airplane_daew9)
       (not_blocked seg_a2_b_0_90 airplane_daew0)
       (not_blocked seg_a2_b_0_90 airplane_daew3))
  :effect
  (and (not (occupied seg_a2_c_0_100)) (not_occupied seg_a2_c_0_100)
       (not (at-segment ?a seg_a2_c_0_100)) (occupied seg_a2_b_0_90)
       (not (not_occupied seg_a2_b_0_90)) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a)) (at-segment ?a seg_a2_b_0_90)
       (not (blocked seg_n_a2a_0_60 ?a)) (not_blocked seg_n_a2a_0_60 ?a)))
 (:action ugly473ugly1276ugly19ugly915startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly474ugly62ugly398ugly1203move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
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
 (:action ugly475ugly1156ugly1094ugly870startup_seg_t_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action ugly476ugly928ugly418ugly91startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action ugly477ugly1365ugly1174ugly1170startup_seg_t_b6d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action ugly478ugly208ugly550ugly925startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action ugly479ugly269ugly569ugly941startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly480ugly580ugly1194ugly40startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action ugly481ugly591ugly1267ugly1049startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly482ugly653ugly1058ugly214startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly483ugly369ugly18ugly1228move_seg_w1_c4b_0_60_seg_w1_c4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60)
       (not_blocked seg_w1_c4c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c4c_0_60 airplane_daew8)
       (not_blocked seg_w1_c4c_0_60 airplane_daew9)
       (not_blocked seg_w1_c4c_0_60 airplane_daew0)
       (not_blocked seg_w1_c4c_0_60 airplane_daew3)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (occupied seg_w1_c4b_0_60)) (not_occupied seg_w1_c4b_0_60)
       (not (at-segment ?a seg_w1_c4b_0_60)) (occupied seg_w1_c4c_0_60)
       (not (not_occupied seg_w1_c4c_0_60)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a)) (at-segment ?a seg_w1_c4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)
       (blocked seg_w1_c4a_0_34 ?a) (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action ugly484ugly783ugly406ugly850startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly485ugly637ugly61ugly368move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_daew8)
       (not_blocked seg_n_a7b_0_60 airplane_daew9)
       (not_blocked seg_n_a7b_0_60 airplane_daew0)
       (not_blocked seg_n_a7b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a7a6a_0_85)) (not_occupied seg_n_a7a6a_0_85)
       (not (at-segment ?a seg_n_a7a6a_0_85)) (occupied seg_n_a7b_0_60)
       (not (not_occupied seg_n_a7b_0_60)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (at-segment ?a seg_n_a7b_0_60)
       (not (blocked seg_n_a7a6b_0_75 ?a)) (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action ugly486ugly351ugly522ugly987startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action ugly487ugly978ugly619ugly681startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly488ugly780ugly804ugly1048move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew0)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (occupied seg_o1_102a_0_34)) (not_occupied seg_o1_102a_0_34)
       (not (at-segment ?a seg_o1_102a_0_34)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly489ugly231ugly182ugly682startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly490ugly717ugly424ugly95startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly491ugly979ugly80ugly957move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew9)
       (not_blocked seg_w1_c3c_0_48 airplane_daew0)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_c3c_0_48)
       (not (not_occupied seg_w1_c3c_0_48)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a)) (at-segment ?a seg_w1_c3c_0_48)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)))
 (:action ugly492ugly173ugly433ugly680startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action ugly493ugly792ugly493ugly792startup_seg_t_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_t_b2b_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action ugly494ugly265ugly922ugly1322startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly495ugly232ugly79ugly593startup_seg_t_b8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_t_b8b_0_60) (not_occupied seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly496ugly229ugly376ugly710startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action ugly497ugly1217ugly171ugly319startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly498ugly382ugly483ugly369move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew0)
       (not_blocked seg_w1_154a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly499ugly667ugly897ugly732move_seg_o1_118c_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew0)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
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
  ugly500ugly968ugly25ugly263move_seg_s_b5b_0_60_seg_s_b5a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b_0_60) (not_occupied seg_s_b5a_0_60)
       (not_blocked seg_s_b5a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5a_0_60 airplane_daew8)
       (not_blocked seg_s_b5a_0_60 airplane_daew9)
       (not_blocked seg_s_b5a_0_60 airplane_daew0)
       (not_blocked seg_s_b5a_0_60 airplane_daew3)
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
 (:action ugly501ugly676ugly943ugly27startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action ugly502ugly1344ugly1144ugly48startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly503ugly302ugly751ugly651move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_daew8)
       (not_blocked seg_p111_0_76 airplane_daew9)
       (not_blocked seg_p111_0_76 airplane_daew0)
       (not_blocked seg_p111_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_111b_0_60)) (not_occupied seg_o1_111b_0_60)
       (not (at-segment ?a seg_o1_111b_0_60)) (occupied seg_p111_0_76)
       (not (not_occupied seg_p111_0_76)) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a)) (at-segment ?a seg_p111_0_76)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly504ugly577ugly1362ugly1226startup_seg_s_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action ugly505ugly477ugly1365ugly1174startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action ugly506ugly413ugly981ugly1242startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly507ugly241ugly153ugly1025move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_daew8)
       (not_blocked seg_a2_a_0_90 airplane_daew9)
       (not_blocked seg_a2_a_0_90 airplane_daew0)
       (not_blocked seg_a2_a_0_90 airplane_daew3))
  :effect
  (and (not (occupied seg_a2_b_0_90)) (not_occupied seg_a2_b_0_90)
       (not (at-segment ?a seg_a2_b_0_90)) (occupied seg_a2_a_0_90)
       (not (not_occupied seg_a2_a_0_90)) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a)) (at-segment ?a seg_a2_a_0_90)
       (not (blocked seg_a2_c_0_100 ?a)) (not_blocked seg_a2_c_0_100 ?a)))
 (:action ugly508ugly1339ugly498ugly382startup_seg_b6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action
  ugly509ugly661ugly808ugly129move_seg_w1_143c_0_60_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew0)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (occupied seg_w1_143c_0_60)) (not_occupied seg_w1_143c_0_60)
       (not (at-segment ?a seg_w1_143c_0_60)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (at-segment ?a seg_w1_143b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2a_0_60 ?a)) (not_blocked seg_w1_c2a_0_60 ?a)
       (blocked seg_w1_143a_0_34 ?a) (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action ugly510ugly63ugly1299ugly1015startup_seg_s_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_t_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a))))
 (:action ugly511ugly106ugly346ugly799startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly512ugly724ugly1046ugly113startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action ugly513ugly576ugly531ugly135startup_seg_t_b6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_t_b6b_0_60) (not_occupied seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action ugly514ugly304ugly754ugly610startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly515ugly869ugly1279ugly824startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly516ugly878ugly402ugly216move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew0)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
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
  ugly517ugly250ugly170ugly830move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew0)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_116a_0_34)
       (not (not_occupied seg_o1_116a_0_34)) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (at-segment ?a seg_o1_116a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly518ugly100ugly800ugly1098startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action ugly519ugly446ugly687ugly592startup_seg_b8_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly520ugly1008ugly583ugly22startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action ugly521ugly457ugly475ugly1156startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly522ugly987ugly1235ugly614move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew0)
       (not_blocked seg_o1_102b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p102_0_76)) (not_occupied seg_p102_0_76)
       (not (at-segment ?a seg_p102_0_76)) (occupied seg_o1_102b_0_60)
       (not (not_occupied seg_o1_102b_0_60)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action ugly523ugly933ugly534ugly533startup_seg_s_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action
  ugly524ugly1342ugly1104ugly1326pushback_seg_o1_108a_0_34_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_108a_0_34)) (not_occupied seg_o1_108a_0_34)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (at-segment ?a seg_o1_108a_0_34)) (occupied seg_o1_c2c_0_34)
       (not (not_occupied seg_o1_c2c_0_34)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (at-segment ?a seg_o1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly525ugly1222ugly73ugly1240pushback_seg_o1_108c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly526ugly858ugly295ugly1041move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_daew8)
       (not_blocked seg_p142_0_75 airplane_daew9)
       (not_blocked seg_p142_0_75 airplane_daew0)
       (not_blocked seg_p142_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_142b_0_45)) (not_occupied seg_w1_142b_0_45)
       (not (at-segment ?a seg_w1_142b_0_45)) (occupied seg_p142_0_75)
       (not (not_occupied seg_p142_0_75)) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a)) (at-segment ?a seg_p142_0_75)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)))
 (:action ugly527ugly913ugly761ugly74startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly528ugly49ugly828ugly815move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p112_0_76)) (not_occupied seg_p112_0_76)
       (not (at-segment ?a seg_p112_0_76)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)))
 (:action ugly529ugly1139ugly625ugly348startup_seg_b9_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly530ugly908ugly976ugly361move_seg_s_b6b7b_0_140_seg_s_b6b7a_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7b_0_140) (not_occupied seg_s_b6b7a_0_140)
       (not_blocked seg_s_b6b7a_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew9)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew0)
       (not_blocked seg_s_b6b7a_0_140 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b6b7b_0_140)) (not_occupied seg_s_b6b7b_0_140)
       (not (at-segment ?a seg_s_b6b7b_0_140)) (occupied seg_s_b6b7a_0_140)
       (not (not_occupied seg_s_b6b7a_0_140)) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))
       (at-segment ?a seg_s_b6b7a_0_140) (not (blocked seg_s_b7d_0_60 ?a))
       (not_blocked seg_s_b7d_0_60 ?a)))
 (:action ugly531ugly135ugly547ugly556startup_seg_b10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action ugly532ugly23ugly605ugly172startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action ugly533ugly499ugly667ugly897startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action ugly534ugly533ugly499ugly667startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly535ugly798ugly542ugly1246move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_daew8)
       (not_blocked seg_n_a2b_0_60 airplane_daew9)
       (not_blocked seg_n_a2b_0_60 airplane_daew0)
       (not_blocked seg_n_a2b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2a3a_0_75)) (not_occupied seg_n_a2a3a_0_75)
       (not (at-segment ?a seg_n_a2a3a_0_75)) (occupied seg_n_a2b_0_60)
       (not (not_occupied seg_n_a2b_0_60)) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a)) (at-segment ?a seg_n_a2b_0_60)
       (not (blocked seg_n_a2a3b_0_75 ?a)) (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action ugly536ugly1057ugly510ugly63startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action ugly537ugly604ugly1275ugly791startup_seg_s_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action ugly538ugly1038ugly757ugly146startup_seg_t_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a))))
 (:action ugly539ugly449ugly909ugly1249startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action ugly540ugly270ugly1027ugly624startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action ugly541ugly839ugly825ugly227startup_seg_b3_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action ugly542ugly1246ugly86ugly235startup_seg_b5_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly543ugly744ugly222ugly759move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_daew8)
       (not_blocked seg_p110_0_76 airplane_daew9)
       (not_blocked seg_p110_0_76 airplane_daew0)
       (not_blocked seg_p110_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_110b_0_60)) (not_occupied seg_o1_110b_0_60)
       (not (at-segment ?a seg_o1_110b_0_60)) (occupied seg_p110_0_76)
       (not (not_occupied seg_p110_0_76)) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a)) (at-segment ?a seg_p110_0_76)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly544ugly293ugly114ugly1237startup_seg_s_b5c_0_60_south_medium
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
  ugly545ugly1071ugly664ugly944startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action ugly546ugly1129ugly286ugly1337startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action ugly547ugly556ugly635ugly627startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly548ugly876ugly111ugly1169startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action ugly549ugly1115ugly445ugly558startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action ugly550ugly925ugly1261ugly448startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly551ugly321ugly857ugly553startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly552ugly538ugly1038ugly757move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew0)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
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
  ugly553ugly1116ugly1219ugly35move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_daew8)
       (not_blocked seg_w1_c1b_0_60 airplane_daew9)
       (not_blocked seg_w1_c1b_0_60 airplane_daew0)
       (not_blocked seg_w1_c1b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_c1_n2c_0_60)) (not_occupied seg_c1_n2c_0_60)
       (not (at-segment ?a seg_c1_n2c_0_60)) (occupied seg_w1_c1b_0_60)
       (not (not_occupied seg_w1_c1b_0_60)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (at-segment ?a seg_w1_c1b_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c1_n2a_0_60 ?a)) (not_blocked seg_c1_n2a_0_60 ?a)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)))
 (:action ugly554ugly960ugly387ugly726startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly555ugly379ugly598ugly1172startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly556ugly635ugly627ugly948move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew0)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
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
  ugly557ugly1091ugly1088ugly895move_seg_o1_109d_0_45_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
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
  ugly558ugly1293ugly277ugly397move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew8)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew9)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew0)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew3)
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
  ugly559ugly1165ugly945ugly1077move_seg_s_b4c_0_60_seg_s_b3b4d_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b4c_0_60) (not_occupied seg_s_b3b4d_0_140)
       (not_blocked seg_s_b3b4d_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4d_0_140 airplane_daew3))
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
  ugly560ugly644ugly297ugly312move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_110a_0_34)) (not_occupied seg_o1_110a_0_34)
       (not (at-segment ?a seg_o1_110a_0_34)) (occupied seg_o1_109c_0_34)
       (not (not_occupied seg_o1_109c_0_34)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (at-segment ?a seg_o1_109c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly561ugly487ugly978ugly619startup_seg_s_b7d_0_60_south_medium
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
  ugly562ugly630ugly1155ugly837move_seg_o1_110c_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew0)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
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
 (:action ugly563ugly975ugly126ugly706startup_seg_s_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action
  ugly564ugly1095ugly638ugly251move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew0)
       (not_blocked seg_w1_164b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p164_0_75)) (not_occupied seg_p164_0_75)
       (not (at-segment ?a seg_p164_0_75)) (occupied seg_w1_164b_0_45)
       (not (not_occupied seg_w1_164b_0_45)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action ugly565ugly1312ugly503ugly302startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly566ugly410ugly1126ugly1310park_seg_p164_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action ugly567ugly463ugly789ugly1287startup_seg_s_b7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b7a_0_60) (not_occupied seg_s_b7c_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action ugly568ugly427ugly186ugly926startup_seg_w1_c4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly569ugly941ugly1059ugly771move_seg_b8_a_0_156_924_seg_b8_b_1_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_b8_a_0_156_924) (not_occupied seg_b8_b_1_0_80_6226)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_cfbeg)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew8)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew9)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew0)
       (not_blocked seg_b8_b_1_0_80_6226 airplane_daew3))
  :effect
  (and (not (occupied seg_b8_a_0_156_924)) (not_occupied seg_b8_a_0_156_924)
       (not (at-segment ?a seg_b8_a_0_156_924)) (occupied seg_b8_b_1_0_80_6226)
       (not (not_occupied seg_b8_b_1_0_80_6226))
       (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))
       (at-segment ?a seg_b8_b_1_0_80_6226)
       (not (blocked seg_08r_b6a_0_161_245 ?a))
       (not_blocked seg_08r_b6a_0_161_245 ?a)))
 (:action ugly570ugly434ugly1274ugly425park_seg_p103_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly571ugly262ugly218ugly590move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew0)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (occupied seg_o1_115a_0_34)) (not_occupied seg_o1_115a_0_34)
       (not (at-segment ?a seg_o1_115a_0_34)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (at-segment ?a seg_o1_115b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly572ugly917ugly1313ugly973startup_seg_s_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_t_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a))))
 (:action
  ugly573ugly739ugly543ugly744move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daew8)
       (not_blocked seg_w1_154b_0_45 airplane_daew9)
       (not_blocked seg_w1_154b_0_45 airplane_daew0)
       (not_blocked seg_w1_154b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p154_0_75)) (not_occupied seg_p154_0_75)
       (not (at-segment ?a seg_p154_0_75)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action ugly574ugly1317ugly115ugly1000startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action ugly575ugly778ugly177ugly71park_seg_p103_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action ugly576ugly531ugly135ugly547startup_seg_t_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action ugly577ugly1362ugly1226ugly652startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly578ugly284ugly1363ugly1053startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly579ugly829ugly340ugly891move_seg_w1_151b_0_45_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew0)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
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
  ugly580ugly1194ugly40ugly1294move_seg_o1_c1a_0_60_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly581ugly797ugly1316ugly1189startup_seg_o1_c3a_0_34_south_medium
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
  ugly582ugly723ugly511ugly106move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daew8)
       (not_blocked seg_c2_b_0_80 airplane_daew9)
       (not_blocked seg_c2_b_0_80 airplane_daew0)
       (not_blocked seg_c2_b_0_80 airplane_daew3))
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
  ugly583ugly22ugly1084ugly217move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daew8)
       (not_blocked seg_o1_c4c_0_80 airplane_daew9)
       (not_blocked seg_o1_c4c_0_80 airplane_daew0)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_c4_s6a_0_80)) (not_occupied seg_c4_s6a_0_80)
       (not (at-segment ?a seg_c4_s6a_0_80)) (occupied seg_o1_c4c_0_80)
       (not (not_occupied seg_o1_c4c_0_80)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a)) (at-segment ?a seg_o1_c4c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c4_s6b_0_60 ?a)) (not_blocked seg_c4_s6b_0_60 ?a)
       (not (blocked seg_c4_s6c_0_60 ?a)) (not_blocked seg_c4_s6c_0_60 ?a)))
 (:action ugly584ugly888ugly101ugly696startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action ugly585ugly1047ugly660ugly378startup_seg_t_b7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_t_b7b_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly586ugly532ugly23ugly605move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a4a7f_0_75)) (not_occupied seg_n_a4a7f_0_75)
       (not (at-segment ?a seg_n_a4a7f_0_75)) (occupied seg_n_a4a7e_0_75)
       (not (not_occupied seg_n_a4a7e_0_75)) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a)) (at-segment ?a seg_n_a4a7e_0_75)
       (not (blocked seg_n_a7c_0_60 ?a)) (not_blocked seg_n_a7c_0_60 ?a)))
 (:action ugly587ugly566ugly410ugly1126startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action ugly588ugly1270ugly12ugly1210park_seg_p154_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action ugly589ugly1254ugly436ugly777startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly590ugly415ugly636ugly1277startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly591ugly1267ugly1049ugly1136startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly592ugly480ugly580ugly1194move_seg_s_b4b6c_0_130_seg_s_b4b6b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6c_0_130) (not_occupied seg_s_b4b6b_0_135)
       (not_blocked seg_s_b4b6b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew9)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew0)
       (not_blocked seg_s_b4b6b_0_135 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b4b6c_0_130)) (not_occupied seg_s_b4b6c_0_130)
       (not (at-segment ?a seg_s_b4b6c_0_130)) (occupied seg_s_b4b6b_0_135)
       (not (not_occupied seg_s_b4b6b_0_135)) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))
       (at-segment ?a seg_s_b4b6b_0_135) (not (blocked seg_s_b6c_0_60 ?a))
       (not_blocked seg_s_b6c_0_60 ?a)))
 (:action ugly593ugly589ugly1254ugly436startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly594ugly674ugly285ugly963move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action ugly595ugly932ugly649ugly430startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly596ugly52ugly460ugly921startup_seg_s_b8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly597ugly1281ugly1076ugly1265startup_seg_t_b3c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly598ugly1172ugly1185ugly544move_seg_c4_s6b_0_60_seg_c4_s6a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_daew8)
       (not_blocked seg_c4_s6a_0_80 airplane_daew9)
       (not_blocked seg_c4_s6a_0_80 airplane_daew0)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (occupied seg_c4_s6b_0_60)) (not_occupied seg_c4_s6b_0_60)
       (not (at-segment ?a seg_c4_s6b_0_60)) (occupied seg_c4_s6a_0_80)
       (not (not_occupied seg_c4_s6a_0_80)) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (at-segment ?a seg_c4_s6a_0_80)
       (not (facing ?a north)) (facing ?a south) (not (blocked seg_s6_0_94 ?a))
       (not_blocked seg_s6_0_94 ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly599ugly140ugly1360ugly1356park_seg_p143_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action ugly600ugly1196ugly947ugly1105startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly601ugly548ugly876ugly111startup_seg_m_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly602ugly462ugly572ugly917startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action ugly603ugly766ugly868ugly854startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action ugly604ugly1275ugly791ugly722startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly605ugly172ugly1296ugly13move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew9)
       (not_blocked seg_w1_c3a_0_34 airplane_daew0)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action ugly606ugly672ugly72ugly1182startup_seg_o1_108d_0_45_south_medium
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
  ugly607ugly93ugly773ugly788move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_daew8)
       (not_blocked seg_08l_a4d_0_80 airplane_daew9)
       (not_blocked seg_08l_a4d_0_80 airplane_daew0)
       (not_blocked seg_08l_a4d_0_80 airplane_daew3))
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
  ugly608ugly342ugly949ugly555move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
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
 (:action ugly609ugly1303ugly992ugly782startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action ugly610ugly803ugly946ugly1081startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly611ugly391ugly787ugly464move_seg_s_b6a_0_60_seg_s_b6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60)
       (not_blocked seg_s_b6c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6c_0_60 airplane_daew8)
       (not_blocked seg_s_b6c_0_60 airplane_daew9)
       (not_blocked seg_s_b6c_0_60 airplane_daew0)
       (not_blocked seg_s_b6c_0_60 airplane_daew3)
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
  ugly612ugly331ugly1320ugly266move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew8)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew9)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew0)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew3))
  :effect
  (and (not (occupied seg_a8_b_1_0_79_7559))
       (not_occupied seg_a8_b_1_0_79_7559)
       (not (at-segment ?a seg_a8_b_1_0_79_7559)) (occupied seg_a8_b_0_80_6226)
       (not (not_occupied seg_a8_b_0_80_6226)) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))
       (at-segment ?a seg_a8_b_0_80_6226) (not (blocked seg_a8_a_0_157_785 ?a))
       (not_blocked seg_a8_a_0_157_785 ?a)))
 (:action ugly613ugly1148ugly983ugly488startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action ugly614ugly326ugly505ugly477startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action ugly615ugly1245ugly94ugly733startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly616ugly1195ugly971ugly1255move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew8)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew9)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew0)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew3)
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
  ugly617ugly1051ugly495ugly232move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_daew8)
       (not_blocked seg_n_a3d_0_60 airplane_daew9)
       (not_blocked seg_n_a3d_0_60 airplane_daew0)
       (not_blocked seg_n_a3d_0_60 airplane_daew3)
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
 (:action ugly618ugly282ugly1225ugly24startup_seg_b4_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly619ugly681ugly1150ugly50move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_daew8)
       (not_blocked seg_p108_0_76 airplane_daew9)
       (not_blocked seg_p108_0_76 airplane_daew0)
       (not_blocked seg_p108_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_108b_0_60)) (not_occupied seg_o1_108b_0_60)
       (not (at-segment ?a seg_o1_108b_0_60)) (occupied seg_p108_0_76)
       (not (not_occupied seg_p108_0_76)) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a)) (at-segment ?a seg_p108_0_76)
       (not (blocked seg_o1_108a_0_34 ?a)) (not_blocked seg_o1_108a_0_34 ?a)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly620ugly141ugly685ugly1297move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_daew8)
       (not_blocked seg_n_a8c_0_60 airplane_daew9)
       (not_blocked seg_n_a8c_0_60 airplane_daew0)
       (not_blocked seg_n_a8c_0_60 airplane_daew3)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (occupied seg_n_a8a_0_60)) (not_occupied seg_n_a8a_0_60)
       (not (at-segment ?a seg_n_a8a_0_60)) (occupied seg_n_a8c_0_60)
       (not (not_occupied seg_n_a8c_0_60)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a)) (at-segment ?a seg_n_a8c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_m_a8b_0_60 ?a)) (not_blocked seg_m_a8b_0_60 ?a)
       (blocked seg_n_a8b_0_60 ?a) (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action ugly621ugly708ugly501ugly676startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action ugly622ugly1109ugly612ugly331startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action ugly623ugly785ugly988ugly1318startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly624ugly1251ugly303ugly1302startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action ugly625ugly348ugly486ugly351startup_seg_t_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action
  ugly626ugly938ugly103ugly1335move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (blocked seg_o1_c1c_0_80 ?a) (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly627ugly948ugly9ugly485startup_seg_t_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action ugly628ugly805ugly1061ugly765startup_seg_s_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action ugly629ugly1142ugly68ugly521takeoff_seg_08r_0_80_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_08r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08r_0_80)) (not_occupied seg_08r_0_80)
       (not (blocked seg_08r_0_80 ?a)) (not_blocked seg_08r_0_80 ?a)
       (not (at-segment ?a seg_08r_0_80)) (airborne ?a seg_08r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b2b3_0_900 ?a))
       (not_blocked seg_08r_b2b3_0_900 ?a)))
 (:action
  ugly630ugly1155ugly837ugly386move_seg_w1_163c_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew0)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (at-segment ?a seg_w1_163b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action ugly631ugly130ugly1369ugly1002startup_seg_s_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly632ugly1257ugly59ugly75move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daew8)
       (not_blocked seg_o1_110d_0_45 airplane_daew9)
       (not_blocked seg_o1_110d_0_45 airplane_daew0)
       (not_blocked seg_o1_110d_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p133_0_75)) (not_occupied seg_p133_0_75)
       (not (at-segment ?a seg_p133_0_75)) (occupied seg_o1_110d_0_45)
       (not (not_occupied seg_o1_110d_0_45)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action ugly633ugly1145ugly104ugly902startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action ugly634ugly1164ugly1309ugly993startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action ugly635ugly627ugly948ugly9startup_seg_08r_b9a_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_08r_b9c_0_80) (not_occupied seg_09r_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (blocked seg_09r_0_80 ?a)
       (not (not_blocked seg_09r_0_80 ?a))))
 (:action ugly636ugly1277ugly1063ugly47startup_seg_t_b7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action ugly637ugly61ugly368ugly169park_seg_p141_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action ugly638ugly251ugly246ugly1007startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action ugly639ugly394ugly729ugly796startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly640ugly1143ugly275ugly974startup_seg_s_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action ugly641ugly1175ugly1127ugly956startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action ugly642ugly239ugly970ugly194startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action ugly643ugly820ugly1122ugly1314startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly644ugly297ugly312ugly310move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew0)
       (not_blocked seg_o1_116b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p116_0_76)) (not_occupied seg_p116_0_76)
       (not (at-segment ?a seg_p116_0_76)) (occupied seg_o1_116b_0_60)
       (not (not_occupied seg_o1_116b_0_60)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action ugly645ugly774ugly1167ugly318startup_seg_t_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action ugly646ugly1018ugly3ugly1300startup_seg_b4_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_t_b4c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a))))
 (:action
  ugly647ugly65ugly937ugly324move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c3a_0_34)) (not_occupied seg_o1_c3a_0_34)
       (not (at-segment ?a seg_o1_c3a_0_34)) (occupied seg_o1_111c_0_34)
       (not (not_occupied seg_o1_111c_0_34)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (at-segment ?a seg_o1_111c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action ugly648ugly154ugly1016ugly629startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly649ugly430ugly836ugly204move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew0)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
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
 (:action ugly650ugly276ugly133ugly482startup_seg_s_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly651ugly393ugly683ugly942startup_seg_08l_a7c_0_161_245_south_medium
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
 (:action ugly652ugly1178ugly328ugly54startup_seg_s_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action ugly653ugly1058ugly214ugly1298startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action ugly654ugly1190ugly677ugly83startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly655ugly1160ugly37ugly620move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew9)
       (not_blocked seg_w1_c2c_0_34 airplane_daew0)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_c2c_0_34)
       (not (not_occupied seg_w1_c2c_0_34)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a)) (at-segment ?a seg_w1_c2c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)))
 (:action ugly656ugly1357ugly176ugly523startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly657ugly1103ugly127ugly507move_seg_w1_163b_0_45_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew0)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (blocked seg_w1_163c_0_34 ?a) (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly658ugly793ugly230ugly245park_seg_p143_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action ugly659ugly588ugly1270ugly12startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly660ugly378ugly563ugly975move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew0)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly661ugly808ugly129ugly201startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action ugly662ugly929ugly1017ugly1080startup_seg_t_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action
  ugly663ugly705ugly898ugly1233move_seg_w1_143b_0_45_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew0)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p143_0_75 ?a)) (not_blocked seg_p143_0_75 ?a)
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly664ugly944ugly1078ugly940startup_seg_s_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action ugly665ugly608ugly342ugly949startup_seg_s_b6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action ugly666ugly786ugly335ugly92startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly667ugly897ugly732ugly431pushback_seg_o1_c3d_0_60_seg_c3_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daew8)
       (not_blocked seg_c3_b_0_80 airplane_daew9)
       (not_blocked seg_c3_b_0_80 airplane_daew0)
       (not_blocked seg_c3_b_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_c3_b_0_80)
       (not (not_occupied seg_c3_b_0_80)) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a)) (at-segment ?a seg_c3_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly668ugly616ugly1195ugly971startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly669ugly311ugly911ugly1250startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly670ugly1234ugly1ugly763startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly671ugly833ugly55ugly1168startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action ugly672ugly72ugly1182ugly939startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly673ugly658ugly793ugly230move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew0)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
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
  ugly674ugly285ugly963ugly252move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a6a8f_0_75)) (not_occupied seg_n_a6a8f_0_75)
       (not (at-segment ?a seg_n_a6a8f_0_75)) (occupied seg_n_a6a8e_0_75)
       (not (not_occupied seg_n_a6a8e_0_75)) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a)) (at-segment ?a seg_n_a6a8e_0_75)
       (not (blocked seg_n_a8c_0_60 ?a)) (not_blocked seg_n_a8c_0_60 ?a)))
 (:action ugly675ugly1262ugly168ugly1247startup_seg_t_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly676ugly943ugly27ugly1069move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2a3e_0_75)) (not_occupied seg_n_a2a3e_0_75)
       (not (at-segment ?a seg_n_a2a3e_0_75)) (occupied seg_n_a2a3d_0_75)
       (not (not_occupied seg_n_a2a3d_0_75)) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a)) (at-segment ?a seg_n_a2a3d_0_75)
       (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action
  ugly677ugly83ugly1271ugly426move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew0)
       (not_blocked seg_o1_110b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p110_0_76)) (not_occupied seg_p110_0_76)
       (not (at-segment ?a seg_p110_0_76)) (occupied seg_o1_110b_0_60)
       (not (not_occupied seg_o1_110b_0_60)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly678ugly745ugly1001ugly405move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daew8)
       (not_blocked seg_w1_163b_0_45 airplane_daew9)
       (not_blocked seg_w1_163b_0_45 airplane_daew0)
       (not_blocked seg_w1_163b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p163_0_75)) (not_occupied seg_p163_0_75)
       (not (at-segment ?a seg_p163_0_75)) (occupied seg_w1_163b_0_45)
       (not (not_occupied seg_w1_163b_0_45)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly679ugly995ugly226ugly734move_seg_o1_c3c_0_48_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
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
  ugly680ugly1117ugly363ugly1023move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daew8)
       (not_blocked seg_o1_c3c_0_48 airplane_daew9)
       (not_blocked seg_o1_c3c_0_48 airplane_daew0)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
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
 (:action ugly681ugly1150ugly50ugly357startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly682ugly762ugly249ugly1151move_seg_w1_141c_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew8)
       (not_blocked seg_w1_141b_0_45 airplane_daew9)
       (not_blocked seg_w1_141b_0_45 airplane_daew0)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (at-segment ?a seg_w1_141b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (blocked seg_w1_141a_0_34 ?a) (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action ugly683ugly942ugly1087ugly1040startup_seg_t_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9a_0_60)
       (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly684ugly1033ugly916ugly159move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew0)
       (not_blocked seg_w1_152c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_153a_0_34)) (not_occupied seg_w1_153a_0_34)
       (not (at-segment ?a seg_w1_153a_0_34)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)))
 (:action ugly685ugly1297ugly156ugly920startup_seg_o1_c2c_0_34_south_medium
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
  ugly686ugly39ugly1359ugly689move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew0)
       (not_blocked seg_w1_143a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_142c_0_34)) (not_occupied seg_w1_142c_0_34)
       (not (at-segment ?a seg_w1_142c_0_34)) (occupied seg_w1_143a_0_34)
       (not (not_occupied seg_w1_143a_0_34)) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (at-segment ?a seg_w1_143a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action ugly687ugly592ugly480ugly580startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action ugly688ugly370ugly977ugly998startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action ugly689ugly8ugly609ugly1303park_seg_p134_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly690ugly366ugly5ugly316move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew0)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (occupied seg_o1_117a_0_34)) (not_occupied seg_o1_117a_0_34)
       (not (at-segment ?a seg_o1_117a_0_34)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly691ugly260ugly67ugly60startup_seg_t_b3c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3b_0_60)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action ugly692ugly1351ugly399ugly1180startup_seg_s_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_t_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a))))
 (:action ugly693ugly597ugly1281ugly1076startup_seg_n_a3b_0_60_south_medium
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
  ugly694ugly883ugly525ugly1222move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew0)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
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
  ugly695ugly1031ugly150ugly570move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew0)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p119_0_76)) (not_occupied seg_p119_0_76)
       (not (at-segment ?a seg_p119_0_76)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)))
 (:action ugly696ugly1082ugly961ugly659startup_seg_t_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action ugly697ugly867ugly515ugly869startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly698ugly772ugly184ugly537startup_seg_t_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action
  ugly699ugly856ugly1079ugly1099startup_seg_08r_b4d_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_08r_b4a_0_161_245) (not_occupied seg_08r_b4c_0_80)
       (not_occupied seg_08r_b4b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))
       (blocked seg_08r_b4c_0_80 ?a) (not (not_blocked seg_08r_b4c_0_80 ?a))
       (blocked seg_08r_b4b_0_80 ?a) (not (not_blocked seg_08r_b4b_0_80 ?a))))
 (:action ugly700ugly1345ugly26ugly76startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action ugly701ugly1368ugly69ugly334startup_seg_t_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action ugly702ugly362ugly795ugly584startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly703ugly1004ugly802ugly648move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_daew8)
       (not_blocked seg_m_a8b_0_60 airplane_daew9)
       (not_blocked seg_m_a8b_0_60 airplane_daew0)
       (not_blocked seg_m_a8b_0_60 airplane_daew3)
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
 (:action ugly704ugly843ugly528ugly49startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly705ugly898ugly1233ugly199move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew0)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
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
  ugly706ugly645ugly774ugly1167move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew0)
       (not_blocked seg_o1_103c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_103c_0_34)
       (not (not_occupied seg_o1_103c_0_34)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a)) (at-segment ?a seg_o1_103c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)
       (not (blocked seg_o1_104c_0_60 ?a)) (not_blocked seg_o1_104c_0_60 ?a)))
 (:action ugly707ugly291ugly1331ugly1199startup_seg_o1_c3b_0_60_south_medium
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
  ugly708ugly501ugly676ugly943move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew0)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly709ugly438ugly338ugly1329startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly710ugly826ugly1186ugly109move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daew8)
       (not_blocked seg_w1_164c_0_34 airplane_daew9)
       (not_blocked seg_w1_164c_0_34 airplane_daew0)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_w1_164c_0_34)
       (not (not_occupied seg_w1_164c_0_34)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a)) (at-segment ?a seg_w1_164c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p164_0_75 ?a)) (not_blocked seg_p164_0_75 ?a)
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action ugly711ugly43ugly823ugly459park_seg_p101_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action ugly712ugly1039ugly272ugly935startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly713ugly690ugly366ugly5move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew0)
       (not_blocked seg_o1_104c_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c2a_0_60)) (not_occupied seg_o1_c2a_0_60)
       (not (at-segment ?a seg_o1_c2a_0_60)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action ugly714ugly77ugly360ugly855startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly715ugly1140ugly1153ugly1149move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew0)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3a_0_34 ?a)) (not_blocked seg_w1_c3a_0_34 ?a)
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly716ugly718ugly467ugly1096startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action ugly717ugly424ugly95ugly1176startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action ugly718ugly467ugly1096ugly1183startup_seg_t_b6b_0_60_south_medium
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
  ugly719ugly1259ugly700ugly1345move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daew8)
       (not_blocked seg_w1_163a_0_34 airplane_daew9)
       (not_blocked seg_w1_163a_0_34 airplane_daew0)
       (not_blocked seg_w1_163a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_162c_0_34)) (not_occupied seg_w1_162c_0_34)
       (not (at-segment ?a seg_w1_162c_0_34)) (occupied seg_w1_163a_0_34)
       (not (not_occupied seg_w1_163a_0_34)) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (at-segment ?a seg_w1_163a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly720ugly1258ugly142ugly299move_seg_08r_b3a_0_80_seg_08r_b3b4_0_520_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b3a_0_80) (not_occupied seg_08r_b3b4_0_520)
       (not_blocked seg_08r_b3b4_0_520 airplane_cfbeg)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew8)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew9)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew0)
       (not_blocked seg_08r_b3b4_0_520 airplane_daew3)
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
 (:action ugly721ugly1072ugly889ugly603startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action ugly722ugly741ugly887ugly657startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action ugly723ugly511ugly106ugly346startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly724ugly1046ugly113ugly1034startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly725ugly1236ugly364ugly709move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_daew8)
       (not_blocked seg_p119_0_76 airplane_daew9)
       (not_blocked seg_p119_0_76 airplane_daew0)
       (not_blocked seg_p119_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c4b_0_60)) (not_occupied seg_o1_c4b_0_60)
       (not (at-segment ?a seg_o1_c4b_0_60)) (occupied seg_p119_0_76)
       (not (not_occupied seg_p119_0_76)) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a)) (at-segment ?a seg_p119_0_76)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action ugly726ugly1284ugly332ugly615startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly727ugly211ugly1198ugly96move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew8)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew9)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew0)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a6a8b_0_75)) (not_occupied seg_n_a6a8b_0_75)
       (not (at-segment ?a seg_n_a6a8b_0_75)) (occupied seg_n_a6a8a_0_115)
       (not (not_occupied seg_n_a6a8a_0_115)) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly728ugly384ugly490ugly717move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew0)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p117_0_76 ?a)) (not_blocked seg_p117_0_76 ?a)
       (blocked seg_o1_117a_0_34 ?a) (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action ugly729ugly796ugly899ugly704startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly730ugly1013ugly752ugly88move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
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
 (:action ugly731ugly643ugly820ugly1122startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action ugly732ugly431ugly455ugly1134startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly733ugly966ugly120ugly781move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2a3f_0_115)) (not_occupied seg_n_a2a3f_0_115)
       (not (at-segment ?a seg_n_a2a3f_0_115)) (occupied seg_n_a2a3e_0_75)
       (not (not_occupied seg_n_a2a3e_0_75)) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a)) (at-segment ?a seg_n_a2a3e_0_75)
       (not (blocked seg_n_a3d_0_60 ?a)) (not_blocked seg_n_a3d_0_60 ?a)))
 (:action ugly734ugly407ugly356ugly1304startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action ugly735ugly203ugly965ugly267startup_seg_t_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly736ugly952ugly927ugly179move_seg_o1_109c_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew0)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
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
 (:action ugly737ugly896ugly596ugly52startup_seg_08r_b2a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action ugly738ugly223ugly806ugly910startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action ugly739ugly543ugly744ugly222park_seg_p142_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action ugly740ugly70ugly365ugly1037startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly741ugly887ugly657ugly1103move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew0)
       (not_blocked seg_w1_162c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_163a_0_34)) (not_occupied seg_w1_163a_0_34)
       (not (at-segment ?a seg_w1_163a_0_34)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)
       (not (blocked seg_w1_163c_0_34 ?a)) (not_blocked seg_w1_163c_0_34 ?a)))
 (:action
  ugly742ugly647ugly65ugly937move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew0)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
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
  ugly743ugly468ugly317ugly618move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew0)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly744ugly222ugly759ugly381startup_seg_s_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action ugly745ugly1001ugly405ugly240startup_seg_s_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action ugly746ugly444ugly1130ugly1252startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly747ugly1241ugly518ugly100startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly748ugly1216ugly834ugly1232startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly749ugly330ugly333ugly185move_seg_t_b2c_0_60_seg_b2_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_t_b2c_0_60) (not_occupied seg_b2_0_80)
       (not_blocked seg_b2_0_80 airplane_cfbeg)
       (not_blocked seg_b2_0_80 airplane_daew8)
       (not_blocked seg_b2_0_80 airplane_daew9)
       (not_blocked seg_b2_0_80 airplane_daew0)
       (not_blocked seg_b2_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_t_b2c_0_60)) (not_occupied seg_t_b2c_0_60)
       (not (at-segment ?a seg_t_b2c_0_60)) (occupied seg_b2_0_80)
       (not (not_occupied seg_b2_0_80)) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a)) (at-segment ?a seg_b2_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_t_b2a_0_60 ?a)) (not_blocked seg_t_b2a_0_60 ?a)
       (not (blocked seg_t_b2b_0_60 ?a)) (not_blocked seg_t_b2b_0_60 ?a)))
 (:action ugly750ugly554ugly960ugly387startup_seg_b4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action ugly751ugly651ugly393ugly683startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly752ugly88ugly313ugly417startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly753ugly1171ugly1373ugly631move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew0)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (occupied seg_w1_161c_0_34)) (not_occupied seg_w1_161c_0_34)
       (not (at-segment ?a seg_w1_161c_0_34)) (occupied seg_w1_161a_0_34)
       (not (not_occupied seg_w1_161a_0_34)) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (at-segment ?a seg_w1_161a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_162a_0_34 ?a)) (not_blocked seg_w1_162a_0_34 ?a)
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly754ugly610ugly803ugly946startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly755ugly1292ugly143ugly58move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daew8)
       (not_blocked seg_w1_c3c_0_48 airplane_daew9)
       (not_blocked seg_w1_c3c_0_48 airplane_daew0)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
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
  ugly756ugly1162ugly1315ugly1009startup_seg_b8_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action ugly757ugly146ugly581ugly797startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action ugly758ugly668ugly616ugly1195startup_seg_o1_110d_0_45_south_medium
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
  ugly759ugly381ugly656ugly1357move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew8)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew9)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew0)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a4a7b_0_75)) (not_occupied seg_n_a4a7b_0_75)
       (not (at-segment ?a seg_n_a4a7b_0_75)) (occupied seg_n_a4a7a_0_115)
       (not (not_occupied seg_n_a4a7a_0_115)) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action
  ugly760ugly14ugly375ugly1050move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_102a_0_34)) (not_occupied seg_o1_102a_0_34)
       (not (at-segment ?a seg_o1_102a_0_34)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)
       (not (blocked seg_o1_102c_0_34 ?a)) (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly761ugly74ugly1012ugly1111move_seg_o1_110c_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daew8)
       (not_blocked seg_o1_110b_0_60 airplane_daew9)
       (not_blocked seg_o1_110b_0_60 airplane_daew0)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
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
  ugly762ugly249ugly1151ugly147move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew0)
       (not_blocked seg_o1_102c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_103a_0_34)) (not_occupied seg_o1_103a_0_34)
       (not (at-segment ?a seg_o1_103a_0_34)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly763ugly747ugly1241ugly518move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_daew8)
       (not_blocked seg_08l_a7d_0_80 airplane_daew9)
       (not_blocked seg_08l_a7d_0_80 airplane_daew0)
       (not_blocked seg_08l_a7d_0_80 airplane_daew3))
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
 (:action ugly764ugly571ugly262ugly218startup_seg_t_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action ugly765ugly640ugly1143ugly275startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly766ugly868ugly854ugly1064startup_seg_t_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action ugly767ugly662ugly929ugly1017startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly768ugly466ugly1311ugly557startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action ugly769ugly980ugly353ugly290startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action ugly770ugly545ugly1071ugly664startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action ugly771ugly107ugly849ugly1138startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action ugly772ugly184ugly537ugly604startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly773ugly788ugly97ugly985startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action ugly774ugly1167ugly318ugly561startup_seg_b9_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_08r_b9a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9a_0_161_245 ?a)
       (not (not_blocked seg_08r_b9a_0_161_245 ?a))))
 (:action ugly775ugly105ugly414ugly355startup_seg_t_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action
  ugly776ugly861ugly844ugly1045move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_daew8)
       (not_blocked seg_w1_c4a_0_34 airplane_daew9)
       (not_blocked seg_w1_c4a_0_34 airplane_daew0)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_c4a_0_34)
       (not (not_occupied seg_w1_c4a_0_34)) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (at-segment ?a seg_w1_c4a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action ugly777ugly818ugly138ugly1010startup_seg_b8_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_08r_b6a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))))
 (:action
  ugly778ugly177ugly71ugly904pushback_seg_o1_c3b_0_60_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew0)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c3b_0_60)) (not_occupied seg_o1_c3b_0_60)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (at-segment ?a seg_o1_c3b_0_60)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly779ugly10ugly1083ugly551move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (occupied seg_o1_102c_0_34)) (not_occupied seg_o1_102c_0_34)
       (not (at-segment ?a seg_o1_102c_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly780ugly804ugly1048ugly258startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly781ugly81ugly187ugly1367move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew0)
       (not_blocked seg_o1_117b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p117_0_76)) (not_occupied seg_p117_0_76)
       (not (at-segment ?a seg_p117_0_76)) (occupied seg_o1_117b_0_60)
       (not (not_occupied seg_o1_117b_0_60)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action ugly782ugly1355ugly582ugly723startup_seg_t_b3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3a_0_60) (not_occupied seg_t_b3c_0_120_934)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a)) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a)) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action ugly783ugly406ugly850ugly1361startup_seg_s_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action
  ugly784ugly885ugly586ugly532move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew0)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
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
  ugly785ugly988ugly1318ugly1028startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action ugly786ugly335ugly92ugly1011startup_seg_s_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action ugly787ugly464ugly38ugly167startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly788ugly97ugly985ugly1256startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly789ugly1287ugly679ugly995move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_daew8)
       (not_blocked seg_p154_0_75 airplane_daew9)
       (not_blocked seg_p154_0_75 airplane_daew0)
       (not_blocked seg_p154_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_p154_0_75)
       (not (not_occupied seg_p154_0_75)) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a)) (at-segment ?a seg_p154_0_75)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)))
 (:action ugly790ugly1338ugly1209ugly684startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly791ugly722ugly741ugly887startup_seg_s_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action ugly792ugly493ugly792ugly493startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action ugly793ugly230ugly245ugly768startup_seg_b3_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action ugly794ugly323ugly210ugly502startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action ugly795ugly584ugly888ugly101startup_seg_s_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action ugly796ugly899ugly704ugly843startup_seg_t_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly797ugly1316ugly1189ugly997pushback_seg_o1_108d_0_45_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly798ugly542ugly1246ugly86move_seg_w1_162b_0_45_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daew8)
       (not_blocked seg_w1_162a_0_34 airplane_daew9)
       (not_blocked seg_w1_162a_0_34 airplane_daew0)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (occupied seg_w1_162b_0_45)) (not_occupied seg_w1_162b_0_45)
       (not (at-segment ?a seg_w1_162b_0_45)) (occupied seg_w1_162a_0_34)
       (not (not_occupied seg_w1_162a_0_34)) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (at-segment ?a seg_w1_162a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p162_0_75 ?a)) (not_blocked seg_p162_0_75 ?a)
       (blocked seg_w1_162c_0_34 ?a) (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly799ugly1364ugly390ugly1301startup_seg_t_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action ugly800ugly1098ugly1133ugly31startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action ugly801ugly814ugly1003ugly655startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action ugly802ugly648ugly154ugly1016startup_seg_t_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action ugly803ugly946ugly1081ugly994startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly804ugly1048ugly258ugly1110move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew0)
       (not_blocked seg_w1_163c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_164a_0_34)) (not_occupied seg_w1_164a_0_34)
       (not (at-segment ?a seg_w1_164a_0_34)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)))
 (:action ugly805ugly1061ugly765ugly640startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly806ugly910ugly1333ugly817pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action ugly807ugly271ugly336ugly646startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly808ugly129ugly201ugly1263startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly809ugly1112ugly85ugly1327move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew0)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p151_0_75 ?a)) (not_blocked seg_p151_0_75 ?a)
       (blocked seg_w1_151a_0_34 ?a) (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action ugly810ugly1124ugly1052ugly441startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action ugly811ugly1208ugly1213ugly1026startup_seg_t_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action
  ugly812ugly865ugly764ugly571move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew8)
       (not_blocked seg_o1_104c_0_60 airplane_daew9)
       (not_blocked seg_o1_104c_0_60 airplane_daew0)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (occupied seg_o1_104a_0_34)) (not_occupied seg_o1_104a_0_34)
       (not (at-segment ?a seg_o1_104a_0_34)) (occupied seg_o1_104c_0_60)
       (not (not_occupied seg_o1_104c_0_60)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a)) (at-segment ?a seg_o1_104c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly813ugly283ugly514ugly304startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action
  ugly814ugly1003ugly655ugly1160move_seg_s_b6b7a_0_140_seg_s_b6a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b6b7a_0_140) (not_occupied seg_s_b6a_0_60)
       (not_blocked seg_s_b6a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b6a_0_60 airplane_daew8)
       (not_blocked seg_s_b6a_0_60 airplane_daew9)
       (not_blocked seg_s_b6a_0_60 airplane_daew0)
       (not_blocked seg_s_b6a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b6b7a_0_140)) (not_occupied seg_s_b6b7a_0_140)
       (not (at-segment ?a seg_s_b6b7a_0_140)) (occupied seg_s_b6a_0_60)
       (not (not_occupied seg_s_b6a_0_60)) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (at-segment ?a seg_s_b6a_0_60)
       (not (blocked seg_s_b6b7b_0_140 ?a))
       (not_blocked seg_s_b6b7b_0_140 ?a)))
 (:action ugly815ugly401ugly175ugly1125park_seg_p141_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly816ugly559ugly1165ugly945startup_seg_08l_a4b_0_161_245_south_medium
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
 (:action ugly817ugly440ugly756ugly1162startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly818ugly138ugly1010ugly481startup_seg_t_b8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly819ugly1166ugly1269ugly1044park_seg_p161_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly820ugly1122ugly1314ugly738move_seg_w1_154b_0_45_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daew8)
       (not_blocked seg_w1_154a_0_34 airplane_daew9)
       (not_blocked seg_w1_154a_0_34 airplane_daew0)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p154_0_75 ?a)) (not_blocked seg_p154_0_75 ?a)
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly821ugly341ugly412ugly784startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action ugly822ugly851ugly259ugly1070startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action ugly823ugly459ugly882ugly886startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action ugly824ugly1354ugly1181ugly595startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly825ugly227ugly520ugly1008startup_seg_b5_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action
  ugly826ugly1186ugly109ugly248move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew0)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (occupied seg_w1_161a_0_34)) (not_occupied seg_w1_161a_0_34)
       (not (at-segment ?a seg_w1_161a_0_34)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (at-segment ?a seg_w1_161b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)
       (blocked seg_w1_161c_0_34 ?a) (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly827ugly1215ugly871ugly404startup_seg_b4_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action ugly828ugly815ugly401ugly175startup_seg_m_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4c_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly829ugly340ugly891ugly205startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly830ugly301ugly118ugly611move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
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
 (:action ugly831ugly2ugly1187ugly564startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action ugly832ugly767ugly662ugly929park_seg_p115_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action ugly833ugly55ugly1168ugly1266startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly834ugly1232ugly1328ugly996startup_seg_s_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly835ugly180ugly484ugly783move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew0)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
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
  ugly836ugly204ugly349ugly421move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew0)
       (not_blocked seg_w1_143b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p143_0_75)) (not_occupied seg_p143_0_75)
       (not (at-segment ?a seg_p143_0_75)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action ugly837ugly386ugly243ugly242startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly838ugly1019ugly123ugly1372startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly839ugly825ugly227ugly520startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action ugly840ugly443ugly1005ugly437startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action ugly841ugly1032ugly1289ugly526startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly842ugly41ugly812ugly865startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action ugly843ugly528ugly49ugly828startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly844ugly1045ugly30ugly846startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly845ugly42ugly213ugly166startup_seg_s_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action ugly846ugly1273ugly470ugly1371startup_seg_o1_110b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly847ugly489ugly231ugly182startup_seg_s5_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_s_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a))))
 (:action ugly848ugly539ugly449ugly909startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action ugly849ugly1138ugly1244ugly161startup_seg_s_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a))))
 (:action ugly850ugly1361ugly654ugly1190startup_seg_s_b7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s_b7b_0_60) (not_occupied seg_s_b7c_0_60)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a)) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a)) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action ugly851ugly259ugly1070ugly776startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly852ugly132ugly753ugly1171startup_seg_s_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action ugly853ugly442ugly924ugly16startup_seg_o1_109d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action ugly854ugly1064ugly622ugly1109startup_seg_t_b9d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action ugly855ugly1324ugly155ugly758startup_seg_s_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly856ugly1079ugly1099ugly471move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew0)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
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
  ugly857ugly553ugly1116ugly1219move_seg_s_b7d_0_60_seg_s_b6b7b_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b7d_0_60) (not_occupied seg_s_b6b7b_0_140)
       (not_blocked seg_s_b6b7b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew8)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew9)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew0)
       (not_blocked seg_s_b6b7b_0_140 airplane_daew3))
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
 (:action ugly858ugly295ugly1041ugly196startup_seg_t_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a))))
 (:action
  ugly859ugly11ugly389ugly1102move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_c1_n2b_0_80)) (not_occupied seg_c1_n2b_0_80)
       (not (at-segment ?a seg_c1_n2b_0_80)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c1_n2a_0_60 ?a)) (not_blocked seg_c1_n2a_0_60 ?a)
       (not (blocked seg_c1_n2c_0_60 ?a)) (not_blocked seg_c1_n2c_0_60 ?a)))
 (:action ugly860ugly1348ugly347ugly261startup_seg_s_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action ugly861ugly844ugly1045ugly30startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly862ugly1197ugly78ugly536park_seg_p119_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly863ugly128ugly1282ugly1030move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_111a_0_34)) (not_occupied seg_o1_111a_0_34)
       (not (at-segment ?a seg_o1_111a_0_34)) (occupied seg_o1_110c_0_34)
       (not (not_occupied seg_o1_110c_0_34)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (at-segment ?a seg_o1_110c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111c_0_34 ?a)) (not_blocked seg_o1_111c_0_34 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly864ugly1036ugly1278ugly112park_seg_p102_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly865ugly764ugly571ugly262move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew0)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
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
  ugly866ugly53ugly892ugly1288move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew0)
       (not_blocked seg_o1_118b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action ugly867ugly515ugly869ugly1279startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action ugly868ugly854ugly1064ugly622startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action ugly869ugly1279ugly824ugly1354startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly870ugly500ugly968ugly25move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew0)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_104c_0_60)) (not_occupied seg_o1_104c_0_60)
       (not (at-segment ?a seg_o1_104c_0_60)) (occupied seg_o1_c2a_0_60)
       (not (not_occupied seg_o1_c2a_0_60)) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (at-segment ?a seg_o1_c2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action ugly871ugly404ugly541ugly839startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly872ugly721ugly1072ugly889startup_seg_t_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly873ugly1093ugly1119ugly599move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew0)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (occupied seg_w1_151c_0_34)) (not_occupied seg_w1_151c_0_34)
       (not (at-segment ?a seg_w1_151c_0_34)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action ugly874ugly164ugly212ugly633startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action ugly875ugly982ugly628ugly805startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly876ugly111ugly1169ugly1290startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action ugly877ugly193ugly1020ugly423startup_seg_08r_b2a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_08r_b2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a))))
 (:action ugly878ugly402ugly216ugly191startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly879ugly969ugly1068ugly714move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_daew8)
       (not_blocked seg_n1_0_108 airplane_daew9)
       (not_blocked seg_n1_0_108 airplane_daew0)
       (not_blocked seg_n1_0_108 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c1a_0_60)) (not_occupied seg_w1_c1a_0_60)
       (not (at-segment ?a seg_w1_c1a_0_60)) (occupied seg_n1_0_108)
       (not (not_occupied seg_n1_0_108)) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a)) (at-segment ?a seg_n1_0_108)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)))
 (:action ugly880ugly220ugly819ugly1166startup_seg_n_a3d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action ugly881ugly439ugly157ugly1054startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly882ugly886ugly1350ugly600startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action ugly883ugly525ugly1222ugly73startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action ugly884ugly1097ugly1152ugly750startup_seg_s_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_t_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a))))
 (:action ugly885ugly586ugly532ugly23startup_seg_t_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action ugly886ugly1350ugly600ugly1196park_seg_p131_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action ugly887ugly657ugly1103ugly127startup_seg_t_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action ugly888ugly101ugly696ugly1082startup_seg_o1_110a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly889ugly603ugly766ugly868park_seg_p163_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action ugly890ugly912ugly1205ugly1100startup_seg_s_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly891ugly205ugly1006ugly1085move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew8)
       (not_blocked seg_w1_151c_0_34 airplane_daew9)
       (not_blocked seg_w1_151c_0_34 airplane_daew0)
       (not_blocked seg_w1_151c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_151c_0_34)
       (not (not_occupied seg_w1_151c_0_34)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a)) (at-segment ?a seg_w1_151c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)
       (not (blocked seg_w1_152c_0_34 ?a)) (not_blocked seg_w1_152c_0_34 ?a)))
 (:action ugly892ugly1288ugly428ugly1286startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly893ugly7ugly1055ugly116startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly894ugly66ugly1214ugly1341move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew0)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (occupied seg_w1_151a_0_34)) (not_occupied seg_w1_151a_0_34)
       (not (at-segment ?a seg_w1_151a_0_34)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (at-segment ?a seg_w1_151b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c2c_0_34 ?a)) (not_blocked seg_w1_c2c_0_34 ?a)
       (blocked seg_w1_151c_0_34 ?a) (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly895ugly372ugly827ugly1215startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly896ugly596ugly52ugly460startup_seg_o1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly897ugly732ugly431ugly455startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action ugly898ugly1233ugly199ugly305startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly899ugly704ugly843ugly528move_seg_s_b3a_0_60_seg_s_b3c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60)
       (not_blocked seg_s_b3c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b3c_0_60 airplane_daew8)
       (not_blocked seg_s_b3c_0_60 airplane_daew9)
       (not_blocked seg_s_b3c_0_60 airplane_daew0)
       (not_blocked seg_s_b3c_0_60 airplane_daew3)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (occupied seg_s_b3a_0_60)) (not_occupied seg_s_b3a_0_60)
       (not (at-segment ?a seg_s_b3a_0_60)) (occupied seg_s_b3c_0_60)
       (not (not_occupied seg_s_b3c_0_60)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a)) (at-segment ?a seg_s_b3c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b3b4a_0_140 ?a)) (not_blocked seg_s_b3b4a_0_140 ?a)
       (blocked seg_s_b3b_0_60 ?a) (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action ugly900ugly121ugly617ugly1051startup_seg_t_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly901ugly529ugly1139ugly625move_seg_o1_c2d_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew8)
       (not_blocked seg_o1_c2c_0_34 airplane_daew9)
       (not_blocked seg_o1_c2c_0_34 airplane_daew0)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
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
 (:action ugly902ugly1358ugly56ugly238startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action ugly903ugly32ugly900ugly121startup_seg_t_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a))))
 (:action
  ugly904ugly454ugly352ugly87move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew0)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
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
 (:action ugly905ugly535ugly798ugly542startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action ugly906ugly221ugly1067ugly367startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly907ugly1141ugly34ugly491park_seg_p133_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly908ugly976ugly361ugly36startup_seg_s_b3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action ugly909ugly1249ugly1220ugly51startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action ugly910ugly1333ugly817ugly440startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action ugly911ugly1250ugly1248ugly1370takeoff_seg_09r_0_80_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_09r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09r_0_80)) (not_occupied seg_09r_0_80)
       (not (blocked seg_09r_0_80 ?a)) (not_blocked seg_09r_0_80 ?a)
       (not (at-segment ?a seg_09r_0_80)) (airborne ?a seg_09r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b9b10_0_980 ?a))
       (not_blocked seg_08r_b9b10_0_980 ?a)))
 (:action
  ugly912ugly1205ugly1100ugly716startup_seg_s_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action ugly913ugly761ugly74ugly1012startup_seg_n_a3a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_n_a3b_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly914ugly1147ugly607ugly93startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action ugly915ugly1295ugly1343ugly458startup_seg_t_b2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action ugly916ugly159ugly137ugly1035startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action ugly917ugly1313ugly973ugly632startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action ugly918ugly504ugly577ugly1362startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action ugly919ugly1268ugly694ugly883startup_seg_t_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action
  ugly920ugly923ugly453ugly1230startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action ugly921ugly699ugly856ugly1079startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action ugly922ugly1322ugly801ugly814startup_seg_o1_c3d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action ugly923ugly453ugly1230ugly1073startup_seg_b10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action ugly924ugly16ugly955ugly339startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action ugly925ugly1261ugly448ugly1202startup_seg_t_b8d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8d_0_60)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action ugly926ugly872ugly721ugly1072startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly927ugly179ugly374ugly727move_seg_w1_152b_0_45_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew0)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (occupied seg_w1_152b_0_45)) (not_occupied seg_w1_152b_0_45)
       (not (at-segment ?a seg_w1_152b_0_45)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p152_0_75 ?a)) (not_blocked seg_p152_0_75 ?a)
       (blocked seg_w1_152c_0_34 ?a) (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly928ugly418ugly91ugly736startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action ugly929ugly1017ugly1080ugly623startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly930ugly845ugly42ugly213move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew8)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew9)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew0)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a7a6d_0_75)) (not_occupied seg_n_a7a6d_0_75)
       (not (at-segment ?a seg_n_a7a6d_0_75)) (occupied seg_n_a7a6c_0_75)
       (not (not_occupied seg_n_a7a6c_0_75)) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a)) (at-segment ?a seg_n_a7a6c_0_75)
       (not (blocked seg_n_a6c_0_60 ?a)) (not_blocked seg_n_a6c_0_60 ?a)))
 (:action
  ugly931ugly986ugly848ugly539pushback_seg_o1_108d_0_45_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108a_0_34)
       (not (not_occupied seg_o1_108a_0_34)) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (at-segment ?a seg_o1_108a_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly932ugly649ugly430ugly836move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew0)
       (not_blocked seg_w1_151b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p151_0_75)) (not_occupied seg_p151_0_75)
       (not (at-segment ?a seg_p151_0_75)) (occupied seg_w1_151b_0_45)
       (not (not_occupied seg_w1_151b_0_45)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action ugly933ugly534ugly533ugly499startup_seg_s_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly934ugly419ugly108ugly429startup_seg_08r_b6a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6a_0_161_245)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action ugly935ugly884ugly1097ugly1152startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly936ugly1137ugly411ugly174move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew0)
       (not_blocked seg_w1_142a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action ugly937ugly324ugly306ugly879startup_seg_o1_110c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly938ugly103ugly1335ugly288startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly939ugly958ugly907ugly1141move_seg_s_b7a_0_60_seg_s_b7d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b7a_0_60) (not_occupied seg_s_b7d_0_60)
       (not_blocked seg_s_b7d_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7d_0_60 airplane_daew8)
       (not_blocked seg_s_b7d_0_60 airplane_daew9)
       (not_blocked seg_s_b7d_0_60 airplane_daew0)
       (not_blocked seg_s_b7d_0_60 airplane_daew3)
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
 (:action ugly940ugly641ugly1175ugly1127park_seg_p109_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action ugly941ugly1059ugly771ugly107startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly942ugly1087ugly1040ugly606startup_seg_s_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action ugly943ugly27ugly1069ugly82startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action ugly944ugly1078ugly940ugly641startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action ugly945ugly1077ugly44ugly190startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly946ugly1081ugly994ugly918startup_seg_t_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action
  ugly947ugly1105ugly1120ugly1042startup_seg_08r_b6d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly948ugly9ugly485ugly637move_seg_08r_b2b_0_80_seg_08r_b2b3_0_900_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b2b_0_80) (not_occupied seg_08r_b2b3_0_900)
       (not_blocked seg_08r_b2b3_0_900 airplane_cfbeg)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew8)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew9)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew0)
       (not_blocked seg_08r_b2b3_0_900 airplane_daew3))
  :effect
  (and (not (occupied seg_08r_b2b_0_80)) (not_occupied seg_08r_b2b_0_80)
       (not (at-segment ?a seg_08r_b2b_0_80)) (occupied seg_08r_b2b3_0_900)
       (not (not_occupied seg_08r_b2b3_0_900)) (blocked seg_08r_b2b3_0_900 ?a)
       (not (not_blocked seg_08r_b2b3_0_900 ?a))
       (at-segment ?a seg_08r_b2b3_0_900) (not (blocked seg_08r_b2a_0_80 ?a))
       (not_blocked seg_08r_b2a_0_80 ?a)))
 (:action ugly949ugly555ugly379ugly598startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly950ugly991ugly1014ugly901startup_seg_t_b4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_t_b4b_0_60) (not_occupied seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly951ugly1132ugly392ugly268startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action ugly952ugly927ugly179ugly374startup_seg_b4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action ugly953ugly613ugly1148ugly983startup_seg_08r_b10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly954ugly713ugly690ugly366move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew8)
       (not_blocked seg_w1_141c_0_34 airplane_daew9)
       (not_blocked seg_w1_141c_0_34 airplane_daew0)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
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
  ugly955ugly339ugly1283ugly358move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew8)
       (not_blocked seg_o1_102a_0_34 airplane_daew9)
       (not_blocked seg_o1_102a_0_34 airplane_daew0)
       (not_blocked seg_o1_102a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (blocked seg_o1_c1c_0_80 ?a)) (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly956ugly1336ugly33ugly234move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew8)
       (not_blocked seg_w1_153c_0_34 airplane_daew9)
       (not_blocked seg_w1_153c_0_34 airplane_daew0)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
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
  ugly957ugly131ugly574ugly1317move_seg_s_b5b8b_0_135_seg_s_b5b8a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8b_0_135) (not_occupied seg_s_b5b8a_0_135)
       (not_blocked seg_s_b5b8a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew9)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew0)
       (not_blocked seg_s_b5b8a_0_135 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b5b8b_0_135)) (not_occupied seg_s_b5b8b_0_135)
       (not (at-segment ?a seg_s_b5b8b_0_135)) (occupied seg_s_b5b8a_0_135)
       (not (not_occupied seg_s_b5b8a_0_135)) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))
       (at-segment ?a seg_s_b5b8a_0_135) (not (blocked seg_s_b5b8c_0_130 ?a))
       (not_blocked seg_s_b5b8c_0_130 ?a)))
 (:action ugly958ugly907ugly1141ugly34startup_seg_b10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_08r_b10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10a_0_80 ?a)
       (not (not_blocked seg_08r_b10a_0_80 ?a))))
 (:action
  ugly959ugly29ugly671ugly833move_seg_s_b2b_0_60_seg_t_b2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b2b_0_60) (not_occupied seg_t_b2a_0_60)
       (not_blocked seg_t_b2a_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2a_0_60 airplane_daew8)
       (not_blocked seg_t_b2a_0_60 airplane_daew9)
       (not_blocked seg_t_b2a_0_60 airplane_daew0)
       (not_blocked seg_t_b2a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b2b_0_60)) (not_occupied seg_s_b2b_0_60)
       (not (at-segment ?a seg_s_b2b_0_60)) (occupied seg_t_b2a_0_60)
       (not (not_occupied seg_t_b2a_0_60)) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (at-segment ?a seg_t_b2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_s_b2a_0_60 ?a)) (not_blocked seg_s_b2a_0_60 ?a)))
 (:action
  ugly960ugly387ugly726ugly1284move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew0)
       (not_blocked seg_o1_103b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p103_0_76)) (not_occupied seg_p103_0_76)
       (not (at-segment ?a seg_p103_0_76)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action
  ugly961ugly659ugly588ugly1270move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daew8)
       (not_blocked seg_w1_151a_0_34 airplane_daew9)
       (not_blocked seg_w1_151a_0_34 airplane_daew0)
       (not_blocked seg_w1_151a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c2c_0_34)) (not_occupied seg_w1_c2c_0_34)
       (not (at-segment ?a seg_w1_c2c_0_34)) (occupied seg_w1_151a_0_34)
       (not (not_occupied seg_w1_151a_0_34)) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (at-segment ?a seg_w1_151a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c2a_0_60 ?a)) (not_blocked seg_w1_c2a_0_60 ?a)
       (not (blocked seg_w1_c2b_0_60 ?a)) (not_blocked seg_w1_c2b_0_60 ?a)))
 (:action
  ugly962ugly840ugly443ugly1005move_seg_o1_c4c_0_80_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daew8)
       (not_blocked seg_o1_c4b_0_60 airplane_daew9)
       (not_blocked seg_o1_c4b_0_60 airplane_daew0)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_o1_c4b_0_60)
       (not (not_occupied seg_o1_c4b_0_60)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (at-segment ?a seg_o1_c4b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (blocked seg_o1_c4a_0_34 ?a) (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action ugly963ugly252ugly158ugly811startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action ugly964ugly919ugly1268ugly694park_seg_p101_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly965ugly267ugly546ugly1129move_seg_c4_s6a_0_80_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew9)
       (not_blocked seg_c4_s6c_0_60 airplane_daew0)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
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
  ugly966ugly120ugly781ugly81move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_daew8)
       (not_blocked seg_c1_n2a_0_60 airplane_daew9)
       (not_blocked seg_c1_n2a_0_60 airplane_daew0)
       (not_blocked seg_c1_n2a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n2_0_108)) (not_occupied seg_n2_0_108)
       (not (at-segment ?a seg_n2_0_108)) (occupied seg_c1_n2a_0_60)
       (not (not_occupied seg_c1_n2a_0_60)) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (at-segment ?a seg_c1_n2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_n2b_0_60 ?a)) (not_blocked seg_n_n2b_0_60 ?a)))
 (:action ugly967ugly821ugly341ugly412startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action ugly968ugly25ugly263ugly117park_seg_p132_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly969ugly1068ugly714ugly77move_seg_o1_108d_0_45_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew8)
       (not_blocked seg_o1_108a_0_34 airplane_daew9)
       (not_blocked seg_o1_108a_0_34 airplane_daew0)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
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
 (:action ugly970ugly194ugly737ugly896startup_seg_s_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_t_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a))))
 (:action
  ugly971ugly1255ugly149ugly669move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
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
  ugly972ugly354ugly420ugly877move_seg_w1_142b_0_45_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew8)
       (not_blocked seg_w1_142a_0_34 airplane_daew9)
       (not_blocked seg_w1_142a_0_34 airplane_daew0)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
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
  ugly973ugly632ugly1257ugly59move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew0)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_141a_0_34)
       (not (not_occupied seg_w1_141a_0_34)) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (at-segment ?a seg_w1_141a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142a_0_34 ?a)) (not_blocked seg_w1_142a_0_34 ?a)
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly974ugly719ugly1259ugly700startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action ugly975ugly126ugly706ugly645startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly976ugly361ugly36ugly517move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_daew8)
       (not_blocked seg_p164_0_75 airplane_daew9)
       (not_blocked seg_p164_0_75 airplane_daew0)
       (not_blocked seg_p164_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_p164_0_75)
       (not (not_occupied seg_p164_0_75)) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a)) (at-segment ?a seg_p164_0_75)
       (not (blocked seg_w1_164a_0_34 ?a)) (not_blocked seg_w1_164a_0_34 ?a)
       (not (blocked seg_w1_164c_0_34 ?a)) (not_blocked seg_w1_164c_0_34 ?a)))
 (:action ugly977ugly998ugly1307ugly1029startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly978ugly619ugly681ugly1150move_seg_s_b3c_0_60_seg_s_b2b3c_0_140_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b3c_0_60) (not_occupied seg_s_b2b3c_0_140)
       (not_blocked seg_s_b2b3c_0_140 airplane_cfbeg)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew8)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew9)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew0)
       (not_blocked seg_s_b2b3c_0_140 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b3c_0_60)) (not_occupied seg_s_b3c_0_60)
       (not (at-segment ?a seg_s_b3c_0_60)) (occupied seg_s_b2b3c_0_140)
       (not (not_occupied seg_s_b2b3c_0_140)) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))
       (at-segment ?a seg_s_b2b3c_0_140) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_s_b3a_0_60 ?a))
       (not_blocked seg_s_b3a_0_60 ?a) (not (blocked seg_s_b3b_0_60 ?a))
       (not_blocked seg_s_b3b_0_60 ?a)))
 (:action ugly979ugly80ugly957ugly131startup_seg_t_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b_0_60)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly980ugly353ugly290ugly1353startup_seg_b3_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action ugly981ugly1242ugly853ugly442startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action ugly982ugly628ugly805ugly1061startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly983ugly488ugly780ugly804startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly984ugly675ugly1262ugly168startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action ugly985ugly1256ugly1128ugly192startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action ugly986ugly848ugly539ugly449startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly987ugly1235ugly614ugly326startup_seg_t_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action ugly988ugly1318ugly1028ugly1086startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action ugly989ugly1192ugly145ugly329startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly990ugly1193ugly1325ugly1272move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daew8)
       (not_blocked seg_w1_161b_0_45 airplane_daew9)
       (not_blocked seg_w1_161b_0_45 airplane_daew0)
       (not_blocked seg_w1_161b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p161_0_75)) (not_occupied seg_p161_0_75)
       (not (at-segment ?a seg_p161_0_75)) (occupied seg_w1_161b_0_45)
       (not (not_occupied seg_w1_161b_0_45)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action ugly991ugly1014ugly901ugly529startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action ugly992ugly782ugly1355ugly582startup_seg_s_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action
  ugly993ugly1089ugly144ugly207move_seg_w1_153c_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew0)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (at-segment ?a seg_w1_153b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly994ugly918ugly504ugly577startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly995ugly226ugly734ugly407move_seg_o1_108c_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew0)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
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
  ugly996ugly666ugly786ugly335move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_daew8)
       (not_blocked seg_08l_a2a_0_80 airplane_daew9)
       (not_blocked seg_08l_a2a_0_80 airplane_daew0)
       (not_blocked seg_08l_a2a_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_08l_a2b_0_80)) (not_occupied seg_08l_a2b_0_80)
       (not (at-segment ?a seg_08l_a2b_0_80)) (occupied seg_08l_a2a_0_80)
       (not (not_occupied seg_08l_a2a_0_80)) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a)) (at-segment ?a seg_08l_a2a_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a2_a_0_90 ?a)) (not_blocked seg_a2_a_0_90 ?a)))
 (:action
  ugly997ugly451ugly1238ugly743startup_seg_08r_b4a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4a_0_161_245)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action ugly998ugly1307ugly1029ugly1206startup_seg_t_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action
  ugly999ugly122ugly1305ugly702move_seg_o1_108c_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
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
 (:action ugly1000ugly1285ugly296ugly587startup_seg_t_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action ugly1001ugly405ugly240ugly697startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly1002ugly715ugly1140ugly1153startup_seg_m_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly1003ugly655ugly1160ugly37startup_seg_t_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action ugly1004ugly802ugly648ugly154park_seg_p115_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly1005ugly437ugly1227ugly1323move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daew8)
       (not_blocked seg_c1_n2b_0_80 airplane_daew9)
       (not_blocked seg_c1_n2b_0_80 airplane_daew0)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_c1_n2b_0_80)
       (not (not_occupied seg_c1_n2b_0_80)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (at-segment ?a seg_c1_n2b_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)))
 (:action
  ugly1006ugly1085ugly139ugly1211move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew8)
       (not_blocked seg_w1_143c_0_60 airplane_daew9)
       (not_blocked seg_w1_143c_0_60 airplane_daew0)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (occupied seg_w1_143b_0_45)) (not_occupied seg_w1_143b_0_45)
       (not (at-segment ?a seg_w1_143b_0_45)) (occupied seg_w1_143c_0_60)
       (not (not_occupied seg_w1_143c_0_60)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a)) (at-segment ?a seg_w1_143c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p143_0_75 ?a)) (not_blocked seg_p143_0_75 ?a)
       (blocked seg_w1_143a_0_34 ?a) (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action ugly1007ugly1022ugly890ugly912startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly1008ugly583ugly22ugly1084move_seg_w1_153b_0_45_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew0)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p153_0_75 ?a)) (not_blocked seg_p153_0_75 ?a)
       (blocked seg_w1_153c_0_34 ?a) (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly1009ugly728ugly384ugly490startup_seg_s_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action ugly1010ugly481ugly591ugly1267startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly1011ugly692ugly1351ugly399startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action ugly1012ugly1111ugly380ugly98startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly1013ugly752ugly88ugly313move_seg_o1_116b_0_60_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew0)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
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
  ugly1014ugly901ugly529ugly1139startup_seg_t_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action
  ugly1015ugly516ugly878ugly402move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daew8)
       (not_blocked seg_w1_153b_0_45 airplane_daew9)
       (not_blocked seg_w1_153b_0_45 airplane_daew0)
       (not_blocked seg_w1_153b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p153_0_75)) (not_occupied seg_p153_0_75)
       (not (at-segment ?a seg_p153_0_75)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action ugly1016ugly629ugly1142ugly68startup_seg_b3_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action ugly1017ugly1080ugly623ugly785park_seg_p111_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action
  ugly1018ugly3ugly1300ugly540move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew8)
       (not_blocked seg_o1_110c_0_34 airplane_daew9)
       (not_blocked seg_o1_110c_0_34 airplane_daew0)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
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
  ugly1019ugly123ugly1372ugly1043move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew8)
       (not_blocked seg_o1_117c_0_34 airplane_daew9)
       (not_blocked seg_o1_117c_0_34 airplane_daew0)
       (not_blocked seg_o1_117c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_118a_0_34)) (not_occupied seg_o1_118a_0_34)
       (not (at-segment ?a seg_o1_118a_0_34)) (occupied seg_o1_117c_0_34)
       (not (not_occupied seg_o1_117c_0_34)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a)) (at-segment ?a seg_o1_117c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)))
 (:action ugly1020ugly423ugly461ugly1191startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action ugly1021ugly807ugly271ugly336startup_seg_s_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly1022ugly890ugly912ugly1205startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly1023ugly274ugly874ugly164move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew0)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
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
  ugly1024ugly755ugly1292ugly143move_seg_b2_0_80_seg_b2_1_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_0_80) (not_occupied seg_b2_1_0_80)
       (not_blocked seg_b2_1_0_80 airplane_cfbeg)
       (not_blocked seg_b2_1_0_80 airplane_daew8)
       (not_blocked seg_b2_1_0_80 airplane_daew9)
       (not_blocked seg_b2_1_0_80 airplane_daew0)
       (not_blocked seg_b2_1_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_b2_0_80)) (not_occupied seg_b2_0_80)
       (not (at-segment ?a seg_b2_0_80)) (occupied seg_b2_1_0_80)
       (not (not_occupied seg_b2_1_0_80)) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a)) (at-segment ?a seg_b2_1_0_80)
       (not (blocked seg_t_b2c_0_60 ?a)) (not_blocked seg_t_b2c_0_60 ?a)))
 (:action ugly1025ugly90ugly119ugly703park_seg_p112_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action ugly1026ugly562ugly630ugly1155startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly1027ugly624ugly1251ugly303startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly1028ugly1086ugly1218ugly1366startup_seg_s_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a))))
 (:action
  ugly1029ugly1206ugly492ugly173move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew8)
       (not_blocked seg_o1_118b_0_60 airplane_daew9)
       (not_blocked seg_o1_118b_0_60 airplane_daew0)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
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
  ugly1030ugly308ugly327ugly479move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_109c_0_34)) (not_occupied seg_o1_109c_0_34)
       (not (at-segment ?a seg_o1_109c_0_34)) (occupied seg_o1_110a_0_34)
       (not (not_occupied seg_o1_110a_0_34)) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (at-segment ?a seg_o1_110a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action ugly1031ugly150ugly570ugly434startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly1032ugly1289ugly526ugly858move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew0)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (occupied seg_o1_c4c_0_80)) (not_occupied seg_o1_c4c_0_80)
       (not (at-segment ?a seg_o1_c4c_0_80)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c4_s6a_0_80 ?a)) (not_blocked seg_c4_s6a_0_80 ?a)
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly1033ugly916ugly159ugly137startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly1034ugly779ugly10ugly1083startup_seg_t_b6c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6b_0_60)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action ugly1035ugly1154ugly954ugly713startup_seg_s6_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_s_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a))))
 (:action
  ugly1036ugly1278ugly112ugly894move_seg_08r_b4c_0_80_seg_08r_b4b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b4c_0_80) (not_occupied seg_08r_b4b_0_80)
       (not_blocked seg_08r_b4b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b4b_0_80 airplane_daew8)
       (not_blocked seg_08r_b4b_0_80 airplane_daew9)
       (not_blocked seg_08r_b4b_0_80 airplane_daew0)
       (not_blocked seg_08r_b4b_0_80 airplane_daew3)
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
  ugly1037ugly1291ugly575ugly778move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_daew8)
       (not_blocked seg_n_a4b_0_60 airplane_daew9)
       (not_blocked seg_n_a4b_0_60 airplane_daew0)
       (not_blocked seg_n_a4b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a4a7a_0_115)) (not_occupied seg_n_a4a7a_0_115)
       (not (at-segment ?a seg_n_a4a7a_0_115)) (occupied seg_n_a4b_0_60)
       (not (not_occupied seg_n_a4b_0_60)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (at-segment ?a seg_n_a4b_0_60)
       (not (blocked seg_n_a4a7b_0_75 ?a)) (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action ugly1038ugly757ugly146ugly581park_seg_p152_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action ugly1039ugly272ugly935ugly884startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action ugly1040ugly606ugly672ugly72startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action ugly1041ugly196ugly519ugly446startup_seg_s_b5a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s_b5b_0_60) (not_occupied seg_s_b5c_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action ugly1042ugly478ugly208ugly550startup_seg_o1_c2d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly1043ugly298ugly278ugly395startup_seg_s_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action ugly1044ugly835ugly180ugly484startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly1045ugly30ugly846ugly1273startup_seg_08r_b4d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action
  ugly1046ugly113ugly1034ugly779move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daew8)
       (not_blocked seg_w1_c2a_0_60 airplane_daew9)
       (not_blocked seg_w1_c2a_0_60 airplane_daew0)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_143c_0_60)) (not_occupied seg_w1_143c_0_60)
       (not (at-segment ?a seg_w1_143c_0_60)) (occupied seg_w1_c2a_0_60)
       (not (not_occupied seg_w1_c2a_0_60)) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (at-segment ?a seg_w1_c2a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_143a_0_34 ?a)) (not_blocked seg_w1_143a_0_34 ?a)
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action ugly1047ugly660ugly378ugly563startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action ugly1048ugly258ugly1110ugly125startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1049ugly1136ugly1306ugly273move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew0)
       (not_blocked seg_w1_164a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_163c_0_34)) (not_occupied seg_w1_163c_0_34)
       (not (at-segment ?a seg_w1_163c_0_34)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_163a_0_34 ?a)) (not_blocked seg_w1_163a_0_34 ?a)
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly1050ugly289ugly560ugly644move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daew8)
       (not_blocked seg_o1_118a_0_34 airplane_daew9)
       (not_blocked seg_o1_118a_0_34 airplane_daew0)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_118a_0_34)
       (not (not_occupied seg_o1_118a_0_34)) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (at-segment ?a seg_o1_118a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_c4a_0_34 ?a)) (not_blocked seg_o1_c4a_0_34 ?a)
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly1051ugly495ugly232ugly79startup_seg_t_b8c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_t_b8a_0_60) (not_occupied seg_t_b8b_0_60)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a)) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a)) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action ugly1052ugly441ugly1352ugly136startup_seg_s_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action ugly1053ugly866ugly53ugly892startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action ugly1054ugly746ugly444ugly1130startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action ugly1055ugly116ugly1074ugly281startup_seg_s_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a))))
 (:action ugly1056ugly859ugly11ugly389startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action ugly1057ugly510ugly63ugly1299startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly1058ugly214ugly1298ugly1161move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2a3c_0_75)) (not_occupied seg_n_a2a3c_0_75)
       (not (at-segment ?a seg_n_a2a3c_0_75)) (occupied seg_n_a2a3b_0_75)
       (not (not_occupied seg_n_a2a3b_0_75)) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a)) (at-segment ?a seg_n_a2a3b_0_75)
       (not (blocked seg_n_a2a3d_0_75 ?a)) (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action ugly1059ugly771ugly107ugly849startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action ugly1060ugly1340ugly292ugly151startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly1061ugly765ugly640ugly1143move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daew8)
       (not_blocked seg_o1_115a_0_34 airplane_daew9)
       (not_blocked seg_o1_115a_0_34 airplane_daew0)
       (not_blocked seg_o1_115a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c3c_0_48)) (not_occupied seg_o1_c3c_0_48)
       (not (at-segment ?a seg_o1_c3c_0_48)) (occupied seg_o1_115a_0_34)
       (not (not_occupied seg_o1_115a_0_34)) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (at-segment ?a seg_o1_115a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action ugly1062ugly215ugly345ugly875startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action ugly1063ugly47ugly567ugly463startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly1064ugly622ugly1109ugly612move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daew8)
       (not_blocked seg_o1_102b_0_60 airplane_daew9)
       (not_blocked seg_o1_102b_0_60 airplane_daew0)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
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
  ugly1065ugly1123ugly1056ugly859move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daew8)
       (not_blocked seg_w1_c2c_0_34 airplane_daew9)
       (not_blocked seg_w1_c2c_0_34 airplane_daew0)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (occupied seg_w1_c2a_0_60)) (not_occupied seg_w1_c2a_0_60)
       (not (at-segment ?a seg_w1_c2a_0_60)) (occupied seg_w1_c2c_0_34)
       (not (not_occupied seg_w1_c2c_0_34)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a)) (at-segment ?a seg_w1_c2c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)
       (blocked seg_w1_c2b_0_60 ?a) (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action ugly1066ugly1204ugly183ugly343startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly1067ugly367ugly1177ugly344startup_seg_b9_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action ugly1068ugly714ugly77ugly360park_seg_p163_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly1069ugly82ugly860ugly1348move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew8)
       (not_blocked seg_o1_c2d_0_60 airplane_daew9)
       (not_blocked seg_o1_c2d_0_60 airplane_daew0)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_c2_b_0_80)) (not_occupied seg_c2_b_0_80)
       (not (at-segment ?a seg_c2_b_0_80)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_c2_a_0_80 ?a)) (not_blocked seg_c2_a_0_80 ?a)))
 (:action ugly1070ugly776ugly861ugly844startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly1071ugly664ugly944ugly1078park_seg_p108_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action ugly1072ugly889ugly603ugly766startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly1073ugly634ugly1164ugly1309park_seg_p134_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly1074ugly281ugly673ugly658startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly1075ugly408ugly465ugly469startup_seg_w1_c4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly1076ugly1265ugly512ugly724park_seg_p118_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly1077ugly44ugly190ugly735move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daew8)
       (not_blocked seg_w1_143b_0_45 airplane_daew9)
       (not_blocked seg_w1_143b_0_45 airplane_daew0)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (occupied seg_w1_143a_0_34)) (not_occupied seg_w1_143a_0_34)
       (not (at-segment ?a seg_w1_143a_0_34)) (occupied seg_w1_143b_0_45)
       (not (not_occupied seg_w1_143b_0_45)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (at-segment ?a seg_w1_143b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_142c_0_34 ?a)) (not_blocked seg_w1_142c_0_34 ?a)
       (blocked seg_w1_143c_0_60 ?a) (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly1078ugly940ugly641ugly1175startup_seg_m_a4c_0_60_south_medium
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
  ugly1079ugly1099ugly471ugly224move_seg_o1_c2c_0_34_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
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
 (:action ugly1080ugly623ugly785ugly988startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action ugly1081ugly994ugly918ugly504startup_seg_t_b5c_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5a_0_60) (not_occupied seg_t_b5b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a)) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly1082ugly961ugly659ugly588startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action ugly1083ugly551ugly321ugly857startup_seg_t_b6d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b6a_0_60) (not_occupied seg_t_b6b_0_60)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a)) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a)) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action ugly1084ugly217ugly294ugly862startup_seg_m_a8d_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly1085ugly139ugly1211ugly200startup_seg_o1_108a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly1086ugly1218ugly1366ugly693startup_seg_s_b8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly1087ugly1040ugly606ugly672move_seg_08r_b9c_0_80_seg_09r_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b9c_0_80) (not_occupied seg_09r_0_80)
       (not_blocked seg_09r_0_80 airplane_cfbeg)
       (not_blocked seg_09r_0_80 airplane_daew8)
       (not_blocked seg_09r_0_80 airplane_daew9)
       (not_blocked seg_09r_0_80 airplane_daew0)
       (not_blocked seg_09r_0_80 airplane_daew3)
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
 (:action ugly1088ugly895ugly372ugly827startup_seg_m_a9c_0_60_south_medium
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
  ugly1089ugly144ugly207ugly219move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_daew8)
       (not_blocked seg_n_a4c_0_60 airplane_daew9)
       (not_blocked seg_n_a4c_0_60 airplane_daew0)
       (not_blocked seg_n_a4c_0_60 airplane_daew3)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (occupied seg_n_a4b_0_60)) (not_occupied seg_n_a4b_0_60)
       (not (at-segment ?a seg_n_a4b_0_60)) (occupied seg_n_a4c_0_60)
       (not (not_occupied seg_n_a4c_0_60)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a)) (at-segment ?a seg_n_a4c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a4a7a_0_115 ?a)) (not_blocked seg_n_a4a7a_0_115 ?a)
       (blocked seg_n_a4a_0_60 ?a) (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action ugly1090ugly707ugly291ugly1331startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action ugly1091ugly1088ugly895ugly372startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly1092ugly322ugly124ugly432startup_seg_c4_s6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action ugly1093ugly1119ugly599ugly140startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly1094ugly870ugly500ugly968move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew8)
       (not_blocked seg_w1_162c_0_34 airplane_daew9)
       (not_blocked seg_w1_162c_0_34 airplane_daew0)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_162c_0_34)
       (not (not_occupied seg_w1_162c_0_34)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a)) (at-segment ?a seg_w1_162c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161c_0_34 ?a)) (not_blocked seg_w1_161c_0_34 ?a)
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly1095ugly638ugly251ugly246startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly1096ugly1183ugly549ugly1115pushback_seg_p107_0_76_seg_o1_c2b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew8)
       (not_blocked seg_o1_c2b_0_60 airplane_daew9)
       (not_blocked seg_o1_c2b_0_60 airplane_daew0)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (blocked seg_p107_0_76 ?a)) (not_blocked seg_p107_0_76 ?a)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action ugly1097ugly1152ugly750ugly554startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action ugly1098ugly1133ugly31ugly1231startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly1099ugly471ugly224ugly350park_seg_p110_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action ugly1100ugly716ugly718ugly467startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action ugly1101ugly712ugly1039ugly272startup_seg_o1_108b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly1102ugly255ugly573ugly739startup_seg_t_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly1103ugly127ugly507ugly241move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew8)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew9)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew0)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew3))
  :effect
  (and (not (occupied seg_a8_b_0_80_6226)) (not_occupied seg_a8_b_0_80_6226)
       (not (at-segment ?a seg_a8_b_0_80_6226)) (occupied seg_m_a8d_0_120_934)
       (not (not_occupied seg_m_a8d_0_120_934))
       (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))
       (at-segment ?a seg_m_a8d_0_120_934) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_a8_b_1_0_79_7559 ?a))
       (not_blocked seg_a8_b_1_0_79_7559 ?a)))
 (:action ugly1104ugly1326ugly450ugly950startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly1105ugly1120ugly1042ugly478move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_daew8)
       (not_blocked seg_p151_0_75 airplane_daew9)
       (not_blocked seg_p151_0_75 airplane_daew0)
       (not_blocked seg_p151_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_151b_0_45)) (not_occupied seg_w1_151b_0_45)
       (not (at-segment ?a seg_w1_151b_0_45)) (occupied seg_p151_0_75)
       (not (not_occupied seg_p151_0_75)) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a)) (at-segment ?a seg_p151_0_75)
       (not (blocked seg_w1_151a_0_34 ?a)) (not_blocked seg_w1_151a_0_34 ?a)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly1106ugly509ugly661ugly808move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew8)
       (not_blocked seg_w1_161c_0_34 airplane_daew9)
       (not_blocked seg_w1_161c_0_34 airplane_daew0)
       (not_blocked seg_w1_161c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_162a_0_34)) (not_occupied seg_w1_162a_0_34)
       (not (at-segment ?a seg_w1_162a_0_34)) (occupied seg_w1_161c_0_34)
       (not (not_occupied seg_w1_161c_0_34)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a)) (at-segment ?a seg_w1_161c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)
       (not (blocked seg_w1_162c_0_34 ?a)) (not_blocked seg_w1_162c_0_34 ?a)))
 (:action ugly1107ugly1158ugly435ugly163startup_seg_t_b2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action ugly1108ugly1253ugly506ugly413startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly1109ugly612ugly331ugly1320move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
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
 (:action ugly1110ugly125ugly990ugly1193startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly1111ugly380ugly98ugly1062move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daew8)
       (not_blocked seg_w1_152b_0_45 airplane_daew9)
       (not_blocked seg_w1_152b_0_45 airplane_daew0)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_152b_0_45)
       (not (not_occupied seg_w1_152b_0_45)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (at-segment ?a seg_w1_152b_0_45)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)
       (blocked seg_w1_152c_0_34 ?a) (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly1112ugly85ugly1327ugly206startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action ugly1113ugly959ugly29ugly671startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly1114ugly447ugly863ugly128startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly1115ugly445ugly558ugly1293move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daew8)
       (not_blocked seg_o1_116a_0_34 airplane_daew9)
       (not_blocked seg_o1_116a_0_34 airplane_daew0)
       (not_blocked seg_o1_116a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_115c_0_34)) (not_occupied seg_o1_115c_0_34)
       (not (at-segment ?a seg_o1_115c_0_34)) (occupied seg_o1_116a_0_34)
       (not (not_occupied seg_o1_116a_0_34)) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (at-segment ?a seg_o1_116a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_115a_0_34 ?a)) (not_blocked seg_o1_115a_0_34 ?a)
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly1116ugly1219ugly35ugly189move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
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
 (:action ugly1117ugly363ugly1023ugly274startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly1118ugly1060ugly1340ugly292move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew8)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew9)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew0)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew3))
  :effect
  (and (not (occupied seg_a8_a_0_157_785)) (not_occupied seg_a8_a_0_157_785)
       (not (at-segment ?a seg_a8_a_0_157_785)) (occupied seg_a8_b_1_0_79_7559)
       (not (not_occupied seg_a8_b_1_0_79_7559))
       (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))
       (at-segment ?a seg_a8_b_1_0_79_7559)
       (not (blocked seg_08l_a7b_0_161_245 ?a))
       (not_blocked seg_08l_a7b_0_161_245 ?a)))
 (:action ugly1119ugly599ugly140ugly1360startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly1120ugly1042ugly478ugly208startup_seg_t_b6c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly1121ugly403ugly1092ugly322move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew0)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (occupied seg_w1_164c_0_34)) (not_occupied seg_w1_164c_0_34)
       (not (at-segment ?a seg_w1_164c_0_34)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly1122ugly1314ugly738ugly223park_seg_p153_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action
  ugly1123ugly1056ugly859ugly11move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daew8)
       (not_blocked seg_o1_111b_0_60 airplane_daew9)
       (not_blocked seg_o1_111b_0_60 airplane_daew0)
       (not_blocked seg_o1_111b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p111_0_76)) (not_occupied seg_p111_0_76)
       (not (at-segment ?a seg_p111_0_76)) (occupied seg_o1_111b_0_60)
       (not (not_occupied seg_o1_111b_0_60)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly1124ugly1052ugly441ugly1352move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew0)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_154a_0_34 ?a)) (not_blocked seg_w1_154a_0_34 ?a)
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly1125ugly748ugly1216ugly834startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action ugly1126ugly1310ugly864ugly1036startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly1127ugly956ugly1336ugly33move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daew8)
       (not_blocked seg_w1_162b_0_45 airplane_daew9)
       (not_blocked seg_w1_162b_0_45 airplane_daew0)
       (not_blocked seg_w1_162b_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p162_0_75)) (not_occupied seg_p162_0_75)
       (not (at-segment ?a seg_p162_0_75)) (occupied seg_w1_162b_0_45)
       (not (not_occupied seg_w1_162b_0_45)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action ugly1128ugly192ugly1131ugly770startup_seg_t_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action ugly1129ugly286ugly1337ugly984startup_seg_s_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly1130ugly1252ugly1135ugly1101startup_seg_s_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action ugly1131ugly770ugly545ugly1071startup_seg_s_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action ugly1132ugly392ugly268ugly1113startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action ugly1133ugly31ugly1231ugly847startup_seg_08r_b10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_08r_b10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10b_0_80 ?a)
       (not (not_blocked seg_08r_b10b_0_80 ?a))))
 (:action ugly1134ugly1321ugly1349ugly202startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly1135ugly1101ugly712ugly1039move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew8)
       (not_blocked seg_o1_111c_0_34 airplane_daew9)
       (not_blocked seg_o1_111c_0_34 airplane_daew0)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
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
  ugly1136ugly1306ugly273ugly28move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
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
 (:action ugly1137ugly411ugly174ugly6startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action ugly1138ugly1244ugly161ugly663startup_seg_s_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action
  ugly1139ugly625ugly348ugly486move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_daew8)
       (not_blocked seg_p107_0_76 airplane_daew9)
       (not_blocked seg_p107_0_76 airplane_daew0)
       (not_blocked seg_p107_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_p107_0_76)
       (not (not_occupied seg_p107_0_76)) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a)) (at-segment ?a seg_p107_0_76)
       (not (blocked seg_o1_c2a_0_60 ?a)) (not_blocked seg_o1_c2a_0_60 ?a)
       (not (blocked seg_o1_c2c_0_34 ?a)) (not_blocked seg_o1_c2c_0_34 ?a)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)))
 (:action
  ugly1140ugly1153ugly1149ugly134startup_seg_m_a6d_0_120_934_south_medium
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
  ugly1141ugly34ugly491ugly979move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew8)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew9)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew0)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew3))
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
 (:action ugly1142ugly68ugly521ugly457startup_seg_b4_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action ugly1143ugly275ugly974ugly719startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly1144ugly48ugly809ugly1112move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2a3b_0_75)) (not_occupied seg_n_a2a3b_0_75)
       (not (at-segment ?a seg_n_a2a3b_0_75)) (occupied seg_n_a2a3a_0_75)
       (not (not_occupied seg_n_a2a3a_0_75)) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a)) (at-segment ?a seg_n_a2a3a_0_75)
       (not (blocked seg_n_a2a3c_0_75 ?a)) (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action
  ugly1145ugly104ugly902ugly1358move_seg_t_b2a_0_60_seg_t_b2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60)
       (not_blocked seg_t_b2c_0_60 airplane_cfbeg)
       (not_blocked seg_t_b2c_0_60 airplane_daew8)
       (not_blocked seg_t_b2c_0_60 airplane_daew9)
       (not_blocked seg_t_b2c_0_60 airplane_daew0)
       (not_blocked seg_t_b2c_0_60 airplane_daew3)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (occupied seg_t_b2a_0_60)) (not_occupied seg_t_b2a_0_60)
       (not (at-segment ?a seg_t_b2a_0_60)) (occupied seg_t_b2c_0_60)
       (not (not_occupied seg_t_b2c_0_60)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a)) (at-segment ?a seg_t_b2c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b2b_0_60 ?a)) (not_blocked seg_s_b2b_0_60 ?a)
       (blocked seg_t_b2b_0_60 ?a) (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action ugly1146ugly880ugly220ugly819startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action ugly1147ugly607ugly93ugly773startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1148ugly983ugly488ugly780startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly1149ugly134ugly1173ugly711move_seg_s_b4a_0_60_seg_s_b4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60)
       (not_blocked seg_s_b4c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b4c_0_60 airplane_daew8)
       (not_blocked seg_s_b4c_0_60 airplane_daew9)
       (not_blocked seg_s_b4c_0_60 airplane_daew0)
       (not_blocked seg_s_b4c_0_60 airplane_daew3)
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
  ugly1150ugly50ugly357ugly1075move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_daew8)
       (not_blocked seg_p112_0_76 airplane_daew9)
       (not_blocked seg_p112_0_76 airplane_daew0)
       (not_blocked seg_p112_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c3b_0_60)) (not_occupied seg_o1_c3b_0_60)
       (not (at-segment ?a seg_o1_c3b_0_60)) (occupied seg_p112_0_76)
       (not (not_occupied seg_p112_0_76)) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a)) (at-segment ?a seg_p112_0_76)
       (not (blocked seg_o1_c3a_0_34 ?a)) (not_blocked seg_o1_c3a_0_34 ?a)
       (not (blocked seg_o1_c3c_0_48 ?a)) (not_blocked seg_o1_c3c_0_48 ?a)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action ugly1151ugly147ugly320ugly181startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly1152ugly750ugly554ugly960move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_daew8)
       (not_blocked seg_p133_0_75 airplane_daew9)
       (not_blocked seg_p133_0_75 airplane_daew0)
       (not_blocked seg_p133_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_110d_0_45)) (not_occupied seg_o1_110d_0_45)
       (not (at-segment ?a seg_o1_110d_0_45)) (occupied seg_p133_0_75)
       (not (not_occupied seg_p133_0_75)) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a)) (at-segment ?a seg_p133_0_75)
       (not (blocked seg_o1_110a_0_34 ?a)) (not_blocked seg_o1_110a_0_34 ?a)
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)
       (not (blocked seg_o1_110c_0_34 ?a)) (not_blocked seg_o1_110c_0_34 ?a)))
 (:action ugly1153ugly1149ugly134ugly1173startup_seg_s_b9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly1154ugly954ugly713ugly690move_seg_o1_109b_0_60_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew8)
       (not_blocked seg_o1_109a_0_34 airplane_daew9)
       (not_blocked seg_o1_109a_0_34 airplane_daew0)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
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
  ugly1155ugly837ugly386ugly243move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew8)
       (not_blocked seg_w1_163c_0_34 airplane_daew9)
       (not_blocked seg_w1_163c_0_34 airplane_daew0)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (occupied seg_w1_163b_0_45)) (not_occupied seg_w1_163b_0_45)
       (not (at-segment ?a seg_w1_163b_0_45)) (occupied seg_w1_163c_0_34)
       (not (not_occupied seg_w1_163c_0_34)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a)) (at-segment ?a seg_w1_163c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p163_0_75 ?a)) (not_blocked seg_p163_0_75 ?a)
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action ugly1156ugly1094ugly870ugly500startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action
  ugly1157ugly1021ugly807ugly271move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_daew8)
       (not_blocked seg_p103_0_76 airplane_daew9)
       (not_blocked seg_p103_0_76 airplane_daew0)
       (not_blocked seg_p103_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_103b_0_60)) (not_occupied seg_o1_103b_0_60)
       (not (at-segment ?a seg_o1_103b_0_60)) (occupied seg_p103_0_76)
       (not (not_occupied seg_p103_0_76)) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a)) (at-segment ?a seg_p103_0_76)
       (not (blocked seg_o1_103a_0_34 ?a)) (not_blocked seg_o1_103a_0_34 ?a)
       (not (blocked seg_o1_103c_0_34 ?a)) (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly1158ugly435ugly163ugly496move_seg_w1_161b_0_45_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daew8)
       (not_blocked seg_w1_161a_0_34 airplane_daew9)
       (not_blocked seg_w1_161a_0_34 airplane_daew0)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
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
  ugly1159ugly951ugly1132ugly392move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew8)
       (not_blocked seg_o1_109c_0_34 airplane_daew9)
       (not_blocked seg_o1_109c_0_34 airplane_daew0)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
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
 (:action ugly1160ugly37ugly620ugly141startup_seg_s_b5d_0_60_south_medium
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
  ugly1161ugly84ugly195ugly934move_seg_o1_116c_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daew8)
       (not_blocked seg_o1_116b_0_60 airplane_daew9)
       (not_blocked seg_o1_116b_0_60 airplane_daew0)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
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
  ugly1162ugly1315ugly1009ugly728move_seg_o1_110d_0_45_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew8)
       (not_blocked seg_o1_110a_0_34 airplane_daew9)
       (not_blocked seg_o1_110a_0_34 airplane_daew0)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
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
 (:action ugly1163ugly670ugly1234ugly1startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly1164ugly1309ugly993ugly1089move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daew8)
       (not_blocked seg_w1_143a_0_34 airplane_daew9)
       (not_blocked seg_w1_143a_0_34 airplane_daew0)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
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
  ugly1165ugly945ugly1077ugly44move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daew8)
       (not_blocked seg_w1_c1c_0_34 airplane_daew9)
       (not_blocked seg_w1_c1c_0_34 airplane_daew0)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
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
  ugly1166ugly1269ugly1044ugly835move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_n2a4e_0_75)) (not_occupied seg_n_n2a4e_0_75)
       (not (at-segment ?a seg_n_n2a4e_0_75)) (occupied seg_n_n2a4d_0_75)
       (not (not_occupied seg_n_n2a4d_0_75)) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a)) (at-segment ?a seg_n_n2a4d_0_75)
       (not (blocked seg_n_a4c_0_60 ?a)) (not_blocked seg_n_a4c_0_60 ?a)))
 (:action ugly1167ugly318ugly561ugly487park_seg_p133_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action ugly1168ugly1266ugly810ugly1124startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action
  ugly1169ugly1290ugly1346ugly385move_seg_s_b3b4c_0_140_seg_s_b3b4b_0_140_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b3b4c_0_140) (not_occupied seg_s_b3b4b_0_140)
       (not_blocked seg_s_b3b4b_0_140 airplane_cfbeg)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew8)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew9)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew0)
       (not_blocked seg_s_b3b4b_0_140 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b3b4c_0_140)) (not_occupied seg_s_b3b4c_0_140)
       (not (at-segment ?a seg_s_b3b4c_0_140)) (occupied seg_s_b3b4b_0_140)
       (not (not_occupied seg_s_b3b4b_0_140)) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))
       (at-segment ?a seg_s_b3b4b_0_140) (not (blocked seg_s_b3b4d_0_140 ?a))
       (not_blocked seg_s_b3b4d_0_140 ?a)))
 (:action ugly1170ugly552ugly538ugly1038startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly1171ugly1373ugly631ugly130startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly1172ugly1185ugly544ugly293move_seg_s_b5b8c_0_130_seg_s_b5b8b_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8c_0_130) (not_occupied seg_s_b5b8b_0_135)
       (not_blocked seg_s_b5b8b_0_135 airplane_cfbeg)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew8)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew9)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew0)
       (not_blocked seg_s_b5b8b_0_135 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b5b8c_0_130)) (not_occupied seg_s_b5b8c_0_130)
       (not (at-segment ?a seg_s_b5b8c_0_130)) (occupied seg_s_b5b8b_0_135)
       (not (not_occupied seg_s_b5b8b_0_135)) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))
       (at-segment ?a seg_s_b5b8b_0_135) (not (blocked seg_s_b8c_0_60 ?a))
       (not_blocked seg_s_b8c_0_60 ?a)))
 (:action ugly1173ugly711ugly43ugly823takeoff_seg_08l_0_80_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action ugly1174ugly1170ugly552ugly538startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1175ugly1127ugly956ugly1336move_seg_s5_0_94_seg_s_b7a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s5_0_94) (not_occupied seg_s_b7a_0_60)
       (not_blocked seg_s_b7a_0_60 airplane_cfbeg)
       (not_blocked seg_s_b7a_0_60 airplane_daew8)
       (not_blocked seg_s_b7a_0_60 airplane_daew9)
       (not_blocked seg_s_b7a_0_60 airplane_daew0)
       (not_blocked seg_s_b7a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s5_0_94)) (not_occupied seg_s5_0_94)
       (not (at-segment ?a seg_s5_0_94)) (occupied seg_s_b7a_0_60)
       (not (not_occupied seg_s_b7a_0_60)) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a)) (at-segment ?a seg_s_b7a_0_60)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c4c_0_60 ?a)) (not_blocked seg_w1_c4c_0_60 ?a)))
 (:action ugly1176ugly1319ugly530ugly908startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action ugly1177ugly344ugly730ugly1013startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action ugly1178ugly328ugly54ugly678startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly1179ugly1188ugly691ugly260move_seg_08r_b4b_0_80_seg_08r_b4b6_0_360_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b4b_0_80) (not_occupied seg_08r_b4b6_0_360)
       (not_blocked seg_08r_b4b6_0_360 airplane_cfbeg)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew8)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew9)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew0)
       (not_blocked seg_08r_b4b6_0_360 airplane_daew3))
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
 (:action ugly1180ugly568ugly427ugly186park_seg_p107_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly1181ugly595ugly932ugly649move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew0)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (blocked seg_o1_118a_0_34 ?a) (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action ugly1182ugly939ugly958ugly907startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly1183ugly549ugly1115ugly445startup_seg_b6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action
  ugly1184ugly565ugly1312ugly503move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew0)
       (not_blocked seg_o1_115c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_116a_0_34)) (not_occupied seg_o1_116a_0_34)
       (not (at-segment ?a seg_o1_116a_0_34)) (occupied seg_o1_115c_0_34)
       (not (not_occupied seg_o1_115c_0_34)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a)) (at-segment ?a seg_o1_115c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)
       (not (blocked seg_o1_116c_0_34 ?a)) (not_blocked seg_o1_116c_0_34 ?a)))
 (:action ugly1185ugly544ugly293ugly114startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly1186ugly109ugly248ugly233move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daew8)
       (not_blocked seg_w1_141a_0_34 airplane_daew9)
       (not_blocked seg_w1_141a_0_34 airplane_daew0)
       (not_blocked seg_w1_141a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c1c_0_34)) (not_occupied seg_w1_c1c_0_34)
       (not (at-segment ?a seg_w1_c1c_0_34)) (occupied seg_w1_141a_0_34)
       (not (not_occupied seg_w1_141a_0_34)) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (at-segment ?a seg_w1_141a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1a_0_60 ?a)) (not_blocked seg_w1_c1a_0_60 ?a)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)))
 (:action
  ugly1187ugly564ugly1095ugly638move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daew8)
       (not_blocked seg_w1_164b_0_45 airplane_daew9)
       (not_blocked seg_w1_164b_0_45 airplane_daew0)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
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
  ugly1188ugly691ugly260ugly67move_seg_08r_b2a_0_80_seg_08r_b2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b2a_0_80) (not_occupied seg_08r_b2b_0_80)
       (not_blocked seg_08r_b2b_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2b_0_80 airplane_daew8)
       (not_blocked seg_08r_b2b_0_80 airplane_daew9)
       (not_blocked seg_08r_b2b_0_80 airplane_daew0)
       (not_blocked seg_08r_b2b_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_08r_b2a_0_80)) (not_occupied seg_08r_b2a_0_80)
       (not (at-segment ?a seg_08r_b2a_0_80)) (occupied seg_08r_b2b_0_80)
       (not (not_occupied seg_08r_b2b_0_80)) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a)) (at-segment ?a seg_08r_b2b_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b2_1_0_80 ?a)) (not_blocked seg_b2_1_0_80 ?a)))
 (:action ugly1189ugly997ugly451ugly1238startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly1190ugly677ugly83ugly1271move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_daew8)
       (not_blocked seg_p117_0_76 airplane_daew9)
       (not_blocked seg_p117_0_76 airplane_daew0)
       (not_blocked seg_p117_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_117b_0_60)) (not_occupied seg_o1_117b_0_60)
       (not (at-segment ?a seg_o1_117b_0_60)) (occupied seg_p117_0_76)
       (not (not_occupied seg_p117_0_76)) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a)) (at-segment ?a seg_p117_0_76)
       (not (blocked seg_o1_117a_0_34 ?a)) (not_blocked seg_o1_117a_0_34 ?a)
       (not (blocked seg_o1_117c_0_34 ?a)) (not_blocked seg_o1_117c_0_34 ?a)))
 (:action ugly1191ugly1221ugly953ugly613startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action ugly1192ugly145ugly329ugly964startup_seg_o1_c2a_0_60_south_medium
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
  ugly1193ugly1325ugly1272ugly228move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew8)
       (not_blocked seg_o1_c2a_0_60 airplane_daew9)
       (not_blocked seg_o1_c2a_0_60 airplane_daew0)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
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
  ugly1194ugly40ugly1294ugly253move_seg_o1_111d_0_45_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew8)
       (not_blocked seg_o1_111a_0_34 airplane_daew9)
       (not_blocked seg_o1_111a_0_34 airplane_daew0)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
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
 (:action ugly1195ugly971ugly1255ugly149startup_seg_s_b6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action ugly1196ugly947ugly1105ugly1120startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action ugly1197ugly78ugly536ugly1057startup_seg_t_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action ugly1198ugly96ugly162ugly914startup_seg_m_a7a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_m_a7b_0_60) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly1199ugly999ugly122ugly1305startup_seg_s_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action ugly1200ugly110ugly1223ugly731startup_seg_s_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action ugly1201ugly832ugly767ugly662startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action ugly1202ugly594ugly674ugly285park_seg_p132_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly1203ugly264ugly300ugly1090startup_seg_s_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action
  ugly1204ugly183ugly343ugly852move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daew8)
       (not_blocked seg_w1_c3a_0_34 airplane_daew9)
       (not_blocked seg_w1_c3a_0_34 airplane_daew0)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (occupied seg_w1_c3c_0_48)) (not_occupied seg_w1_c3c_0_48)
       (not (at-segment ?a seg_w1_c3c_0_48)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_161a_0_34 ?a)) (not_blocked seg_w1_161a_0_34 ?a)
       (blocked seg_w1_c3b_0_60 ?a) (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly1205ugly1100ugly716ugly718startup_seg_b3_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_08r_b3c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b3c_0_161_245 ?a)
       (not (not_blocked seg_08r_b3c_0_161_245 ?a))))
 (:action ugly1206ugly492ugly173ugly433startup_seg_s_b7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7d_0_60)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action
  ugly1207ugly314ugly1308ugly148move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew8)
       (not_blocked seg_o1_c1b_0_34 airplane_daew9)
       (not_blocked seg_o1_c1b_0_34 airplane_daew0)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action ugly1208ugly1213ugly1026ugly562startup_seg_t_b10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action
  ugly1209ugly684ugly1033ugly916move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a6a8e_0_75)) (not_occupied seg_n_a6a8e_0_75)
       (not (at-segment ?a seg_n_a6a8e_0_75)) (occupied seg_n_a6a8d_0_75)
       (not (not_occupied seg_n_a6a8d_0_75)) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a)) (at-segment ?a seg_n_a6a8d_0_75)
       (not (blocked seg_n_a6a8f_0_75 ?a)) (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action ugly1210ugly816ugly559ugly1165startup_seg_o1_109a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly1211ugly200ugly931ugly986startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly1212ugly720ugly1258ugly142move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew0)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (occupied seg_o1_117c_0_34)) (not_occupied seg_o1_117c_0_34)
       (not (at-segment ?a seg_o1_117c_0_34)) (occupied seg_o1_117a_0_34)
       (not (not_occupied seg_o1_117a_0_34)) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (at-segment ?a seg_o1_117a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly1213ugly1026ugly562ugly630startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action ugly1214ugly1341ugly209ugly989startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action ugly1215ugly871ugly404ugly541startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly1216ugly834ugly1232ugly1328startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly1217ugly171ugly319ugly775move_seg_08r_b6c_0_80_seg_08r_b6a_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08r_b6c_0_80) (not_occupied seg_08r_b6a_0_161_245)
       (not_blocked seg_08r_b6a_0_161_245 airplane_cfbeg)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew8)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew9)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew0)
       (not_blocked seg_08r_b6a_0_161_245 airplane_daew3)
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
 (:action ugly1218ugly1366ugly693ugly597startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly1219ugly35ugly189ugly309move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew8)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew9)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew0)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a6a8d_0_75)) (not_occupied seg_n_a6a8d_0_75)
       (not (at-segment ?a seg_n_a6a8d_0_75)) (occupied seg_n_a6a8c_0_75)
       (not (not_occupied seg_n_a6a8c_0_75)) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a)) (at-segment ?a seg_n_a6a8c_0_75)
       (not (blocked seg_n_a6a8e_0_75 ?a)) (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action
  ugly1220ugly51ugly1330ugly893move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew0)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (occupied seg_w1_142a_0_34)) (not_occupied seg_w1_142a_0_34)
       (not (at-segment ?a seg_w1_142a_0_34)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action ugly1221ugly953ugly613ugly1148startup_seg_o1_111b_0_60_south_medium
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
  ugly1222ugly73ugly1240ugly452move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew8)
       (not_blocked seg_o1_108d_0_45 airplane_daew9)
       (not_blocked seg_o1_108d_0_45 airplane_daew0)
       (not_blocked seg_o1_108d_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action ugly1223ugly731ugly643ugly820startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly1224ugly936ugly1137ugly411move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a4a7d_0_75)) (not_occupied seg_n_a4a7d_0_75)
       (not (at-segment ?a seg_n_a4a7d_0_75)) (occupied seg_n_a4a7c_0_75)
       (not (not_occupied seg_n_a4a7c_0_75)) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a)) (at-segment ?a seg_n_a4a7c_0_75)
       (not (blocked seg_n_a4a7e_0_75 ?a)) (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action
  ugly1225ugly24ugly474ugly62move_seg_o1_111c_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew0)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
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
  ugly1226ugly652ugly1178ugly328move_seg_s_b2a_0_60_seg_s_b2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b2a_0_60) (not_occupied seg_s_b2b_0_60)
       (not_blocked seg_s_b2b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b2b_0_60 airplane_daew8)
       (not_blocked seg_s_b2b_0_60 airplane_daew9)
       (not_blocked seg_s_b2b_0_60 airplane_daew0)
       (not_blocked seg_s_b2b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b2a_0_60)) (not_occupied seg_s_b2a_0_60)
       (not (at-segment ?a seg_s_b2a_0_60)) (occupied seg_s_b2b_0_60)
       (not (not_occupied seg_s_b2b_0_60)) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a)) (at-segment ?a seg_s_b2b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_s_b2b3a_0_140 ?a))
       (not_blocked seg_s_b2b3a_0_140 ?a)))
 (:action ugly1227ugly1323ugly254ugly337startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly1228ugly287ugly244ugly388move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daew8)
       (not_blocked seg_o1_117a_0_34 airplane_daew9)
       (not_blocked seg_o1_117a_0_34 airplane_daew0)
       (not_blocked seg_o1_117a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_116c_0_34)) (not_occupied seg_o1_116c_0_34)
       (not (at-segment ?a seg_o1_116c_0_34)) (occupied seg_o1_117a_0_34)
       (not (not_occupied seg_o1_117a_0_34)) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (at-segment ?a seg_o1_117a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_116a_0_34 ?a)) (not_blocked seg_o1_116a_0_34 ?a)
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly1229ugly89ugly99ugly740move_seg_08r_b6b_0_80_seg_08r_b6b9_0_420_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b_0_80) (not_occupied seg_08r_b6b9_0_420)
       (not_blocked seg_08r_b6b9_0_420 airplane_cfbeg)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew8)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew9)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew0)
       (not_blocked seg_08r_b6b9_0_420 airplane_daew3))
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
 (:action ugly1230ugly1073ugly634ugly1164startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly1231ugly847ugly489ugly231move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew8)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew9)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew0)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_n2a4c_0_75)) (not_occupied seg_n_n2a4c_0_75)
       (not (at-segment ?a seg_n_n2a4c_0_75)) (occupied seg_n_n2a4b_0_75)
       (not (not_occupied seg_n_n2a4b_0_75)) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a)) (at-segment ?a seg_n_n2a4b_0_75)
       (not (blocked seg_n_n2a4d_0_75 ?a)) (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action ugly1232ugly1328ugly996ugly666park_seg_p151_0_75_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action
  ugly1233ugly199ugly305ugly813move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew8)
       (not_blocked seg_o1_c4a_0_34 airplane_daew9)
       (not_blocked seg_o1_c4a_0_34 airplane_daew0)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_118a_0_34 ?a)) (not_blocked seg_o1_118a_0_34 ?a)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action ugly1234ugly1ugly763ugly747startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly1235ugly614ugly326ugly505startup_seg_08r_b6a_0_161_245_south_medium
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
  ugly1236ugly364ugly709ugly438move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daew8)
       (not_blocked seg_o1_104b_0_60 airplane_daew9)
       (not_blocked seg_o1_104b_0_60 airplane_daew0)
       (not_blocked seg_o1_104b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p104_0_76)) (not_occupied seg_p104_0_76)
       (not (at-segment ?a seg_p104_0_76)) (occupied seg_o1_104b_0_60)
       (not (not_occupied seg_o1_104b_0_60)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action ugly1237ugly579ugly829ugly340startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly1238ugly743ugly468ugly317startup_seg_b9_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action
  ugly1239ugly371ugly650ugly276move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew8)
       (not_blocked seg_w1_154c_0_34 airplane_daew9)
       (not_blocked seg_w1_154c_0_34 airplane_daew0)
       (not_blocked seg_w1_154c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c3a_0_34)) (not_occupied seg_w1_c3a_0_34)
       (not (at-segment ?a seg_w1_c3a_0_34)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c3b_0_60 ?a)) (not_blocked seg_w1_c3b_0_60 ?a)
       (not (blocked seg_w1_c3c_0_48 ?a)) (not_blocked seg_w1_c3c_0_48 ?a)))
 (:action ugly1240ugly452ugly359ugly790startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action ugly1241ugly518ugly100ugly800startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly1242ugly853ugly442ugly924move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daew8)
       (not_blocked seg_w1_153a_0_34 airplane_daew9)
       (not_blocked seg_w1_153a_0_34 airplane_daew0)
       (not_blocked seg_w1_153a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_153a_0_34)
       (not (not_occupied seg_w1_153a_0_34)) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (at-segment ?a seg_w1_153a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_152a_0_34 ?a)) (not_blocked seg_w1_152a_0_34 ?a)
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action ugly1243ugly831ugly2ugly1187startup_seg_t_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly1244ugly161ugly663ugly705startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly1245ugly94ugly733ugly966move_seg_c4_s6b_0_60_seg_c4_s6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60)
       (not_blocked seg_c4_s6c_0_60 airplane_cfbeg)
       (not_blocked seg_c4_s6c_0_60 airplane_daew8)
       (not_blocked seg_c4_s6c_0_60 airplane_daew9)
       (not_blocked seg_c4_s6c_0_60 airplane_daew0)
       (not_blocked seg_c4_s6c_0_60 airplane_daew3)
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
  ugly1246ugly86ugly235ugly472move_seg_w1_164b_0_45_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daew8)
       (not_blocked seg_w1_164a_0_34 airplane_daew9)
       (not_blocked seg_w1_164a_0_34 airplane_daew0)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (occupied seg_w1_164b_0_45)) (not_occupied seg_w1_164b_0_45)
       (not (at-segment ?a seg_w1_164b_0_45)) (occupied seg_w1_164a_0_34)
       (not (not_occupied seg_w1_164a_0_34)) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (at-segment ?a seg_w1_164a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p164_0_75 ?a)) (not_blocked seg_p164_0_75 ?a)
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly1247ugly626ugly938ugly103startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly1248ugly1370ugly456ugly1239move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daew8)
       (not_blocked seg_o1_109d_0_45 airplane_daew9)
       (not_blocked seg_o1_109d_0_45 airplane_daew0)
       (not_blocked seg_o1_109d_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p132_0_75)) (not_occupied seg_p132_0_75)
       (not (at-segment ?a seg_p132_0_75)) (occupied seg_o1_109d_0_45)
       (not (not_occupied seg_o1_109d_0_45)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action ugly1249ugly1220ugly51ugly1330startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly1250ugly1248ugly1370ugly456startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly1251ugly303ugly1302ugly842move_seg_s_b4b6b_0_135_seg_s_b4b6a_0_135_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b4b6b_0_135) (not_occupied seg_s_b4b6a_0_135)
       (not_blocked seg_s_b4b6a_0_135 airplane_cfbeg)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew8)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew9)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew0)
       (not_blocked seg_s_b4b6a_0_135 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b4b6b_0_135)) (not_occupied seg_s_b4b6b_0_135)
       (not (at-segment ?a seg_s_b4b6b_0_135)) (occupied seg_s_b4b6a_0_135)
       (not (not_occupied seg_s_b4b6a_0_135)) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))
       (at-segment ?a seg_s_b4b6a_0_135) (not (blocked seg_s_b4b6c_0_130 ?a))
       (not_blocked seg_s_b4b6c_0_130 ?a)))
 (:action ugly1252ugly1135ugly1101ugly712startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly1253ugly506ugly413ugly981startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly1254ugly436ugly777ugly818move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daew8)
       (not_blocked seg_w1_152a_0_34 airplane_daew9)
       (not_blocked seg_w1_152a_0_34 airplane_daew0)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (occupied seg_w1_152c_0_34)) (not_occupied seg_w1_152c_0_34)
       (not (at-segment ?a seg_w1_152c_0_34)) (occupied seg_w1_152a_0_34)
       (not (not_occupied seg_w1_152a_0_34)) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (at-segment ?a seg_w1_152a_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_153a_0_34 ?a)) (not_blocked seg_w1_153a_0_34 ?a)
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly1255ugly149ugly669ugly311startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly1256ugly1128ugly192ugly1131startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1257ugly59ugly75ugly383startup_seg_b8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action ugly1258ugly142ugly299ugly64startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly1259ugly700ugly1345ugly26move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daew8)
       (not_blocked seg_w1_c1a_0_60 airplane_daew9)
       (not_blocked seg_w1_c1a_0_60 airplane_daew0)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (occupied seg_w1_c1c_0_34)) (not_occupied seg_w1_c1c_0_34)
       (not (at-segment ?a seg_w1_c1c_0_34)) (occupied seg_w1_c1a_0_60)
       (not (not_occupied seg_w1_c1a_0_60)) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (at-segment ?a seg_w1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_141a_0_34 ?a)) (not_blocked seg_w1_141a_0_34 ?a)
       (blocked seg_w1_c1b_0_60 ?a) (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action ugly1260ugly15ugly1212ugly720startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action ugly1261ugly448ugly1202ugly594startup_seg_s_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action ugly1262ugly168ugly1247ugly626startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action ugly1263ugly760ugly14ugly375startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly1264ugly621ugly708ugly501startup_seg_s_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly1265ugly512ugly724ugly1046move_seg_s_b8c_0_60_seg_s_b5b8c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b8c_0_60) (not_occupied seg_s_b5b8c_0_130)
       (not_blocked seg_s_b5b8c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew8)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew9)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew0)
       (not_blocked seg_s_b5b8c_0_130 airplane_daew3))
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
  ugly1266ugly810ugly1124ugly1052pushback_seg_o1_c1a_0_60_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly1267ugly1049ugly1136ugly1306move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew8)
       (not_blocked seg_o1_c3a_0_34 airplane_daew9)
       (not_blocked seg_o1_c3a_0_34 airplane_daew0)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_111c_0_34)) (not_occupied seg_o1_111c_0_34)
       (not (at-segment ?a seg_o1_111c_0_34)) (occupied seg_o1_c3a_0_34)
       (not (not_occupied seg_o1_c3a_0_34)) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (at-segment ?a seg_o1_c3a_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_111a_0_34 ?a)) (not_blocked seg_o1_111a_0_34 ?a)
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly1268ugly694ugly883ugly525startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly1269ugly1044ugly835ugly180startup_seg_08r_b9a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action ugly1270ugly12ugly1210ugly816startup_seg_b6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action ugly1271ugly426ugly377ugly1163startup_seg_s_b6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action ugly1272ugly228ugly315ugly930park_seg_p162_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action ugly1273ugly470ugly1371ugly967startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly1274ugly425ugly905ugly535startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly1275ugly791ugly722ugly741startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly1276ugly19ugly915ugly1295startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action ugly1277ugly1063ugly47ugly567startup_seg_b2_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_08r_b2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a))))
 (:action ugly1278ugly112ugly894ugly66startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action ugly1279ugly824ugly1354ugly1181startup_seg_t_b8d_0_60_south_medium
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
  ugly1280ugly701ugly1368ugly69move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew8)
       (not_blocked seg_o1_103c_0_34 airplane_daew9)
       (not_blocked seg_o1_103c_0_34 airplane_daew0)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
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
  ugly1281ugly1076ugly1265ugly512startup_seg_b3_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly1282ugly1030ugly308ugly327startup_seg_08r_b6d_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_08r_b6a_0_161_245) (not_occupied seg_08r_b6c_0_80)
       (not_occupied seg_08r_b6b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))
       (blocked seg_08r_b6c_0_80 ?a) (not (not_blocked seg_08r_b6c_0_80 ?a))
       (blocked seg_08r_b6b_0_80 ?a) (not (not_blocked seg_08r_b6b_0_80 ?a))))
 (:action ugly1283ugly358ugly257ugly1264startup_seg_t_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action
  ugly1284ugly332ugly615ugly1245move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_daew8)
       (not_blocked seg_08l_0_80 airplane_daew9)
       (not_blocked seg_08l_0_80 airplane_daew0)
       (not_blocked seg_08l_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_08l_a2a3_0_970)) (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action
  ugly1285ugly296ugly587ugly566move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daew8)
       (not_blocked seg_o1_115b_0_60 airplane_daew9)
       (not_blocked seg_o1_115b_0_60 airplane_daew0)
       (not_blocked seg_o1_115b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p115_0_76)) (not_occupied seg_p115_0_76)
       (not (at-segment ?a seg_p115_0_76)) (occupied seg_o1_115b_0_60)
       (not (not_occupied seg_o1_115b_0_60)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action ugly1286ugly742ugly647ugly65startup_seg_o1_108c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly1287ugly679ugly995ugly226startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly1288ugly428ugly1286ugly742startup_seg_s_b3a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action ugly1289ugly526ugly858ugly295startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly1290ugly1346ugly385ugly46move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daew8)
       (not_blocked seg_c1_n2c_0_60 airplane_daew9)
       (not_blocked seg_c1_n2c_0_60 airplane_daew0)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
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
  ugly1291ugly575ugly778ugly177move_seg_08r_b6b9_0_420_seg_08r_b9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6b9_0_420) (not_occupied seg_08r_b9c_0_80)
       (not_blocked seg_08r_b9c_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b9c_0_80 airplane_daew8)
       (not_blocked seg_08r_b9c_0_80 airplane_daew9)
       (not_blocked seg_08r_b9c_0_80 airplane_daew0)
       (not_blocked seg_08r_b9c_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_08r_b6b9_0_420)) (not_occupied seg_08r_b6b9_0_420)
       (not (at-segment ?a seg_08r_b6b9_0_420)) (occupied seg_08r_b9c_0_80)
       (not (not_occupied seg_08r_b9c_0_80)) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (at-segment ?a seg_08r_b9c_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08r_b6b_0_80 ?a)) (not_blocked seg_08r_b6b_0_80 ?a)))
 (:action ugly1292ugly143ugly58ugly21startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly1293ugly277ugly397ugly102move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew8)
       (not_blocked seg_o1_c1a_0_60 airplane_daew9)
       (not_blocked seg_o1_c1a_0_60 airplane_daew0)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (occupied seg_o1_c1c_0_80)) (not_occupied seg_o1_c1c_0_80)
       (not (at-segment ?a seg_o1_c1c_0_80)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_c1_n2b_0_80 ?a)) (not_blocked seg_c1_n2b_0_80 ?a)
       (blocked seg_o1_c1b_0_34 ?a) (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly1294ugly253ugly396ugly225startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly1295ugly1343ugly458ugly497startup_seg_m_a9d_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9b_0_60)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action ugly1296ugly13ugly20ugly473startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly1297ugly156ugly920ugly923pushback_seg_p112_0_76_seg_o1_c3b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p112_0_76)) (not_occupied seg_p112_0_76)
       (not (blocked seg_p112_0_76 ?a)) (not_blocked seg_p112_0_76 ?a)
       (not (at-segment ?a seg_p112_0_76)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)))
 (:action ugly1298ugly1161ugly84ugly195startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly1299ugly1015ugly516ugly878move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daew8)
       (not_blocked seg_o1_c3d_0_60 airplane_daew9)
       (not_blocked seg_o1_c3d_0_60 airplane_daew0)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
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
  ugly1300ugly540ugly270ugly1027startup_seg_t_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action ugly1301ugly524ugly1342ugly1104startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action ugly1302ugly842ugly41ugly812park_seg_p164_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action ugly1303ugly992ugly782ugly1355startup_seg_b5_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_t_b5c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a))))
 (:action ugly1304ugly1243ugly831ugly2startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action ugly1305ugly702ugly362ugly795startup_seg_t_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action ugly1306ugly273ugly28ugly373startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly1307ugly1029ugly1206ugly492move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a4a7e_0_75)) (not_occupied seg_n_a4a7e_0_75)
       (not (at-segment ?a seg_n_a4a7e_0_75)) (occupied seg_n_a4a7d_0_75)
       (not (not_occupied seg_n_a4a7d_0_75)) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a)) (at-segment ?a seg_n_a4a7d_0_75)
       (not (blocked seg_n_a4a7f_0_75 ?a)) (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action ugly1308ugly148ugly256ugly45startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly1309ugly993ugly1089ugly144move_seg_w1_151c_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daew8)
       (not_blocked seg_w1_151b_0_45 airplane_daew9)
       (not_blocked seg_w1_151b_0_45 airplane_daew0)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
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
  ugly1310ugly864ugly1036ugly1278move_seg_s_b8b_0_60_seg_s_b8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60)
       (not_blocked seg_s_b8c_0_60 airplane_cfbeg)
       (not_blocked seg_s_b8c_0_60 airplane_daew8)
       (not_blocked seg_s_b8c_0_60 airplane_daew9)
       (not_blocked seg_s_b8c_0_60 airplane_daew0)
       (not_blocked seg_s_b8c_0_60 airplane_daew3)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (occupied seg_s_b8b_0_60)) (not_occupied seg_s_b8b_0_60)
       (not (at-segment ?a seg_s_b8b_0_60)) (occupied seg_s_b8c_0_60)
       (not (not_occupied seg_s_b8c_0_60)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a)) (at-segment ?a seg_s_b8c_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_t_b8a_0_60 ?a)) (not_blocked seg_t_b8a_0_60 ?a)
       (blocked seg_s_b8a_0_60 ?a) (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action ugly1311ugly557ugly1091ugly1088park_seg_p102_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action ugly1312ugly503ugly302ugly751startup_seg_s_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a))))
 (:action
  ugly1313ugly973ugly632ugly1257move_seg_b2_1_0_80_seg_08r_b2a_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b2_1_0_80) (not_occupied seg_08r_b2a_0_80)
       (not_blocked seg_08r_b2a_0_80 airplane_cfbeg)
       (not_blocked seg_08r_b2a_0_80 airplane_daew8)
       (not_blocked seg_08r_b2a_0_80 airplane_daew9)
       (not_blocked seg_08r_b2a_0_80 airplane_daew0)
       (not_blocked seg_08r_b2a_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_b2_1_0_80)) (not_occupied seg_b2_1_0_80)
       (not (at-segment ?a seg_b2_1_0_80)) (occupied seg_08r_b2a_0_80)
       (not (not_occupied seg_08r_b2a_0_80)) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a)) (at-segment ?a seg_08r_b2a_0_80)
       (not (blocked seg_b2_0_80 ?a)) (not_blocked seg_b2_0_80 ?a)))
 (:action ugly1314ugly738ugly223ugly806startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action ugly1315ugly1009ugly728ugly384startup_seg_b10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action ugly1316ugly1189ugly997ugly451startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly1317ugly115ugly1000ugly1285move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew8)
       (not_blocked seg_o1_118c_0_34 airplane_daew9)
       (not_blocked seg_o1_118c_0_34 airplane_daew0)
       (not_blocked seg_o1_118c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c4a_0_34)) (not_occupied seg_o1_c4a_0_34)
       (not (at-segment ?a seg_o1_c4a_0_34)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)
       (not (blocked seg_o1_c4c_0_80 ?a)) (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly1318ugly1028ugly1086ugly1218startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly1319ugly530ugly908ugly976move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew8)
       (not_blocked seg_o1_108c_0_34 airplane_daew9)
       (not_blocked seg_o1_108c_0_34 airplane_daew0)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
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
 (:action ugly1320ugly266ugly152ugly585park_seg_p118_0_76_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly1321ugly1349ugly202ugly1114pushback_seg_o1_c2d_0_60_seg_c2_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daew8)
       (not_blocked seg_c2_b_0_80 airplane_daew9)
       (not_blocked seg_c2_b_0_80 airplane_daew0)
       (not_blocked seg_c2_b_0_80 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_c2_b_0_80)
       (not (not_occupied seg_c2_b_0_80)) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a)) (at-segment ?a seg_c2_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly1322ugly801ugly814ugly1003startup_seg_s_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action ugly1323ugly254ugly337ugly1201startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action ugly1324ugly155ugly758ugly668startup_seg_t_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action ugly1325ugly1272ugly228ugly315startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly1326ugly450ugly950ugly991startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly1327ugly206ugly1347ugly686move_seg_s_b6c_0_60_seg_s_b4b6c_0_130_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_s_b6c_0_60) (not_occupied seg_s_b4b6c_0_130)
       (not_blocked seg_s_b4b6c_0_130 airplane_cfbeg)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew8)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew9)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew0)
       (not_blocked seg_s_b4b6c_0_130 airplane_daew3))
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
  ugly1328ugly996ugly666ugly786move_seg_o1_103c_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daew8)
       (not_blocked seg_o1_103b_0_60 airplane_daew9)
       (not_blocked seg_o1_103b_0_60 airplane_daew0)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (occupied seg_o1_103c_0_34)) (not_occupied seg_o1_103c_0_34)
       (not (at-segment ?a seg_o1_103c_0_34)) (occupied seg_o1_103b_0_60)
       (not (not_occupied seg_o1_103b_0_60)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (at-segment ?a seg_o1_103b_0_60)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_104a_0_34 ?a)) (not_blocked seg_o1_104a_0_34 ?a)
       (blocked seg_o1_103a_0_34 ?a) (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action ugly1329ugly1106ugly509ugly661startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1330ugly893ugly7ugly1055move_seg_s_b5b8a_0_135_seg_s_b5b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_s_b5b8a_0_135) (not_occupied seg_s_b5b_0_60)
       (not_blocked seg_s_b5b_0_60 airplane_cfbeg)
       (not_blocked seg_s_b5b_0_60 airplane_daew8)
       (not_blocked seg_s_b5b_0_60 airplane_daew9)
       (not_blocked seg_s_b5b_0_60 airplane_daew0)
       (not_blocked seg_s_b5b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_s_b5b8a_0_135)) (not_occupied seg_s_b5b8a_0_135)
       (not (at-segment ?a seg_s_b5b8a_0_135)) (occupied seg_s_b5b_0_60)
       (not (not_occupied seg_s_b5b_0_60)) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a)) (at-segment ?a seg_s_b5b_0_60)
       (not (blocked seg_s_b5b8b_0_135 ?a))
       (not_blocked seg_s_b5b8b_0_135 ?a)))
 (:action ugly1331ugly1199ugly999ugly122startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly1332ugly197ugly639ugly394startup_seg_b8_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action ugly1333ugly817ugly440ugly756startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action ugly1334ugly841ugly1032ugly1289startup_seg_t_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly1335ugly288ugly1159ugly951startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly1336ugly33ugly234ugly17move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew8)
       (not_blocked seg_o1_c3b_0_60 airplane_daew9)
       (not_blocked seg_o1_c3b_0_60 airplane_daew0)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
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
  ugly1337ugly984ugly675ugly1262move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew8)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew9)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew0)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a7a6b_0_75)) (not_occupied seg_n_a7a6b_0_75)
       (not (at-segment ?a seg_n_a7a6b_0_75)) (occupied seg_n_a7a6a_0_85)
       (not (not_occupied seg_n_a7a6a_0_85)) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a)) (at-segment ?a seg_n_a7a6a_0_85)
       (not (blocked seg_n_a7a6c_0_75 ?a)) (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action ugly1338ugly1209ugly684ugly1033startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1339ugly498ugly382ugly483move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_daew8)
       (not_blocked seg_p109_0_76 airplane_daew9)
       (not_blocked seg_p109_0_76 airplane_daew0)
       (not_blocked seg_p109_0_76 airplane_daew3))
  :effect
  (and (not (occupied seg_o1_109b_0_60)) (not_occupied seg_o1_109b_0_60)
       (not (at-segment ?a seg_o1_109b_0_60)) (occupied seg_p109_0_76)
       (not (not_occupied seg_p109_0_76)) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a)) (at-segment ?a seg_p109_0_76)
       (not (blocked seg_o1_109a_0_34 ?a)) (not_blocked seg_o1_109a_0_34 ?a)
       (not (blocked seg_o1_109c_0_34 ?a)) (not_blocked seg_o1_109c_0_34 ?a)
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly1340ugly292ugly151ugly903move_seg_w1_c4c_0_60_seg_s5_0_94_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4c_0_60) (not_occupied seg_s5_0_94)
       (not_blocked seg_s5_0_94 airplane_cfbeg)
       (not_blocked seg_s5_0_94 airplane_daew8)
       (not_blocked seg_s5_0_94 airplane_daew9)
       (not_blocked seg_s5_0_94 airplane_daew0)
       (not_blocked seg_s5_0_94 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_c4c_0_60)) (not_occupied seg_w1_c4c_0_60)
       (not (at-segment ?a seg_w1_c4c_0_60)) (occupied seg_s5_0_94)
       (not (not_occupied seg_s5_0_94)) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a)) (at-segment ?a seg_s5_0_94)
       (not (blocked seg_w1_c4a_0_34 ?a)) (not_blocked seg_w1_c4a_0_34 ?a)
       (not (blocked seg_w1_c4b_0_60 ?a)) (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action
  ugly1341ugly209ugly989ugly1192move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew8)
       (not_blocked seg_w1_142c_0_34 airplane_daew9)
       (not_blocked seg_w1_142c_0_34 airplane_daew0)
       (not_blocked seg_w1_142c_0_34 airplane_daew3))
  :effect
  (and (not (occupied seg_w1_143a_0_34)) (not_occupied seg_w1_143a_0_34)
       (not (at-segment ?a seg_w1_143a_0_34)) (occupied seg_w1_142c_0_34)
       (not (not_occupied seg_w1_142c_0_34)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a)) (at-segment ?a seg_w1_142c_0_34)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)
       (not (blocked seg_w1_143c_0_60 ?a)) (not_blocked seg_w1_143c_0_60 ?a)))
 (:action ugly1342ugly1104ugly1326ugly450startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action
  ugly1343ugly458ugly497ugly1217move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew8)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew9)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew0)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a7c_0_60)) (not_occupied seg_n_a7c_0_60)
       (not (at-segment ?a seg_n_a7c_0_60)) (occupied seg_n_a4a7f_0_75)
       (not (not_occupied seg_n_a4a7f_0_75)) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a)) (at-segment ?a seg_n_a4a7f_0_75)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a7a_0_60 ?a)) (not_blocked seg_n_a7a_0_60 ?a)
       (not (blocked seg_n_a7b_0_60 ?a)) (not_blocked seg_n_a7b_0_60 ?a)))
 (:action ugly1344ugly1144ugly48ugly809startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action ugly1345ugly26ugly76ugly1146startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action ugly1346ugly385ugly46ugly188startup_seg_t_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3a_0_60)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action ugly1347ugly686ugly39ugly1359startup_seg_s_b5b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5a_0_60) (not_occupied seg_s_b5c_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a)) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a)) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action ugly1348ugly347ugly261ugly665startup_seg_t_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b_0_60)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action ugly1349ugly202ugly1114ugly447startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly1350ugly600ugly1196ugly947startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly1351ugly399ugly1180ugly568move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daew8)
       (not_blocked seg_o1_117b_0_60 airplane_daew9)
       (not_blocked seg_o1_117b_0_60 airplane_daew0)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
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
  ugly1352ugly136ugly698ugly772move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_daew8)
       (not_blocked seg_n_n2a_0_60 airplane_daew9)
       (not_blocked seg_n_n2a_0_60 airplane_daew0)
       (not_blocked seg_n_n2a_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_n_n2a4a_0_70)) (not_occupied seg_n_n2a4a_0_70)
       (not (at-segment ?a seg_n_n2a4a_0_70)) (occupied seg_n_n2a_0_60)
       (not (not_occupied seg_n_n2a_0_60)) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (at-segment ?a seg_n_n2a_0_60)
       (not (blocked seg_n_n2a4b_0_75 ?a)) (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action ugly1353ugly725ugly1236ugly364startup_seg_s_b9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action ugly1354ugly1181ugly595ugly932startup_seg_s_b3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly1355ugly582ugly723ugly511move_seg_08r_b6a_0_161_245_seg_b8_a_0_156_924_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08r_b6a_0_161_245) (not_occupied seg_b8_a_0_156_924)
       (not_blocked seg_b8_a_0_156_924 airplane_cfbeg)
       (not_blocked seg_b8_a_0_156_924 airplane_daew8)
       (not_blocked seg_b8_a_0_156_924 airplane_daew9)
       (not_blocked seg_b8_a_0_156_924 airplane_daew0)
       (not_blocked seg_b8_a_0_156_924 airplane_daew3))
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
  ugly1356ugly769ugly980ugly353move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew8)
       (not_blocked seg_o1_c1c_0_80 airplane_daew9)
       (not_blocked seg_o1_c1c_0_80 airplane_daew0)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_c1c_0_80)
       (not (not_occupied seg_o1_c1c_0_80)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a)) (at-segment ?a seg_o1_c1c_0_80)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_o1_102a_0_34 ?a)) (not_blocked seg_o1_102a_0_34 ?a)
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action ugly1357ugly176ugly523ugly933startup_seg_t_b4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4d_0_60)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action
  ugly1358ugly56ugly238ugly1260move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew8)
       (not_blocked seg_w1_152c_0_34 airplane_daew9)
       (not_blocked seg_w1_152c_0_34 airplane_daew0)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (occupied seg_w1_152a_0_34)) (not_occupied seg_w1_152a_0_34)
       (not (at-segment ?a seg_w1_152a_0_34)) (occupied seg_w1_152c_0_34)
       (not (not_occupied seg_w1_152c_0_34)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a)) (at-segment ?a seg_w1_152c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_w1_151c_0_34 ?a)) (not_blocked seg_w1_151c_0_34 ?a)
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly1359ugly689ugly8ugly609startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly1360ugly1356ugly769ugly980move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daew8)
       (not_blocked seg_o1_108b_0_60 airplane_daew9)
       (not_blocked seg_o1_108b_0_60 airplane_daew0)
       (not_blocked seg_o1_108b_0_60 airplane_daew3))
  :effect
  (and (not (occupied seg_p108_0_76)) (not_occupied seg_p108_0_76)
       (not (at-segment ?a seg_p108_0_76)) (occupied seg_o1_108b_0_60)
       (not (not_occupied seg_o1_108b_0_60)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action
  ugly1361ugly654ugly1190ugly677move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew8)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew9)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew0)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew3))
  :effect
  (and (not (occupied seg_n_a2a3d_0_75)) (not_occupied seg_n_a2a3d_0_75)
       (not (at-segment ?a seg_n_a2a3d_0_75)) (occupied seg_n_a2a3c_0_75)
       (not (not_occupied seg_n_a2a3c_0_75)) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a)) (at-segment ?a seg_n_a2a3c_0_75)
       (not (blocked seg_n_a2a3e_0_75 ?a)) (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action
  ugly1362ugly1226ugly652ugly1178move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew8)
       (not_blocked seg_o1_102c_0_34 airplane_daew9)
       (not_blocked seg_o1_102c_0_34 airplane_daew0)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (occupied seg_o1_102b_0_60)) (not_occupied seg_o1_102b_0_60)
       (not (at-segment ?a seg_o1_102b_0_60)) (occupied seg_o1_102c_0_34)
       (not (not_occupied seg_o1_102c_0_34)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a)) (at-segment ?a seg_o1_102c_0_34)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_p102_0_76 ?a)) (not_blocked seg_p102_0_76 ?a)
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action ugly1363ugly1053ugly866ugly53startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action ugly1364ugly390ugly1301ugly524startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action ugly1365ugly1174ugly1170ugly552startup_seg_t_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly1366ugly693ugly597ugly1281startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly1367ugly422ugly1065ugly1123park_seg_p119_0_76_north :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action ugly1368ugly69ugly334ugly527startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly1369ugly1002ugly715ugly1140startup_seg_m_a7d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action ugly1370ugly456ugly1239ugly371startup_seg_s_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action
  ugly1371ugly967ugly821ugly341move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew8)
       (not_blocked seg_o1_115c_0_34 airplane_daew9)
       (not_blocked seg_o1_115c_0_34 airplane_daew0)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
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
  ugly1372ugly1043ugly298ugly278move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daew8)
       (not_blocked seg_o1_111d_0_45 airplane_daew9)
       (not_blocked seg_o1_111d_0_45 airplane_daew0)
       (not_blocked seg_o1_111d_0_45 airplane_daew3))
  :effect
  (and (not (occupied seg_p134_0_75)) (not_occupied seg_p134_0_75)
       (not (at-segment ?a seg_p134_0_75)) (occupied seg_o1_111d_0_45)
       (not (not_occupied seg_o1_111d_0_45)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action ugly1373ugly631ugly130ugly1369startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))) 