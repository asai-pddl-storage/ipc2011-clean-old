
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (is-parked ?a - airplane ?s - segment)
  (at-segment ?a - airplane ?s - segment) (blocked ?s - segment ?a - airplane)
  (is-pushing ?a - airplane) (is-start-runway ?s - segment ?d - direction)
  (is-moving ?a - airplane) (facing ?a - airplane ?d - direction)
  (has-type ?a - airplane ?t - airplanetype)
  (airborne ?a - airplane ?s - segment)
  (not_blocked ?s - segment ?a - airplane) (not_occupied ?s - segment)
  (occupied ?s - segment))
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
 (:action
  ugly33299ugly369ugly298ugly1044ugly1275startup_seg_s_b5d_0_60_south_medium
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
  ugly33300ugly70ugly365ugly215ugly644move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
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
 (:action
  ugly33301ugly1361ugly366ugly222ugly821startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly33302ugly218ugly193ugly1026ugly1155startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action
  ugly33303ugly536ugly1036ugly218ugly193startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly33304ugly651ugly1177ugly1338ugly110startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action
  ugly33305ugly549ugly523ugly106ugly346startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly33306ugly608ugly1302ugly399ugly328startup_seg_s_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7a_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly33307ugly1298ugly480ugly779ugly803startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly33308ugly916ugly1316ugly666ugly896startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly33309ugly692ugly440ugly553ugly408startup_seg_t_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a))))
 (:action
  ugly33310ugly472ugly924ugly734ugly163startup_seg_b8_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_08r_b6a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6a_0_161_245 ?a)
       (not (not_blocked seg_08r_b6a_0_161_245 ?a))))
 (:action
  ugly33311ugly999ugly490ugly918ugly949startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly33312ugly405ugly1194ugly1387ugly889move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
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
 (:action
  ugly33313ugly1002ugly338ugly1014ugly363startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly33314ugly84ugly195ugly1022ugly1205move_seg_08r_b9c_0_80_seg_09r_0_80_north_south_medium
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
 (:action
  ugly33315ugly1369ugly467ugly968ugly1252startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly33316ugly895ugly863ugly1351ugly249move_seg_t_b2a_0_60_seg_t_b2c_0_60_north_south_medium
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
 (:action
  ugly33317ugly696ugly512ugly866ugly711startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly33318ugly1249ugly80ugly957ugly1202startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly33319ugly772ugly475ugly565ugly787startup_seg_t_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action
  ugly33320ugly126ugly706ugly51ugly1330move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
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
  ugly33321ugly153ugly1025ugly814ugly690startup_seg_b9_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly33322ugly616ugly1050ugly729ugly74startup_seg_o1_c3a_0_34_south_medium
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
  ugly33323ugly943ugly510ugly500ugly573move_seg_w1_161c_0_34_seg_w1_161b_0_45_north_south_medium
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
 (:action
  ugly33324ugly954ugly1278ugly1331ugly495move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
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
 (:action
  ugly33325ugly922ugly946ugly422ugly921startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly33326ugly786ugly793ugly1343ugly1285startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly33327ugly1340ugly856ugly81ugly187startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly33328ugly1099ugly629ugly1154ugly275startup_seg_o1_c2c_0_34_south_medium
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
  ugly33329ugly249ugly56ugly238ugly31startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly33330ugly1244ugly340ugly1204ugly302startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action
  ugly33331ugly230ugly317ugly1311ugly146startup_seg_t_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action
  ugly33332ugly850ugly911ugly1307ugly1304startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly33333ugly205ugly967ugly801ugly647startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly33334ugly1193ugly457ugly47ugly567startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly33335ugly656ugly236ugly411ugly1102startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly33336ugly1043ugly913ugly240ugly1262startup_seg_t_b7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_t_b7b_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly33337ugly1029ugly1206ugly15ugly1212startup_seg_b8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly33338ugly62ugly398ugly535ugly529startup_seg_t_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action
  ugly33339ugly1280ugly944ugly97ugly985startup_seg_s_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action
  ugly33340ugly776ugly449ugly817ugly705move_seg_08r_b6b_0_80_seg_08r_b6b9_0_420_south_south_medium
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
 (:action
  ugly33341ugly804ugly1048ugly55ugly1168startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly33342ugly446ugly1233ugly206ugly351startup_seg_b4_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly33343ugly600ugly67ugly60ugly513startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action
  ugly33344ugly315ugly88ugly313ugly419move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
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
  ugly33345ugly897ugly1063ugly98ugly1062startup_seg_t_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b_0_60 ?a)
       (not (not_blocked seg_t_b9b_0_60 ?a))))
 (:action ugly33346ugly1246ugly30ugly846ugly364park_seg_p109_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action ugly33347ugly848ugly226ugly352ugly424takeoff_seg_09r_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09r_0_80)) (not_occupied seg_09r_0_80)
       (not (blocked seg_09r_0_80 ?a)) (not_blocked seg_09r_0_80 ?a)
       (not (at-segment ?a seg_09r_0_80)) (airborne ?a seg_09r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b9b10_0_980 ?a))
       (not_blocked seg_08r_b9b10_0_980 ?a)))
 (:action
  ugly33348ugly202ugly933ugly345ugly952startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly33349ugly1105ugly566ugly472ugly924startup_seg_s_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action
  ugly33350ugly591ugly579ugly1193ugly457move_seg_s_b3b4b_0_140_seg_s_b3b4a_0_140_north_north_medium
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
 (:action
  ugly33351ugly147ugly320ugly621ugly179startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly33352ugly243ugly1027ugly268ugly925startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly33353ugly1094ugly806ugly350ugly264startup_seg_s_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly33354ugly650ugly441ugly290ugly391startup_seg_s_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly33355ugly844ugly829ugly394ugly308startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly33356ugly1186ugly606ugly431ugly772startup_seg_08r_b2a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action
  ugly33357ugly170ugly830ugly53ugly892startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly33358ugly697ugly771ugly356ugly603move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
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
 (:action
  ugly33359ugly1315ugly1268ugly571ugly192startup_seg_s_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action
  ugly33360ugly823ugly852ugly560ugly628startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly33361ugly421ugly1158ugly995ugly1384move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
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
 (:action
  ugly33362ugly1296ugly128ugly1282ugly331startup_seg_s_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6c_0_130)
       (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action ugly33363ugly690ugly634ugly626ugly947park_seg_p141_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly33364ugly356ugly603ugly410ugly1274move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
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
 (:action
  ugly33365ugly1346ugly1156ugly694ugly273startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly33366ugly1028ugly397ugly1086ugly295startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly33367ugly944ugly97ugly985ugly670move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
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
 (:action
  ugly33368ugly164ugly212ugly504ugly103startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action ugly33369ugly1065ugly1110ugly1052ugly437park_seg_p103_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action
  ugly33370ugly323ugly884ugly999ugly490startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly33371ugly1072ugly873ugly154ugly1016startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly33372ugly1160ugly1297ugly935ugly1053startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly33373ugly801ugly647ugly1015ugly245move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
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
 (:action
  ugly33374ugly1374ugly1232ugly651ugly1177startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly33375ugly52ugly460ugly464ugly304startup_seg_t_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b_0_60 ?a)
       (not (not_blocked seg_t_b8b_0_60 ?a))))
 (:action
  ugly33376ugly1132ugly48ugly809ugly246move_seg_o1_111b_0_60_seg_o1_111a_0_34_north_south_medium
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
 (:action
  ugly33377ugly657ugly359ugly792ugly767move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
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
 (:action
  ugly33378ugly684ugly172ugly1296ugly128startup_seg_n_a3c_0_60_south_medium
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
  ugly33379ugly1016ugly1079ugly95ugly1176startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly33380ugly492ugly126ugly706ugly51startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly33381ugly635ugly1276ugly879ugly610startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly33382ugly1076ugly1094ugly806ugly350move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
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
 (:action
  ugly33383ugly1101ugly686ugly591ugly579startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly33384ugly416ugly1059ugly63ugly1299startup_seg_s_b5c_0_60_south_medium
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
  ugly33385ugly777ugly151ugly903ugly1370startup_seg_o1_109d_0_45_south_medium
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
  ugly33386ugly444ugly71ugly904ugly442startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly33387ugly1253ugly403ugly134ugly1173startup_seg_t_b7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7a_0_60)
       (not_occupied seg_s_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7c_0_60 ?a)
       (not (not_blocked seg_s_b7c_0_60 ?a))))
 (:action
  ugly33388ugly586ugly439ugly1125ugly1309move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
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
  ugly33389ugly1120ugly1148ugly1172ugly983move_seg_s_b4c_0_60_seg_s_b3b4d_0_140_south_north_medium
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
 (:action
  ugly33390ugly962ugly305ugly754ugly556startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly33391ugly26ugly76ugly1146ugly645startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly33392ugly700ugly466ugly1367ugly371startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action ugly33393ugly252ugly832ugly1188ugly41park_seg_p152_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly33394ugly388ugly723ugly1045ugly961startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly33395ugly577ugly1375ugly880ugly59move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
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
 (:action
  ugly33396ugly457ugly47ugly567ugly939move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
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
 (:action
  ugly33397ugly1302ugly399ugly328ugly691startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly33398ugly204ugly1116ugly1284ugly1088startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly33399ugly1178ugly1321ugly934ugly834move_seg_t_b8a_0_60_seg_s_b8b_0_60_south_north_medium
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
 (:action
  ugly33400ugly648ugly835ugly149ugly669pushback_seg_o1_c1a_0_60_seg_o1_c1c_0_80_south_north_medium
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
  ugly33401ugly229ugly522ugly1219ugly1028move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
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
 (:action
  ugly33402ugly842ugly1033ugly159ugly137startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly33403ugly442ugly858ugly85ugly1327move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
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
 (:action
  ugly33404ugly451ugly1234ugly950ugly453startup_seg_08r_b6a_0_161_245_south_medium
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
  ugly33405ugly1319ugly279ugly181ugly9startup_seg_08r_b4d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4d_0_161_245)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action
  ugly33406ugly111ugly1169ugly1267ugly262startup_seg_t_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action
  ugly33407ugly835ugly149ugly669ugly446startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly33408ugly1262ugly578ugly49ugly828startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly33409ugly995ugly1384ugly104ugly902startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly33410ugly387ugly677ugly744ugly438move_seg_s_b5b8b_0_135_seg_s_b5b8a_0_135_north_north_medium
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
  ugly33411ugly886ugly600ugly67ugly60startup_seg_s_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_t_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a))))
 (:action
  ugly33412ugly1048ugly55ugly1168ugly890startup_seg_t_b3c_0_120_934_south_medium
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
  ugly33413ugly1164ugly158ugly811ugly586move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
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
 (:action
  ugly33414ugly1330ugly26ugly76ugly1146startup_seg_t_b10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action
  ugly33415ugly1143ugly818ugly131ugly574startup_seg_t_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly33416ugly1306ugly741ugly646ugly197startup_seg_o1_c2b_0_60_south_medium
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
  ugly33417ugly160ugly494ugly479ugly64startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly33418ugly1269ugly648ugly835ugly149startup_seg_s_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4c_0_140)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action
  ugly33419ugly729ugly74ugly1012ugly1137startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly33420ugly708ugly1328ugly498ugly289startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly33421ugly1119ugly124ugly432ugly1222startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly33422ugly1103ugly750ugly180ugly14move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
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
 (:action
  ugly33423ugly812ugly250ugly86ugly235startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly33424ugly605ugly29ugly671ugly1181startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action ugly33425ugly1154ugly275ugly938ugly261park_seg_p119_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly33426ugly372ugly557ugly1163ugly451startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action
  ugly33427ugly335ugly618ugly680ugly1149startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action
  ugly33428ugly940ugly881ugly1075ugly659startup_seg_08r_b4a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b4a_0_161_245)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action
  ugly33429ugly490ugly918ugly949ugly1277startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly33430ugly101ugly696ugly512ugly866startup_seg_s_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly33431ugly412ugly730ugly558ugly166startup_seg_t_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_t_b10b_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly33432ugly43ugly823ugly852ugly560startup_seg_t_b9d_0_60_south_medium
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
  ugly33433ugly15ugly1212ugly616ugly1050startup_seg_s_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly33434ugly65ugly937ugly662ugly370startup_seg_s_b5b_0_60_south_medium
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
  ugly33435ugly602ugly765ugly867ugly643startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly33436ugly256ugly339ugly649ugly652startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action
  ugly33437ugly1166ugly658ugly276ugly376startup_seg_b2_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action
  ugly33438ugly458ugly784ugly987ugly665pushback_seg_o1_c1c_0_80_seg_c1_n2b_0_80_north_south_medium
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
 (:action
  ugly33439ugly904ugly442ugly858ugly85startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly33440ugly1084ugly568ugly469ugly1272move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
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
 (:action
  ugly33441ugly1173ugly577ugly1375ugly880move_seg_b2_1_0_80_seg_08r_b2a_0_80_north_north_medium
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
 (:action
  ugly33442ugly336ugly2ugly1187ugly731move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
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
 (:action
  ugly33443ugly158ugly811ugly586ugly439startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly33444ugly971ugly198ugly68ugly521startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly33445ugly795ugly898ugly1239ugly624startup_seg_o1_110d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action ugly33446ugly1307ugly1304ugly1381ugly1180park_seg_p117_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly33447ugly187ugly927ugly1128ugly258startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly33448ugly304ugly614ugly540ugly1244move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
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
 (:action
  ugly33449ugly601ugly417ugly455ugly916startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly33450ugly1363ugly718ugly1258ugly1064startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly33451ugly8ugly609ugly349ugly802pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
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
 (:action
  ugly33452ugly1037ugly465ugly869ugly301move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
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
 (:action
  ugly33453ugly1239ugly624ugly986ugly653startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly33454ugly703ugly842ugly1033ugly159move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
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
  ugly33455ugly381ugly720ugly1071ugly845startup_seg_s_b7c_0_60_south_medium
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
  ugly33456ugly245ugly244ugly908ugly43startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33457ugly533ugly796ugly184ugly344move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
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
  ugly33458ugly787ugly519ugly984ugly1314startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly33459ugly542ugly1235ugly850ugly911startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly33460ugly530ugly664ugly607ugly948startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action
  ugly33461ugly851ugly1382ugly562ugly267move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
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
 (:action
  ugly33462ugly341ugly1332ugly1236ugly755startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly33463ugly500ugly573ugly231ugly378startup_seg_08r_b4a_0_161_245_south_medium
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
  ugly33464ugly463ugly1092ugly1333ugly463startup_seg_08l_a4b_0_161_245_south_medium
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
  ugly33465ugly1333ugly463ugly1092ugly1333pushback_seg_p111_0_76_seg_o1_111b_0_60_south_south_medium
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
  ugly33466ugly1085ugly170ugly830ugly53startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly33467ugly686ugly591ugly579ugly1193pushback_seg_o1_108c_0_34_seg_o1_109a_0_34_north_south_medium
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
 (:action
  ugly33468ugly1359ugly297ugly865ugly42move_seg_w1_152c_0_34_seg_w1_152b_0_45_north_south_medium
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
 (:action
  ugly33469ugly797ugly1245ugly768ugly979startup_seg_s_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly33470ugly829ugly394ugly308ugly816move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
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
 (:action
  ugly33471ugly818ugly131ugly574ugly545startup_seg_t_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b_0_60 ?a)
       (not (not_blocked seg_t_b4b_0_60 ?a))))
 (:action
  ugly33472ugly810ugly174ugly1383ugly978startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33473ugly1232ugly651ugly1177ugly1338move_seg_t_b8c_0_120_934_seg_t_b8a_0_60_north_south_medium
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
 (:action
  ugly33474ugly362ugly1221ugly996ugly306move_seg_w1_c4b_0_60_seg_w1_c4a_0_34_north_south_medium
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
 (:action
  ugly33475ugly541ugly361ugly742ugly121startup_seg_t_b8b9b_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action ugly33476ugly1360ugly332ugly205ugly967park_seg_p151_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action
  ugly33477ugly649ugly652ugly1057ugly1103startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly33478ugly711ugly1038ugly1024ugly1292startup_seg_b5_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_t_b5c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a))))
 (:action
  ugly33479ugly1014ugly363ugly1380ugly1041startup_seg_t_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_1_0_115 ?a))))
 (:action
  ugly33480ugly833ugly520ugly930ugly1131startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly33481ugly964ugly625ugly65ugly937startup_seg_s_b3a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly33482ugly920ugly1066ugly960ugly321startup_seg_t_b6b_0_60_south_medium
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
  ugly33483ugly705ugly70ugly365ugly215startup_seg_t_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly33484ugly399ugly328ugly691ugly1350startup_seg_s_b7a_0_60_south_medium
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
  ugly33485ugly313ugly419ugly130ugly1369pushback_seg_o1_111c_0_34_seg_o1_c3a_0_34_north_south_medium
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
 (:action
  ugly33486ugly333ugly336ugly2ugly1187startup_seg_s_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly33487ugly821ugly1123ugly926ugly1357startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly33488ugly1129ugly732ugly266ugly965move_seg_s_b5b8a_0_135_seg_s_b5b_0_60_north_north_medium
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
 (:action
  ugly33489ugly558ugly166ugly642ugly819startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly33490ugly627ugly804ugly1048ugly55startup_seg_m_a7d_0_60_south_medium
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
  ugly33491ugly169ugly749ugly959ugly225startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly33492ugly1317ugly1ugly763ugly430move_seg_s_b7a_0_60_seg_s_b7d_0_60_north_south_medium
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
 (:action
  ugly33493ugly1243ugly343ugly112ugly894startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly33494ugly578ugly49ugly828ugly1216startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly33495ugly788ugly342ugly1286ugly135startup_seg_t_b4c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4c_0_120_934)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action
  ugly33496ugly67ugly60ugly513ugly875startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly33497ugly1130ugly285ugly18ugly1228move_seg_o1_104c_0_60_seg_o1_104b_0_60_north_south_medium
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
 (:action
  ugly33498ugly302ugly1227ugly745ugly426pushback_seg_p107_0_76_seg_o1_c2b_0_60_south_south_medium
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
  ugly33499ugly1299ugly594ugly931ugly963move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
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
 (:action
  ugly33500ugly975ugly1348ugly1287ugly83startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly33501ugly1064ugly1288ugly17ugly409startup_seg_s_b9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly33502ugly297ugly865ugly42ugly213move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
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
 (:action
  ugly33503ugly108ugly429ugly1269ugly648startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly33504ugly128ugly1282ugly331ugly681move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
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
 (:action ugly33505ugly283ugly841ugly637ugly1006park_seg_p162_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly33506ugly683ugly1032ugly909ugly348startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly33507ugly582ugly10ugly1083ugly853startup_seg_s_b5b8c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8c_0_130)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action
  ugly33508ugly914ugly917ugly541ugly361startup_seg_b4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_a_0_156_924 ?a)
       (not (not_blocked seg_b4_a_0_156_924 ?a))))
 (:action
  ugly33509ugly817ugly705ugly70ugly365move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
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
  ugly33510ugly483ugly974ugly1312ugly654startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly33511ugly1044ugly1275ugly700ugly466startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly33512ugly993ugly144ugly207ugly1008move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
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
 (:action
  ugly33513ugly805ugly427ugly1061ugly1341startup_seg_s_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10b_0_125 ?a)
       (not (not_blocked seg_s_b9b10b_0_125 ?a))))
 (:action
  ugly33514ugly1057ugly1103ugly750ugly180move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
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
 (:action
  ugly33515ugly241ugly972ugly993ugly144move_seg_w1_151c_0_34_seg_w1_151b_0_45_north_south_medium
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
 (:action
  ugly33516ugly303ugly1093ugly454ugly277startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly33517ugly1279ugly1179ugly150ugly570move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
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
 (:action
  ugly33518ugly1008ugly203ugly1265ugly988move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
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
 (:action
  ugly33519ugly159ugly137ugly1035ugly22startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly33520ugly1146ugly645ugly1017ugly992startup_seg_s_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_1_0_83 ?a))))
 (:action
  ugly33521ugly514ugly827ugly333ugly336move_seg_w1_141b_0_45_seg_w1_141a_0_34_north_south_medium
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
  ugly33522ugly693ugly327ugly309ugly182startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly33523ugly86ugly235ugly1209ugly929move_seg_08r_b6c_0_80_seg_08r_b6a_0_161_245_north_south_medium
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
 (:action
  ugly33524ugly790ugly61ugly368ugly721move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
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
 (:action
  ugly33525ugly466ugly1367ugly371ugly1157startup_seg_s_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action
  ugly33526ugly1195ugly702ugly1003ugly468pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
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
  ugly33527ugly1322ugly288ugly966ugly623startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action ugly33528ugly630ugly46ugly188ugly1368park_seg_p134_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly33529ugly1069ugly1325ugly1203ugly1164move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
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
 (:action
  ugly33530ugly513ugly875ugly864ugly627startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly33531ugly139ugly1211ugly1080ugly810move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
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
 (:action
  ugly33532ugly1098ugly186ugly1185ugly1117move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
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
  ugly33533ugly1061ugly1341ugly727ugly716startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly33534ugly628ugly1141ugly173ugly433startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly33535ugly1347ugly367ugly1326ugly780move_seg_w1_c4b_0_60_seg_w1_c4c_0_60_north_south_medium
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
 (:action
  ugly33536ugly263ugly1385ugly1078ugly1130move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
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
 (:action
  ugly33537ugly981ugly824ugly883ugly527move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
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
 (:action
  ugly33538ugly359ugly792ugly767ugly292startup_seg_t_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b_0_60)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly33539ugly849ugly1379ugly1100ugly318move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
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
 (:action ugly33540ugly704ugly897ugly1063ugly98park_seg_p118_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly33541ugly676ugly1270ugly385ugly120startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action
  ugly33542ugly1083ugly853ugly712ugly11move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
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
 (:action
  ugly33543ugly216ugly3ugly1300ugly23startup_seg_t_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b_0_60)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly33544ugly778ugly1082ugly1320ugly543move_seg_w1_154b_0_45_seg_w1_154a_0_34_north_south_medium
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
 (:action
  ugly33545ugly60ugly513ugly875ugly864startup_seg_t_b9d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9d_0_60)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action
  ugly33546ugly1151ugly998ugly725ugly1283startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly33547ugly747ugly1215ugly1342ugly487move_seg_o1_c3c_0_48_seg_o1_c3b_0_60_north_south_medium
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
 (:action
  ugly33548ugly309ugly182ugly882ugly478move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
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
 (:action
  ugly33549ugly527ugly178ugly905ugly52pushback_seg_o1_110a_0_34_seg_o1_109c_0_34_north_south_medium
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
  ugly33550ugly50ugly357ugly1263ugly619startup_seg_t_b2b3a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3a_0_140)
       (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action
  ugly33551ugly208ugly1349ugly1058ugly503startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33552ugly38ugly167ugly794ugly583startup_seg_w1_c4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_s5_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s5_0_94 ?a)
       (not (not_blocked seg_s5_0_94 ?a))))
 (:action
  ugly33553ugly45ugly1334ugly956ugly783move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
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
 (:action
  ugly33554ugly406ugly322ugly778ugly1082startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly33555ugly475ugly565ugly787ugly519startup_seg_o1_110c_0_34_south_medium
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
  ugly33556ugly1168ugly890ugly528ugly544startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly33557ugly1263ugly619ugly516ugly233startup_seg_s_b6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly33558ugly22ugly1084ugly568ugly469startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly33559ugly3ugly1300ugly23ugly605move_seg_w1_164a_0_34_seg_w1_164c_0_34_north_south_medium
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
 (:action
  ugly33560ugly437ugly919ugly1255ugly66startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action
  ugly33561ugly115ugly1000ugly1138ugly113startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly33562ugly1206ugly15ugly1212ugly616startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly33563ugly715ugly717ugly1095ugly143move_seg_b2_0_80_seg_b2_1_0_80_north_north_medium
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
  ugly33564ugly186ugly1185ugly1117ugly152startup_seg_t_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5d_0_60)
       (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action
  ugly33565ugly275ugly938ugly261ugly1072startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly33566ugly610ugly786ugly793ugly1343startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly33567ugly1039ugly1317ugly1ugly763move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
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
 (:action
  ugly33568ugly1036ugly218ugly193ugly1026startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly33569ugly110ugly1223ugly555ugly1089move_seg_t_b2c_0_60_seg_b2_0_80_south_north_medium
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
  ugly33570ugly965ugly116ugly1074ugly872startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action ugly33571ugly97ugly985ugly670ugly252park_seg_p154_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly33572ugly796ugly184ugly344ugly415move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
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
 (:action ugly33573ugly728ugly127ugly507ugly795park_seg_p101_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly33574ugly326ugly505ugly657ugly359startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly33575ugly1051ugly885ugly413ugly423startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly33576ugly234ugly595ugly156ugly920startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly33577ugly140ugly1360ugly332ugly205startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly33578ugly236ugly411ugly1102ugly1040startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action ugly33579ugly781ugly1354ugly1037ugly465park_seg_p163_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action
  ugly33580ugly1219ugly1028ugly397ugly1086move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
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
 (:action
  ugly33581ugly1004ugly582ugly10ugly1083startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly33582ugly947ugly764ugly639ugly1142startup_seg_s_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action
  ugly33583ugly1073ugly1065ugly1110ugly1052move_seg_o1_c4c_0_80_seg_o1_c4b_0_60_north_south_medium
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
  ugly33584ugly865ugly42ugly213ugly6startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly33585ugly1034ugly1002ugly338ugly1014move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
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
 (:action
  ugly33586ugly969ugly1254ugly876ugly499startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly33587ugly352ugly424ugly471ugly1152move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
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
 (:action
  ugly33588ugly883ugly527ugly178ugly905move_seg_s_b2b3b_0_140_seg_s_b2b3a_0_140_north_north_medium
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
  ugly33589ugly701ugly38ugly167ugly794startup_seg_s_b7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7c_0_60)
       (not_occupied seg_t_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a))))
 (:action
  ugly33590ugly1106ugly708ugly1328ugly498move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
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
 (:action
  ugly33591ugly771ugly356ugly603ugly410startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action ugly33592ugly1377ugly294ugly45ugly1334park_seg_p108_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action
  ugly33593ugly94ugly733ugly1303ugly688startup_seg_t_b8c_0_120_934_south_medium
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
  ugly33594ugly878ugly1289ugly488ugly284startup_seg_s_b4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly33595ugly197ugly936ugly695ugly1081startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly33596ugly1010ugly209ugly221ugly1109move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
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
 (:action
  ugly33597ugly6ugly1200ugly147ugly320startup_seg_t_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9a_0_60)
       (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly33598ugly1092ugly1333ugly463ugly1092startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly33599ugly570ugly19ugly915ugly486startup_seg_s_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action
  ugly33600ugly709ugly525ugly825ugly1355move_seg_c4_s6a_0_80_seg_c4_s6c_0_60_north_south_medium
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
  ugly33601ugly498ugly289ugly1340ugly856move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
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
 (:action
  ugly33602ugly752ugly418ugly77ugly360startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly33603ugly42ugly213ugly6ugly1200move_seg_w1_141c_0_34_seg_w1_141b_0_45_north_south_medium
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
 (:action
  ugly33604ugly1144ugly28ugly373ugly220startup_seg_t_b5c_0_120_934_south_medium
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
  ugly33605ugly1104ugly598ugly39ugly1359move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
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
 (:action
  ugly33606ugly1287ugly83ugly1271ugly548startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly33607ugly524ugly910ugly1029ugly1206move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
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
 (:action
  ugly33608ugly325ugly435ugly751ugly386startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly33609ugly710ugly822ugly790ugly61move_seg_o1_109c_0_34_seg_o1_109b_0_60_north_south_medium
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
 (:action
  ugly33610ugly837ugly613ugly1364ugly1143startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly33611ugly296ugly73ugly1240ugly300move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
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
  ugly33612ugly1182ugly759ugly434ugly1049startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly33613ugly491ugly589ugly214ugly635startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly33614ugly80ugly957ugly1202ugly1260startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly33615ugly556ugly1291ugly139ugly1211startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly33616ugly926ugly1357ugly1077ugly142move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
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
  ugly33617ugly1297ugly935ugly1053ugly1353startup_seg_t_b2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_b2_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_0_80 ?a)
       (not (not_blocked seg_b2_0_80 ?a))))
 (:action
  ugly33618ugly860ugly395ugly1119ugly124move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
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
 (:action
  ugly33619ugly1172ugly983ugly44ugly190startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly33620ugly102ugly325ugly435ugly751move_seg_o1_110c_0_34_seg_o1_110d_0_45_north_south_medium
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
  ugly33621ugly764ugly639ugly1142ugly709startup_seg_t_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b_0_60)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly33622ugly402ugly459ugly358ugly789startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly33623ugly1055ugly833ugly520ugly930startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly33624ugly118ugly611ugly1319ugly279move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
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
  ugly33625ugly455ugly916ugly1316ugly666startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly33626ugly167ugly794ugly583ugly887move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
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
 (:action
  ugly33627ugly211ugly991ugly216ugly3startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly33628ugly571ugly192ugly737ugly805move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
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
 (:action
  ugly33629ugly479ugly64ugly1224ugly868startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly33630ugly484ugly776ugly449ugly817startup_seg_s6_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_s_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5a_0_60 ?a)
       (not (not_blocked seg_s_b5a_0_60 ?a))))
 (:action
  ugly33631ugly1139ugly191ugly311ugly330move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
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
 (:action
  ugly33632ugly889ugly314ugly96ugly162startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly33633ugly142ugly299ugly590ugly259startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly33634ugly1334ugly956ugly783ugly323startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action ugly33635ugly854ugly1073ugly1065ugly1110park_seg_p117_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly33636ugly419ugly130ugly1369ugly467startup_seg_o1_109c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly33637ugly1042ugly599ugly1195ugly702park_seg_p111_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action
  ugly33638ugly566ugly472ugly924ugly734move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
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
 (:action
  ugly33639ugly389ugly689ugly539ugly837startup_seg_t_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9a_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action
  ugly33640ugly470ugly1199ugly1259ugly1196startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action
  ugly33641ugly404ugly227ugly1120ugly1148startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly33642ugly499ugly747ugly1215ugly1342startup_seg_b5_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly33643ugly841ugly637ugly1006ugly859move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
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
 (:action
  ugly33644ugly911ugly1307ugly1304ugly1381startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly33645ugly609ugly349ugly802ugly445startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly33646ugly403ugly134ugly1173ugly577startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly33647ugly1113ugly1023ugly561ugly973startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly33648ugly1189ugly799ugly1097ugly701move_seg_s_b6a_0_60_seg_s_b6c_0_60_north_south_medium
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
 (:action
  ugly33649ugly691ugly1350ugly692ugly440startup_seg_t_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6a_0_135)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly33650ugly489ugly788ugly342ugly1286move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
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
 (:action ugly33651ugly972ugly993ugly144ugly207park_seg_p134_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly33652ugly220ugly592ugly569ugly269startup_seg_t_b5a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_t_b5b_0_60) (not_occupied seg_t_b5c_0_120_934)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b_0_60 ?a)
       (not (not_blocked seg_t_b5b_0_60 ?a)) (blocked seg_t_b5c_0_120_934 ?a)
       (not (not_blocked seg_t_b5c_0_120_934 ?a)) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action ugly33653ugly192ugly737ugly805ugly427park_seg_p118_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly33654ugly773ugly1166ugly658ugly276move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
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
 (:action
  ugly33655ugly830ugly53ugly892ugly1118pushback_seg_o1_110c_0_34_seg_o1_111a_0_34_north_south_medium
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
 (:action
  ugly33656ugly317ugly1311ugly146ugly581startup_seg_s_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action
  ugly33657ugly740ugly886ugly600ugly67move_seg_08r_b2a_0_80_seg_08r_b2b_0_80_north_south_medium
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
  ugly33658ugly29ugly671ugly1181ugly1190pushback_seg_o1_108d_0_45_seg_o1_108c_0_34_south_north_medium
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
 (:action
  ugly33659ugly1336ugly526ugly1136ugly335startup_seg_t_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9b_0_115)
       (not_occupied seg_t_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9a_0_115 ?a)
       (not (not_blocked seg_t_b8b9a_0_115 ?a))))
 (:action
  ugly33660ugly145ugly329ugly508ugly381startup_seg_s_b8b9b_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9b_0_115)
       (not_occupied seg_s_b8b9a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9a_0_115 ?a)
       (not (not_blocked seg_s_b8b9a_0_115 ?a))))
 (:action
  ugly33661ugly266ugly965ugly116ugly1074startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly33662ugly1141ugly173ugly433ugly1324park_seg_p112_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action
  ugly33663ugly299ugly590ugly259ugly1266startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly33664ugly163ugly496ugly964ugly625move_seg_08r_b3b4_0_520_seg_08r_b4c_0_80_south_north_medium
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
 (:action
  ugly33665ugly1320ugly543ugly223ugly27startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly33666ugly1026ugly1155ugly891ugly1226startup_seg_s_b9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b9a_0_60) (not_occupied seg_s_b9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a)) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a))))
 (:action
  ugly33667ugly239ugly580ugly533ugly796move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
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
 (:action
  ugly33668ugly1349ugly1058ugly503ugly1021startup_seg_s_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action
  ugly33669ugly361ugly742ugly121ugly617move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
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
 (:action
  ugly33670ugly707ugly428ugly675ugly942startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly33671ugly129ugly201ugly307ugly757startup_seg_s_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4b_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly33672ugly1032ugly909ugly348ugly878startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly33673ugly757ugly667ugly615ugly405startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly33674ugly1366ugly775ugly324ugly82park_seg_p162_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly33675ugly375ugly650ugly441ugly290move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
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
  ugly33676ugly699ugly1344ugly870ugly769startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly33677ugly180ugly14ugly375ugly650pushback_seg_w1_163b_0_45_seg_w1_163a_0_34_south_north_medium
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
 (:action
  ugly33678ugly104ugly902ugly1242ugly1249move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
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
 (:action
  ugly33679ugly1294ugly735ugly951ugly230move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
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
 (:action
  ugly33680ugly822ugly790ugly61ugly368startup_seg_s_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_1_0_115)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly33681ugly227ugly1120ugly1148ugly1172startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action
  ugly33682ugly1020ugly1191ugly762ugly746move_seg_w1_153c_0_34_seg_w1_153b_0_45_north_south_medium
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
 (:action
  ugly33683ugly1118ugly462ugly1386ugly1246move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
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
  ugly33684ugly688ugly608ugly1302ugly399move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
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
 (:action
  ugly33685ugly1308ugly312ugly497ugly672move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
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
 (:action
  ugly33686ugly1248ugly1346ugly1156ugly694move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
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
  ugly33687ugly1327ugly185ugly538ugly153startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly33688ugly1124ugly1352ugly815ugly1004startup_seg_t_b7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7c_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7b_0_60 ?a)
       (not (not_blocked seg_t_b7b_0_60 ?a))))
 (:action
  ugly33689ugly574ugly545ugly554ugly481startup_seg_b9_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_0_80_6226)
       (not_occupied seg_t_b9c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9c_0_120_934 ?a)
       (not (not_blocked seg_t_b9c_0_120_934 ?a))))
 (:action
  ugly33690ugly368ugly721ugly89ugly99startup_seg_b3_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action
  ugly33691ugly1075ugly659ugly483ugly974startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly33692ugly173ugly433ugly1324ugly1019move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
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
 (:action
  ugly33693ugly828ugly1216ugly901ugly199startup_seg_t_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10a_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly33694ugly1367ugly371ugly1157ugly656move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
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
 (:action
  ugly33695ugly1070ugly840ugly826ugly253move_seg_b8_b_0_80_6226_seg_t_b8c_0_120_934_south_north_medium
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
 (:action
  ugly33696ugly980ugly1251ugly534ugly7startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly33697ugly529ugly602ugly765ugly867startup_seg_t_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10b_0_60)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action
  ugly33698ugly946ugly422ugly921ugly1192startup_seg_s_b3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly33699ugly464ugly304ugly614ugly540startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly33700ugly769ugly1070ugly840ugly826move_seg_o1_c1a_0_60_seg_o1_c1c_0_80_north_south_medium
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
 (:action
  ugly33701ugly901ugly199ugly641ugly969startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly33702ugly1135ugly782ugly107ugly849startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly33703ugly606ugly431ugly772ugly475startup_seg_t_b6c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6c_0_120_934)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly33704ugly927ugly1128ugly258ugly1336startup_seg_t_b3b_0_60_south_medium
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
  ugly33705ugly744ugly438ugly115ugly1000startup_seg_m_a4a_0_120_934_south_medium
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
  ugly33706ugly767ugly292ugly563ugly1310startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly33707ugly1270ugly385ugly120ugly781startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly33708ugly1169ugly1267ugly262ugly515startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly33709ugly659ugly483ugly974ugly1312startup_seg_s_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action
  ugly33710ugly687ugly559ugly976ugly114startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly33711ugly960ugly321ugly564ugly1124startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly33712ugly376ugly477ugly587ugly108move_seg_o1_118b_0_60_seg_o1_118a_0_34_north_south_medium
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
 (:action
  ugly33713ugly526ugly1136ugly335ugly618startup_seg_s_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action
  ugly33714ugly346ugly855ugly640ugly393startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly33715ugly766ugly661ugly928ugly922startup_seg_o1_108a_0_34_south_medium
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
  ugly33716ugly563ugly1310ugly1273ugly379startup_seg_b9_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_08r_b9a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9a_0_161_245 ?a)
       (not (not_blocked seg_08r_b9a_0_161_245 ?a))))
 (:action
  ugly33717ugly662ugly370ugly704ugly897startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33718ugly1006ugly859ugly406ugly322startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly33719ugly881ugly1075ugly659ugly483startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly33720ugly1137ugly1313ugly687ugly559startup_seg_o1_110a_0_34_south_medium
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
  ugly33721ugly1116ugly1284ugly1088ugly1220move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
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
 (:action
  ugly33722ugly1018ugly211ugly991ugly216move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
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
 (:action
  ugly33723ugly794ugly583ugly887ugly4startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action
  ugly33724ugly864ugly627ugly804ugly1048move_seg_s_b2b_0_60_seg_t_b2a_0_60_south_north_medium
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
 (:action
  ugly33725ugly595ugly156ugly920ugly1066startup_seg_o1_109a_0_34_south_medium
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
  ugly33726ugly874ugly839ugly1020ugly1191startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly33727ugly612ugly1147ugly766ugly661startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly33728ugly984ugly1314ugly1248ugly1346startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly33729ugly856ugly81ugly187ugly927startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly33730ugly1286ugly135ugly547ugly1113startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly33731ugly861ugly369ugly298ugly1044startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly33732ugly279ugly181ugly9ugly485move_seg_s_b2a_0_60_seg_s_b2b_0_60_north_south_medium
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
 (:action ugly33733ugly365ugly215ugly644ugly93park_seg_p142_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action
  ugly33734ugly1025ugly814ugly690ugly634startup_seg_t_b9c_0_120_934_south_medium
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
  ugly33735ugly698ugly270ugly549ugly523move_seg_08r_b6a_0_161_245_seg_b8_a_0_156_924_south_south_medium
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
 (:action
  ugly33736ugly678ugly994ugly724ugly542startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action
  ugly33737ugly1231ugly5ugly316ugly420move_seg_o1_110c_0_34_seg_o1_110b_0_60_north_south_medium
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
  ugly33738ugly1023ugly561ugly973ugly1145startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly33739ugly737ugly805ugly427ugly1061startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly33740ugly1159ugly710ugly822ugly790move_seg_08r_b2b_0_80_seg_08r_b2b3_0_900_south_south_medium
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
 (:action
  ugly33741ugly782ugly107ugly849ugly1379startup_seg_08l_a7b_0_161_245_south_medium
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
  ugly33742ugly1102ugly1040ugly1098ugly186startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly33743ugly739ugly550ugly78ugly536startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly33744ugly371ugly1157ugly656ugly236move_seg_o1_115b_0_60_seg_o1_115a_0_34_north_south_medium
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
 (:action
  ugly33745ugly638ugly728ugly127ugly507startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly33746ugly503ugly1021ugly660ugly807move_seg_o1_111d_0_45_seg_o1_111a_0_34_north_south_medium
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
 (:action
  ugly33747ugly1351ugly249ugly56ugly238move_seg_w1_c4a_0_34_seg_w1_c4c_0_60_north_south_medium
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
 (:action
  ugly33748ugly557ugly1163ugly451ugly1234startup_seg_o1_108b_0_60_south_medium
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
  ugly33749ugly1209ugly929ugly105ugly414startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33750ugly254ugly813ugly101ugly696startup_seg_t_b2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2c_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a))))
 (:action
  ugly33751ugly658ugly276ugly376ugly477startup_seg_t_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5a_0_60)
       (not_occupied seg_s_b5c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5c_0_60 ?a)
       (not (not_blocked seg_s_b5c_0_60 ?a))))
 (:action
  ugly33752ugly929ugly105ugly414ugly871startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly33753ugly1350ugly692ugly440ugly553move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
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
  ugly33754ugly354ugly402ugly459ugly358startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly33755ugly548ugly923ugly412ugly730startup_seg_t_b4b6b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6a_0_135 ?a)
       (not (not_blocked seg_t_b4b6a_0_135 ?a))))
 (:action
  ugly33756ugly622ugly458ugly784ugly987startup_seg_s_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4b_0_140 ?a)
       (not (not_blocked seg_s_b3b4b_0_140 ?a))))
 (:action
  ugly33757ugly195ugly1022ugly1205ugly72startup_seg_m_a6a_0_60_south_medium
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
  ugly33758ugly350ugly264ugly668ugly177startup_seg_t_b3a_0_60_south_medium
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
  ugly33759ugly138ugly1010ugly209ugly221startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly33760ugly824ugly883ugly527ugly178startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action
  ugly33761ugly585ugly604ugly506ugly384startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly33762ugly1017ugly992ugly1388ugly1140startup_seg_t_b9b10a_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10a_0_125)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action
  ugly33763ugly162ugly914ugly917ugly541move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
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
 (:action
  ugly33764ugly996ugly306ugly122ugly1305startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly33765ugly1375ugly880ugly59ugly75move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
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
 (:action
  ugly33766ugly136ugly698ugly270ugly549startup_seg_t_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3a_0_60)
       (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly33767ugly434ugly1049ugly1111ugly1322move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
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
 (:action
  ugly33768ugly973ugly1145ugly1374ugly1232startup_seg_t_b9b10c_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10c_0_60 ?a)
       (not (not_blocked seg_t_b10c_0_60 ?a))))
 (:action
  ugly33769ugly1031ugly847ugly697ugly771move_seg_o1_108c_0_34_seg_o1_108b_0_60_north_south_medium
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
 (:action
  ugly33770ugly733ugly1303ugly688ugly608startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly33771ugly597ugly1171ugly1039ugly1317move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
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
 (:action
  ugly33772ugly1295ugly382ugly1151ugly998startup_seg_s_b9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9c_0_60)
       (not_occupied seg_s_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_0_115 ?a))))
 (:action
  ugly33773ugly78ugly536ugly1036ugly218move_seg_w1_142b_0_45_seg_w1_142a_0_34_north_south_medium
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
 (:action
  ugly33774ugly725ugly1283ugly1293ugly954startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly33775ugly525ugly825ugly1355ugly286move_seg_s_b6b7b_0_140_seg_s_b6b7a_0_140_north_north_medium
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
 (:action
  ugly33776ugly1310ugly1273ugly379ugly502move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
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
 (:action
  ugly33777ugly1278ugly1331ugly495ugly161startup_seg_s_b3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action
  ugly33778ugly48ugly809ugly246ugly390move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
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
 (:action
  ugly33779ugly1256ugly981ugly824ugly883startup_seg_t_b3c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3c_0_120_934)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly33780ugly1252ugly777ugly151ugly903startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly33781ugly977ugly374ugly1056ugly940startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33782ugly1225ugly210ugly552ugly958startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly33783ugly1235ugly850ugly911ugly1307startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly33784ugly1245ugly768ugly979ugly719startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly33785ugly522ugly1219ugly1028ugly397startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly33786ugly1378ugly1308ugly312ugly497startup_seg_s_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4c_0_140 ?a)
       (not (not_blocked seg_s_b3b4c_0_140 ?a))))
 (:action
  ugly33787ugly689ugly539ugly837ugly613startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly33788ugly1081ugly1101ugly686ugly591startup_seg_t_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5d_0_60 ?a)
       (not (not_blocked seg_t_b5d_0_60 ?a))))
 (:action
  ugly33789ugly1386ugly1246ugly30ugly846move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
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
 (:action ugly33790ugly589ugly214ugly635ugly1276park_seg_p164_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action
  ugly33791ugly694ugly273ugly1030ugly416startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly33792ugly122ugly1305ugly843ugly100startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly33793ugly1254ugly876ugly499ugly747startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action
  ugly33794ugly532ugly25ugly263ugly1385startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly33795ugly1022ugly1205ugly72ugly1182startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly33796ugly132ugly753ugly8ugly609move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
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
 (:action
  ugly33797ugly641ugly969ugly1254ugly876startup_seg_08r_b9a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly33798ugly440ugly553ugly408ugly596startup_seg_n_a3b_0_60_south_medium
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
  ugly33799ugly834ugly111ugly1169ugly1267move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
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
 (:action
  ugly33800ugly1284ugly1088ugly1220ugly436startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly33801ugly587ugly108ugly429ugly1269startup_seg_s_b10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_s_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10b_0_60 ?a)
       (not (not_blocked seg_s_b10b_0_60 ?a))))
 (:action
  ugly33802ugly453ugly492ugly126ugly706move_seg_s_b2b3c_0_140_seg_s_b2b3b_0_140_north_north_medium
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
 (:action
  ugly33803ugly324ugly82ugly860ugly395startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly33804ugly921ugly1192ugly532ugly25move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
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
 (:action
  ugly33805ugly146ugly581ugly722ugly798startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly33806ugly1047ugly90ugly119ugly703startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly33807ugly411ugly1102ugly1040ugly1098move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
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
 (:action
  ugly33808ugly604ugly506ugly384ugly1295move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
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
 (:action ugly33809ugly1171ugly1039ugly1317ugly1park_seg_p141_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly33810ugly671ugly1181ugly1190ugly456startup_seg_m_a6c_0_60_south_medium
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
  ugly33811ugly590ugly259ugly1266ugly1087startup_seg_08r_b6d_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6d_0_161_245)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly33812ugly432ugly1222ugly1238ugly229startup_seg_t_b2b3c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3b_0_140 ?a)
       (not (not_blocked seg_t_b2b3b_0_140 ?a))))
 (:action
  ugly33813ugly278ugly977ugly374ugly1056startup_seg_o1_c2d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly33814ugly1054ugly183ugly683ugly1032park_seg_p102_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly33815ugly135ugly547ugly1113ugly1023startup_seg_t_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6a_0_60)
       (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly33816ugly685ugly1358ugly1076ugly1094startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly33817ugly425ugly831ugly1345ugly693move_seg_o1_102b_0_60_seg_o1_102a_0_34_north_south_medium
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
 (:action
  ugly33818ugly408ugly596ugly1280ugly944move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
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
 (:action
  ugly33819ugly991ugly216ugly3ugly1300move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
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
 (:action ugly33820ugly937ugly662ugly370ugly704park_seg_p101_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action
  ugly33821ugly507ugly795ugly898ugly1239startup_seg_t_b9b_0_60_south_medium
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
  ugly33822ugly742ugly121ugly617ugly160startup_seg_08r_b6d_0_161_245_south_medium
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
  ugly33823ugly554ugly481ugly633ugly372startup_seg_t_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6b_0_135)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action
  ugly33824ugly1005ugly237ugly24ugly474startup_seg_t_b4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b_0_60)
       (not_occupied seg_t_b4a_0_60) (not_occupied seg_t_b4c_0_120_934)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a)) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a)) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action ugly33825ugly246ugly390ugly260ugly1112park_seg_p116_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly33826ugly519ugly984ugly1314ugly1248startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly33827ugly928ugly922ugly946ugly422startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33828ugly1030ugly416ugly1059ugly63startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly33829ugly448ugly1225ugly210ugly552startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly33830ugly1241ugly129ugly201ugly307startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly33831ugly1213ugly1218ugly16ugly955startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly33832ugly289ugly1340ugly856ugly81move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
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
 (:action
  ugly33833ugly1142ugly709ugly525ugly825startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly33834ugly379ugly502ugly278ugly977move_seg_o1_109c_0_34_seg_o1_109d_0_45_north_south_medium
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
  ugly33835ugly1175ugly377ugly33ugly234startup_seg_t_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8a_0_135)
       (not_occupied seg_t_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8b_0_135 ?a)
       (not (not_blocked seg_t_b5b8b_0_135 ?a))))
 (:action
  ugly33836ugly224ugly761ugly1150ugly243startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly33837ugly410ugly1274ugly242ugly699startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly33838ugly858ugly85ugly1327ugly185startup_seg_t_b3b4b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4a_0_140 ?a)
       (not (not_blocked seg_t_b3b4a_0_140 ?a))))
 (:action
  ugly33839ugly934ugly834ugly111ugly1169startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly33840ugly1063ugly98ugly1062ugly632startup_seg_m_a4d_0_60_south_medium
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
  ugly33841ugly534ugly7ugly1055ugly833startup_seg_t_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3b_0_140)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action
  ugly33842ugly1177ugly1338ugly110ugly1223startup_seg_b4_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_t_b4c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4c_0_120_934 ?a)
       (not (not_blocked seg_t_b4c_0_120_934 ?a))))
 (:action
  ugly33843ugly1181ugly1190ugly456ugly1186startup_seg_t_b8b_0_60_south_medium
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
  ugly33844ugly792ugly767ugly292ugly563startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly33845ugly1316ugly666ugly896ugly893startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33846ugly1058ugly503ugly1021ugly660startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action
  ugly33847ugly785ugly138ugly1010ugly209move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
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
 (:action
  ugly33848ugly258ugly1336ugly526ugly1136move_seg_o1_103c_0_34_seg_o1_103b_0_60_north_south_medium
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
 (:action
  ugly33849ugly732ugly266ugly965ugly116startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly33850ugly188ugly1368ugly1007ugly136startup_seg_s5_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly33851ugly1204ugly302ugly1227ugly745move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
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
 (:action
  ugly33852ugly277ugly877ugly1090ugly1217startup_seg_s_b8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly33853ugly13ugly20ugly473ugly1361move_seg_o1_109b_0_60_seg_o1_109a_0_34_north_south_medium
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
 (:action
  ugly33854ugly255ugly62ugly398ugly535startup_seg_t_b3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3d_0_60)
       (not_occupied seg_t_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3c_0_140 ?a)
       (not (not_blocked seg_t_b2b3c_0_140 ?a))))
 (:action
  ugly33855ugly1337ugly232ugly247ugly770startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly33856ugly594ugly931ugly963ugly387startup_seg_s_b4b6a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6b_0_135 ?a)
       (not (not_blocked seg_s_b4b6b_0_135 ?a))))
 (:action
  ugly33857ugly449ugly817ugly705ugly70move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
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
 (:action
  ugly33858ugly393ugly1174ugly514ugly827move_seg_o1_103b_0_60_seg_o1_103a_0_34_north_south_medium
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
 (:action
  ugly33859ugly515ugly797ugly1245ugly768startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33860ugly1115ugly752ugly418ugly77move_seg_o1_108d_0_45_seg_o1_108a_0_34_north_south_medium
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
 (:action
  ugly33861ugly285ugly18ugly1228ugly341startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly33862ugly1259ugly1196ugly1047ugly90move_seg_s6_0_94_seg_c4_s6b_0_60_north_north_medium
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
 (:action
  ugly33863ugly103ugly1335ugly69ugly334startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly33864ugly1376ugly12ugly1210ugly715startup_seg_s_b8b9a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9b_0_115 ?a)
       (not (not_blocked seg_s_b8b9b_0_115 ?a))))
 (:action
  ugly33865ugly959ugly225ugly808ugly50move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
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
  ugly33866ugly1110ugly1052ugly437ugly919startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly33867ugly1240ugly300ugly315ugly88move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
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
  ugly33868ugly633ugly372ugly557ugly1163pushback_seg_o1_c2b_0_60_seg_o1_c2d_0_60_south_north_medium
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
 (:action
  ugly33869ugly717ugly1095ugly143ugly58move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
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
 (:action
  ugly33870ugly695ugly1081ugly1101ugly686startup_seg_t_b5c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5c_0_120_934)
       (not_occupied seg_b5_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_b_0_159_512 ?a)
       (not (not_blocked seg_b5_b_0_159_512 ?a))))
 (:action
  ugly33871ugly942ugly1178ugly1321ugly934startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly33872ugly20ugly473ugly1361ugly366move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
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
 (:action
  ugly33873ugly189ugly509ugly1371ugly476startup_seg_t_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7a_0_140 ?a)
       (not (not_blocked seg_t_b6b7a_0_140 ?a))))
 (:action
  ugly33874ugly617ugly160ugly494ugly479move_seg_08r_b3a_0_80_seg_08r_b3b4_0_520_south_south_medium
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
 (:action
  ugly33875ugly17ugly409ugly630ugly46move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
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
 (:action
  ugly33876ugly917ugly541ugly361ugly742move_seg_c4_s6c_0_60_seg_w1_c4b_0_60_south_north_medium
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
 (:action
  ugly33877ugly913ugly240ugly1262ugly578move_seg_s_b3a_0_60_seg_s_b3c_0_60_north_south_medium
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
 (:action
  ugly33878ugly426ugly450ugly1129ugly732move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
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
  ugly33879ugly672ugly326ugly505ugly657move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
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
 (:action
  ugly33880ugly1323ugly444ugly71ugly904pushback_seg_w1_163a_0_34_seg_w1_162c_0_34_north_south_medium
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
 (:action
  ugly33881ugly798ugly1363ugly718ugly1258startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly33882ugly706ugly51ugly1330ugly26move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
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
 (:action ugly33883ugly9ugly485ugly54ugly678park_seg_p133_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly33884ugly248ugly1009ugly208ugly1349startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly33885ugly508ugly381ugly720ugly1071startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly33886ugly1247ugly461ugly1306ugly741startup_seg_t_b10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b10c_0_60)
       (not_occupied seg_t_b10a_0_60) (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a)) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly33887ugly482ugly518ugly251ugly1153move_seg_s_b7d_0_60_seg_s_b6b7b_0_140_south_north_medium
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
 (:action
  ugly33888ugly731ugly194ugly1133ugly638startup_seg_s_b9b10a_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10a_0_125)
       (not_occupied seg_s_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9a_0_60 ?a)
       (not (not_blocked seg_s_b9a_0_60 ?a))))
 (:action
  ugly33889ugly109ugly248ugly1009ugly208startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly33890ugly219ugly296ugly73ugly1240move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
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
 (:action
  ugly33891ugly870ugly769ugly1070ugly840startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly33892ugly149ugly669ugly446ugly1233move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
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
  ugly33893ugly292ugly563ugly1310ugly1273move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
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
 (:action
  ugly33894ugly319ugly283ugly841ugly637startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly33895ugly152ugly585ugly604ugly506move_seg_o1_110d_0_45_seg_o1_110a_0_34_north_south_medium
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
 (:action
  ugly33896ugly1109ugly282ugly1160ugly1297startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action
  ugly33897ugly661ugly928ugly922ugly946move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
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
 (:action
  ugly33898ugly1134ugly982ugly1230ugly1068move_seg_s_b6b7a_0_140_seg_s_b6a_0_60_north_north_medium
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
 (:action
  ugly33899ugly174ugly1383ugly978ugly1043startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly33900ugly720ugly1071ugly845ugly584startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly33901ugly1078ugly1130ugly285ugly18startup_seg_m_a9b_0_60_south_medium
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
  ugly33902ugly144ugly207ugly1008ugly203startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly33903ugly366ugly222ugly821ugly1123startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly33904ugly184ugly344ugly415ugly272startup_seg_t_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b_0_60 ?a)
       (not (not_blocked seg_t_b6b_0_60 ?a))))
 (:action
  ugly33905ugly1125ugly1309ugly175ugly1201startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action
  ugly33906ugly955ugly1264ugly838ugly537startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly33907ugly445ugly945ugly280ugly87move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
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
 (:action
  ugly33908ugly1196ugly1047ugly90ugly119startup_seg_s_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b_0_60)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action
  ugly33909ugly815ugly1004ugly582ugly10startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly33910ugly34ugly491ugly589ugly214startup_seg_t_b8b9c_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_0_115)
       (not_occupied seg_t_b9d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9d_0_60 ?a)
       (not (not_blocked seg_t_b9d_0_60 ?a))))
 (:action ugly33911ugly621ugly179ugly1108ugly241park_seg_p109_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action
  ugly33912ugly259ugly1266ugly1087ugly493startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly33913ugly1236ugly755ugly1161ugly1198move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
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
  ugly33914ugly357ugly1263ugly619ugly516move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
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
 (:action
  ugly33915ugly1127ugly989ugly1085ugly170startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly33916ugly855ugly640ugly393ugly1174startup_seg_s_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b_0_60)
       (not_occupied seg_s_b2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2a_0_60 ?a)
       (not (not_blocked seg_s_b2a_0_60 ?a))))
 (:action
  ugly33917ugly244ugly908ugly43ugly823startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly33918ugly902ugly1242ugly1249ugly80startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly33919ugly287ugly1366ugly775ugly324move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
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
 (:action
  ugly33920ugly1384ugly104ugly902ugly1242startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly33921ugly176ugly1126ugly164ugly212startup_seg_08r_b10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_08r_b10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10b_0_80 ?a)
       (not (not_blocked seg_08r_b10b_0_80 ?a))))
 (:action
  ugly33922ugly427ugly1061ugly1341ugly727startup_seg_s_b8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b8a_0_60) (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a)) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action
  ugly33923ugly1301ugly679ugly271ugly204startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly33924ugly476ugly576ugly501ugly13move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
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
 (:action
  ugly33925ugly1339ugly425ugly831ugly1345startup_seg_s_b7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7b_0_60)
       (not_occupied seg_s_b5d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5d_0_60 ?a)
       (not (not_blocked seg_s_b5d_0_60 ?a))))
 (:action
  ugly33926ugly667ugly615ugly405ugly1194startup_seg_s_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_2_0_83)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action
  ugly33927ugly98ugly1062ugly632ugly1144move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
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
 (:action
  ugly33928ugly1192ugly532ugly25ugly263startup_seg_t_b9b10c_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_0_84 ?a)
       (not (not_blocked seg_t_b9b10c_0_84 ?a))))
 (:action
  ugly33929ugly1162ugly756ugly200ugly239startup_seg_t_b7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b7b_0_60)
       (not_occupied seg_t_b7a_0_60) (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7a_0_60 ?a)
       (not (not_blocked seg_t_b7a_0_60 ?a)) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly33930ugly225ugly808ugly50ugly357startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly33931ugly1265ugly988ugly228ugly91startup_seg_s_b10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b10a_0_60 ?a)
       (not (not_blocked seg_s_b10a_0_60 ?a))))
 (:action
  ugly33932ugly49ugly828ugly1216ugly901move_seg_w1_143b_0_45_seg_w1_143a_0_34_north_south_medium
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
 (:action
  ugly33933ugly206ugly351ugly489ugly788move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
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
 (:action
  ugly33934ugly1272ugly125ugly990ugly141startup_seg_s_b6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action
  ugly33935ugly261ugly1072ugly873ugly154startup_seg_o1_c3c_0_48_south_medium
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
  ugly33936ugly91ugly736ugly895ugly863startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly33937ugly165ugly1184ugly118ugly611startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly33938ugly1385ugly1078ugly1130ugly285move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
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
 (:action
  ugly33939ugly1353ugly511ugly102ugly325move_seg_o1_c4b_0_60_seg_o1_c4a_0_34_north_south_medium
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
 (:action ugly33940ugly134ugly1173ugly577ugly1375park_seg_p164_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly33941ugly143ugly58ugly21ugly1121move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
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
 (:action
  ugly33942ugly12ugly1210ugly715ugly717startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly33943ugly28ugly373ugly220ugly592startup_seg_s_b6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_t_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6a_0_60 ?a)
       (not (not_blocked seg_t_b6a_0_60 ?a))))
 (:action
  ugly33944ugly666ugly896ugly893ugly861move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
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
  ugly33945ugly1257ugly157ugly1054ugly183startup_seg_s_b6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6a_0_60)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly33946ugly1255ugly66ugly1214ugly888startup_seg_m_a8b_0_60_south_medium
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
  ugly33947ugly116ugly1074ugly872ugly1165move_seg_o1_108b_0_60_seg_o1_108a_0_34_north_south_medium
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
 (:action
  ugly33948ugly550ugly78ugly536ugly1036move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
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
 (:action
  ugly33949ugly198ugly68ugly521ugly1339move_seg_o1_117c_0_34_seg_o1_117b_0_60_north_south_medium
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
 (:action
  ugly33950ugly721ugly89ugly99ugly740startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4c_0_60 ?a)
       (not (not_blocked seg_w1_c4c_0_60 ?a))))
 (:action
  ugly33951ugly1066ugly960ugly321ugly564startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action ugly33952ugly871ugly1091ugly622ugly458park_seg_p143_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly33953ugly1341ugly727ugly716ugly1175move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
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
  ugly33954ugly758ugly655ugly293ugly1356startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly33955ugly559ugly976ugly114ugly1237park_seg_p142_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly33956ugly1087ugly493ugly1213ugly1218move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
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
 (:action
  ugly33957ugly1383ugly978ugly1043ugly913move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
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
 (:action
  ugly33958ugly1283ugly1293ugly954ugly1278startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly33959ugly1009ugly208ugly1349ugly1058startup_seg_08r_b10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b10a_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly33960ugly1210ugly715ugly717ugly1095move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
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
 (:action
  ugly33961ugly123ugly1372ugly1001ugly355move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
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
 (:action ugly33962ugly311ugly330ugly133ugly482startup_seg_b2_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_b2_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b2_1_0_80 ?a)
       (not (not_blocked seg_b2_1_0_80 ?a))))
 (:action
  ugly33963ugly360ugly1170ugly265ugly79startup_seg_s_b5c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5c_0_60)
       (not_occupied seg_t_b5a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5a_0_60 ?a)
       (not (not_blocked seg_t_b5a_0_60 ?a))))
 (:action
  ugly33964ugly161ugly663ugly943ugly510startup_seg_08r_b9a_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b9a_0_161_245)
       (not_occupied seg_08r_b9c_0_80) (not_occupied seg_09r_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b9c_0_80 ?a)
       (not (not_blocked seg_08r_b9c_0_80 ?a)) (blocked seg_09r_0_80 ?a)
       (not (not_blocked seg_09r_0_80 ?a))))
 (:action
  ugly33965ugly923ugly412ugly730ugly558move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
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
 (:action
  ugly33966ugly1364ugly1143ugly818ugly131startup_seg_b6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_b6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_a_0_158_647 ?a)
       (not (not_blocked seg_b6_a_0_158_647 ?a))))
 (:action
  ugly33967ugly47ugly567ugly939ugly145move_seg_o1_102c_0_34_seg_o1_102b_0_60_north_south_medium
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
 (:action
  ugly33968ugly413ugly423ugly1281ugly196startup_seg_b3_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_1_0_80_6226)
       (not_occupied seg_b3_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_0_80_6226 ?a))))
 (:action
  ugly33969ugly332ugly205ugly967ugly801startup_seg_s_b10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10a_0_60)
       (not_occupied seg_t_b10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10a_0_60 ?a)
       (not (not_blocked seg_t_b10a_0_60 ?a))))
 (:action
  ugly33970ugly276ugly376ugly477ugly587move_seg_b8_b_1_0_80_6226_seg_b8_b_0_80_6226_south_south_medium
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
 (:action
  ugly33971ugly736ugly895ugly863ugly1351move_seg_w1_164c_0_34_seg_w1_164b_0_45_north_south_medium
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
 (:action
  ugly33972ugly1207ugly132ugly753ugly8startup_seg_t_b8d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8d_0_60)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action
  ugly33973ugly10ugly1083ugly853ugly712move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
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
 (:action
  ugly33974ugly652ugly1057ugly1103ugly750move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
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
  ugly33975ugly562ugly267ugly303ugly1093pushback_seg_o1_108d_0_45_seg_o1_108a_0_34_south_north_medium
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
 (:action
  ugly33976ugly1176ugly1318ugly362ugly1221startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly33977ugly1304ugly1381ugly1180ugly1051startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly33978ugly1238ugly229ugly522ugly1219startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly33979ugly647ugly1015ugly245ugly244startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly33980ugly809ugly246ugly390ugly260startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action
  ugly33981ugly58ugly21ugly1121ugly388startup_seg_s_b9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action
  ugly33982ugly1011ugly1106ugly708ugly1328startup_seg_b6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_08r_b6d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b6d_0_161_245 ?a)
       (not (not_blocked seg_08r_b6d_0_161_245 ?a))))
 (:action
  ugly33983ugly723ugly1045ugly961ugly1362move_seg_s_b4b6c_0_130_seg_s_b4b6b_0_135_north_north_medium
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
 (:action
  ugly33984ugly298ugly1044ugly1275ugly700pushback_seg_o1_111b_0_60_seg_o1_111c_0_34_south_north_medium
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
 (:action
  ugly33985ugly1335ugly69ugly334ugly1323pushback_seg_w1_163c_0_34_seg_w1_164a_0_34_north_south_medium
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
 (:action
  ugly33986ugly223ugly27ugly1069ugly1325startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly33987ugly643ugly1279ugly1179ugly150startup_seg_s_b6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6c_0_60 ?a)
       (not (not_blocked seg_s_b6c_0_60 ?a))))
 (:action
  ugly33988ugly75ugly383ugly1096ugly1229move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
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
 (:action
  ugly33989ugly1107ugly1122ugly169ugly749startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly33990ugly318ugly202ugly933ugly345startup_seg_o1_108c_0_34_south_medium
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
  ugly33991ugly1338ugly110ugly1223ugly555startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action ugly33992ugly1312ugly654ugly1159ugly710park_seg_p153_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly33993ugly394ugly308ugly816ugly176startup_seg_n_a3a_0_60_south_medium
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
  ugly33994ugly799ugly1097ugly701ugly38move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
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
  ugly33995ugly1281ugly196ugly739ugly550move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
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
 (:action
  ugly33996ugly151ugly903ugly1370ugly970startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action
  ugly33997ugly95ugly1176ugly1318ugly362startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly33998ugly987ugly665ugly447ugly785move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
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
 (:action
  ugly33999ugly961ugly1362ugly40ugly1294startup_seg_s_b10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b10b_0_60)
       (not_occupied seg_s_b9b10c_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_0_84 ?a)
       (not (not_blocked seg_s_b9b10c_0_84 ?a))))
 (:action
  ugly34000ugly496ugly964ugly625ugly65startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly34001ugly423ugly1281ugly196ugly739startup_seg_t_b4d_0_60_south_medium
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
  ugly34002ugly760ugly92ugly1011ugly1106startup_seg_s_b5b8a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b_0_60 ?a)
       (not (not_blocked seg_s_b5b_0_60 ?a))))
 (:action
  ugly34003ugly1290ugly1243ugly343ugly112startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly34004ugly1328ugly498ugly289ugly1340startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly34005ugly1128ugly258ugly1336ugly526startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly34006ugly199ugly641ugly969ugly1254startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly34007ugly754ugly556ugly1291ugly139startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly34008ugly702ugly1003ugly468ugly448startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly34009ugly1033ugly159ugly137ugly1035move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
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
  ugly34010ugly293ugly1356ugly899ugly1060startup_seg_s_b8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8a_0_60)
       (not_occupied seg_s_b8b_0_60) (not_occupied seg_s_b8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a)) (blocked seg_s_b8c_0_60 ?a)
       (not (not_blocked seg_s_b8c_0_60 ?a))))
 (:action
  ugly34011ugly339ugly649ugly652ugly1057startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly34012ugly312ugly497ugly672ugly326startup_seg_b10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_b10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_0_80 ?a)
       (not (not_blocked seg_b10_0_80 ?a))))
 (:action
  ugly34013ugly273ugly1030ugly416ugly1059move_seg_08r_0_80_seg_08r_b3a_0_80_north_south_medium
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
 (:action
  ugly34014ugly1086ugly295ugly906ugly452pushback_seg_o1_c3d_0_60_seg_c3_b_0_80_north_south_medium
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
  ugly34015ugly1191ugly762ugly746ugly219move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
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
 (:action
  ugly34016ugly1242ugly1249ugly80ugly957startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action ugly34017ugly576ugly501ugly13ugly20takeoff_seg_09l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action
  ugly34018ugly759ugly434ugly1049ugly1111startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly34019ugly613ugly1364ugly1143ugly818move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
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
  ugly34020ugly983ugly44ugly190ugly1376move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
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
 (:action
  ugly34021ugly669ugly446ugly1233ugly206move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
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
  ugly34022ugly175ugly1201ugly997ugly217move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
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
 (:action
  ugly34023ugly1152ugly404ugly227ugly1120startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action
  ugly34024ugly191ugly311ugly330ugly133startup_seg_b3_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_08r_b3c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b3c_0_161_245 ?a)
       (not (not_blocked seg_08r_b3c_0_161_245 ?a))))
 (:action
  ugly34025ugly982ugly1230ugly1068ugly37startup_seg_t_b8b9c_1_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9b_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9b_0_115 ?a)
       (not (not_blocked seg_t_b8b9b_0_115 ?a))))
 (:action
  ugly34026ugly215ugly644ugly93ugly773startup_seg_m_a7c_0_60_south_medium
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
  ugly34027ugly938ugly261ugly1072ugly873move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
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
 (:action
  ugly34028ugly1345ugly693ugly327ugly309move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
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
 (:action
  ugly34029ugly802ugly445ugly945ugly280move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
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
 (:action
  ugly34030ugly718ugly1258ugly1064ugly1288move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
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
 (:action
  ugly34031ugly868ugly836ugly851ugly1382startup_seg_t_b6a_0_60_south_medium
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
  ugly34032ugly436ugly1347ugly367ugly1326startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly34033ugly1123ugly926ugly1357ugly1077move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
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
 (:action
  ugly34034ugly353ugly975ugly1348ugly1287move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
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
 (:action
  ugly34035ugly907ugly171ugly319ugly283startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly34036ugly714ugly1139ugly191ugly311move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
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
 (:action
  ugly34037ugly155ugly758ugly655ugly293startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly34038ugly1167ugly257ugly575ugly140startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly34039ugly267ugly303ugly1093ugly454move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
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
  ugly34040ugly924ugly734ugly163ugly496startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly34041ugly4ugly1207ugly132ugly753move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
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
 (:action
  ugly34042ugly203ugly1265ugly988ugly228move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
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
 (:action
  ugly34043ugly93ugly773ugly1166ugly658move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
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
 (:action
  ugly34044ugly580ugly533ugly796ugly184move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
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
 (:action ugly34045ugly620ugly707ugly428ugly675park_seg_p107_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action
  ugly34046ugly1324ugly1019ugly123ugly1372startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action
  ugly34047ugly966ugly623ugly1250ugly1115startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly34048ugly1062ugly632ugly1144ugly28move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
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
 (:action
  ugly34049ugly320ugly621ugly179ugly1108move_seg_w1_163b_0_45_seg_w1_163a_0_34_north_south_medium
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
 (:action
  ugly34050ugly27ugly1069ugly1325ugly1203startup_seg_m_a7b_0_60_south_medium
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
  ugly34051ugly599ugly1195ugly702ugly1003pushback_seg_p112_0_76_seg_o1_c3b_0_60_south_south_medium
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
 (:action
  ugly34052ugly1387ugly889ugly314ugly96move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
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
  ugly34053ugly141ugly685ugly1358ugly1076startup_seg_08l_a4c_0_161_245_south_medium
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
  ugly34054ugly673ugly117ugly962ugly305startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly34055ugly61ugly368ugly721ugly89move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
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
 (:action
  ugly34056ugly900ugly1134ugly982ugly1230startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly34057ugly840ugly826ugly253ugly109move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
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
  ugly34058ugly217ugly347ugly94ugly733startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly34059ugly1224ugly868ugly836ugly851startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly34060ugly74ugly1012ugly1137ugly1313startup_seg_s_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action
  ugly34061ugly460ugly464ugly304ugly614startup_seg_t_b3b4c_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action
  ugly34062ugly1300ugly23ugly605ugly29startup_seg_s_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4d_0_140)
       (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly34063ugly880ugly59ugly75ugly383startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly34064ugly268ugly925ugly980ugly1251startup_seg_t_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b_0_60 ?a)
       (not (not_blocked seg_t_b3b_0_60 ?a))))
 (:action
  ugly34065ugly719ugly1257ugly157ugly1054move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
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
 (:action
  ugly34066ugly546ugly874ugly839ugly1020startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly34067ugly1050ugly729ugly74ugly1012startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly34068ugly345ugly952ugly1135ugly782move_seg_b8_a_0_156_924_seg_b8_b_1_0_80_6226_south_south_medium
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
 (:action
  ugly34069ugly327ugly309ugly182ugly882startup_seg_b2_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_1_0_80)
       (not_occupied seg_08r_b2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2a_0_80 ?a)
       (not (not_blocked seg_08r_b2a_0_80 ?a))))
 (:action
  ugly34070ugly1205ugly72ugly1182ugly759move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
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
 (:action
  ugly34071ugly949ugly1277ugly1290ugly1243move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
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
 (:action
  ugly34072ugly501ugly13ugly20ugly473startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly34073ugly1271ugly548ugly923ugly412startup_seg_s_b8b9c_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9c_0_115)
       (not_occupied seg_s_b8b9c_1_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b9c_1_0_115 ?a)
       (not (not_blocked seg_s_b8b9c_1_0_115 ?a))))
 (:action
  ugly34074ugly201ugly307ugly757ugly667startup_seg_b8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_0_80_6226)
       (not_occupied seg_t_b8c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8c_0_120_934 ?a)
       (not (not_blocked seg_t_b8c_0_120_934 ?a))))
 (:action
  ugly34075ugly478ugly274ugly148ugly256move_seg_o1_104b_0_60_seg_o1_104a_0_34_north_south_medium
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
  ugly34076ugly1194ugly1387ugly889ugly314move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
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
 (:action
  ugly34077ugly337ugly530ugly664ugly607startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly34078ugly21ugly1121ugly388ugly723startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly34079ugly338ugly1014ugly363ugly1380park_seg_p116_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action
  ugly34080ugly816ugly176ugly1126ugly164move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
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
 (:action
  ugly34081ugly948ugly1013ugly84ugly195startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly34082ugly569ugly269ugly588ugly1253move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
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
 (:action
  ugly34083ugly1293ugly954ugly1278ugly1331startup_seg_b8_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_a_0_156_924)
       (not_occupied seg_b8_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_1_0_80_6226 ?a))))
 (:action
  ugly34084ugly626ugly947ugly764ugly639startup_seg_m_a4c_0_60_south_medium
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
  ugly34085ugly831ugly1345ugly693ugly327move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
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
 (:action
  ugly34086ugly1237ugly774ugly601ugly417pushback_seg_o1_108a_0_34_seg_o1_c2c_0_34_north_south_medium
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
 (:action
  ugly34087ugly518ugly251ugly1153ugly35move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
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
 (:action
  ugly34088ugly391ugly682ugly941ugly1099startup_seg_s_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b_0_60)
       (not_occupied seg_t_b9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9a_0_60 ?a)
       (not (not_blocked seg_t_b9a_0_60 ?a))))
 (:action
  ugly34089ugly918ugly949ugly1277ugly1290startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly34090ugly36ugly517ugly1005ugly237move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
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
  ugly34091ugly1188ugly41ugly812ugly250move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
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
 (:action
  ugly34092ugly614ugly540ugly1244ugly340startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action ugly34093ugly1080ugly810ugly174ugly1383park_seg_p132_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly34094ugly11ugly389ugly689ugly539startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly34095ugly555ugly1089ugly57ugly165startup_seg_m_a6b_0_60_south_medium
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
  ugly34096ugly105ugly414ugly871ugly1091startup_seg_t_b9a_0_60_south_medium
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
  ugly34097ugly148ugly256ugly339ugly649startup_seg_t_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_0_84)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly34098ugly232ugly247ugly770ugly848move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
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
 (:action
  ugly34099ugly237ugly24ugly474ugly546startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly34100ugly64ugly1224ugly868ugly836startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34101ugly2ugly1187ugly731ugly194startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly34102ugly415ugly272ugly572ugly1315startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action ugly34103ugly825ugly1355ugly286ugly36startup_seg_b2_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b2_0_80)
       (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly34104ugly976ugly114ugly1237ugly774startup_seg_t_b5b8c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8c_0_130)
       (not_occupied seg_t_b8d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8d_0_60 ?a)
       (not (not_blocked seg_t_b8d_0_60 ?a))))
 (:action
  ugly34105ugly646ugly197ugly936ugly695startup_seg_c4_s6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly34106ugly1332ugly1236ugly755ugly1161startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly34107ugly1326ugly780ugly287ugly1366startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly34108ugly994ugly724ugly542ugly1235park_seg_p161_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly34109ugly178ugly905ugly52ugly460pushback_seg_o1_111b_0_60_seg_o1_111a_0_34_south_north_medium
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
 (:action
  ugly34110ugly120ugly781ugly1354ugly1037pushback_seg_o1_111a_0_34_seg_o1_110c_0_34_north_south_medium
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
  ugly34111ugly348ugly878ugly1289ugly488move_seg_o1_c4a_0_34_seg_o1_c4c_0_80_north_south_medium
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
  ugly34112ugly1311ugly146ugly581ugly722startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly34113ugly321ugly564ugly1124ugly1352startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly34114ugly344ugly415ugly272ugly572startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly34115ugly284ugly676ugly1270ugly385move_seg_c4_s6b_0_60_seg_c4_s6c_0_60_north_south_medium
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
 (:action
  ugly34116ugly1200ugly147ugly320ugly621move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
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
 (:action
  ugly34117ugly301ugly281ugly255ugly62move_seg_o1_111c_0_34_seg_o1_111d_0_45_north_south_medium
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
 (:action
  ugly34118ugly1117ugly152ugly585ugly604startup_seg_b10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_1_0_80)
       (not_occupied seg_08r_b10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b10a_0_80 ?a)
       (not (not_blocked seg_08r_b10a_0_80 ?a))))
 (:action
  ugly34119ugly269ugly588ugly1253ugly403move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
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
 (:action
  ugly34120ugly422ugly921ugly1192ugly532move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
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
  ugly34121ugly1275ugly700ugly466ugly1367move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
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
 (:action
  ugly34122ugly903ugly1370ugly970ugly953move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
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
  ugly34123ugly168ugly1247ugly461ugly1306startup_seg_b4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_1_0_80_6226)
       (not_occupied seg_b4_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_0_80_6226 ?a))))
 (:action
  ugly34124ugly632ugly1144ugly28ugly373move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
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
 (:action
  ugly34125ugly505ugly657ugly359ugly792startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly34126ugly286ugly36ugly517ugly1005move_seg_w1_162c_0_34_seg_w1_162b_0_45_north_south_medium
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
 (:action
  ugly34127ugly894ugly1132ugly48ugly809move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
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
 (:action
  ugly34128ugly1019ugly123ugly1372ugly1001move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
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
 (:action
  ugly34129ugly257ugly575ugly140ugly1360move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
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
 (:action
  ugly34130ugly495ugly161ugly663ugly943startup_seg_t_b2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2a_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2a_0_60 ?a)
       (not (not_blocked seg_t_b2a_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action ugly34131ugly294ugly45ugly1334ugly956park_seg_p143_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly34132ugly367ugly1326ugly780ugly287startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action ugly34133ugly1071ugly845ugly584ugly1046park_seg_p115_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly34134ugly113ugly1034ugly1002ugly338startup_seg_o1_c3b_0_60_south_medium
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
  ugly34135ugly131ugly574ugly545ugly554startup_seg_b3_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_a_0_156_924)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action
  ugly34136ugly1313ugly687ugly559ugly976move_seg_s_b5b8c_0_130_seg_s_b5b8b_0_135_north_north_medium
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
 (:action
  ugly34137ugly1382ugly562ugly267ugly303startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly34138ugly674ugly1261ugly1241ugly129move_seg_w1_143c_0_60_seg_w1_143b_0_45_north_south_medium
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
  ugly34139ugly92ugly1011ugly1106ugly708startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly34140ugly680ugly1149ugly1104ugly598move_seg_s_b6c_0_60_seg_s_b4b6c_0_130_south_north_medium
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
 (:action
  ugly34141ugly480ugly779ugly803ugly1378startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly34142ugly1357ugly1077ugly142ugly299startup_seg_t_b5b_0_60_south_medium
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
  ugly34143ugly1149ugly1104ugly598ugly39startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly34144ugly196ugly739ugly550ugly78startup_seg_b3_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_b3_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b3_b_1_0_80_6226 ?a))))
 (:action
  ugly34145ugly1024ugly1292ugly597ugly1171startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly34146ugly1216ugly901ugly199ugly641startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action ugly34147ugly493ugly1213ugly1218ugly16park_seg_p108_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly34148ugly89ugly99ugly740ugly886startup_seg_t_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly34149ugly775ugly324ugly82ugly860move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
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
 (:action
  ugly34150ugly1ugly763ugly430ugly34startup_seg_08r_b6a_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b6a_0_161_245)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action
  ugly34151ugly307ugly757ugly667ugly615move_seg_o1_c3d_0_60_seg_o1_c3c_0_48_north_south_medium
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
 (:action
  ugly34152ugly1133ugly638ugly728ugly127startup_seg_t_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_s_b2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b_0_60 ?a)
       (not (not_blocked seg_s_b2b_0_60 ?a))))
 (:action
  ugly34153ugly1041ugly636ugly748ugly1183startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly34154ugly340ugly1204ugly302ugly1227startup_seg_b9_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly34155ugly1352ugly815ugly1004ugly582move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
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
  ugly34156ugly85ugly1327ugly185ugly538move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
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
 (:action
  ugly34157ugly351ugly489ugly788ugly342startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly34158ugly1215ugly1342ugly487ugly407move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
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
 (:action ugly34159ugly753ugly8ugly609ugly349park_seg_p151_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly34160ugly655ugly293ugly1356ugly899startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly34161ugly510ugly500ugly573ugly231move_seg_o1_110b_0_60_seg_o1_110a_0_34_north_south_medium
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
 (:action
  ugly34162ugly1214ugly888ugly1208ugly1377move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
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
  ugly34163ugly314ugly96ugly162ugly914startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly34164ugly631ugly1256ugly981ugly824startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly34165ugly497ugly672ugly326ugly505startup_seg_s_b2b3b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3c_0_140 ?a)
       (not (not_blocked seg_s_b2b3c_0_140 ?a))))
 (:action
  ugly34166ugly1199ugly1259ugly1196ugly1047move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
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
 (:action
  ugly34167ugly238ugly31ugly1231ugly5move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
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
 (:action
  ugly34168ugly1038ugly1024ugly1292ugly597startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly34169ugly330ugly133ugly482ugly518move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
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
 (:action
  ugly34170ugly639ugly1142ugly709ugly525startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly34171ugly407ugly353ugly975ugly1348startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly34172ugly640ugly393ugly1174ugly514startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action
  ugly34173ugly670ugly252ugly832ugly1188move_seg_s_b4b6b_0_135_seg_s_b4b6a_0_135_north_north_medium
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
 (:action
  ugly34174ugly461ugly1306ugly741ugly646move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
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
 (:action
  ugly34175ugly756ugly200ugly239ugly580startup_seg_t_b3b4a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4a_0_140)
       (not_occupied seg_t_b3b4b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4b_0_140 ?a)
       (not (not_blocked seg_t_b3b4b_0_140 ?a))))
 (:action ugly34176ugly517ugly1005ugly237ugly24takeoff_seg_08l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action
  ugly34177ugly1261ugly1241ugly129ugly201move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
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
  ugly34178ugly535ugly529ugly602ugly765startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly34179ugly941ugly1099ugly629ugly1154move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
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
 (:action
  ugly34180ugly1021ugly660ugly807ugly396startup_seg_o1_c3d_0_60_south_medium
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
  ugly34181ugly322ugly778ugly1082ugly1320startup_seg_t_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4a_0_60)
       (not_occupied seg_s_b4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a))))
 (:action
  ugly34182ugly653ugly1189ugly799ugly1097startup_seg_s_b5a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5a_0_60)
       (not_occupied seg_s6_0_94))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s6_0_94 ?a)
       (not (not_blocked seg_s6_0_94 ?a))))
 (:action
  ugly34183ugly845ugly584ugly1046ugly1031startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly34184ugly487ugly407ugly353ugly975startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action ugly34185ugly950ugly453ugly492ugly126startup_seg_s6_0_94_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s6_0_94)
       (not_occupied seg_c4_s6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a))))
 (:action
  ugly34186ugly789ugly1337ugly232ugly247startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly34187ugly1045ugly961ugly1362ugly40startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly34188ugly637ugly1006ugly859ugly406move_seg_o1_c1b_0_34_seg_o1_c1a_0_60_north_south_medium
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
 (:action ugly34189ugly564ugly1124ugly1352ugly815park_seg_p111_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly34190ugly40ugly1294ugly735ugly951move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
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
 (:action
  ugly34191ugly409ugly630ugly46ugly188startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly34192ugly382ugly1151ugly998ugly725startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly34193ugly1126ugly164ugly212ugly504move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
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
 (:action
  ugly34194ugly843ugly100ugly800ugly254startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34195ugly762ugly746ugly219ugly296move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
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
 (:action
  ugly34196ugly395ugly1119ugly124ugly432startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly34197ugly1059ugly63ugly1299ugly594startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly34198ugly887ugly4ugly1207ugly132startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly34199ugly1309ugly175ugly1201ugly997move_seg_w1_153b_0_45_seg_w1_153a_0_34_north_south_medium
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
 (:action
  ugly34200ugly774ugly601ugly417ugly455startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly34201ugly137ugly1035ugly22ugly1084startup_seg_t_b6d_0_60_south_medium
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
  ugly34202ugly130ugly1369ugly467ugly968startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly34203ugly565ugly787ugly519ugly984startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly34204ugly968ugly1252ugly777ugly151startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly34205ugly1288ugly17ugly409ugly630move_seg_s_b3b4c_0_140_seg_s_b3b4b_0_140_north_north_medium
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
  ugly34206ugly1226ugly726ugly443ugly392startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly34207ugly66ugly1214ugly888ugly1208startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly34208ugly936ugly695ugly1081ugly1101startup_seg_s_b6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6c_0_60)
       (not_occupied seg_s_b6a_0_60) (not_occupied seg_s_b6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a)) (blocked seg_s_b6b_0_60 ?a)
       (not (not_blocked seg_s_b6b_0_60 ?a))))
 (:action
  ugly34209ugly364ugly971ugly198ugly68startup_seg_t_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b3c_0_140)
       (not_occupied seg_t_b3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3d_0_60 ?a)
       (not (not_blocked seg_t_b3d_0_60 ?a))))
 (:action
  ugly34210ugly506ugly384ugly1295ugly382startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly34211ugly114ugly1237ugly774ugly601move_seg_o1_116b_0_60_seg_o1_116a_0_34_north_south_medium
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
  ugly34212ugly992ugly1388ugly1140ugly631startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly34213ugly23ugly605ugly29ugly671startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly34214ugly1185ugly1117ugly152ugly585startup_seg_t_b8a_0_60_south_medium
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
  ugly34215ugly882ugly478ugly274ugly148move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
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
  ugly34216ugly18ugly1228ugly341ugly1332startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly34217ugly560ugly628ugly1141ugly173move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
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
 (:action
  ugly34218ugly41ugly812ugly250ugly86move_seg_w1_162b_0_45_seg_w1_162a_0_34_north_south_medium
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
  ugly34219ugly380ugly32ugly900ugly1134startup_seg_o1_110b_0_60_south_medium
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
  ugly34220ugly567ugly939ugly145ugly329startup_seg_t_b2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2a_0_60)
       (not_occupied seg_t_b2b_0_60) (not_occupied seg_t_b2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b_0_60 ?a)
       (not (not_blocked seg_t_b2b_0_60 ?a)) (blocked seg_t_b2c_0_60 ?a)
       (not (not_blocked seg_t_b2c_0_60 ?a))))
 (:action
  ugly34221ugly214ugly635ugly1276ugly879startup_seg_t_b8d_0_60_south_medium
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
  ugly34222ugly171ugly319ugly283ugly841startup_seg_t_b9b10b_0_125_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action
  ugly34223ugly598ugly39ugly1359ugly297startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action
  ugly34224ugly552ugly958ugly1373ugly674startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly34225ugly1174ugly514ugly827ugly333move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
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
 (:action
  ugly34226ugly596ugly1280ugly944ugly97startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly34227ugly156ugly920ugly1066ugly960move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
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
  ugly34228ugly1100ugly318ugly202ugly933move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
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
 (:action
  ugly34229ugly347ugly94ugly733ugly1303startup_seg_s_b6b7a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7a_0_140)
       (not_occupied seg_s_b6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6a_0_60 ?a)
       (not (not_blocked seg_s_b6a_0_60 ?a))))
 (:action
  ugly34230ugly523ugly106ugly346ugly855startup_seg_t_b9b10c_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10b_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10b_0_125 ?a)
       (not (not_blocked seg_t_b9b10b_0_125 ?a))))
 (:action
  ugly34231ugly712ugly11ugly389ugly689startup_seg_t_b3b4c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4c_0_140)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action
  ugly34232ugly1379ugly1100ugly318ugly202startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly34233ugly1183ugly1365ugly912ugly738startup_seg_b8_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action
  ugly34234ugly1095ugly143ugly58ugly21startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly34235ugly592ugly569ugly269ugly588startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly34236ugly55ugly1168ugly890ugly528startup_seg_t_b4a_0_60_south_medium
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
  ugly34237ugly734ugly163ugly496ugly964startup_seg_t_b9c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9c_0_120_934)
       (not_occupied seg_b9_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_0_80_6226 ?a))))
 (:action
  ugly34238ugly1053ugly1353ugly511ugly102move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
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
 (:action
  ugly34239ugly765ugly867ugly643ugly1279startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly34240ugly334ugly1323ugly444ugly71startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly34241ugly99ugly740ugly886ugly600move_seg_08r_b4b_0_80_seg_08r_b4b6_0_360_south_south_medium
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
 (:action
  ugly34242ugly814ugly690ugly634ugly626startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly34243ugly57ugly165ugly1184ugly118startup_seg_s_b8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b_0_60)
       (not_occupied seg_t_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8a_0_60 ?a)
       (not (not_blocked seg_t_b8a_0_60 ?a))))
 (:action
  ugly34244ugly611ugly1319ugly279ugly181move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
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
  ugly34245ugly194ugly1133ugly638ugly728move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
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
 (:action
  ugly34246ugly363ugly1380ugly1041ugly636startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly34247ugly281ugly255ugly62ugly398startup_seg_b3_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b3_b_0_80_6226)
       (not_occupied seg_t_b3c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3c_0_120_934 ?a)
       (not (not_blocked seg_t_b3c_0_120_934 ?a))))
 (:action
  ugly34248ugly749ugly959ugly225ugly808move_seg_s_b3c_0_60_seg_s_b2b3c_0_140_south_north_medium
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
  ugly34249ugly1035ugly22ugly1084ugly568pushback_seg_o1_c3b_0_60_seg_o1_c3d_0_60_south_north_medium
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
 (:action
  ugly34250ugly328ugly691ugly1350ugly692pushback_seg_p163_0_75_seg_w1_163b_0_45_south_south_medium
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
 (:action
  ugly34251ugly72ugly1182ugly759ugly434startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly34252ugly1381ugly1180ugly1051ugly885move_seg_o1_115c_0_34_seg_o1_115b_0_60_north_south_medium
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
 (:action
  ugly34253ugly1277ugly1290ugly1243ugly343move_seg_s_b8b_0_60_seg_s_b8c_0_60_north_south_medium
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
 (:action
  ugly34254ugly290ugly391ugly682ugly941startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly34255ugly1342ugly487ugly407ugly353startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly34256ugly119ugly703ugly842ugly1033move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
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
 (:action
  ugly34257ugly970ugly953ugly291ugly1162startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly34258ugly1202ugly1260ugly862ugly1105startup_seg_t_b6c_0_120_934_south_medium
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
  ugly34259ugly551ugly1114ugly932ugly1329startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly34260ugly1131ugly1301ugly679ugly271move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
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
 (:action
  ugly34261ugly748ugly1183ugly1365ugly912startup_seg_s_b9b10c_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_0_84)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action ugly34262ugly207ugly1008ugly203ugly1265park_seg_p110_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action
  ugly34263ugly997ugly217ugly347ugly94startup_seg_s_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10c_1_0_83)
       (not_occupied seg_s_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_s_b9b10c_2_0_83 ?a))))
 (:action
  ugly34264ugly183ugly683ugly1032ugly909move_seg_o1_c2d_0_60_seg_o1_c2c_0_34_north_south_medium
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
  ugly34265ugly538ugly153ugly1025ugly814startup_seg_s_b6b7b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b6b7a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7a_0_140 ?a)
       (not (not_blocked seg_s_b6b7a_0_140 ?a))))
 (:action
  ugly34266ugly438ugly115ugly1000ugly1138move_seg_s_b8c_0_60_seg_s_b5b8c_0_130_south_north_medium
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
  ugly34267ugly1348ugly1287ugly83ugly1271startup_seg_t_b4c_0_120_934_south_medium
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
  ugly34268ugly618ugly680ugly1149ugly1104startup_seg_b5_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_b_0_159_512)
       (not_occupied seg_b5_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b5_a_0_158_647 ?a)
       (not (not_blocked seg_b5_a_0_158_647 ?a))))
 (:action
  ugly34269ugly1198ugly401ugly1298ugly480startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action
  ugly34270ugly603ugly410ugly1274ugly242startup_seg_s_b5d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5d_0_60)
       (not_occupied seg_s_b7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7b_0_60 ?a)
       (not (not_blocked seg_s_b7b_0_60 ?a))))
 (:action
  ugly34271ugly69ugly334ugly1323ugly444move_seg_08r_b6b9_0_420_seg_08r_b9c_0_80_south_north_medium
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
  ugly34272ugly121ugly617ugly160ugly494startup_seg_08r_b3c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_b3_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b3_a_0_156_924 ?a)
       (not (not_blocked seg_b3_a_0_156_924 ?a))))
 (:action
  ugly34273ugly316ugly420ugly380ugly32startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly34274ugly1163ugly451ugly1234ugly950pushback_seg_p131_0_75_seg_o1_108d_0_45_south_south_medium
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
 (:action
  ugly34275ugly488ugly284ugly676ugly1270move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
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
 (:action
  ugly34276ugly545ugly554ugly481ugly633move_seg_o1_109d_0_45_seg_o1_109a_0_34_north_south_medium
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
  ugly34277ugly867ugly643ugly1279ugly1179move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
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
  ugly34278ugly724ugly542ugly1235ugly850startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34279ugly16ugly955ugly1264ugly838startup_seg_t_b3b4b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4b_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action ugly34280ugly1273ugly379ugly502ugly278park_seg_p132_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly34281ugly890ugly528ugly544ugly1127startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34282ugly100ugly800ugly254ugly813move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
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
  ugly34283ugly730ugly558ugly166ugly642startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly34284ugly253ugly109ugly248ugly1009move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
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
 (:action
  ugly34285ugly384ugly1295ugly382ugly1151startup_seg_o1_111b_0_60_south_medium
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
  ugly34286ugly262ugly515ugly797ugly1245startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly34287ugly1197ugly551ugly1114ugly932startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly34288ugly544ugly1127ugly989ugly1085move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
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
 (:action
  ugly34289ugly247ugly770ugly848ugly226move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
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
 (:action
  ugly34290ugly235ugly1209ugly929ugly105move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
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
 (:action
  ugly34291ugly87ugly400ugly844ugly829move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
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
 (:action
  ugly34292ugly124ugly432ugly1222ugly1238move_seg_w1_161b_0_45_seg_w1_161a_0_34_north_south_medium
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
 (:action
  ugly34293ugly127ugly507ugly795ugly898startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly34294ugly1012ugly1137ugly1313ugly687startup_seg_t_b4b6c_0_130_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b6d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6d_0_60 ?a)
       (not (not_blocked seg_t_b6d_0_60 ?a))))
 (:action ugly34295ugly1274ugly242ugly699ugly1344park_seg_p163_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly34296ugly14ugly375ugly650ugly441move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
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
 (:action
  ugly34297ugly383ugly1096ugly1229ugly168startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly34298ugly932ugly1329ugly857ugly1067startup_seg_s_b3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b_0_60)
       (not_occupied seg_t_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3a_0_60 ?a)
       (not (not_blocked seg_t_b3a_0_60 ?a))))
 (:action
  ugly34299ugly390ugly260ugly1112ugly1042startup_seg_t_b5b8b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b8b_0_135)
       (not_occupied seg_t_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8c_0_130 ?a)
       (not (not_blocked seg_t_b5b8c_0_130 ?a))))
 (:action
  ugly34300ugly1380ugly1041ugly636ugly748startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly34301ugly1001ugly355ugly421ugly1158startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34302ugly783ugly323ugly884ugly999startup_seg_b4_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_a_0_156_924)
       (not_occupied seg_08r_b4d_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4d_0_161_245 ?a)
       (not (not_blocked seg_08r_b4d_0_161_245 ?a))))
 (:action
  ugly34303ugly624ugly986ugly653ugly1189startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly34304ugly310ugly310ugly310ugly310move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
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
  ugly34305ugly1250ugly1115ugly752ugly418move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
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
 (:action
  ugly34306ugly862ugly1105ugly566ugly472startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly34307ugly1314ugly1248ugly1346ugly1156startup_seg_s_b7b_0_60_south_medium
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
  ugly34308ugly1114ugly932ugly1329ugly857startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action
  ugly34309ugly504ugly103ugly1335ugly69move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
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
 (:action
  ugly34310ugly745ugly426ugly450ugly1129startup_seg_s_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9b10b_0_125)
       (not_occupied seg_s_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b10a_0_125 ?a)
       (not (not_blocked seg_s_b9b10a_0_125 ?a))))
 (:action
  ugly34311ugly539ugly837ugly613ugly1364startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly34312ugly1147ugly766ugly661ugly928startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly34313ugly233ugly684ugly172ugly1296move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
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
 (:action
  ugly34314ugly1157ugly656ugly236ugly411startup_seg_08l_a7c_0_161_245_south_medium
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
  ugly34315ugly485ugly54ugly678ugly994startup_seg_s_b9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b9a_0_60)
       (not_occupied seg_s_b9b_0_60) (not_occupied seg_s_b9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b9b_0_60 ?a)
       (not (not_blocked seg_s_b9b_0_60 ?a)) (blocked seg_s_b9c_0_60 ?a)
       (not (not_blocked seg_s_b9c_0_60 ?a))))
 (:action
  ugly34316ugly1365ugly912ugly738ugly743move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
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
 (:action
  ugly34317ugly374ugly1056ugly940ugly881startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly34318ugly400ugly844ugly829ugly394move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
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
 (:action
  ugly34319ugly398ugly535ugly529ugly602startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34320ugly1003ugly468ugly448ugly1225move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
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
 (:action
  ugly34321ugly905ugly52ugly460ugly464move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
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
 (:action ugly34322ugly1260ugly862ugly1105ugly566takeoff_seg_08r_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08r_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08r_0_80)) (not_occupied seg_08r_0_80)
       (not (blocked seg_08r_0_80 ?a)) (not_blocked seg_08r_0_80 ?a)
       (not (at-segment ?a seg_08r_0_80)) (airborne ?a seg_08r_0_80)
       (not (is-moving ?a)) (not (blocked seg_08r_b2b3_0_900 ?a))
       (not_blocked seg_08r_b2b3_0_900 ?a)))
 (:action
  ugly34323ugly1388ugly1140ugly631ugly1256startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly34324ugly397ugly1086ugly295ugly906pushback_seg_o1_c2d_0_60_seg_c2_b_0_80_north_south_medium
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
 (:action
  ugly34325ugly1161ugly1198ugly401ugly1298startup_seg_08r_b3c_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b3c_0_161_245)
       (not_occupied seg_08r_0_80) (not_occupied seg_08r_b3a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_0_80 ?a)
       (not (not_blocked seg_08r_0_80 ?a)) (blocked seg_08r_b3a_0_80 ?a)
       (not (not_blocked seg_08r_b3a_0_80 ?a))))
 (:action
  ugly34326ugly1230ugly1068ugly37ugly620startup_seg_s_b5b8a_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8a_0_135)
       (not_occupied seg_s_b5b8b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8b_0_135 ?a)
       (not (not_blocked seg_s_b5b8b_0_135 ?a))))
 (:action
  ugly34327ugly986ugly653ugly1189ugly799startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly34328ugly1136ugly335ugly618ugly680startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly34329ugly1153ugly35ugly189ugly509startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly34330ugly1013ugly84ugly195ugly1022startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly34331ugly806ugly350ugly264ugly668move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
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
 (:action
  ugly34332ugly664ugly607ugly948ugly1013move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
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
 (:action
  ugly34333ugly1027ugly268ugly925ugly980startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly34334ugly63ugly1299ugly594ugly931startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34335ugly859ugly406ugly322ugly778startup_seg_c4_s6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6b_0_60)
       (not_occupied seg_c4_s6a_0_80) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly34336ugly763ugly430ugly34ugly491startup_seg_t_b5b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b5b_0_60)
       (not_occupied seg_t_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b5b8a_0_135 ?a)
       (not (not_blocked seg_t_b5b8a_0_135 ?a))))
 (:action
  ugly34337ugly808ugly50ugly357ugly1263startup_seg_t_b8b9c_1_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8b9c_1_0_115)
       (not_occupied seg_t_b8b9c_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b8b9c_0_115 ?a)
       (not (not_blocked seg_t_b8b9c_0_115 ?a))))
 (:action
  ugly34338ugly884ugly999ugly490ugly918startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly34339ugly5ugly316ugly420ugly380move_seg_w1_c4c_0_60_seg_s5_0_94_south_south_medium
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
 (:action
  ugly34340ugly909ugly348ugly878ugly1289startup_seg_b5_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b5_a_0_158_647)
       (not_occupied seg_08r_b4a_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b4a_0_161_245 ?a)
       (not (not_blocked seg_08r_b4a_0_161_245 ?a))))
 (:action
  ugly34341ugly83ugly1271ugly548ugly923move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
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
 (:action ugly34342ugly7ugly1055ugly833ugly520park_seg_p104_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly34343ugly516ugly233ugly684ugly172startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly34344ugly1179ugly150ugly570ugly19startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action
  ugly34345ugly288ugly966ugly623ugly1250startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly34346ugly1067ugly531ugly337ugly530startup_seg_s_b3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3c_0_60)
       (not_occupied seg_s_b3a_0_60) (not_occupied seg_s_b3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a)) (blocked seg_s_b3b_0_60 ?a)
       (not (not_blocked seg_s_b3b_0_60 ?a))))
 (:action
  ugly34347ugly579ugly1193ugly457ugly47startup_seg_t_b6d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6d_0_60)
       (not_occupied seg_t_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6c_0_130 ?a)
       (not (not_blocked seg_t_b4b6c_0_130 ?a))))
 (:action ugly34348ugly79ugly593ugly673ugly117park_seg_p131_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly34349ugly166ugly642ugly819ugly760move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
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
  ugly34350ugly454ugly277ugly877ugly1090startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly34351ugly584ugly1046ugly1031ugly847startup_seg_s5_0_94_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s5_0_94)
       (not_occupied seg_s_b7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7a_0_60 ?a)
       (not (not_blocked seg_s_b7a_0_60 ?a))))
 (:action
  ugly34352ugly863ugly1351ugly249ugly56move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
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
  ugly34353ugly784ugly987ugly665ugly447startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34354ugly1007ugly136ugly698ugly270startup_seg_t_b4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4d_0_60)
       (not_occupied seg_t_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4d_0_140 ?a)
       (not (not_blocked seg_t_b3b4d_0_140 ?a))))
 (:action
  ugly34355ugly568ugly469ugly1272ugly125startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action
  ugly34356ugly77ugly360ugly1170ugly265move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
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
 (:action
  ugly34357ugly150ugly570ugly19ugly915startup_seg_08r_b4d_0_161_245_south_medium
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
  ugly34358ugly726ugly443ugly392ugly1197startup_seg_s_b4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_t_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4a_0_60 ?a)
       (not (not_blocked seg_t_b4a_0_60 ?a))))
 (:action
  ugly34359ugly988ugly228ugly91ugly736startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly34360ugly581ugly722ugly798ugly1363startup_seg_s_b8b9a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8b9a_0_115)
       (not_occupied seg_s_b8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8a_0_60 ?a)
       (not (not_blocked seg_s_b8a_0_60 ?a))))
 (:action
  ugly34361ugly826ugly253ugly109ugly248startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34362ugly88ugly313ugly419ugly130startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly34363ugly1266ugly1087ugly493ugly1213startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly34364ugly271ugly204ugly1116ugly1284startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action
  ugly34365ugly469ugly1272ugly125ugly990move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
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
  ugly34366ugly623ugly1250ugly1115ugly752move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
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
 (:action
  ugly34367ugly989ugly1085ugly170ugly830move_seg_s_b2b3a_0_140_seg_s_b2a_0_60_north_north_medium
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
  ugly34368ugly280ugly87ugly400ugly844startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action
  ugly34369ugly1321ugly934ugly834ugly111startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action
  ugly34370ugly957ugly1202ugly1260ugly862startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly34371ugly967ugly801ugly647ugly1015move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
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
  ugly34372ugly228ugly91ugly736ugly895startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly34373ugly813ugly101ugly696ugly512startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly34374ugly520ugly930ugly1131ugly1301startup_seg_s_b4b6b_0_135_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6b_0_135)
       (not_occupied seg_s_b4b6c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6c_0_130 ?a)
       (not (not_blocked seg_s_b4b6c_0_130 ?a))))
 (:action
  ugly34375ugly1140ugly631ugly1256ugly981startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly34376ugly240ugly1262ugly578ugly49startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly34377ugly107ugly849ugly1379ugly1100move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
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
 (:action
  ugly34378ugly260ugly1112ugly1042ugly599startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly34379ugly636ugly748ugly1183ugly1365startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly34380ugly1368ugly1007ugly136ugly698move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
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
  ugly34381ugly939ugly145ugly329ugly508move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
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
 (:action
  ugly34382ugly428ugly675ugly942ugly1178startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly34383ugly82ugly860ugly395ugly1119move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
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
 (:action ugly34384ugly750ugly180ugly14ugly375startup_seg_b10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_b10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b10_1_0_80 ?a)
       (not (not_blocked seg_b10_1_0_80 ?a))))
 (:action
  ugly34385ugly305ugly754ugly556ugly1291move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
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
  ugly34386ugly433ugly1324ugly1019ugly123startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly34387ugly663ugly943ugly510ugly500startup_seg_b6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_b_0_159_512)
       (not_occupied seg_t_b6c_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6c_0_120_934 ?a)
       (not (not_blocked seg_t_b6c_0_120_934 ?a))))
 (:action
  ugly34388ugly35ugly189ugly509ugly1371startup_seg_08r_b2a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08r_b2a_0_80)
       (not_occupied seg_08r_b2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08r_b2b_0_80 ?a)
       (not (not_blocked seg_08r_b2b_0_80 ?a))))
 (:action
  ugly34389ugly677ugly744ugly438ugly115startup_seg_o1_111c_0_34_south_medium
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
  ugly34390ugly1093ugly454ugly277ugly877startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly34391ugly430ugly34ugly491ugly589move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
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
 (:action
  ugly34392ugly511ugly102ugly325ugly435startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly34393ugly1079ugly95ugly1176ugly1318move_seg_o1_108c_0_34_seg_o1_108d_0_45_north_south_medium
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
  ugly34394ugly396ugly1018ugly211ugly991move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
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
  ugly34395ugly343ugly112ugly894ugly1132move_seg_s_b3b4a_0_140_seg_s_b3a_0_60_north_north_medium
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
 (:action
  ugly34396ugly1052ugly437ugly919ugly1255move_seg_08r_b4c_0_80_seg_08r_b4b_0_80_north_south_medium
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
 (:action
  ugly34397ugly930ugly1131ugly1301ugly679move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
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
  ugly34398ugly512ugly866ugly711ugly1038startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly34399ugly1344ugly870ugly769ugly1070startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly34400ugly1184ugly118ugly611ugly1319move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
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
 (:action
  ugly34401ugly593ugly673ugly117ugly962move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
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
 (:action
  ugly34402ugly852ugly560ugly628ugly1141move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
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
  ugly34403ugly1138ugly113ugly1034ugly1002move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
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
 (:action
  ugly34404ugly392ugly1197ugly551ugly1114startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly34405ugly919ugly1255ugly66ugly1214startup_seg_w1_c4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4c_0_60)
       (not_occupied seg_w1_c4a_0_34) (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a)) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly34406ugly282ugly1160ugly1297ugly935startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34407ugly1015ugly245ugly244ugly908move_seg_s_b4a_0_60_seg_s_b4c_0_60_north_south_medium
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
 (:action
  ugly34408ugly873ugly154ugly1016ugly1079move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
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
 (:action
  ugly34409ugly1155ugly891ugly1226ugly726pushback_seg_w1_163b_0_45_seg_w1_163c_0_34_south_north_medium
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
 (:action ugly34410ugly329ugly508ugly381ugly720park_seg_p119_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action
  ugly34411ugly985ugly670ugly252ugly832startup_seg_m_a6d_0_120_934_south_medium
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
  ugly34412ugly819ugly760ugly92ugly1011startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly34413ugly106ugly346ugly855ugly640move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
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
 (:action
  ugly34414ugly1148ugly1172ugly983ugly44move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
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
 (:action
  ugly34415ugly73ugly1240ugly300ugly315move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
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
 (:action
  ugly34416ugly1220ugly436ugly1347ugly367startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly34417ugly342ugly1286ugly135ugly547startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly34418ugly588ugly1253ugly403ugly134startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly34419ugly679ugly271ugly204ugly1116startup_seg_n_a3d_0_60_south_medium
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
  ugly34420ugly1187ugly731ugly194ugly1133startup_seg_t_b9b10b_0_125_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10b_0_125)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action
  ugly34421ugly531ugly337ugly530ugly664startup_seg_t_b8c_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8c_0_120_934)
       (not_occupied seg_b8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_b_0_80_6226 ?a)
       (not (not_blocked seg_b8_b_0_80_6226 ?a))))
 (:action
  ugly34422ugly377ugly33ugly234ugly595move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
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
 (:action
  ugly34423ugly452ugly470ugly1199ugly1259startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly34424ugly291ugly1162ugly756ugly200move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
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
 (:action
  ugly34425ugly561ugly973ugly1145ugly1374startup_seg_m_a9d_0_120_934_south_medium
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
  ugly34426ugly888ugly1208ugly1377ugly294move_seg_s_b3b4d_0_140_seg_s_b3b4c_0_140_north_north_medium
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
  ugly34427ugly1292ugly597ugly1171ugly1039startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly34428ugly46ugly188ugly1368ugly1007move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
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
 (:action
  ugly34429ugly386ugly1107ugly1122ugly169startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly34430ugly681ugly224ugly761ugly1150move_seg_w1_163c_0_34_seg_w1_163b_0_45_north_south_medium
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
  ugly34431ugly1090ugly1217ugly612ugly1147startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly34432ugly755ugly1161ugly1198ugly401startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action ugly34433ugly179ugly1108ugly241ugly972park_seg_p133_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action
  ugly34434ugly39ugly1359ugly297ugly865move_seg_s_b4b6a_0_135_seg_s_b4a_0_60_north_north_medium
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
 (:action
  ugly34435ugly385ugly120ugly781ugly1354startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action
  ugly34436ugly1276ugly879ugly610ugly786startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly34437ugly420ugly380ugly32ugly900startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly34438ugly431ugly772ugly475ugly565startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly34439ugly910ugly1029ugly1206ugly15startup_seg_m_a8d_0_120_934_south_medium
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
  ugly34440ugly827ugly333ugly336ugly2startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly34441ugly429ugly1269ugly648ugly835move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
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
 (:action
  ugly34442ugly912ugly738ugly743ugly155startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly34443ugly1145ugly1374ugly1232ugly651startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly34444ugly177ugly524ugly910ugly1029startup_seg_m_a8a_0_60_south_medium
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
  ugly34445ugly251ugly1153ugly35ugly189startup_seg_t_b2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b2b_0_60)
       (not_occupied seg_t_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b2b3a_0_140 ?a)
       (not (not_blocked seg_t_b2b3a_0_140 ?a))))
 (:action
  ugly34446ugly1074ugly872ugly1165ugly354move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
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
  ugly34447ugly182ugly882ugly478ugly274move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
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
 (:action
  ugly34448ugly791ugly791ugly791ugly791startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly34449ugly963ugly387ugly677ugly744move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
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
 (:action
  ugly34450ugly59ugly75ugly383ugly1096startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly34451ugly735ugly951ugly230ugly317startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly34452ugly899ugly1060ugly714ugly1139move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
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
 (:action
  ugly34453ugly665ugly447ugly785ugly138startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly34454ugly31ugly1231ugly5ugly316move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
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
  ugly34455ugly634ugly626ugly947ugly764startup_seg_t_b9b10c_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_1_0_83)
       (not_occupied seg_t_b9b10c_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_2_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_2_0_83 ?a))))
 (:action
  ugly34456ugly885ugly413ugly423ugly1281move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
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
 (:action
  ugly34457ugly629ugly1154ugly275ugly938move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
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
 (:action
  ugly34458ugly450ugly1129ugly732ugly266startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action
  ugly34459ugly761ugly1150ugly243ugly1027move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
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
 (:action
  ugly34460ugly1251ugly534ugly7ugly1055startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34461ugly1150ugly243ugly1027ugly268startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action
  ugly34462ugly1371ugly476ugly576ugly501move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
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
 (:action
  ugly34463ugly1221ugly996ugly306ugly122startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly34464ugly1156ugly694ugly273ugly1030move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
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
 (:action
  ugly34465ugly543ugly223ugly27ugly1069startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly34466ugly56ugly238ugly31ugly1231move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
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
 (:action
  ugly34467ugly1000ugly1138ugly113ugly1034startup_seg_o1_111d_0_45_south_medium
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
  ugly34468ugly1097ugly701ugly38ugly167startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly34469ugly306ugly122ugly1305ugly843move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
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
 (:action
  ugly34470ugly331ugly681ugly224ugly761startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly34471ugly956ugly783ugly323ugly884startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action
  ugly34472ugly193ugly1026ugly1155ugly891startup_seg_m_a9a_0_60_south_medium
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
  ugly34473ugly768ugly979ugly719ugly1257move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
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
 (:action
  ugly34474ugly1331ugly495ugly161ugly663startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34475ugly210ugly552ugly958ugly1373startup_seg_s_b4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b_0_60 ?a)
       (not (not_blocked seg_s_b4b_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly34476ugly908ugly43ugly823ugly852startup_seg_t_b4b6c_0_130_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b4b6c_0_130)
       (not_occupied seg_t_b4b6b_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4b6b_0_135 ?a)
       (not (not_blocked seg_t_b4b6b_0_135 ?a))))
 (:action
  ugly34477ugly1268ugly571ugly192ugly737startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly34478ugly1121ugly388ugly723ugly1045park_seg_p131_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly34479ugly866ugly711ugly1038ugly1024startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly34480ugly1362ugly40ugly1294ugly735startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly34481ugly439ugly1125ugly1309ugly175startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly34482ugly836ugly851ugly1382ugly562move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
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
 (:action
  ugly34483ugly370ugly704ugly897ugly1063move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
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
 (:action
  ugly34484ugly1208ugly1377ugly294ugly45startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly34485ugly1233ugly206ugly351ugly489startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly34486ugly401ugly1298ugly480ugly779startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34487ugly779ugly803ugly1378ugly1308move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
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
  ugly34488ugly154ugly1016ugly1079ugly95startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly34489ugly231ugly378ugly484ugly776pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
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
 (:action
  ugly34490ugly468ugly448ugly1225ugly210startup_seg_s_b4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b_0_60)
       (not_occupied seg_s_b4a_0_60) (not_occupied seg_s_b4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a)) (blocked seg_s_b4c_0_60 ?a)
       (not (not_blocked seg_s_b4c_0_60 ?a))))
 (:action
  ugly34491ugly682ugly941ugly1099ugly629startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly34492ugly746ugly219ugly296ugly73startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly34493ugly722ugly798ugly1363ugly718startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly34494ugly654ugly1159ugly710ugly822startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly34495ugly1227ugly745ugly426ugly450startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action ugly34496ugly441ugly290ugly391ugly682park_seg_p107_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly34497ugly572ugly1315ugly1268ugly571move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
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
 (:action
  ugly34498ugly1112ugly1042ugly599ugly1195startup_seg_s_b5a_0_60_south_medium
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
  ugly34499ugly1355ugly286ugly36ugly517startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34500ugly974ugly1312ugly654ugly1159startup_seg_s_b5b8b_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b5b8b_0_135)
       (not_occupied seg_s_b5b8a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8a_0_135 ?a)
       (not (not_blocked seg_s_b5b8a_0_135 ?a))))
 (:action
  ugly34501ugly221ugly1109ugly282ugly1160startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly34502ugly1217ugly612ugly1147ugly766startup_seg_s_b3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3a_0_60)
       (not_occupied seg_s_b3b4a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4a_0_140 ?a)
       (not (not_blocked seg_s_b3b4a_0_140 ?a))))
 (:action
  ugly34503ugly200ugly239ugly580ugly533startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly34504ugly417ugly455ugly916ugly1316startup_seg_s_b3b4a_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b3b4a_0_140)
       (not_occupied seg_s_b3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3a_0_60 ?a)
       (not (not_blocked seg_s_b3a_0_60 ?a))))
 (:action
  ugly34505ugly1228ugly341ugly1332ugly1236startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly34506ugly1211ugly1080ugly810ugly174startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly34507ugly1158ugly995ugly1384ugly104startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly34508ugly1077ugly142ugly299ugly590move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
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
 (:action
  ugly34509ugly780ugly287ugly1366ugly775move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
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
 (:action
  ugly34510ugly1370ugly970ugly953ugly291startup_seg_m_a7a_0_120_934_south_medium
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
  ugly34511ugly270ugly549ugly523ugly106move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
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
 (:action
  ugly34512ugly872ugly1165ugly354ugly402pushback_seg_o1_110d_0_45_seg_o1_110a_0_34_south_north_medium
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
 (:action
  ugly34513ugly172ugly1296ugly128ugly1282move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
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
  ugly34514ugly619ugly516ugly233ugly684move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
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
 (:action
  ugly34515ugly642ugly819ugly760ugly92startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly34516ugly37ugly620ugly707ugly428startup_seg_s_b4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4c_0_60)
       (not_occupied seg_s_b3b4d_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3b4d_0_140 ?a)
       (not (not_blocked seg_s_b3b4d_0_140 ?a))))
 (:action
  ugly34517ugly521ugly1339ugly425ugly831startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly34518ugly51ugly1330ugly26ugly76startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly34519ugly645ugly1017ugly992ugly1388startup_seg_m_a4b_0_60_south_medium
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
  ugly34520ugly1291ugly139ugly1211ugly1080startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly34521ugly1056ugly940ugly881ugly1075startup_seg_s_b2b3c_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3c_0_140)
       (not_occupied seg_s_b3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b3c_0_60 ?a)
       (not (not_blocked seg_s_b3c_0_60 ?a))))
 (:action
  ugly34522ugly471ugly1152ugly404ugly227startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly34523ugly741ugly646ugly197ugly936startup_seg_s_b7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b7d_0_60)
       (not_occupied seg_s_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b6b7b_0_140 ?a)
       (not (not_blocked seg_s_b6b7b_0_140 ?a))))
 (:action ugly34524ugly473ugly1361ugly366ugly222park_seg_p153_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action
  ugly34525ugly1303ugly688ugly608ugly1302move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
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
 (:action
  ugly34526ugly1111ugly1322ugly288ugly966startup_seg_t_b9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b_0_60)
       (not_occupied seg_t_b9b10a_0_125))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10a_0_125 ?a)
       (not (not_blocked seg_t_b9b10a_0_125 ?a))))
 (:action
  ugly34527ugly112ugly894ugly1132ugly48startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly34528ugly459ugly358ugly789ugly1337move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
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
  ugly34529ugly1203ugly1164ugly158ugly811startup_seg_t_b5d_0_60_south_medium
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
  ugly34530ugly1096ugly1229ugly168ugly1247pushback_seg_o1_110d_0_45_seg_o1_110c_0_34_south_north_medium
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
 (:action
  ugly34531ugly209ugly221ugly1109ugly282startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly34532ugly770ugly848ugly226ugly352move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
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
 (:action
  ugly34533ugly743ugly155ugly758ugly655move_seg_c4_s6b_0_60_seg_c4_s6a_0_80_north_south_medium
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
 (:action
  ugly34534ugly820ugly1167ugly257ugly575move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
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
 (:action
  ugly34535ugly846ugly364ugly971ugly198move_seg_08r_b4b6_0_360_seg_08r_b6c_0_80_south_north_medium
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
  ugly34536ugly133ugly482ugly518ugly251startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly34537ugly213ugly6ugly1200ugly147move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
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
  ugly34538ugly300ugly315ugly88ugly313move_seg_o1_116c_0_34_seg_o1_116b_0_60_north_south_medium
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
 (:action
  ugly34539ugly893ugly861ugly369ugly298startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly34540ugly76ugly1146ugly645ugly1017startup_seg_o1_111a_0_34_south_medium
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
  ugly34541ugly1068ugly37ugly620ugly707move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
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
 (:action
  ugly34542ugly1285ugly820ugly1167ugly257startup_seg_t_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7b_0_140)
       (not_occupied seg_t_b7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b7c_0_60 ?a)
       (not (not_blocked seg_t_b7c_0_60 ?a))))
 (:action
  ugly34543ugly1082ugly1320ugly543ugly223move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
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
 (:action
  ugly34544ugly660ugly807ugly396ugly1018move_seg_w1_152b_0_45_seg_w1_152a_0_34_north_south_medium
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
  ugly34545ugly1358ugly1076ugly1094ugly806move_seg_o1_c2c_0_34_seg_o1_c2b_0_60_north_south_medium
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
 (:action
  ugly34546ugly1088ugly1220ugly436ugly1347move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
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
 (:action
  ugly34547ugly358ugly789ugly1337ugly232move_seg_w1_164b_0_45_seg_w1_164a_0_34_north_south_medium
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
 (:action
  ugly34548ugly915ugly486ugly713ugly854startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly34549ugly1091ugly622ugly458ugly784park_seg_p110_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action
  ugly34550ugly1356ugly899ugly1060ugly714startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly34551ugly540ugly1244ugly340ugly1204move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
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
 (:action ugly34552ugly250ugly86ugly235ugly1209park_seg_p104_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action
  ugly34553ugly953ugly291ugly1162ugly756move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
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
 (:action
  ugly34554ugly847ugly697ugly771ugly356startup_seg_t_b8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b8a_0_60)
       (not_occupied seg_s_b8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b8b_0_60 ?a)
       (not (not_blocked seg_s_b8b_0_60 ?a))))
 (:action
  ugly34555ugly1329ugly857ugly1067ugly531move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
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
 (:action
  ugly34556ugly713ugly854ugly1073ugly1065startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action
  ugly34557ugly1318ugly362ugly1221ugly996move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
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
 (:action ugly34558ugly157ugly1054ugly183ugly683park_seg_p115_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly34559ugly1223ugly555ugly1089ugly57move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
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
 (:action
  ugly34560ugly1289ugly488ugly284ugly676startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly34561ugly477ugly587ugly108ugly429startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly34562ugly462ugly1386ugly1246ugly30startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly34563ugly274ugly148ugly256ugly339startup_seg_b10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b10_0_80)
       (not_occupied seg_t_b10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b10b_0_60 ?a)
       (not (not_blocked seg_t_b10b_0_60 ?a))))
 (:action
  ugly34564ugly716ugly1175ugly377ugly33move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
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
 (:action
  ugly34565ugly181ugly9ugly485ugly54startup_seg_s_b4b6a_0_135_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4b6a_0_135)
       (not_occupied seg_s_b4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4a_0_60 ?a)
       (not (not_blocked seg_s_b4a_0_60 ?a))))
 (:action
  ugly34566ugly1264ugly838ugly537ugly907move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
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
 (:action ugly34567ugly68ugly521ugly1339ugly425park_seg_p154_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly34568ugly1201ugly997ugly217ugly347move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
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
 (:action
  ugly34569ugly675ugly942ugly1178ugly1321startup_seg_o1_c2a_0_60_south_medium
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
  ugly34570ugly945ugly280ugly87ugly400startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly34571ugly807ugly396ugly1018ugly211startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly34572ugly1040ugly1098ugly186ugly1185startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly34573ugly979ugly719ugly1257ugly157startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly34574ugly1060ugly714ugly1139ugly191move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
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
 (:action
  ugly34575ugly1282ugly331ugly681ugly224startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly34576ugly1222ugly1238ugly229ugly522startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly34577ugly727ugly716ugly1175ugly377move_seg_s5_0_94_seg_s_b7a_0_60_south_north_medium
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
  ugly34578ugly528ugly544ugly1127ugly989startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly34579ugly96ugly162ugly914ugly917startup_seg_t_b3b4d_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b4d_0_60 ?a)
       (not (not_blocked seg_t_b4d_0_60 ?a))))
 (:action
  ugly34580ugly1165ugly354ugly402ugly459move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
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
 (:action
  ugly34581ugly537ugly907ugly171ugly319move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
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
  ugly34582ugly481ugly633ugly372ugly557startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action ugly34583ugly474ugly546ugly874ugly839park_seg_p112_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly34584ugly54ugly678ugly994ugly724startup_seg_t_b3b4d_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b3b4d_0_140)
       (not_occupied seg_t_b3b4c_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b3b4c_0_140 ?a)
       (not (not_blocked seg_t_b3b4c_0_140 ?a))))
 (:action
  ugly34585ugly349ugly802ugly445ugly945move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
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
  ugly34586ugly553ugly408ugly596ugly1280startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly34587ugly875ugly864ugly627ugly804startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly34588ugly998ugly725ugly1283ugly1293startup_seg_o1_108d_0_45_south_medium
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
  ugly34589ugly44ugly190ugly1376ugly12startup_seg_m_a8c_0_60_south_medium
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
  ugly34590ugly869ugly301ugly281ugly255move_seg_08r_b2b3_0_900_seg_08r_0_80_south_north_medium
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
 (:action
  ugly34591ugly1234ugly950ugly453ugly492move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
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
 (:action
  ugly34592ugly373ugly220ugly592ugly569move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
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
 (:action
  ugly34593ugly1372ugly1001ugly355ugly421startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly34594ugly71ugly904ugly442ugly858move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
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
 (:action
  ugly34595ugly1049ugly1111ugly1322ugly288startup_seg_o1_109b_0_60_south_medium
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
  ugly34596ugly793ugly1343ugly1285ugly820startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly34597ugly877ugly1090ugly1217ugly612startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly34598ugly751ugly386ugly1107ugly1122move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
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
 (:action
  ugly34599ugly951ugly230ugly317ugly1311move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
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
 (:action
  ugly34600ugly990ugly141ugly685ugly1358startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6b_0_60) (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6b_0_60 ?a)
       (not (not_blocked seg_c4_s6b_0_60 ?a)) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly34601ugly800ugly254ugly813ugly101startup_seg_s_b7d_0_60_south_medium
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
  ugly34602ugly898ugly1239ugly624ugly986startup_seg_s_b2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2a_0_60)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action
  ugly34603ugly90ugly119ugly703ugly842startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34604ugly1190ugly456ugly1186ugly606move_seg_o1_118c_0_34_seg_o1_118b_0_60_north_south_medium
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
  ugly34605ugly185ugly538ugly153ugly1025startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly34606ugly212ugly504ugly103ugly1335move_seg_08r_b6c_0_80_seg_08r_b6b_0_80_north_south_medium
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
 (:action
  ugly34607ugly573ugly231ugly378ugly484startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly34608ugly222ugly821ugly1123ugly926startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly34609ugly32ugly900ugly1134ugly982startup_seg_m_a9c_0_60_south_medium
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
  ugly34610ugly414ugly871ugly1091ugly622pushback_seg_p133_0_75_seg_o1_110d_0_45_south_south_medium
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
  ugly34611ugly832ugly1188ugly41ugly812move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
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
  ugly34612ugly668ugly177ugly524ugly910startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly34613ugly583ugly887ugly4ugly1207move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
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
 (:action
  ugly34614ugly896ugly893ugly861ugly369move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
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
 (:action
  ugly34615ugly435ugly751ugly386ugly1107startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly34616ugly892ugly1118ugly462ugly1386startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly34617ugly838ugly537ugly907ugly171move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
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
 (:action
  ugly34618ugly190ugly1376ugly12ugly1210startup_seg_s_b8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b8c_0_60)
       (not_occupied seg_s_b5b8c_0_130))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b5b8c_0_130 ?a)
       (not (not_blocked seg_s_b5b8c_0_130 ?a))))
 (:action
  ugly34619ugly25ugly263ugly1385ugly1078startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly34620ugly30ugly846ugly364ugly971move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
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
 (:action
  ugly34621ugly811ugly586ugly439ugly1125startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly34622ugly958ugly1373ugly674ugly1261startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly34623ugly978ugly1043ugly913ugly240startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly34624ugly1170ugly265ugly79ugly593startup_seg_s_b4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b4a_0_60)
       (not_occupied seg_s_b4b6a_0_135))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b4b6a_0_135 ?a)
       (not (not_blocked seg_s_b4b6a_0_135 ?a))))
 (:action
  ugly34625ugly456ugly1186ugly606ugly431startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly34626ugly502ugly278ugly977ugly374startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly34627ugly33ugly234ugly595ugly156park_seg_p103_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly34628ugly839ugly1020ugly1191ugly762startup_seg_b9_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_b_1_0_80_6226)
       (not_occupied seg_b9_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_a_0_156_924 ?a)
       (not (not_blocked seg_b9_a_0_156_924 ?a))))
 (:action
  ugly34629ugly891ugly1226ugly726ugly443move_seg_o1_111c_0_34_seg_o1_111b_0_60_north_south_medium
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
 (:action
  ugly34630ugly933ugly345ugly952ugly1135startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly34631ugly1354ugly1037ugly465ugly869move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
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
 (:action
  ugly34632ugly443ugly392ugly1197ugly551startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action
  ugly34633ugly509ugly1371ugly476ugly576startup_seg_b9_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b9_a_0_156_924)
       (not_occupied seg_b9_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b9_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b9_b_1_0_80_6226 ?a))))
 (:action
  ugly34634ugly1122ugly169ugly749ugly959move_seg_w1_154c_0_34_seg_w1_154b_0_45_north_south_medium
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
  ugly34635ugly1218ugly16ugly955ugly1264startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly34636ugly447ugly785ugly138ugly1010move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
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
 (:action
  ugly34637ugly226ugly352ugly424ugly471startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly34638ugly1258ugly1064ugly1288ugly17move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
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
 (:action ugly34639ugly1325ugly1203ugly1164ugly158park_seg_p152_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly34640ugly465ugly869ugly301ugly281move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
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
 (:action
  ugly34641ugly935ugly1053ugly1353ugly511move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
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
  ugly34642ugly24ugly474ugly546ugly874startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly34643ugly625ugly65ugly937ugly662move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
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
 (:action
  ugly34644ugly125ugly990ugly141ugly685startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action ugly34645ugly952ugly1135ugly782ugly107park_seg_p161_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action
  ugly34646ugly1305ugly843ugly100ugly800move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
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
 (:action
  ugly34647ugly53ugly892ugly1118ugly462startup_seg_t_b9b10c_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b9b10c_2_0_83)
       (not_occupied seg_t_b9b10c_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b9b10c_1_0_83 ?a)
       (not (not_blocked seg_t_b9b10c_1_0_83 ?a))))
 (:action
  ugly34648ugly308ugly816ugly176ugly1126move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
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
 (:action
  ugly34649ugly644ugly93ugly773ugly1166startup_seg_s_b2b3b_0_140_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3b_0_140)
       (not_occupied seg_s_b2b3a_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3a_0_140 ?a)
       (not (not_blocked seg_s_b2b3a_0_140 ?a))))
 (:action
  ugly34650ugly1373ugly674ugly1261ugly1241move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
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
 (:action
  ugly34651ugly575ugly140ugly1360ugly332move_seg_w1_151b_0_45_seg_w1_151a_0_34_north_south_medium
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
 (:action
  ugly34652ugly265ugly79ugly593ugly673move_seg_s_b5b_0_60_seg_s_b5a_0_60_north_south_medium
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
 (:action
  ugly34653ugly906ugly452ugly470ugly1199startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly34654ugly931ugly963ugly387ugly677startup_seg_b8_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b8_b_1_0_80_6226)
       (not_occupied seg_b8_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b8_a_0_156_924 ?a)
       (not (not_blocked seg_b8_a_0_156_924 ?a))))
 (:action
  ugly34655ugly272ugly572ugly1315ugly1268startup_seg_t_b6b7a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_t_b6b7a_0_140)
       (not_occupied seg_t_b6b7b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_t_b6b7b_0_140 ?a)
       (not (not_blocked seg_t_b6b7b_0_140 ?a))))
 (:action
  ugly34656ugly1089ugly57ugly165ugly1184move_seg_s_b5a_0_60_seg_s6_0_94_south_north_medium
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
 (:action
  ugly34657ugly1108ugly241ugly972ugly993move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
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
 (:action
  ugly34658ugly925ugly980ugly1251ugly534move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
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
  ugly34659ugly486ugly713ugly854ugly1073startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly34660ugly1267ugly262ugly515ugly797startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly34661ugly467ugly968ugly1252ugly777move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
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
  ugly34662ugly803ugly1378ugly1308ugly312startup_seg_b6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b6_a_0_158_647)
       (not_occupied seg_b6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b6_b_0_159_512 ?a)
       (not (not_blocked seg_b6_b_0_159_512 ?a))))
 (:action
  ugly34663ugly117ugly962ugly305ugly754startup_seg_b4_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b4_b_0_80_6226)
       (not_occupied seg_b4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_b4_b_1_0_80_6226 ?a))))
 (:action
  ugly34664ugly1343ugly1285ugly820ugly1167move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
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
 (:action
  ugly34665ugly857ugly1067ugly531ugly337startup_seg_t_b3d_0_60_south_medium
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
  ugly34666ugly879ugly610ugly786ugly793startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly34667ugly494ugly479ugly64ugly1224startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly34668ugly1046ugly1031ugly847ugly697startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly34669ugly1180ugly1051ugly885ugly413move_seg_o1_117b_0_60_seg_o1_117a_0_34_north_south_medium
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
  ugly34670ugly1229ugly168ugly1247ugly461startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly34671ugly424ugly471ugly1152ugly404move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
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
 (:action
  ugly34672ugly607ugly948ugly1013ugly84move_seg_w1_142c_0_34_seg_w1_142b_0_45_north_south_medium
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
 (:action
  ugly34673ugly81ugly187ugly927ugly1128move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
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
 (:action
  ugly34674ugly19ugly915ugly486ugly713startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly34675ugly738ugly743ugly155ugly758startup_seg_s_b2b3a_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b2b3a_0_140)
       (not_occupied seg_s_b2b3b_0_140))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b2b3b_0_140 ?a)
       (not (not_blocked seg_s_b2b3b_0_140 ?a))))
 (:action ugly34676ugly264ugly668ugly177ugly524park_seg_p102_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly34677ugly418ugly77ugly360ugly1170move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
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
 (:action
  ugly34678ugly1212ugly616ugly1050ugly729move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
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
  ugly34679ugly853ugly712ugly11ugly389startup_seg_s_b6b7b_0_140_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_s_b6b7b_0_140)
       (not_occupied seg_s_b7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_s_b7d_0_60 ?a)
       (not (not_blocked seg_s_b7d_0_60 ?a))))
 (:action
  ugly34680ugly378ugly484ugly776ugly449startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly34681ugly355ugly421ugly1158ugly995startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly34682ugly615ugly405ugly1194ugly1387startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly34683ugly876ugly499ugly747ugly1215startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly34684ugly547ugly1113ugly1023ugly561startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly34685ugly295ugly906ugly452ugly470startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly34686ugly242ugly699ugly1344ugly870startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))) 