
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (occupied ?s - segment) (is-moving ?a - airplane)
  (not_occupied ?s - segment) (airborne ?a - airplane ?s - segment)
  (is-start-runway ?s - segment ?d - direction)
  (blocked ?s - segment ?a - airplane) (not_blocked ?s - segment ?a - airplane)
  (has-type ?a - airplane ?t - airplanetype)
  (facing ?a - airplane ?d - direction) (is-pushing ?a - airplane)
  (at-segment ?a - airplane ?s - segment)
  (is-parked ?a - airplane ?s - segment))
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
  airplane_daewh airplane_daew5 airplane_daew6 airplane_cfbe1 airplane_4xekd -
  airplane)
 (:functions (total-cost) - number)
 (:action
  ugly6209ugly563ugly377ugly581ugly691move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_daewh)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew5)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew6)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe1)
       (not_blocked seg_n_n2a4a_0_70 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4b_0_75))
       (not_occupied seg_n_n2a4b_0_75) (not (at-segment ?a seg_n_n2a4b_0_75))
       (occupied seg_n_n2a4a_0_70) (not (not_occupied seg_n_n2a4a_0_70))
       (blocked seg_n_n2a4a_0_70 ?a) (not (not_blocked seg_n_n2a4a_0_70 ?a))
       (at-segment ?a seg_n_n2a4a_0_70) (not (blocked seg_n_n2a4c_0_75 ?a))
       (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action
  ugly6210ugly6ugly185ugly929ugly426move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew5)
       (not_blocked seg_o1_116c_0_34 airplane_daew6)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_4xekd)
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
  ugly6211ugly149ugly947ugly516ugly206startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly6212ugly237ugly233ugly81ugly170startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly6213ugly786ugly902ugly891ugly61startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly6214ugly770ugly432ugly705ugly159move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew5)
       (not_blocked seg_w1_151b_0_45 airplane_daew6)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_4xekd)
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
 (:action
  ugly6215ugly756ugly920ugly935ugly223move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew5)
       (not_blocked seg_w1_141a_0_34 airplane_daew6)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_4xekd)
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
 (:action
  ugly6216ugly794ugly555ugly256ugly243startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly6217ugly110ugly682ugly858ugly321startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly6218ugly163ugly134ugly656ugly160startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly6219ugly453ugly842ugly149ugly947startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly6220ugly877ugly774ugly944ugly789startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly6221ugly603ugly19ugly26ugly922move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew5)
       (not_blocked seg_w1_161b_0_45 airplane_daew6)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p161_0_75))
       (not_occupied seg_p161_0_75) (not (at-segment ?a seg_p161_0_75))
       (occupied seg_w1_161b_0_45) (not (not_occupied seg_w1_161b_0_45))
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action
  ugly6222ugly490ugly162ugly824ugly864move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_daewh)
       (not_blocked seg_p116_0_76 airplane_daew5)
       (not_blocked seg_p116_0_76 airplane_daew6)
       (not_blocked seg_p116_0_76 airplane_cfbe1)
       (not_blocked seg_p116_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116b_0_60))
       (not_occupied seg_o1_116b_0_60) (not (at-segment ?a seg_o1_116b_0_60))
       (occupied seg_p116_0_76) (not (not_occupied seg_p116_0_76))
       (blocked seg_p116_0_76 ?a) (not (not_blocked seg_p116_0_76 ?a))
       (at-segment ?a seg_p116_0_76) (not (blocked seg_o1_116a_0_34 ?a))
       (not_blocked seg_o1_116a_0_34 ?a) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a)))
 (:action ugly6223ugly106ugly939ugly177ugly853park_seg_p107_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly6224ugly405ugly464ugly342ugly536pushback_seg_w1_154b_0_45_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_4xekd))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly6225ugly65ugly845ugly503ugly283move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_daewh)
       (not_blocked seg_p141_0_75 airplane_daew5)
       (not_blocked seg_p141_0_75 airplane_daew6)
       (not_blocked seg_p141_0_75 airplane_cfbe1)
       (not_blocked seg_p141_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141b_0_45))
       (not_occupied seg_w1_141b_0_45) (not (at-segment ?a seg_w1_141b_0_45))
       (occupied seg_p141_0_75) (not (not_occupied seg_p141_0_75))
       (blocked seg_p141_0_75 ?a) (not (not_blocked seg_p141_0_75 ?a))
       (at-segment ?a seg_p141_0_75) (not (blocked seg_w1_141a_0_34 ?a))
       (not_blocked seg_w1_141a_0_34 ?a) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a)))
 (:action
  ugly6226ugly581ugly691ugly70ugly590move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew5)
       (not_blocked seg_w1_c2a_0_60 airplane_daew6)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_4xekd)
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
  ugly6227ugly417ugly527ugly506ugly497startup_seg_m_a4b_0_60_south_medium
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
  ugly6228ugly841ugly734ugly821ugly111move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew5)
       (not_blocked seg_w1_163a_0_34 airplane_daew6)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_4xekd)
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
 (:action
  ugly6229ugly959ugly700ugly718ugly196startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly6230ugly15ugly412ugly901ugly351startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly6231ugly112ugly17ugly395ugly817park_seg_p119_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly6232ugly896ugly889ugly11ugly612move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew5)
       (not_blocked seg_w1_152a_0_34 airplane_daew6)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_4xekd))
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
  ugly6233ugly670ugly453ugly842ugly149startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly6234ugly363ugly472ugly678ugly744move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_daewh)
       (not_blocked seg_p154_0_75 airplane_daew5)
       (not_blocked seg_p154_0_75 airplane_daew6)
       (not_blocked seg_p154_0_75 airplane_cfbe1)
       (not_blocked seg_p154_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154b_0_45))
       (not_occupied seg_w1_154b_0_45) (not (at-segment ?a seg_w1_154b_0_45))
       (occupied seg_p154_0_75) (not (not_occupied seg_p154_0_75))
       (blocked seg_p154_0_75 ?a) (not (not_blocked seg_p154_0_75 ?a))
       (at-segment ?a seg_p154_0_75) (not (blocked seg_w1_154a_0_34 ?a))
       (not_blocked seg_w1_154a_0_34 ?a) (not (blocked seg_w1_154c_0_34 ?a))
       (not_blocked seg_w1_154c_0_34 ?a)))
 (:action
  ugly6235ugly64ugly235ugly582ugly47startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly6236ugly117ugly895ugly216ugly550startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly6237ugly371ugly398ugly371ugly398startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly6238ugly754ugly710ugly297ugly63startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly6239ugly213ugly565ugly18ugly192startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly6240ugly94ugly306ugly42ugly488startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly6241ugly693ugly808ugly954ugly651startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly6242ugly602ugly608ugly97ugly40startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly6243ugly130ugly775ugly531ugly167startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly6244ugly477ugly225ugly625ugly31startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action
  ugly6245ugly846ugly79ugly439ugly692startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly6246ugly36ugly274ugly667ugly757startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly6247ugly625ugly31ugly634ugly279move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_daewh)
       (not_blocked seg_p151_0_75 airplane_daew5)
       (not_blocked seg_p151_0_75 airplane_daew6)
       (not_blocked seg_p151_0_75 airplane_cfbe1)
       (not_blocked seg_p151_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151b_0_45))
       (not_occupied seg_w1_151b_0_45) (not (at-segment ?a seg_w1_151b_0_45))
       (occupied seg_p151_0_75) (not (not_occupied seg_p151_0_75))
       (blocked seg_p151_0_75 ?a) (not (not_blocked seg_p151_0_75 ?a))
       (at-segment ?a seg_p151_0_75) (not (blocked seg_w1_151a_0_34 ?a))
       (not_blocked seg_w1_151a_0_34 ?a) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly6248ugly304ugly430ugly511ugly229startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly6249ugly327ugly78ugly917ugly270startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly6250ugly939ugly177ugly853ugly518startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly6251ugly4ugly165ugly826ugly208move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew5)
       (not_blocked seg_w1_c3a_0_34 airplane_daew6)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_4xekd)
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
  ugly6252ugly599ugly262ugly301ugly847move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_daewh)
       (not_blocked seg_p117_0_76 airplane_daew5)
       (not_blocked seg_p117_0_76 airplane_daew6)
       (not_blocked seg_p117_0_76 airplane_cfbe1)
       (not_blocked seg_p117_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117b_0_60))
       (not_occupied seg_o1_117b_0_60) (not (at-segment ?a seg_o1_117b_0_60))
       (occupied seg_p117_0_76) (not (not_occupied seg_p117_0_76))
       (blocked seg_p117_0_76 ?a) (not (not_blocked seg_p117_0_76 ?a))
       (at-segment ?a seg_p117_0_76) (not (blocked seg_o1_117a_0_34 ?a))
       (not_blocked seg_o1_117a_0_34 ?a) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a)))
 (:action
  ugly6253ugly886ugly156ugly144ugly844startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly6254ugly487ugly457ugly934ugly919move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew5)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_4xekd))
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
  ugly6255ugly615ugly921ugly514ugly936startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly6256ugly629ugly436ugly33ugly483startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly6257ugly658ugly368ugly280ugly760startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly6258ugly847ugly298ugly179ugly800move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew5)
       (not_blocked seg_o1_116c_0_34 airplane_daew6)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_4xekd)
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
 (:action ugly6259ugly358ugly564ugly39ugly9startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly6260ugly810ugly1ugly741ugly632move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_daewh)
       (not_blocked seg_p164_0_75 airplane_daew5)
       (not_blocked seg_p164_0_75 airplane_daew6)
       (not_blocked seg_p164_0_75 airplane_cfbe1)
       (not_blocked seg_p164_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164b_0_45))
       (not_occupied seg_w1_164b_0_45) (not (at-segment ?a seg_w1_164b_0_45))
       (occupied seg_p164_0_75) (not (not_occupied seg_p164_0_75))
       (blocked seg_p164_0_75 ?a) (not (not_blocked seg_p164_0_75 ?a))
       (at-segment ?a seg_p164_0_75) (not (blocked seg_w1_164a_0_34 ?a))
       (not_blocked seg_w1_164a_0_34 ?a) (not (blocked seg_w1_164c_0_34 ?a))
       (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly6261ugly311ugly232ugly234ugly458startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly6262ugly517ugly694ugly871ugly201startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly6263ugly851ugly618ugly918ugly584startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly6264ugly929ugly426ugly284ugly713startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly6265ugly257ugly802ugly878ugly182move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew5)
       (not_blocked seg_o1_104b_0_60 airplane_daew6)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p104_0_76))
       (not_occupied seg_p104_0_76) (not (at-segment ?a seg_p104_0_76))
       (occupied seg_o1_104b_0_60) (not (not_occupied seg_o1_104b_0_60))
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action
  ugly6266ugly296ugly153ugly117ugly895move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_4xekd))
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
 (:action ugly6267ugly773ugly75ugly330ugly716park_seg_p133_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action
  ugly6268ugly414ugly635ugly486ugly941startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly6269ugly323ugly780ugly873ugly773move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew5)
       (not_blocked seg_c1_n2c_0_60 airplane_daew6)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_4xekd)
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
  ugly6270ugly369ugly600ugly673ugly317move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew5)
       (not_blocked seg_w1_151a_0_34 airplane_daew6)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_4xekd)
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
  ugly6271ugly273ugly862ugly702ugly211startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly6272ugly831ugly364ugly481ugly141startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly6273ugly381ugly870ugly500ugly404startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly6274ugly496ugly399ugly288ugly418move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew5)
       (not_blocked seg_w1_143a_0_34 airplane_daew6)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_4xekd)
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
  ugly6275ugly573ugly92ugly818ugly540startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly6276ugly349ugly189ugly385ugly142startup_seg_m_a8b_0_60_south_medium
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
  ugly6277ugly445ugly910ugly361ugly237move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_4xekd)
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
  ugly6278ugly403ugly498ugly604ugly756startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly6279ugly698ugly630ugly519ugly811move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_daewh)
       (not_blocked seg_n_a7b_0_60 airplane_daew5)
       (not_blocked seg_n_a7b_0_60 airplane_daew6)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6a_0_85))
       (not_occupied seg_n_a7a6a_0_85) (not (at-segment ?a seg_n_a7a6a_0_85))
       (occupied seg_n_a7b_0_60) (not (not_occupied seg_n_a7b_0_60))
       (blocked seg_n_a7b_0_60 ?a) (not (not_blocked seg_n_a7b_0_60 ?a))
       (at-segment ?a seg_n_a7b_0_60) (not (blocked seg_n_a7a6b_0_75 ?a))
       (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action
  ugly6280ugly736ugly563ugly377ugly581startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly6281ugly144ugly844ugly431ugly249startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly6282ugly547ugly825ugly311ugly232move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew5)
       (not_blocked seg_o1_109b_0_60 airplane_daew6)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_4xekd)
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
  ugly6283ugly735ugly285ugly184ugly746startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6284ugly800ugly296ugly153ugly117startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly6285ugly159ugly107ugly193ugly173startup_seg_o1_110a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly6286ugly109ugly417ugly527ugly506park_seg_p103_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly6287ugly242ugly711ugly648ugly501move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3d_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3e_0_75))
       (not_occupied seg_n_a2a3e_0_75) (not (at-segment ?a seg_n_a2a3e_0_75))
       (occupied seg_n_a2a3d_0_75) (not (not_occupied seg_n_a2a3d_0_75))
       (blocked seg_n_a2a3d_0_75 ?a) (not (not_blocked seg_n_a2a3d_0_75 ?a))
       (at-segment ?a seg_n_a2a3d_0_75) (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action ugly6288ugly550ugly866ugly698ugly630park_seg_p107_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action
  ugly6289ugly881ugly534ugly293ugly665move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_daewh)
       (not_blocked seg_m_a8b_0_60 airplane_daew5)
       (not_blocked seg_m_a8b_0_60 airplane_daew6)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe1)
       (not_blocked seg_m_a8b_0_60 airplane_4xekd)
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
 (:action
  ugly6290ugly436ugly33ugly483ugly830move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_daewh)
       (not_blocked seg_p132_0_75 airplane_daew5)
       (not_blocked seg_p132_0_75 airplane_daew6)
       (not_blocked seg_p132_0_75 airplane_cfbe1)
       (not_blocked seg_p132_0_75 airplane_4xekd))
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
  ugly6291ugly472ugly678ugly744ugly132move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew5)
       (not_blocked seg_w1_c2a_0_60 airplane_daew6)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c2a_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143c_0_60))
       (not_occupied seg_w1_143c_0_60) (not (at-segment ?a seg_w1_143c_0_60))
       (occupied seg_w1_c2a_0_60) (not (not_occupied seg_w1_c2a_0_60))
       (blocked seg_w1_c2a_0_60 ?a) (not (not_blocked seg_w1_c2a_0_60 ?a))
       (at-segment ?a seg_w1_c2a_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_143a_0_34 ?a))
       (not_blocked seg_w1_143a_0_34 ?a) (not (blocked seg_w1_143b_0_45 ?a))
       (not_blocked seg_w1_143b_0_45 ?a)))
 (:action ugly6292ugly182ugly197ugly74ugly20park_seg_p151_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly6293ugly537ugly380ugly271ugly762startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly6294ugly807ugly421ugly784ugly558startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action ugly6295ugly394ugly335ugly843ugly390park_seg_p102_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly6296ugly675ugly275ugly838ugly496startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly6297ugly287ugly622ugly37ugly403startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6298ugly592ugly341ugly533ugly447move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew5)
       (not_blocked seg_w1_161b_0_45 airplane_daew6)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_161b_0_45 airplane_4xekd)
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
  ugly6299ugly757ugly658ugly368ugly280startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly6300ugly498ugly604ugly756ugly920startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly6301ugly707ugly566ugly348ugly315startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly6302ugly90ugly397ugly102ugly905move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew5)
       (not_blocked seg_w1_142c_0_34 airplane_daew6)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_4xekd)
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
 (:action ugly6303ugly150ugly459ugly386ugly799park_seg_p112_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action
  ugly6304ugly855ugly479ugly639ugly661startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly6305ugly99ugly545ugly606ugly894startup_seg_o1_c3c_0_48_south_medium
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
  ugly6306ugly646ugly8ugly178ugly621move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_4xekd)
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
  ugly6307ugly454ugly549ugly120ugly450startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly6308ugly742ugly904ugly613ugly588startup_seg_m_a8a_0_60_south_medium
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
  ugly6309ugly313ugly841ugly734ugly821move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew5)
       (not_blocked seg_w1_153a_0_34 airplane_daew6)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152c_0_34))
       (not_occupied seg_w1_152c_0_34) (not (at-segment ?a seg_w1_152c_0_34))
       (occupied seg_w1_153a_0_34) (not (not_occupied seg_w1_153a_0_34))
       (blocked seg_w1_153a_0_34 ?a) (not (not_blocked seg_w1_153a_0_34 ?a))
       (at-segment ?a seg_w1_153a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_152a_0_34 ?a))
       (not_blocked seg_w1_152a_0_34 ?a) (not (blocked seg_w1_152b_0_45 ?a))
       (not_blocked seg_w1_152b_0_45 ?a)))
 (:action ugly6310ugly943ugly767ugly915ugly52startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly6311ugly510ugly720ugly647ugly374startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly6312ugly419ugly411ugly788ugly591startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly6313ugly530ugly408ugly709ugly226startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly6314ugly664ugly112ugly17ugly395startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly6315ugly690ugly755ugly460ugly30move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4c_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4d_0_75))
       (not_occupied seg_n_n2a4d_0_75) (not (at-segment ?a seg_n_n2a4d_0_75))
       (occupied seg_n_n2a4c_0_75) (not (not_occupied seg_n_n2a4c_0_75))
       (blocked seg_n_n2a4c_0_75 ?a) (not (not_blocked seg_n_n2a4c_0_75 ?a))
       (at-segment ?a seg_n_n2a4c_0_75) (not (blocked seg_n_n2a4e_0_75 ?a))
       (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action
  ugly6316ugly125ugly438ugly707ugly566startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action
  ugly6317ugly923ugly253ugly121ugly892move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew5)
       (not_blocked seg_o1_103a_0_34 airplane_daew6)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_4xekd))
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
  ugly6318ugly259ugly855ugly479ugly639startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly6319ugly542ugly494ugly252ugly664move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew5)
       (not_blocked seg_w1_152c_0_34 airplane_daew6)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_4xekd))
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
  ugly6320ugly710ugly297ugly63ugly834move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew5)
       (not_blocked seg_w1_163c_0_34 airplane_daew6)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_4xekd)
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
 (:action ugly6321ugly410ugly240ugly940ugly537park_seg_p151_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action
  ugly6322ugly191ugly735ugly285ugly184startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly6323ugly298ugly179ugly800ugly296move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew5)
       (not_blocked seg_w1_163b_0_45 airplane_daew6)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p163_0_75))
       (not_occupied seg_p163_0_75) (not (at-segment ?a seg_p163_0_75))
       (occupied seg_w1_163b_0_45) (not (not_occupied seg_w1_163b_0_45))
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly6324ugly576ugly245ugly745ugly462move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew5)
       (not_blocked seg_w1_151c_0_34 airplane_daew6)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_4xekd)
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
  ugly6325ugly62ugly292ugly146ugly38move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_daewh)
       (not_blocked seg_p142_0_75 airplane_daew5)
       (not_blocked seg_p142_0_75 airplane_daew6)
       (not_blocked seg_p142_0_75 airplane_cfbe1)
       (not_blocked seg_p142_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142b_0_45))
       (not_occupied seg_w1_142b_0_45) (not (at-segment ?a seg_w1_142b_0_45))
       (occupied seg_p142_0_75) (not (not_occupied seg_p142_0_75))
       (blocked seg_p142_0_75 ?a) (not (not_blocked seg_p142_0_75 ?a))
       (at-segment ?a seg_p142_0_75) (not (blocked seg_w1_142a_0_34 ?a))
       (not_blocked seg_w1_142a_0_34 ?a) (not (blocked seg_w1_142c_0_34 ?a))
       (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly6326ugly750ugly810ugly1ugly741startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly6327ugly73ugly837ugly396ugly846move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew5)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_4xekd)
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
  ugly6328ugly729ugly742ugly904ugly613startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly6329ugly858ugly321ugly786ugly902startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly6330ugly256ugly243ugly796ugly660move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew5)
       (not_blocked seg_o1_102b_0_60 airplane_daew6)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p102_0_76))
       (not_occupied seg_p102_0_76) (not (at-segment ?a seg_p102_0_76))
       (occupied seg_o1_102b_0_60) (not (not_occupied seg_o1_102b_0_60))
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action
  ugly6331ugly129ugly158ugly247ugly451startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly6332ugly354ugly419ugly411ugly788startup_seg_o1_c3b_0_60_south_medium
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
  ugly6333ugly343ugly763ugly44ugly686move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew5)
       (not_blocked seg_o1_108d_0_45 airplane_daew6)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p131_0_75))
       (not_occupied seg_p131_0_75) (not (at-segment ?a seg_p131_0_75))
       (occupied seg_o1_108d_0_45) (not (not_occupied seg_o1_108d_0_45))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly6334ugly152ugly392ugly624ugly546move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew5)
       (not_blocked seg_o1_115a_0_34 airplane_daew6)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_4xekd)
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
 (:action ugly6335ugly370ugly425ugly577ugly953park_seg_p154_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly6336ugly709ugly226ugly886ugly156move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_daewh)
       (not_blocked seg_p161_0_75 airplane_daew5)
       (not_blocked seg_p161_0_75 airplane_daew6)
       (not_blocked seg_p161_0_75 airplane_cfbe1)
       (not_blocked seg_p161_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161b_0_45))
       (not_occupied seg_w1_161b_0_45) (not (at-segment ?a seg_w1_161b_0_45))
       (occupied seg_p161_0_75) (not (not_occupied seg_p161_0_75))
       (blocked seg_p161_0_75 ?a) (not (not_blocked seg_p161_0_75 ?a))
       (at-segment ?a seg_p161_0_75) (not (blocked seg_w1_161a_0_34 ?a))
       (not_blocked seg_w1_161a_0_34 ?a) (not (blocked seg_w1_161c_0_34 ?a))
       (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly6337ugly14ugly490ugly162ugly824startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly6338ugly476ugly429ugly909ugly383startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly6339ugly511ugly229ugly329ugly257startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action
  ugly6340ugly383ugly674ugly617ugly463startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly6341ugly441ugly333ugly254ugly95move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_4xekd))
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
 (:action
  ugly6342ugly878ugly182ugly197ugly74move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_daewh)
       (not_blocked seg_a2_b_0_90 airplane_daew5)
       (not_blocked seg_a2_b_0_90 airplane_daew6)
       (not_blocked seg_a2_b_0_90 airplane_cfbe1)
       (not_blocked seg_a2_b_0_90 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_c_0_100))
       (not_occupied seg_a2_c_0_100) (not (at-segment ?a seg_a2_c_0_100))
       (occupied seg_a2_b_0_90) (not (not_occupied seg_a2_b_0_90))
       (blocked seg_a2_b_0_90 ?a) (not (not_blocked seg_a2_b_0_90 ?a))
       (at-segment ?a seg_a2_b_0_90) (not (blocked seg_n_a2a_0_60 ?a))
       (not_blocked seg_n_a2a_0_60 ?a)))
 (:action
  ugly6343ugly824ugly864ugly290ugly110startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly6344ugly692ugly854ugly679ugly16move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_daewh)
       (not_blocked seg_n_a4c_0_60 airplane_daew5)
       (not_blocked seg_n_a4c_0_60 airplane_daew6)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4c_0_60 airplane_4xekd)
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
  ugly6345ugly372ugly473ugly82ugly23startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly6346ugly223ugly5ugly278ugly620startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly6347ugly639ugly661ugly466ugly637park_seg_p111_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action ugly6348ugly600ugly673ugly317ugly101park_seg_p132_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly6349ugly564ugly39ugly9ugly603move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_daewh)
       (not_blocked seg_a2_c_0_100 airplane_daew5)
       (not_blocked seg_a2_c_0_100 airplane_daew6)
       (not_blocked seg_a2_c_0_100 airplane_cfbe1)
       (not_blocked seg_a2_c_0_100 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a_0_60))
       (not_occupied seg_n_a2a_0_60) (not (at-segment ?a seg_n_a2a_0_60))
       (occupied seg_a2_c_0_100) (not (not_occupied seg_a2_c_0_100))
       (blocked seg_a2_c_0_100 ?a) (not (not_blocked seg_a2_c_0_100 ?a))
       (at-segment ?a seg_a2_c_0_100) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action
  ugly6350ugly20ugly381ugly870ugly500startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly6351ugly551ugly382ugly950ugly937startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6352ugly528ugly749ugly521ugly578move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_daewh)
       (not_blocked seg_08l_a4a_0_80 airplane_daew5)
       (not_blocked seg_08l_a4a_0_80 airplane_daew6)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4a_0_80 airplane_4xekd)
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
  ugly6353ugly107ugly193ugly173ugly553startup_seg_o1_108a_0_34_south_medium
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
  ugly6354ugly869ugly831ugly364ugly481move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew5)
       (not_blocked seg_w1_c3c_0_48 airplane_daew6)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_4xekd)
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
  ugly6355ugly493ugly155ugly294ugly712startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly6356ugly153ugly117ugly895ugly216startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6357ugly618ugly918ugly584ugly883move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew5)
       (not_blocked seg_w1_154b_0_45 airplane_daew6)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_4xekd)
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
  ugly6358ugly437ugly795ugly769ugly706startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly6359ugly338ugly152ugly392ugly624startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action ugly6360ugly905ugly94ugly306ugly42startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6361ugly533ugly447ugly143ugly690startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly6362ugly431ugly249ugly434ugly877startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action ugly6363ugly569ugly469ugly295ugly54startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly6364ugly612ugly99ugly545ugly606startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action ugly6365ugly704ugly951ugly163ugly134startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly6366ugly587ugly879ugly681ugly874startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly6367ugly319ugly137ugly776ugly172startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly6368ugly885ugly145ugly740ugly291move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew5)
       (not_blocked seg_o1_c3c_0_48 airplane_daew6)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_4xekd))
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
  ugly6369ugly791ugly305ugly48ugly916move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew5)
       (not_blocked seg_o1_108a_0_34 airplane_daew6)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_4xekd)
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
  ugly6370ugly71ugly832ugly725ugly363startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly6371ugly120ugly450ugly489ugly409startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly6372ugly763ugly44ugly686ugly224startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly6373ugly622ugly37ugly403ugly498startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly6374ugly351ugly670ugly453ugly842move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew5)
       (not_blocked seg_w1_162a_0_34 airplane_daew6)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_4xekd)
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
 (:action ugly6375ugly894ugly593ugly57ugly807startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly6376ugly156ugly144ugly844ugly431move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_4xekd)
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
 (:action
  ugly6377ugly937ugly520ugly456ugly474move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew5)
       (not_blocked seg_o1_103c_0_34 airplane_daew6)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_4xekd)
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
  ugly6378ugly374ugly413ugly869ugly831startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly6379ugly924ugly109ugly417ugly527park_seg_p104_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action
  ugly6380ugly705ugly159ugly107ugly193move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew5)
       (not_blocked seg_o1_c1c_0_80 airplane_daew6)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_4xekd)
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
 (:action
  ugly6381ugly494ugly252ugly664ugly112move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_daewh)
       (not_blocked seg_n_a2b_0_60 airplane_daew5)
       (not_blocked seg_n_a2b_0_60 airplane_daew6)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3a_0_75))
       (not_occupied seg_n_a2a3a_0_75) (not (at-segment ?a seg_n_a2a3a_0_75))
       (occupied seg_n_a2b_0_60) (not (not_occupied seg_n_a2b_0_60))
       (blocked seg_n_a2b_0_60 ?a) (not (not_blocked seg_n_a2b_0_60 ?a))
       (at-segment ?a seg_n_a2b_0_60) (not (blocked seg_n_a2a3b_0_75 ?a))
       (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action
  ugly6382ugly920ugly935ugly223ugly5move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew5)
       (not_blocked seg_o1_c3a_0_34 airplane_daew6)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_4xekd)
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
  ugly6383ugly589ugly161ugly260ugly583move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew5)
       (not_blocked seg_o1_c4c_0_80 airplane_daew6)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_4xekd)
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
  ugly6384ugly502ugly387ugly402ugly759startup_seg_m_a7b_0_60_south_medium
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
  ugly6385ugly631ugly448ugly645ugly880move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew5)
       (not_blocked seg_w1_153b_0_45 airplane_daew6)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_4xekd)
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
  ugly6386ugly776ugly172ugly752ugly933startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly6387ugly784ugly558ugly896ugly889move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_daewh)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew5)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew6)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe1)
       (not_blocked seg_n_a2a3f_0_115 airplane_4xekd))
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
  ugly6388ugly722ugly62ugly292ugly146move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daewh)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew5)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew6)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe1)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_4xekd))
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
  ugly6389ugly197ugly74ugly20ugly381startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly6390ugly549ugly120ugly450ugly489startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly6391ugly447ugly143ugly690ugly755startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6392ugly331ugly890ugly538ugly446startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly6393ugly386ugly799ugly596ugly485startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action ugly6394ugly891ugly61ugly357ugly806startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6395ugly165ugly826ugly208ugly139move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew5)
       (not_blocked seg_o1_c2b_0_60 airplane_daew6)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p107_0_76))
       (not_occupied seg_p107_0_76) (not (at-segment ?a seg_p107_0_76))
       (occupied seg_o1_c2b_0_60) (not (not_occupied seg_o1_c2b_0_60))
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly6396ugly691ugly70ugly590ugly103startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly6397ugly422ugly248ugly601ugly949startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly6398ugly840ugly180ugly529ugly449startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly6399ugly933ugly568ugly898ugly492startup_seg_08l_a7c_0_161_245_south_medium
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
  ugly6400ugly884ugly945ugly743ugly147startup_seg_o1_110c_0_34_south_medium
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
  ugly6401ugly712ugly828ugly218ugly551startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6402ugly667ugly757ugly658ugly368move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew5)
       (not_blocked seg_o1_115a_0_34 airplane_daew6)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115a_0_34 airplane_4xekd))
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
  ugly6403ugly871ugly201ugly839ugly171startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action
  ugly6404ugly721ugly316ugly491ugly314move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew5)
       (not_blocked seg_w1_143a_0_34 airplane_daew6)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_143a_0_34 airplane_4xekd))
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
  ugly6405ugly89ugly542ugly494ugly252startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly6406ugly400ugly585ugly737ugly761startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action
  ugly6407ugly21ugly194ugly444ugly754startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly6408ugly565ugly18ugly192ugly349move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew5)
       (not_blocked seg_o1_103b_0_60 airplane_daew6)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p103_0_76))
       (not_occupied seg_p103_0_76) (not (at-segment ?a seg_p103_0_76))
       (occupied seg_o1_103b_0_60) (not (not_occupied seg_o1_103b_0_60))
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action
  ugly6409ugly931ugly32ugly614ugly105move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7d_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7e_0_75))
       (not_occupied seg_n_a4a7e_0_75) (not (at-segment ?a seg_n_a4a7e_0_75))
       (occupied seg_n_a4a7d_0_75) (not (not_occupied seg_n_a4a7d_0_75))
       (blocked seg_n_a4a7d_0_75 ?a) (not (not_blocked seg_n_a4a7d_0_75 ?a))
       (at-segment ?a seg_n_a4a7d_0_75) (not (blocked seg_n_a4a7f_0_75 ?a))
       (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action
  ugly6410ugly898ugly492ugly677ugly219move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew5)
       (not_blocked seg_w1_142a_0_34 airplane_daew6)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_4xekd)
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
  ugly6411ugly774ugly944ugly789ugly505move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3b_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3c_0_75))
       (not_occupied seg_n_a2a3c_0_75) (not (at-segment ?a seg_n_a2a3c_0_75))
       (occupied seg_n_a2a3b_0_75) (not (not_occupied seg_n_a2a3b_0_75))
       (blocked seg_n_a2a3b_0_75 ?a) (not (not_blocked seg_n_a2a3b_0_75 ?a))
       (at-segment ?a seg_n_a2a3b_0_75) (not (blocked seg_n_a2a3d_0_75 ?a))
       (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action
  ugly6412ugly956ugly407ugly6ugly185startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly6413ugly609ugly672ugly615ugly921startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly6414ugly451ugly522ugly365ugly323startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly6415ugly105ugly60ugly400ugly585startup_seg_m_a7a_0_120_934_south_medium
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
  ugly6416ugly715ugly266ugly827ugly353move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew5)
       (not_blocked seg_o1_c3d_0_60 airplane_daew6)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_4xekd)
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
  ugly6417ugly895ugly216ugly550ugly866startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action ugly6418ugly187ugly610ugly850ugly150park_seg_p164_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly6419ugly301ugly847ugly298ugly179startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly6420ugly860ugly465ugly575ugly362startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly6421ugly433ugly64ugly235ugly582move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8c_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8d_0_75))
       (not_occupied seg_n_a6a8d_0_75) (not (at-segment ?a seg_n_a6a8d_0_75))
       (occupied seg_n_a6a8c_0_75) (not (not_occupied seg_n_a6a8c_0_75))
       (blocked seg_n_a6a8c_0_75 ?a) (not (not_blocked seg_n_a6a8c_0_75 ?a))
       (at-segment ?a seg_n_a6a8c_0_75) (not (blocked seg_n_a6a8e_0_75 ?a))
       (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action
  ugly6422ugly957ugly574ugly865ugly684move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew5)
       (not_blocked seg_o1_103c_0_34 airplane_daew6)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_4xekd)
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
 (:action
  ugly6423ugly681ugly874ugly338ugly152startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6424ugly734ugly821ugly111ugly157startup_seg_o1_c2b_0_60_south_medium
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
  ugly6425ugly663ugly562ugly833ugly607startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly6426ugly458ugly911ugly559ugly119move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew5)
       (not_blocked seg_o1_110a_0_34 airplane_daew6)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_4xekd))
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
 (:action ugly6427ugly652ugly259ugly855ugly479park_seg_p118_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly6428ugly362ugly792ugly736ugly563startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly6429ugly23ugly867ugly73ugly837startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly6430ugly637ugly580ugly25ugly680move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew5)
       (not_blocked seg_o1_115c_0_34 airplane_daew6)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_4xekd)
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
 (:action
  ugly6431ugly772ugly852ugly264ugly370startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly6432ugly357ugly806ugly556ugly269startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action
  ugly6433ugly701ugly666ugly629ugly436move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_daewh)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew5)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew6)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe1)
       (not_blocked seg_08l_a7a9_0_270 airplane_4xekd)
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
 (:action
  ugly6434ugly902ugly891ugly61ugly357startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action ugly6435ugly469ugly295ugly54ugly535startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly6436ugly671ugly188ugly236ugly733move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4d_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4e_0_75))
       (not_occupied seg_n_n2a4e_0_75) (not (at-segment ?a seg_n_n2a4e_0_75))
       (occupied seg_n_n2a4d_0_75) (not (not_occupied seg_n_n2a4d_0_75))
       (blocked seg_n_n2a4d_0_75 ?a) (not (not_blocked seg_n_n2a4d_0_75 ?a))
       (at-segment ?a seg_n_n2a4d_0_75) (not (blocked seg_n_a4c_0_60 ?a))
       (not_blocked seg_n_a4c_0_60 ?a)))
 (:action
  ugly6437ugly302ugly885ugly145ugly740move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew5)
       (not_blocked seg_o1_117b_0_60 airplane_daew6)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p117_0_76))
       (not_occupied seg_p117_0_76) (not (at-segment ?a seg_p117_0_76))
       (occupied seg_o1_117b_0_60) (not (not_occupied seg_o1_117b_0_60))
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action
  ugly6438ugly145ugly740ugly291ugly277move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew5)
       (not_blocked seg_o1_116b_0_60 airplane_daew6)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_4xekd)
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
  ugly6439ugly388ugly213ugly565ugly18move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew5)
       (not_blocked seg_o1_103c_0_34 airplane_daew6)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104a_0_34))
       (not_occupied seg_o1_104a_0_34) (not (at-segment ?a seg_o1_104a_0_34))
       (occupied seg_o1_103c_0_34) (not (not_occupied seg_o1_103c_0_34))
       (blocked seg_o1_103c_0_34 ?a) (not (not_blocked seg_o1_103c_0_34 ?a))
       (at-segment ?a seg_o1_103c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_104b_0_60 ?a))
       (not_blocked seg_o1_104b_0_60 ?a) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a)))
 (:action ugly6440ugly108ugly50ugly251ugly113park_seg_p133_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly6441ugly489ugly409ugly334ugly652move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_daewh)
       (not_blocked seg_p111_0_76 airplane_daew5)
       (not_blocked seg_p111_0_76 airplane_daew6)
       (not_blocked seg_p111_0_76 airplane_cfbe1)
       (not_blocked seg_p111_0_76 airplane_4xekd))
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
  ugly6442ugly135ugly669ugly528ugly749startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly6443ugly803ugly55ugly638ugly619startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly6444ugly643ugly242ugly711ugly648startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly6445ugly488ugly355ugly100ugly84startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly6446ugly941ugly955ugly906ugly822startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly6447ugly457ugly934ugly919ugly302startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly6448ugly379ugly541ugly43ugly388move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew5)
       (not_blocked seg_o1_108b_0_60 airplane_daew6)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p108_0_76))
       (not_occupied seg_p108_0_76) (not (at-segment ?a seg_p108_0_76))
       (occupied seg_o1_108b_0_60) (not (not_occupied seg_o1_108b_0_60))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action
  ugly6449ugly172ugly752ugly933ugly568startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly6450ugly335ugly843ugly390ugly487startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly6451ugly925ugly657ugly118ugly282startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly6452ugly300ugly482ugly863ugly96startup_seg_m_a9b_0_60_south_medium
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
  ugly6453ugly428ugly220ugly696ugly442startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action
  ugly6454ugly288ugly418ugly93ugly597move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4b_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4c_0_75))
       (not_occupied seg_n_n2a4c_0_75) (not (at-segment ?a seg_n_n2a4c_0_75))
       (occupied seg_n_n2a4b_0_75) (not (not_occupied seg_n_n2a4b_0_75))
       (blocked seg_n_n2a4b_0_75 ?a) (not (not_blocked seg_n_n2a4b_0_75 ?a))
       (at-segment ?a seg_n_n2a4b_0_75) (not (blocked seg_n_n2a4d_0_75 ?a))
       (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action
  ugly6455ugly634ugly279ugly108ugly50move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_daewh)
       (not_blocked seg_p133_0_75 airplane_daew5)
       (not_blocked seg_p133_0_75 airplane_daew6)
       (not_blocked seg_p133_0_75 airplane_cfbe1)
       (not_blocked seg_p133_0_75 airplane_4xekd))
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
  ugly6456ugly567ugly140ugly893ugly477move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_4xekd)
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
  ugly6457ugly261ugly703ugly793ugly938startup_seg_m_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly6458ugly760ugly860ugly465ugly575park_seg_p143_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly6459ugly57ugly807ugly421ugly784startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly6460ugly189ugly385ugly142ugly783pushback_seg_w1_154c_0_34_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew5)
       (not_blocked seg_w1_c3a_0_34 airplane_daew6)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_4xekd))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly6461ugly535ugly573ugly92ugly818startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly6462ugly96ugly803ugly55ugly638park_seg_p116_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly6463ugly798ugly200ugly373ugly644startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action
  ugly6464ugly543ugly790ugly281ugly45startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly6465ugly411ugly788ugly591ugly331startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly6466ugly570ugly452ugly244ugly504startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly6467ugly396ugly846ugly79ugly439startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly6468ugly526ugly238ugly169ugly433move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_daewh)
       (not_blocked seg_n_a4b_0_60 airplane_daew5)
       (not_blocked seg_n_a4b_0_60 airplane_daew6)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a4b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7a_0_115))
       (not_occupied seg_n_a4a7a_0_115) (not (at-segment ?a seg_n_a4a7a_0_115))
       (occupied seg_n_a4b_0_60) (not (not_occupied seg_n_a4b_0_60))
       (blocked seg_n_a4b_0_60 ?a) (not (not_blocked seg_n_a4b_0_60 ?a))
       (at-segment ?a seg_n_a4b_0_60) (not (blocked seg_n_a4a7b_0_75 ?a))
       (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action
  ugly6469ugly507ugly797ugly787ugly547startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly6470ugly553ugly523ugly467ugly515startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly6471ugly743ugly147ugly561ugly728startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly6472ugly799ugly596ugly485ugly764park_seg_p153_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly6473ugly591ugly331ugly890ugly538startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly6474ugly365ugly323ugly780ugly873startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly6475ugly25ugly680ugly273ugly862startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly6476ugly797ugly787ugly547ugly825move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew5)
       (not_blocked seg_o1_c4a_0_34 airplane_daew6)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_4xekd)
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
 (:action ugly6477ugly614ugly105ugly60ugly400park_seg_p134_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly6478ugly518ugly655ugly345ugly598startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action
  ugly6479ugly711ugly648ugly501ugly13startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly6480ugly29ugly650ugly589ugly161move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew5)
       (not_blocked seg_o1_111d_0_45 airplane_daew6)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p134_0_75))
       (not_occupied seg_p134_0_75) (not (at-segment ?a seg_p134_0_75))
       (occupied seg_o1_111d_0_45) (not (not_occupied seg_o1_111d_0_45))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action
  ugly6481ugly653ugly336ugly493ugly155move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew5)
       (not_blocked seg_o1_117c_0_34 airplane_daew6)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118a_0_34))
       (not_occupied seg_o1_118a_0_34) (not (at-segment ?a seg_o1_118a_0_34))
       (occupied seg_o1_117c_0_34) (not (not_occupied seg_o1_117c_0_34))
       (blocked seg_o1_117c_0_34 ?a) (not (not_blocked seg_o1_117c_0_34 ?a))
       (at-segment ?a seg_o1_117c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_118b_0_60 ?a))
       (not_blocked seg_o1_118b_0_60 ?a) (not (blocked seg_o1_118c_0_34 ?a))
       (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly6482ugly315ugly676ugly77ugly835startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly6483ugly582ugly47ugly753ugly299startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action
  ugly6484ugly843ugly390ugly487ugly457startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly6485ugly679ugly16ugly65ugly845startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly6486ugly136ugly816ugly888ugly22startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly6487ugly124ugly675ugly275ugly838park_seg_p103_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action
  ugly6488ugly665ugly41ugly59ugly643move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew5)
       (not_blocked seg_o1_111a_0_34 airplane_daew6)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_4xekd))
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
  ugly6489ugly459ugly386ugly799ugly596startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly6490ugly732ugly791ugly305ugly48startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly6491ugly703ugly793ugly938ugly785startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action ugly6492ugly395ugly817ugly649ugly668park_seg_p108_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly6493ugly834ugly166ugly662ugly344startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action
  ugly6494ugly879ugly681ugly874ugly338move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_daewh)
       (not_blocked seg_p162_0_75 airplane_daew5)
       (not_blocked seg_p162_0_75 airplane_daew6)
       (not_blocked seg_p162_0_75 airplane_cfbe1)
       (not_blocked seg_p162_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162b_0_45))
       (not_occupied seg_w1_162b_0_45) (not (at-segment ?a seg_w1_162b_0_45))
       (occupied seg_p162_0_75) (not (not_occupied seg_p162_0_75))
       (blocked seg_p162_0_75 ?a) (not (not_blocked seg_p162_0_75 ?a))
       (at-segment ?a seg_p162_0_75) (not (blocked seg_w1_162a_0_34 ?a))
       (not_blocked seg_w1_162a_0_34 ?a) (not (blocked seg_w1_162c_0_34 ?a))
       (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly6495ugly740ugly291ugly277ugly289startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly6496ugly80ugly704ugly951ugly163move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew5)
       (not_blocked seg_w1_161c_0_34 airplane_daew6)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_4xekd)
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
  ugly6497ugly179ugly800ugly296ugly153move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew5)
       (not_blocked seg_w1_153b_0_45 airplane_daew6)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_153b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p153_0_75))
       (not_occupied seg_p153_0_75) (not (at-segment ?a seg_p153_0_75))
       (occupied seg_w1_153b_0_45) (not (not_occupied seg_w1_153b_0_45))
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action
  ugly6498ugly8ugly178ugly621ugly241startup_seg_o1_c2d_0_60_south_medium
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
  ugly6499ugly434ugly877ugly774ugly944startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action
  ugly6500ugly661ugly466ugly637ugly580move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_daewh)
       (not_blocked seg_08l_0_80 airplane_daew5)
       (not_blocked seg_08l_0_80 airplane_daew6)
       (not_blocked seg_08l_0_80 airplane_cfbe1)
       (not_blocked seg_08l_0_80 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a3_0_970))
       (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action
  ugly6501ugly521ugly578ugly29ugly650startup_seg_o1_c3a_0_34_south_medium
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
  ugly6502ugly171ugly685ugly611ugly209startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly6503ugly61ugly357ugly806ugly556move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_4xekd)
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
  ugly6504ugly811ugly56ugly683ugly587startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly6505ugly545ugly606ugly894ugly593move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_daewh)
       (not_blocked seg_n_a7c_0_60 airplane_daew5)
       (not_blocked seg_n_a7c_0_60 airplane_daew6)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a7c_0_60 airplane_4xekd)
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
  ugly6506ugly501ugly13ugly840ugly180startup_seg_o1_108c_0_34_south_medium
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
  ugly6507ugly258ugly801ugly350ugly576move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_4xekd)
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
  ugly6508ugly425ugly577ugly953ugly410move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew5)
       (not_blocked seg_o1_110b_0_60 airplane_daew6)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p110_0_76))
       (not_occupied seg_p110_0_76) (not (at-segment ?a seg_p110_0_76))
       (occupied seg_o1_110b_0_60) (not (not_occupied seg_o1_110b_0_60))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly6509ugly907ugly325ugly594ugly174move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew5)
       (not_blocked seg_o1_117c_0_34 airplane_daew6)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_4xekd)
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
 (:action
  ugly6510ugly781ugly4ugly165ugly826move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew5)
       (not_blocked seg_o1_c2d_0_60 airplane_daew6)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_b_0_80))
       (not_occupied seg_c2_b_0_80) (not (at-segment ?a seg_c2_b_0_80))
       (occupied seg_o1_c2d_0_60) (not (not_occupied seg_o1_c2d_0_60))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))
       (at-segment ?a seg_o1_c2d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c2_a_0_80 ?a))
       (not_blocked seg_c2_a_0_80 ?a)))
 (:action ugly6511ugly702ugly211ugly814ugly454park_seg_p109_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action
  ugly6512ugly336ugly493ugly155ugly294startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly6513ugly733ugly67ugly332ugly154park_seg_p101_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly6514ugly56ugly683ugly587ugly879startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly6515ugly294ugly712ugly828ugly218startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly6516ugly424ugly731ugly204ugly701startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly6517ugly613ugly588ugly781ugly4move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew5)
       (not_blocked seg_w1_164a_0_34 airplane_daew6)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_4xekd)
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
  ugly6518ugly162ugly824ugly864ugly290move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew5)
       (not_blocked seg_w1_152c_0_34 airplane_daew6)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_4xekd)
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
 (:action ugly6519ugly188ugly236ugly733ugly67startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly6520ugly555ugly256ugly243ugly796startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly6521ugly27ugly480ugly441ugly333move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew5)
       (not_blocked seg_o1_c3a_0_34 airplane_daew6)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_4xekd))
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
 (:action ugly6522ugly9ugly603ugly19ugly26startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly6523ugly404ugly339ugly508ugly394startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly6524ugly243ugly796ugly660ugly181move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3e_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3f_0_115))
       (not_occupied seg_n_a2a3f_0_115) (not (at-segment ?a seg_n_a2a3f_0_115))
       (occupied seg_n_a2a3e_0_75) (not (not_occupied seg_n_a2a3e_0_75))
       (blocked seg_n_a2a3e_0_75 ?a) (not (not_blocked seg_n_a2a3e_0_75 ?a))
       (at-segment ?a seg_n_a2a3e_0_75) (not (blocked seg_n_a3d_0_60 ?a))
       (not_blocked seg_n_a3d_0_60 ?a)))
 (:action
  ugly6525ugly883ugly131ugly930ugly829startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly6526ugly5ugly278ugly620ugly443startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly6527ugly341ugly533ugly447ugly143startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly6528ugly633ugly642ugly726ugly932startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly6529ugly210ugly115ugly857ugly151startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly6530ugly638ugly619ugly470ugly717move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew5)
       (not_blocked seg_o1_110d_0_45 airplane_daew6)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_4xekd)
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
  ugly6531ugly232ugly234ugly458ugly911startup_seg_o1_110b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly6532ugly596ugly485ugly764ugly401park_seg_p104_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly6533ugly321ugly786ugly902ugly891move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7c_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7d_0_75))
       (not_occupied seg_n_a4a7d_0_75) (not (at-segment ?a seg_n_a4a7d_0_75))
       (occupied seg_n_a4a7c_0_75) (not (not_occupied seg_n_a4a7c_0_75))
       (blocked seg_n_a4a7c_0_75 ?a) (not (not_blocked seg_n_a4a7c_0_75 ?a))
       (at-segment ?a seg_n_a4a7c_0_75) (not (blocked seg_n_a4a7e_0_75 ?a))
       (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action
  ugly6534ugly874ugly338ugly152ugly392startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action
  ugly6535ugly151ugly729ugly742ugly904startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly6536ugly79ugly439ugly692ugly854startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action
  ugly6537ugly322ugly671ugly188ugly236startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly6538ugly456ugly474ugly202ugly310move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew5)
       (not_blocked seg_w1_143c_0_60 airplane_daew6)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_4xekd)
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
 (:action
  ugly6539ugly645ugly880ugly123ugly272startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly6540ugly202ugly310ugly90ugly397move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew5)
       (not_blocked seg_w1_c2c_0_34 airplane_daew6)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151a_0_34))
       (not_occupied seg_w1_151a_0_34) (not (at-segment ?a seg_w1_151a_0_34))
       (occupied seg_w1_c2c_0_34) (not (not_occupied seg_w1_c2c_0_34))
       (blocked seg_w1_c2c_0_34 ?a) (not (not_blocked seg_w1_c2c_0_34 ?a))
       (at-segment ?a seg_w1_c2c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_151b_0_45 ?a))
       (not_blocked seg_w1_151b_0_45 ?a) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly6541ugly686ugly224ugly804ugly58move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew5)
       (not_blocked seg_o1_102b_0_60 airplane_daew6)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_102b_0_60 airplane_4xekd)
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
 (:action
  ugly6542ugly207ugly959ugly700ugly718move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_daewh)
       (not_blocked seg_p103_0_76 airplane_daew5)
       (not_blocked seg_p103_0_76 airplane_daew6)
       (not_blocked seg_p103_0_76 airplane_cfbe1)
       (not_blocked seg_p103_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103b_0_60))
       (not_occupied seg_o1_103b_0_60) (not (at-segment ?a seg_o1_103b_0_60))
       (occupied seg_p103_0_76) (not (not_occupied seg_p103_0_76))
       (blocked seg_p103_0_76 ?a) (not (not_blocked seg_p103_0_76 ?a))
       (at-segment ?a seg_p103_0_76) (not (blocked seg_o1_103a_0_34 ?a))
       (not_blocked seg_o1_103a_0_34 ?a) (not (blocked seg_o1_103c_0_34 ?a))
       (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly6543ugly689ugly347ugly10ugly34startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly6544ugly236ugly733ugly67ugly332move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew5)
       (not_blocked seg_w1_163c_0_34 airplane_daew6)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_4xekd)
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
  ugly6545ugly624ugly546ugly276ugly887move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew5)
       (not_blocked seg_w1_152c_0_34 airplane_daew6)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152c_0_34 airplane_4xekd)
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
  ugly6546ugly579ugly135ugly669ugly528startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly6547ugly384ugly747ugly255ugly375move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew5)
       (not_blocked seg_w1_c1a_0_60 airplane_daew6)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_4xekd)
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
 (:action
  ugly6548ugly916ugly217ugly719ugly322startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly6549ugly483ugly830ugly239ugly35startup_seg_o1_109b_0_60_south_medium
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
  ugly6550ugly290ugly110ugly682ugly858pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew5)
       (not_blocked seg_o1_c1a_0_60 airplane_daew6)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_4xekd))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly6551ugly706ugly495ugly770ugly432startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly6552ugly842ugly149ugly947ugly516move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew5)
       (not_blocked seg_o1_c2d_0_60 airplane_daew6)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2d_0_60 airplane_4xekd)
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
  ugly6553ugly467ugly515ugly727ugly312startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly6554ugly416ugly952ugly328ugly908startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly6555ugly463ugly422ugly248ugly601startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly6556ugly594ugly174ugly304ugly430startup_seg_o1_c2a_0_60_south_medium
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
  ugly6557ugly608ugly97ugly40ugly435startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly6558ugly766ugly215ugly868ugly526move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew5)
       (not_blocked seg_o1_109d_0_45 airplane_daew6)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_4xekd)
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
  ugly6559ugly572ugly263ugly722ugly62move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew5)
       (not_blocked seg_o1_117c_0_34 airplane_daew6)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117c_0_34 airplane_4xekd)
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
  ugly6560ugly919ugly302ugly885ugly145startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly6561ugly170ugly478ugly823ugly359move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew5)
       (not_blocked seg_o1_108a_0_34 airplane_daew6)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108a_0_34 airplane_4xekd))
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
  ugly6562ugly854ugly679ugly16ugly65startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly6563ugly161ugly260ugly583ugly308move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew5)
       (not_blocked seg_w1_161c_0_34 airplane_daew6)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_4xekd))
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
  ugly6564ugly818ugly540ugly946ugly343startup_seg_m_a6d_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action ugly6565ugly111ugly157ugly513ugly782park_seg_p115_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly6566ugly250ugly246ugly406ugly510startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly6567ugly910ugly361ugly237ugly233move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew5)
       (not_blocked seg_w1_142b_0_45 airplane_daew6)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p142_0_75))
       (not_occupied seg_p142_0_75) (not (at-segment ?a seg_p142_0_75))
       (occupied seg_w1_142b_0_45) (not (not_occupied seg_w1_142b_0_45))
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action
  ugly6568ugly289ugly592ugly341ugly533startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly6569ugly45ugly861ugly440ugly203startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action
  ugly6570ugly375ugly176ugly391ugly957startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action
  ugly6571ugly299ugly502ugly387ugly402startup_seg_m_a6b_0_60_south_medium
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
  ugly6572ugly81ugly170ugly478ugly823startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly6573ugly619ugly470ugly717ugly250move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew5)
       (not_blocked seg_o1_110b_0_60 airplane_daew6)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_110b_0_60 airplane_4xekd)
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
  ugly6574ugly291ugly277ugly289ugly592startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly6575ugly399ugly288ugly418ugly93park_seg_p112_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly6576ugly470ugly717ugly250ugly246startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action ugly6577ugly790ugly281ugly45ugly861startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6578ugly641ugly191ugly735ugly285move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew5)
       (not_blocked seg_o1_102c_0_34 airplane_daew6)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_4xekd))
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
  ugly6579ugly40ugly435ugly958ugly53move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
       (not_blocked seg_c2_b_0_80 airplane_daew5)
       (not_blocked seg_c2_b_0_80 airplane_daew6)
       (not_blocked seg_c2_b_0_80 airplane_cfbe1)
       (not_blocked seg_c2_b_0_80 airplane_4xekd))
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
  ugly6580ugly233ugly81ugly170ugly478startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly6581ugly286ugly346ugly86ugly21move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew5)
       (not_blocked seg_o1_102c_0_34 airplane_daew6)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_4xekd)
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
  ugly6582ugly249ugly434ugly877ugly774startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly6583ugly356ugly956ugly407ugly6move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew5)
       (not_blocked seg_o1_102a_0_34 airplane_daew6)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_4xekd)
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
  ugly6584ugly677ugly219ugly85ugly267startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly6585ugly539ugly586ugly214ugly499move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew5)
       (not_blocked seg_o1_116a_0_34 airplane_daew6)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_4xekd)
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
  ugly6586ugly119ugly230ugly14ugly490move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew5)
       (not_blocked seg_w1_164c_0_34 airplane_daew6)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_4xekd)
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
  ugly6587ugly796ugly660ugly181ugly12startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly6588ugly492ugly677ugly219ugly85move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew5)
       (not_blocked seg_o1_c3d_0_60 airplane_daew6)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3d_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_b_0_80))
       (not_occupied seg_c3_b_0_80) (not (at-segment ?a seg_c3_b_0_80))
       (occupied seg_o1_c3d_0_60) (not (not_occupied seg_o1_c3d_0_60))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))
       (at-segment ?a seg_o1_c3d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c3_a_0_80 ?a))
       (not_blocked seg_c3_a_0_80 ?a)))
 (:action
  ugly6589ugly730ugly926ugly76ugly484startup_seg_o1_111d_0_45_south_medium
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
  ugly6590ugly808ugly954ugly651ugly605startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly6591ugly181ugly12ugly616ugly227move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_daewh)
       (not_blocked seg_n_a6c_0_60 airplane_daew5)
       (not_blocked seg_n_a6c_0_60 airplane_daew6)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6c_0_60 airplane_4xekd)
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
  ugly6592ugly100ugly84ugly455ugly313startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly6593ugly875ugly354ugly419ugly411startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly6594ugly647ugly374ugly413ugly869startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly6595ugly765ugly623ugly539ugly586move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_108c_0_34 airplane_4xekd)
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
  ugly6596ugly30ugly68ugly24ugly210move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew5)
       (not_blocked seg_w1_152b_0_45 airplane_daew6)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_4xekd)
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
  ugly6597ugly168ugly393ugly261ugly703startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly6598ugly221ugly848ugly512ugly805startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly6599ugly479ugly639ugly661ugly466startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly6600ugly43ugly388ugly213ugly565move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_daewh)
       (not_blocked seg_n_a2a_0_60 airplane_daew5)
       (not_blocked seg_n_a2a_0_60 airplane_daew6)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a2a_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2b_0_60))
       (not_occupied seg_n_a2b_0_60) (not (at-segment ?a seg_n_a2b_0_60))
       (occupied seg_n_a2a_0_60) (not (not_occupied seg_n_a2a_0_60))
       (blocked seg_n_a2a_0_60 ?a) (not (not_blocked seg_n_a2a_0_60 ?a))
       (at-segment ?a seg_n_a2a_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action
  ugly6601ugly632ugly168ugly393ugly261startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly6602ugly51ugly524ugly128ugly138move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew5)
       (not_blocked seg_o1_103b_0_60 airplane_daew6)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_103b_0_60 airplane_4xekd)
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
  ugly6603ugly849ugly697ugly420ugly923move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_4xekd)
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
  ugly6604ugly859ugly771ugly599ugly262move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew5)
       (not_blocked seg_o1_c4a_0_34 airplane_daew6)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c4a_0_34 airplane_4xekd))
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
  ugly6605ugly450ugly489ugly409ugly334startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly6606ugly683ugly587ugly879ugly681startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly6607ugly862ugly702ugly211ugly814startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action
  ugly6608ugly255ugly375ugly176ugly391startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly6609ugly103ugly778ugly49ugly405startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly6610ugly575ugly362ugly792ugly736startup_seg_o1_110d_0_45_south_medium
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
  ugly6611ugly466ugly637ugly580ugly25startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action ugly6612ugly154ugly475ugly366ugly127park_seg_p142_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action
  ugly6613ugly475ugly366ugly127ugly352startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly6614ugly320ugly758ugly72ugly851park_seg_p116_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action
  ugly6615ugly177ugly853ugly518ugly655startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly6616ugly26ugly922ugly133ugly724startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly6617ugly418ugly93ugly597ugly69startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly6618ugly727ugly312ugly327ugly78startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly6619ugly620ugly443ugly337ugly186startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly6620ugly478ugly823ugly359ugly221startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly6621ugly954ugly651ugly605ugly882move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_daewh)
       (not_blocked seg_p153_0_75 airplane_daew5)
       (not_blocked seg_p153_0_75 airplane_daew6)
       (not_blocked seg_p153_0_75 airplane_cfbe1)
       (not_blocked seg_p153_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153b_0_45))
       (not_occupied seg_w1_153b_0_45) (not (at-segment ?a seg_w1_153b_0_45))
       (occupied seg_p153_0_75) (not (not_occupied seg_p153_0_75))
       (blocked seg_p153_0_75 ?a) (not (not_blocked seg_p153_0_75 ?a))
       (at-segment ?a seg_p153_0_75) (not (blocked seg_w1_153a_0_34 ?a))
       (not_blocked seg_w1_153a_0_34 ?a) (not (blocked seg_w1_153c_0_34 ?a))
       (not_blocked seg_w1_153c_0_34 ?a)))
 (:action ugly6622ugly541ugly43ugly388ugly213park_seg_p110_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action ugly6623ugly499ugly287ugly622ugly37startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly6624ugly552ugly309ugly87ugly126startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly6625ugly76ugly484ugly579ugly135startup_seg_08l_a4c_0_161_245_south_medium
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
  ugly6626ugly208ugly139ugly205ugly641move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew5)
       (not_blocked seg_o1_104a_0_34 airplane_daew6)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_4xekd))
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
  ugly6627ugly505ugly15ugly412ugly901startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action ugly6628ugly82ugly23ugly867ugly73startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly6629ugly758ugly72ugly851ugly618startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly6630ugly484ugly579ugly135ugly669startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly6631ugly857ugly151ugly729ugly742startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly6632ugly37ugly403ugly498ugly604startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly6633ugly24ugly210ugly115ugly857move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew5)
       (not_blocked seg_w1_162b_0_45 airplane_daew6)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_4xekd)
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
  ugly6634ugly448ugly645ugly880ugly123move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew5)
       (not_blocked seg_o1_115b_0_60 airplane_daew6)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p115_0_76))
       (not_occupied seg_p115_0_76) (not (at-segment ?a seg_p115_0_76))
       (occupied seg_o1_115b_0_60) (not (not_occupied seg_o1_115b_0_60))
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action
  ugly6635ugly753ugly299ugly502ugly387startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6636ugly408ugly709ugly226ugly886move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew5)
       (not_blocked seg_w1_163c_0_34 airplane_daew6)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163c_0_34 airplane_4xekd))
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
  ugly6637ugly295ugly54ugly535ugly573move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew5)
       (not_blocked seg_w1_143c_0_60 airplane_daew6)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_4xekd))
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
  ugly6638ugly850ugly150ugly459ugly386startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly6639ugly464ugly342ugly536ugly319move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew5)
       (not_blocked seg_w1_161a_0_34 airplane_daew6)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_4xekd)
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
  ugly6640ugly560ugly928ugly525ugly897move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew5)
       (not_blocked seg_o1_109b_0_60 airplane_daew6)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_109b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p109_0_76))
       (not_occupied seg_p109_0_76) (not (at-segment ?a seg_p109_0_76))
       (occupied seg_o1_109b_0_60) (not (not_occupied seg_o1_109b_0_60))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action ugly6641ugly245ugly745ugly462ugly114park_seg_p117_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly6642ugly656ugly160ugly942ugly307startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly6643ugly95ugly231ugly416ugly952startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly6644ugly524ugly128ugly138ugly195move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew5)
       (not_blocked seg_o1_111b_0_60 airplane_daew6)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_4xekd)
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
  ugly6645ugly936ugly732ugly791ugly305move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8b_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8c_0_75))
       (not_occupied seg_n_a6a8c_0_75) (not (at-segment ?a seg_n_a6a8c_0_75))
       (occupied seg_n_a6a8b_0_75) (not (not_occupied seg_n_a6a8b_0_75))
       (blocked seg_n_a6a8b_0_75 ?a) (not (not_blocked seg_n_a6a8b_0_75 ?a))
       (at-segment ?a seg_n_a6a8b_0_75) (not (blocked seg_n_a6a8d_0_75 ?a))
       (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action
  ugly6646ugly407ugly6ugly185ugly929startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly6647ugly69ugly772ugly852ugly264startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly6648ugly866ugly698ugly630ugly519startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly6649ugly148ugly356ugly956ugly407move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew5)
       (not_blocked seg_w1_c1c_0_34 airplane_daew6)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141a_0_34))
       (not_occupied seg_w1_141a_0_34) (not (at-segment ?a seg_w1_141a_0_34))
       (occupied seg_w1_c1c_0_34) (not (not_occupied seg_w1_c1c_0_34))
       (blocked seg_w1_c1c_0_34 ?a) (not (not_blocked seg_w1_c1c_0_34 ?a))
       (at-segment ?a seg_w1_c1c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_141b_0_45 ?a))
       (not_blocked seg_w1_141b_0_45 ?a) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a)))
 (:action ugly6650ugly944ugly789ugly505ugly15startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly6651ugly822ugly646ugly8ugly178startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly6652ugly220ugly696ugly442ugly530startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action
  ugly6653ugly509ugly809ugly372ugly473move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew5)
       (not_blocked seg_w1_142c_0_34 airplane_daew6)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_4xekd)
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
  ugly6654ugly235ugly582ugly47ugly753move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew5)
       (not_blocked seg_o1_118b_0_60 airplane_daew6)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p118_0_76))
       (not_occupied seg_p118_0_76) (not (at-segment ?a seg_p118_0_76))
       (occupied seg_o1_118b_0_60) (not (not_occupied seg_o1_118b_0_60))
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly6655ugly53ugly207ugly959ugly700startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action ugly6656ugly778ugly49ugly405ugly464park_seg_p141_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly6657ugly180ugly529ugly449ugly881startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6658ugly260ugly583ugly308ugly136startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly6659ugly265ugly303ugly653ugly336startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly6660ugly12ugly616ugly227ugly51startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly6661ugly495ugly770ugly432ugly705move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew5)
       (not_blocked seg_w1_163b_0_45 airplane_daew6)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_163b_0_45 airplane_4xekd)
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
  ugly6662ugly203ugly723ugly384ugly747move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_4xekd))
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
  ugly6663ugly700ugly718ugly196ugly750startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action
  ugly6664ugly805ugly544ugly872ugly914move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew5)
       (not_blocked seg_w1_c1a_0_60 airplane_daew6)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1a_0_60 airplane_4xekd)
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
  ugly6665ugly876ugly106ugly939ugly177startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly6666ugly263ugly722ugly62ugly292move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew5)
       (not_blocked seg_w1_162c_0_34 airplane_daew6)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_4xekd)
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
  ugly6667ugly746ugly572ugly263ugly722move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7b_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7c_0_75))
       (not_occupied seg_n_a4a7c_0_75) (not (at-segment ?a seg_n_a4a7c_0_75))
       (occupied seg_n_a4a7b_0_75) (not (not_occupied seg_n_a4a7b_0_75))
       (blocked seg_n_a4a7b_0_75 ?a) (not (not_blocked seg_n_a4a7b_0_75 ?a))
       (at-segment ?a seg_n_a4a7b_0_75) (not (blocked seg_n_a4a7d_0_75 ?a))
       (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly6668ugly934ugly919ugly302ugly885move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew5)
       (not_blocked seg_w1_162b_0_45 airplane_daew6)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_162b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p162_0_75))
       (not_occupied seg_p162_0_75) (not (at-segment ?a seg_p162_0_75))
       (occupied seg_w1_162b_0_45) (not (not_occupied seg_w1_162b_0_45))
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action
  ugly6669ugly688ugly379ugly541ugly43startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly6670ugly68ugly24ugly210ugly115startup_seg_n_a3c_0_60_south_medium
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
  ugly6671ugly326ugly849ugly697ugly420startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly6672ugly911ugly559ugly119ugly230move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3c_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3d_0_75))
       (not_occupied seg_n_a2a3d_0_75) (not (at-segment ?a seg_n_a2a3d_0_75))
       (occupied seg_n_a2a3c_0_75) (not (not_occupied seg_n_a2a3c_0_75))
       (blocked seg_n_a2a3c_0_75 ?a) (not (not_blocked seg_n_a2a3c_0_75 ?a))
       (at-segment ?a seg_n_a2a3c_0_75) (not (blocked seg_n_a2a3e_0_75 ?a))
       (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action ugly6673ugly659ugly875ugly354ugly419park_seg_p154_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action ugly6674ugly7ugly318ugly659ugly875startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6675ugly131ugly930ugly829ugly931move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_daewh)
       (not_blocked seg_08l_a7a_0_80 airplane_daew5)
       (not_blocked seg_08l_a7a_0_80 airplane_daew6)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7a_0_80 airplane_4xekd)
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
  ugly6676ugly482ugly863ugly96ugly803move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_daewh)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew5)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew6)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe1)
       (not_blocked seg_n_a7a6a_0_85 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6b_0_75))
       (not_occupied seg_n_a7a6b_0_75) (not (at-segment ?a seg_n_a7a6b_0_75))
       (occupied seg_n_a7a6a_0_85) (not (not_occupied seg_n_a7a6a_0_85))
       (blocked seg_n_a7a6a_0_85 ?a) (not (not_blocked seg_n_a7a6a_0_85 ?a))
       (at-segment ?a seg_n_a7a6a_0_85) (not (blocked seg_n_a7a6c_0_75 ?a))
       (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action
  ugly6677ugly651ugly605ugly882ugly124startup_seg_08l_a7b_0_161_245_south_medium
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
  ugly6678ugly917ugly270ugly415ugly198startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly6679ugly276ugly887ugly122ugly340startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly6680ugly828ugly218ugly551ugly382startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly6681ugly272ugly389ugly476ugly429startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly6682ugly214ugly499ugly287ugly622move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_daewh)
       (not_blocked seg_a8_a_0_157_785 airplane_daew5)
       (not_blocked seg_a8_a_0_157_785 airplane_daew6)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe1)
       (not_blocked seg_a8_a_0_157_785 airplane_4xekd))
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
  ugly6683ugly449ugly881ugly534ugly293startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly6684ugly134ugly656ugly160ugly942move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew5)
       (not_blocked seg_o1_c4b_0_60 airplane_daew6)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p119_0_76))
       (not_occupied seg_p119_0_76) (not (at-segment ?a seg_p119_0_76))
       (occupied seg_o1_c4b_0_60) (not (not_occupied seg_o1_c4b_0_60))
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))
       (at-segment ?a seg_o1_c4b_0_60)))
 (:action
  ugly6685ugly759ugly739ugly2ugly859startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly6686ugly485ugly764ugly401ugly507startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly6687ugly687ugly286ugly346ugly86move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_daewh)
       (not_blocked seg_a2_a_0_90 airplane_daew5)
       (not_blocked seg_a2_a_0_90 airplane_daew6)
       (not_blocked seg_a2_a_0_90 airplane_cfbe1)
       (not_blocked seg_a2_a_0_90 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_b_0_90))
       (not_occupied seg_a2_b_0_90) (not (at-segment ?a seg_a2_b_0_90))
       (occupied seg_a2_a_0_90) (not (not_occupied seg_a2_a_0_90))
       (blocked seg_a2_a_0_90 ?a) (not (not_blocked seg_a2_a_0_90 ?a))
       (at-segment ?a seg_a2_a_0_90) (not (blocked seg_a2_c_0_100 ?a))
       (not_blocked seg_a2_c_0_100 ?a)))
 (:action
  ugly6688ugly540ugly946ugly343ugly763move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8f_0_75 airplane_4xekd))
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
  ugly6689ugly474ugly202ugly310ugly90startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly6690ugly626ugly693ugly808ugly954startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly6691ugly867ugly73ugly837ugly396startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly6692ugly568ugly898ugly492ugly677move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew5)
       (not_blocked seg_o1_c2a_0_60 airplane_daew6)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_4xekd)
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
  ugly6693ugly35ugly543ugly790ugly281move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8e_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8f_0_75))
       (not_occupied seg_n_a6a8f_0_75) (not (at-segment ?a seg_n_a6a8f_0_75))
       (occupied seg_n_a6a8e_0_75) (not (not_occupied seg_n_a6a8e_0_75))
       (blocked seg_n_a6a8e_0_75 ?a) (not (not_blocked seg_n_a6a8e_0_75 ?a))
       (at-segment ?a seg_n_a6a8e_0_75) (not (blocked seg_n_a8c_0_60 ?a))
       (not_blocked seg_n_a8c_0_60 ?a)))
 (:action
  ugly6694ugly836ugly738ugly766ugly215startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly6695ugly391ugly957ugly574ugly865startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly6696ugly640ugly300ugly482ugly863move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_daewh)
       (not_blocked seg_p143_0_75 airplane_daew5)
       (not_blocked seg_p143_0_75 airplane_daew6)
       (not_blocked seg_p143_0_75 airplane_cfbe1)
       (not_blocked seg_p143_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143b_0_45))
       (not_occupied seg_w1_143b_0_45) (not (at-segment ?a seg_w1_143b_0_45))
       (occupied seg_p143_0_75) (not (not_occupied seg_p143_0_75))
       (blocked seg_p143_0_75 ?a) (not (not_blocked seg_p143_0_75 ?a))
       (at-segment ?a seg_p143_0_75) (not (blocked seg_w1_143a_0_34 ?a))
       (not_blocked seg_w1_143a_0_34 ?a) (not (blocked seg_w1_143c_0_60 ?a))
       (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly6697ugly368ugly280ugly760ugly860startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly6698ugly473ugly82ugly23ugly867move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_daewh)
       (not_blocked seg_n2_0_108 airplane_daew5)
       (not_blocked seg_n2_0_108 airplane_daew6)
       (not_blocked seg_n2_0_108 airplane_cfbe1)
       (not_blocked seg_n2_0_108 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2b_0_60))
       (not_occupied seg_n_n2b_0_60) (not (at-segment ?a seg_n_n2b_0_60))
       (occupied seg_n2_0_108) (not (not_occupied seg_n2_0_108))
       (blocked seg_n2_0_108 ?a) (not (not_blocked seg_n2_0_108 ?a))
       (at-segment ?a seg_n2_0_108) (not (blocked seg_n_n2a_0_60 ?a))
       (not_blocked seg_n_n2a_0_60 ?a) (not (blocked seg_n_n2c_0_60 ?a))
       (not_blocked seg_n_n2c_0_60 ?a)))
 (:action
  ugly6699ugly167ugly326ugly849ugly697startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly6700ugly718ugly196ugly750ugly810move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew5)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p141_0_75))
       (not_occupied seg_p141_0_75) (not (at-segment ?a seg_p141_0_75))
       (occupied seg_w1_141b_0_45) (not (not_occupied seg_w1_141b_0_45))
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action
  ugly6701ugly912ugly557ugly71ugly832startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly6702ugly192ugly349ugly189ugly385move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew5)
       (not_blocked seg_w1_161a_0_34 airplane_daew6)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161a_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c3c_0_48))
       (not_occupied seg_w1_c3c_0_48) (not (at-segment ?a seg_w1_c3c_0_48))
       (occupied seg_w1_161a_0_34) (not (not_occupied seg_w1_161a_0_34))
       (blocked seg_w1_161a_0_34 ?a) (not (not_blocked seg_w1_161a_0_34 ?a))
       (at-segment ?a seg_w1_161a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c3a_0_34 ?a))
       (not_blocked seg_w1_c3a_0_34 ?a) (not (blocked seg_w1_c3b_0_60 ?a))
       (not_blocked seg_w1_c3b_0_60 ?a)))
 (:action ugly6703ugly497ugly715ugly266ugly827park_seg_p142_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly6704ugly251ugly113ugly571ugly688startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly6705ugly325ugly594ugly174ugly304startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6706ugly833ugly607ugly819ugly360move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_daewh)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew5)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew6)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a3a4_0_450 airplane_4xekd)
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
  ugly6707ugly378ugly687ugly286ugly346move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_4xekd)
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
  ugly6708ugly726ugly932ugly721ugly316startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly6709ugly138ugly195ugly258ugly801startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly6710ugly218ugly551ugly382ugly950startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly6711ugly785ugly567ugly140ugly893startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly6712ugly674ugly617ugly463ugly422move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew5)
       (not_blocked seg_o1_110d_0_45 airplane_daew6)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_110d_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p133_0_75))
       (not_occupied seg_p133_0_75) (not (at-segment ?a seg_p133_0_75))
       (occupied seg_o1_110d_0_45) (not (not_occupied seg_o1_110d_0_45))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action
  ugly6713ugly268ugly927ugly912ugly557move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_daewh)
       (not_blocked seg_n_n2a_0_60 airplane_daew5)
       (not_blocked seg_n_n2a_0_60 airplane_daew6)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2a_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4a_0_70))
       (not_occupied seg_n_n2a4a_0_70) (not (at-segment ?a seg_n_n2a4a_0_70))
       (occupied seg_n_n2a_0_60) (not (not_occupied seg_n_n2a_0_60))
       (blocked seg_n_n2a_0_60 ?a) (not (not_blocked seg_n_n2a_0_60 ?a))
       (at-segment ?a seg_n_n2a_0_60) (not (blocked seg_n_n2a4b_0_75 ?a))
       (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action
  ugly6714ugly544ugly872ugly914ugly7pushback_seg_p154_0_75_seg_w1_154b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew5)
       (not_blocked seg_w1_154b_0_45 airplane_daew6)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_4xekd))
  :effect
  (and (not (occupied seg_p154_0_75)) (not_occupied seg_p154_0_75)
       (not (blocked seg_p154_0_75 ?a)) (not_blocked seg_p154_0_75 ?a)
       (not (at-segment ?a seg_p154_0_75)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action
  ugly6715ugly387ugly402ugly759ugly739move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_4xekd)
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
 (:action
  ugly6716ugly54ugly535ugly573ugly92startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly6717ugly795ugly769ugly706ugly495startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly6718ugly724ugly913ugly654ugly548move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew5)
       (not_blocked seg_o1_c3a_0_34 airplane_daew6)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c3a_0_34 airplane_4xekd)
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
  ugly6719ugly648ugly501ugly13ugly840move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_daewh)
       (not_blocked seg_p101_0_76 airplane_daew5)
       (not_blocked seg_p101_0_76 airplane_daew6)
       (not_blocked seg_p101_0_76 airplane_cfbe1)
       (not_blocked seg_p101_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1a_0_60))
       (not_occupied seg_o1_c1a_0_60) (not (at-segment ?a seg_o1_c1a_0_60))
       (occupied seg_p101_0_76) (not (not_occupied seg_p101_0_76))
       (blocked seg_p101_0_76 ?a) (not (not_blocked seg_p101_0_76 ?a))
       (at-segment ?a seg_p101_0_76) (not (blocked seg_o1_c1b_0_34 ?a))
       (not_blocked seg_o1_c1b_0_34 ?a) (not (blocked seg_o1_c1c_0_80 ?a))
       (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly6720ugly316ugly491ugly314ugly83move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew5)
       (not_blocked seg_w1_142a_0_34 airplane_daew6)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_4xekd))
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
  ugly6721ugly604ugly756ugly920ugly935move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_daewh)
       (not_blocked seg_p108_0_76 airplane_daew5)
       (not_blocked seg_p108_0_76 airplane_daew6)
       (not_blocked seg_p108_0_76 airplane_cfbe1)
       (not_blocked seg_p108_0_76 airplane_4xekd))
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
  ugly6722ugly720ugly647ugly374ugly413startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly6723ugly792ugly736ugly563ugly377park_seg_p111_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly6724ugly595ugly813ugly569ugly469move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew5)
       (not_blocked seg_o1_117a_0_34 airplane_daew6)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_4xekd)
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
  ugly6725ugly597ugly69ugly772ugly852move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew5)
       (not_blocked seg_o1_c3b_0_60 airplane_daew6)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p112_0_76))
       (not_occupied seg_p112_0_76) (not (at-segment ?a seg_p112_0_76))
       (occupied seg_o1_c3b_0_60) (not (not_occupied seg_o1_c3b_0_60))
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (at-segment ?a seg_o1_c3b_0_60)))
 (:action
  ugly6726ugly328ugly908ugly695ugly428move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew5)
       (not_blocked seg_o1_c2c_0_34 airplane_daew6)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_4xekd)
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
 (:action ugly6727ugly825ugly311ugly232ugly234park_seg_p164_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action ugly6728ugly402ugly759ugly739ugly2startup_seg_n_a3d_0_60_south_medium
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
  ugly6729ugly719ugly322ugly671ugly188move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew5)
       (not_blocked seg_o1_109d_0_45 airplane_daew6)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_109d_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p132_0_75))
       (not_occupied seg_p132_0_75) (not (at-segment ?a seg_p132_0_75))
       (occupied seg_o1_109d_0_45) (not (not_occupied seg_o1_109d_0_45))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action
  ugly6730ugly945ugly743ugly147ugly561startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action ugly6731ugly133ugly724ugly913ugly654park_seg_p109_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action
  ugly6732ugly761ugly358ugly564ugly39move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_daewh)
       (not_blocked seg_n_a3c_0_60 airplane_daew5)
       (not_blocked seg_n_a3c_0_60 airplane_daew6)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3c_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_0_108))
       (not_occupied seg_n1_0_108) (not (at-segment ?a seg_n1_0_108))
       (occupied seg_n_a3c_0_60) (not (not_occupied seg_n_a3c_0_60))
       (blocked seg_n_a3c_0_60 ?a) (not (not_blocked seg_n_a3c_0_60 ?a))
       (at-segment ?a seg_n_a3c_0_60) (not (blocked seg_w1_c1a_0_60 ?a))
       (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action
  ugly6733ugly536ugly319ugly137ugly776move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_4xekd))
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
  ugly6734ugly427ugly777ugly445ugly910startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly6735ugly668ugly532ugly89ugly542startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly6736ugly183ugly595ugly813ugly569startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly6737ugly199ugly900ugly768ugly66move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_daewh)
       (not_blocked seg_p107_0_76 airplane_daew5)
       (not_blocked seg_p107_0_76 airplane_daew6)
       (not_blocked seg_p107_0_76 airplane_cfbe1)
       (not_blocked seg_p107_0_76 airplane_4xekd))
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
  ugly6738ugly359ugly221ugly848ugly512startup_seg_m_a9c_0_60_south_medium
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
  ugly6739ugly262ugly301ugly847ugly298move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew5)
       (not_blocked seg_o1_c1a_0_60 airplane_daew6)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_4xekd)
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
  ugly6740ugly814ugly454ugly549ugly120startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6741ugly409ugly334ugly652ugly259startup_seg_n_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly6742ugly118ugly282ugly471ugly907takeoff_seg_08l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action
  ugly6743ugly918ugly584ugly883ugly131startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly6744ugly230ugly14ugly490ugly162startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly6745ugly66ugly212ugly943ugly767startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly6746ugly882ugly124ugly675ugly275startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly6747ugly585ugly737ugly761ugly358park_seg_p110_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action
  ugly6748ugly873ugly773ugly75ugly330startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly6749ugly813ugly569ugly469ugly295move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew5)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew6)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6b_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6c_0_75))
       (not_occupied seg_n_a7a6c_0_75) (not (at-segment ?a seg_n_a7a6c_0_75))
       (occupied seg_n_a7a6b_0_75) (not (not_occupied seg_n_a7a6b_0_75))
       (blocked seg_n_a7a6b_0_75 ?a) (not (not_blocked seg_n_a7a6b_0_75 ?a))
       (at-segment ?a seg_n_a7a6b_0_75) (not (blocked seg_n_a7a6d_0_75 ?a))
       (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly6750ugly601ugly949ugly437ugly795startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly6751ugly16ugly65ugly845ugly503move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew5)
       (not_blocked seg_o1_116b_0_60 airplane_daew6)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_116b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p116_0_76))
       (not_occupied seg_p116_0_76) (not (at-segment ?a seg_p116_0_76))
       (occupied seg_o1_116b_0_60) (not (not_occupied seg_o1_116b_0_60))
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action ugly6752ugly277ugly289ugly592ugly341park_seg_p108_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action
  ugly6753ugly500ugly404ugly339ugly508startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly6754ugly247ugly451ugly522ugly365pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew5)
       (not_blocked seg_o1_102a_0_34 airplane_daew6)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_4xekd))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly6755ugly264ugly370ugly425ugly577startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly6756ugly201ugly839ugly171ugly685startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly6757ugly644ugly663ugly562ugly833startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly6758ugly361ugly237ugly233ugly81move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_4xekd)
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
  ugly6759ugly554ugly36ugly274ugly667startup_seg_m_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6b_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly6760ugly19ugly26ugly922ugly133startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly6761ugly787ugly547ugly825ugly311move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew5)
       (not_blocked seg_o1_109a_0_34 airplane_daew6)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_4xekd)
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
  ugly6762ugly380ugly271ugly762ugly836startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly6763ugly17ugly395ugly817ugly649startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly6764ugly598ugly560ugly928ugly525startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly6765ugly755ugly460ugly30ugly68move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_daewh)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew5)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew6)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe1)
       (not_blocked seg_08l_a2a3_0_970 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a_0_80))
       (not_occupied seg_08l_a2a_0_80) (not (at-segment ?a seg_08l_a2a_0_80))
       (occupied seg_08l_a2a3_0_970) (not (not_occupied seg_08l_a2a3_0_970))
       (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action
  ugly6766ugly28ugly104ugly369ugly600startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly6767ugly292ugly146ugly38ugly88move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_daewh)
       (not_blocked seg_08l_a4d_0_80 airplane_daew5)
       (not_blocked seg_08l_a4d_0_80 airplane_daew6)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a4d_0_80 airplane_4xekd))
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
  ugly6768ugly217ugly719ugly322ugly671move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_daewh)
       (not_blocked seg_p102_0_76 airplane_daew5)
       (not_blocked seg_p102_0_76 airplane_daew6)
       (not_blocked seg_p102_0_76 airplane_cfbe1)
       (not_blocked seg_p102_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102b_0_60))
       (not_occupied seg_o1_102b_0_60) (not (at-segment ?a seg_o1_102b_0_60))
       (occupied seg_p102_0_76) (not (not_occupied seg_p102_0_76))
       (blocked seg_p102_0_76 ?a) (not (not_blocked seg_p102_0_76 ?a))
       (at-segment ?a seg_p102_0_76) (not (blocked seg_o1_102a_0_34 ?a))
       (not_blocked seg_o1_102a_0_34 ?a) (not (blocked seg_o1_102c_0_34 ?a))
       (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly6769ugly86ugly21ugly194ugly444startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action ugly6770ugly557ugly71ugly832ugly725park_seg_p143_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly6771ugly48ugly916ugly217ugly719pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_4xekd))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly6772ugly684ugly190ugly125ugly438startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly6773ugly775ugly531ugly167ugly326startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action ugly6774ugly83ugly3ugly765ugly623park_seg_p131_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly6775ugly49ugly405ugly464ugly342startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action ugly6776ugly739ugly2ugly859ugly771startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly6777ugly446ugly884ugly945ugly743move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew5)
       (not_blocked seg_w1_163a_0_34 airplane_daew6)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_163a_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162c_0_34))
       (not_occupied seg_w1_162c_0_34) (not (at-segment ?a seg_w1_162c_0_34))
       (occupied seg_w1_163a_0_34) (not (not_occupied seg_w1_163a_0_34))
       (blocked seg_w1_163a_0_34 ?a) (not (not_blocked seg_w1_163a_0_34 ?a))
       (at-segment ?a seg_w1_163a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_162a_0_34 ?a))
       (not_blocked seg_w1_162a_0_34 ?a) (not (blocked seg_w1_162b_0_45 ?a))
       (not_blocked seg_w1_162b_0_45 ?a)))
 (:action ugly6778ugly360ugly27ugly480ugly441startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly6779ugly101ugly554ugly36ugly274startup_seg_08l_a4b_0_161_245_south_medium
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
  ugly6780ugly176ugly391ugly957ugly574startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly6781ugly70ugly590ugly103ugly778move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_daewh)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew5)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew6)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a6a8a_0_115 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8b_0_75))
       (not_occupied seg_n_a6a8b_0_75) (not (at-segment ?a seg_n_a6a8b_0_75))
       (occupied seg_n_a6a8a_0_115) (not (not_occupied seg_n_a6a8a_0_115))
       (blocked seg_n_a6a8a_0_115 ?a) (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly6782ugly816ugly888ugly22ugly414startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly6783ugly708ugly175ugly129ugly158move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_daewh)
       (not_blocked seg_p110_0_76 airplane_daew5)
       (not_blocked seg_p110_0_76 airplane_daew6)
       (not_blocked seg_p110_0_76 airplane_cfbe1)
       (not_blocked seg_p110_0_76 airplane_4xekd))
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
  ugly6784ugly623ugly539ugly586ugly214startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly6785ugly142ugly783ugly320ugly758move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_daewh)
       (not_blocked seg_n_n2b_0_60 airplane_daew5)
       (not_blocked seg_n_n2b_0_60 airplane_daew6)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe1)
       (not_blocked seg_n_n2b_0_60 airplane_4xekd)
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
  ugly6786ugly342ugly536ugly319ugly137startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly6787ugly461ugly779ugly794ugly555move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew5)
       (not_blocked seg_o1_111a_0_34 airplane_daew6)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111a_0_34 airplane_4xekd)
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
  ugly6788ugly932ugly721ugly316ugly491move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_daewh)
       (not_blocked seg_p119_0_76 airplane_daew5)
       (not_blocked seg_p119_0_76 airplane_daew6)
       (not_blocked seg_p119_0_76 airplane_cfbe1)
       (not_blocked seg_p119_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4b_0_60))
       (not_occupied seg_o1_c4b_0_60) (not (at-segment ?a seg_o1_c4b_0_60))
       (occupied seg_p119_0_76) (not (not_occupied seg_p119_0_76))
       (blocked seg_p119_0_76 ?a) (not (not_blocked seg_p119_0_76 ?a))
       (at-segment ?a seg_p119_0_76) (not (blocked seg_o1_c4a_0_34 ?a))
       (not_blocked seg_o1_c4a_0_34 ?a) (not (blocked seg_o1_c4c_0_80 ?a))
       (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly6789ugly227ugly51ugly524ugly128move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew5)
       (not_blocked seg_w1_c3c_0_48 airplane_daew6)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_w1_c3c_0_48 airplane_4xekd))
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
  ugly6790ugly764ugly401ugly507ugly797startup_seg_m_a8d_0_120_934_south_medium
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
  ugly6791ugly460ugly30ugly68ugly24move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew5)
       (not_blocked seg_o1_104c_0_60 airplane_daew6)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_4xekd)
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
  ugly6792ugly442ugly530ugly408ugly709move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew5)
       (not_blocked seg_o1_108d_0_45 airplane_daew6)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_108d_0_45 airplane_4xekd)
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
  ugly6793ugly382ugly950ugly937ugly520startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly6794ugly714ugly116ugly98ugly46move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew5)
       (not_blocked seg_o1_108b_0_60 airplane_daew6)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_108b_0_60 airplane_4xekd)
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
  ugly6795ugly868ugly526ugly238ugly169startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly6796ugly157ugly513ugly782ugly609startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly6797ugly278ugly620ugly443ugly337move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c1b_0_34 airplane_4xekd)
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
  ugly6798ugly628ugly820ugly876ugly106startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly6799ugly310ugly90ugly397ugly102startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly6800ugly852ugly264ugly370ugly425startup_seg_o1_111c_0_34_south_medium
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
  ugly6801ugly438ugly707ugly566ugly348pushback_seg_p141_0_75_seg_w1_141b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew5)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_141b_0_45 airplane_4xekd))
  :effect
  (and (not (occupied seg_p141_0_75)) (not_occupied seg_p141_0_75)
       (not (blocked seg_p141_0_75 ?a)) (not_blocked seg_p141_0_75 ?a)
       (not (at-segment ?a seg_p141_0_75)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action
  ugly6802ugly175ugly129ugly158ugly247startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly6803ugly534ugly293ugly665ugly41move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7e_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7f_0_75))
       (not_occupied seg_n_a4a7f_0_75) (not (at-segment ?a seg_n_a4a7f_0_75))
       (occupied seg_n_a4a7e_0_75) (not (not_occupied seg_n_a4a7e_0_75))
       (blocked seg_n_a4a7e_0_75 ?a) (not (not_blocked seg_n_a4a7e_0_75 ?a))
       (at-segment ?a seg_n_a4a7e_0_75) (not (blocked seg_n_a7c_0_60 ?a))
       (not_blocked seg_n_a7c_0_60 ?a)))
 (:action
  ugly6804ugly39ugly9ugly603ugly19move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_daewh)
       (not_blocked seg_08l_a3a_0_80 airplane_daew5)
       (not_blocked seg_08l_a3a_0_80 airplane_daew6)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a3a_0_80 airplane_4xekd)
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
 (:action
  ugly6805ugly748ugly424ugly731ugly204startup_seg_n_a3a_0_60_south_medium
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
  ugly6806ugly897ugly228ugly376ugly815startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly6807ugly355ugly100ugly84ugly455move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew5)
       (not_blocked seg_o1_c4b_0_60 airplane_daew6)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c4b_0_60 airplane_4xekd)
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
 (:action ugly6808ugly1ugly741ugly632ugly168startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly6809ugly820ugly876ugly106ugly939move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew5)
       (not_blocked seg_c1_n2b_0_80 airplane_daew6)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_4xekd)
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
  ugly6810ugly18ugly192ugly349ugly189startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly6811ugly771ugly599ugly262ugly301startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly6812ugly222ugly164ugly748ugly424startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly6813ugly678ugly744ugly132ugly91startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly6814ugly225ugly625ugly31ugly634move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew5)
       (not_blocked seg_o1_c3c_0_48 airplane_daew6)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
       (not_blocked seg_o1_c3c_0_48 airplane_4xekd)
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
  ugly6815ugly914ugly7ugly318ugly659startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly6816ugly655ugly345ugly598ugly560startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly6817ugly864ugly290ugly110ugly682startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly6818ugly228ugly376ugly815ugly714move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_daewh)
       (not_blocked seg_p152_0_75 airplane_daew5)
       (not_blocked seg_p152_0_75 airplane_daew6)
       (not_blocked seg_p152_0_75 airplane_cfbe1)
       (not_blocked seg_p152_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152b_0_45))
       (not_occupied seg_w1_152b_0_45) (not (at-segment ?a seg_w1_152b_0_45))
       (occupied seg_p152_0_75) (not (not_occupied seg_p152_0_75))
       (blocked seg_p152_0_75 ?a) (not (not_blocked seg_p152_0_75 ?a))
       (at-segment ?a seg_p152_0_75) (not (blocked seg_w1_152a_0_34 ?a))
       (not_blocked seg_w1_152a_0_34 ?a) (not (blocked seg_w1_152c_0_34 ?a))
       (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly6819ugly577ugly953ugly410ugly240startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly6820ugly823ugly359ugly221ugly848startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action ugly6821ugly254ugly95ugly231ugly416startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action ugly6822ugly508ugly394ugly335ugly843park_seg_p152_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly6823ugly88ugly28ugly104ugly369startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly6824ugly215ugly868ugly526ugly238move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew5)
       (not_blocked seg_o1_c1a_0_60 airplane_daew6)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c1a_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p101_0_76))
       (not_occupied seg_p101_0_76) (not (at-segment ?a seg_p101_0_76))
       (occupied seg_o1_c1a_0_60) (not (not_occupied seg_o1_c1a_0_60))
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))
       (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly6825ugly367ugly925ugly657ugly118move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_daewh)
       (not_blocked seg_p115_0_76 airplane_daew5)
       (not_blocked seg_p115_0_76 airplane_daew6)
       (not_blocked seg_p115_0_76 airplane_cfbe1)
       (not_blocked seg_p115_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115b_0_60))
       (not_occupied seg_o1_115b_0_60) (not (at-segment ?a seg_o1_115b_0_60))
       (occupied seg_p115_0_76) (not (not_occupied seg_p115_0_76))
       (blocked seg_p115_0_76 ?a) (not (not_blocked seg_p115_0_76 ?a))
       (at-segment ?a seg_p115_0_76) (not (blocked seg_o1_115a_0_34 ?a))
       (not_blocked seg_o1_115a_0_34 ?a) (not (blocked seg_o1_115c_0_34 ?a))
       (not_blocked seg_o1_115c_0_34 ?a)))
 (:action
  ugly6826ugly699ugly699ugly699ugly699startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly6827ugly200ugly373ugly644ugly663startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly6828ugly723ugly384ugly747ugly255startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly6829ugly830ugly239ugly35ugly543startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action
  ugly6830ugly682ugly858ugly321ugly786startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly6831ugly481ugly141ugly461ugly779startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly6832ugly789ugly505ugly15ugly412startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly6833ugly269ugly798ugly200ugly373startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action ugly6834ugly888ugly22ugly414ugly635park_seg_p102_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly6835ugly584ugly883ugly131ugly930startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly6836ugly523ugly467ugly515ugly727move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew5)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_4xekd)
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
 (:action
  ugly6837ugly241ugly517ugly694ugly871move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew5)
       (not_blocked seg_o1_104a_0_34 airplane_daew6)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_104a_0_34 airplane_4xekd)
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
 (:action
  ugly6838ugly44ugly686ugly224ugly804move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe1)
       (not_blocked seg_n_a4a7f_0_75 airplane_4xekd))
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
  ugly6839ugly921ugly514ugly936ugly732startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly6840ugly769ugly706ugly495ugly770startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly6841ugly529ugly449ugly881ugly534move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew5)
       (not_blocked seg_o1_118a_0_34 airplane_daew6)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_4xekd))
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
  ugly6842ugly955ugly906ugly822ugly646move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_daewh)
       (not_blocked seg_n1_0_108 airplane_daew5)
       (not_blocked seg_n1_0_108 airplane_daew6)
       (not_blocked seg_n1_0_108 airplane_cfbe1)
       (not_blocked seg_n1_0_108 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1a_0_60))
       (not_occupied seg_w1_c1a_0_60) (not (at-segment ?a seg_w1_c1a_0_60))
       (occupied seg_n1_0_108) (not (not_occupied seg_n1_0_108))
       (blocked seg_n1_0_108 ?a) (not (not_blocked seg_n1_0_108 ?a))
       (at-segment ?a seg_n1_0_108) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)))
 (:action
  ugly6843ugly324ugly468ugly148ugly356startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly6844ugly398ugly371ugly398ugly371startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly6845ugly166ugly662ugly344ugly689startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly6846ugly397ugly102ugly905ugly94move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_daewh)
       (not_blocked seg_p118_0_76 airplane_daew5)
       (not_blocked seg_p118_0_76 airplane_daew6)
       (not_blocked seg_p118_0_76 airplane_cfbe1)
       (not_blocked seg_p118_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118b_0_60))
       (not_occupied seg_o1_118b_0_60) (not (at-segment ?a seg_o1_118b_0_60))
       (occupied seg_p118_0_76) (not (not_occupied seg_p118_0_76))
       (blocked seg_p118_0_76 ?a) (not (not_blocked seg_p118_0_76 ?a))
       (at-segment ?a seg_p118_0_76) (not (blocked seg_o1_118a_0_34 ?a))
       (not_blocked seg_o1_118a_0_34 ?a) (not (blocked seg_o1_118c_0_34 ?a))
       (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly6847ugly947ugly516ugly206ugly626startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly6848ugly636ugly423ugly378ugly687move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew5)
       (not_blocked seg_o1_116c_0_34 airplane_daew6)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117a_0_34))
       (not_occupied seg_o1_117a_0_34) (not (at-segment ?a seg_o1_117a_0_34))
       (occupied seg_o1_116c_0_34) (not (not_occupied seg_o1_116c_0_34))
       (blocked seg_o1_116c_0_34 ?a) (not (not_blocked seg_o1_116c_0_34 ?a))
       (at-segment ?a seg_o1_116c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_117b_0_60 ?a))
       (not_blocked seg_o1_117b_0_60 ?a) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a)))
 (:action ugly6849ugly224ugly804ugly58ugly187startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6850ugly561ugly728ugly640ugly300startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action
  ugly6851ugly525ugly897ugly228ugly376startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly6852ugly75ugly330ugly716ugly570startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly6853ugly406ugly510ugly720ugly647startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly6854ugly512ugly805ugly544ugly872startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly6855ugly440ugly203ugly723ugly384startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly6856ugly137ugly776ugly172ugly752startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly6857ugly317ugly101ugly554ugly36move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew5)
       (not_blocked seg_o1_116a_0_34 airplane_daew6)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_116a_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115c_0_34))
       (not_occupied seg_o1_115c_0_34) (not (at-segment ?a seg_o1_115c_0_34))
       (occupied seg_o1_116a_0_34) (not (not_occupied seg_o1_116a_0_34))
       (blocked seg_o1_116a_0_34 ?a) (not (not_blocked seg_o1_116a_0_34 ?a))
       (at-segment ?a seg_o1_116a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_115a_0_34 ?a))
       (not_blocked seg_o1_115a_0_34 ?a) (not (blocked seg_o1_115b_0_60 ?a))
       (not_blocked seg_o1_115b_0_60 ?a)))
 (:action ugly6858ugly63ugly834ugly166ugly662startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6859ugly423ugly378ugly687ugly286startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly6860ugly695ugly428ugly220ugly696startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly6861ugly863ugly96ugly803ugly55park_seg_p118_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly6862ugly848ugly512ugly805ugly544startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly6863ugly946ugly343ugly763ugly44startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly6864ugly853ugly518ugly655ugly345startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6865ugly31ugly634ugly279ugly108move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_daewh)
       (not_blocked seg_n_a6b_0_60 airplane_daew5)
       (not_blocked seg_n_a6b_0_60 airplane_daew6)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe1)
       (not_blocked seg_n_a6b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8a_0_115))
       (not_occupied seg_n_a6a8a_0_115) (not (at-segment ?a seg_n_a6a8a_0_115))
       (occupied seg_n_a6b_0_60) (not (not_occupied seg_n_a6b_0_60))
       (blocked seg_n_a6b_0_60 ?a) (not (not_blocked seg_n_a6b_0_60 ?a))
       (at-segment ?a seg_n_a6b_0_60) (not (blocked seg_n_a6a8b_0_75 ?a))
       (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action
  ugly6866ugly132ugly91ugly427ugly777startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly6867ugly669ugly528ugly749ugly521startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action ugly6868ugly935ugly223ugly5ugly278startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6869ugly248ugly601ugly949ugly437startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly6870ugly297ugly63ugly834ugly166startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly6871ugly10ugly34ugly751ugly130startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly6872ugly174ugly304ugly430ugly511move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_4xekd)
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
  ugly6873ugly465ugly575ugly362ugly792startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly6874ugly503ugly283ugly80ugly704startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly6875ugly725ugly363ugly472ugly678startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action
  ugly6876ugly574ugly865ugly684ugly190move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew5)
       (not_blocked seg_w1_154b_0_45 airplane_daew6)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_154b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p154_0_75))
       (not_occupied seg_p154_0_75) (not (at-segment ?a seg_p154_0_75))
       (occupied seg_w1_154b_0_45) (not (not_occupied seg_w1_154b_0_45))
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action
  ugly6877ugly280ugly760ugly860ugly465startup_seg_o1_111b_0_60_south_medium
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
  ugly6878ugly104ugly369ugly600ugly673pushback_seg_w1_141c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew5)
       (not_blocked seg_w1_142a_0_34 airplane_daew6)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142a_0_34 airplane_4xekd))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly6879ugly226ugly886ugly156ugly144startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly6880ugly238ugly169ugly433ugly64move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_daewh)
       (not_blocked seg_p109_0_76 airplane_daew5)
       (not_blocked seg_p109_0_76 airplane_daew6)
       (not_blocked seg_p109_0_76 airplane_cfbe1)
       (not_blocked seg_p109_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_109b_0_60))
       (not_occupied seg_o1_109b_0_60) (not (at-segment ?a seg_o1_109b_0_60))
       (occupied seg_p109_0_76) (not (not_occupied seg_p109_0_76))
       (blocked seg_p109_0_76 ?a) (not (not_blocked seg_p109_0_76 ?a))
       (at-segment ?a seg_p109_0_76) (not (blocked seg_o1_109a_0_34 ?a))
       (not_blocked seg_o1_109a_0_34 ?a) (not (blocked seg_o1_109c_0_34 ?a))
       (not_blocked seg_o1_109c_0_34 ?a) (not (blocked seg_o1_109d_0_45 ?a))
       (not_blocked seg_o1_109d_0_45 ?a)))
 (:action ugly6881ugly123ugly272ugly389ugly476park_seg_p161_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly6882ugly949ugly437ugly795ugly769startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly6883ugly491ugly314ugly83ugly3startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action
  ugly6884ugly685ugly611ugly209ugly924move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew5)
       (not_blocked seg_w1_152b_0_45 airplane_daew6)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_152b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p152_0_75))
       (not_occupied seg_p152_0_75) (not (at-segment ?a seg_p152_0_75))
       (occupied seg_w1_152b_0_45) (not (not_occupied seg_w1_152b_0_45))
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action ugly6885ugly59ugly643ugly242ugly711park_seg_p119_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action ugly6886ugly98ugly46ugly222ugly164startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly6887ugly432ugly705ugly159ugly107move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew5)
       (not_blocked seg_o1_103a_0_34 airplane_daew6)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_103a_0_34 airplane_4xekd)
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
 (:action ugly6888ugly731ugly204ugly701ugly666park_seg_p117_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action ugly6889ugly788ugly591ugly331ugly890park_seg_p131_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly6890ugly559ugly119ugly230ugly14startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly6891ugly282ugly471ugly907ugly325startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly6892ugly155ugly294ugly712ugly828move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew5)
       (not_blocked seg_o1_c2c_0_34 airplane_daew6)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_c2c_0_34 airplane_4xekd))
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
  ugly6893ugly621ugly241ugly517ugly694startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly6894ugly513ugly782ugly609ugly672startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly6895ugly817ugly649ugly668ugly532move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew5)
       (not_blocked seg_w1_143b_0_45 airplane_daew6)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p143_0_75))
       (not_occupied seg_p143_0_75) (not (at-segment ?a seg_p143_0_75))
       (occupied seg_w1_143b_0_45) (not (not_occupied seg_w1_143b_0_45))
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action
  ugly6896ugly716ugly570ugly452ugly244startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly6897ugly906ugly822ugly646ugly8move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew5)
       (not_blocked seg_o1_c1c_0_80 airplane_daew6)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c1c_0_80 airplane_4xekd))
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
  ugly6898ugly216ugly550ugly866ugly698startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6899ugly239ugly35ugly543ugly790move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew5)
       (not_blocked seg_o1_115b_0_60 airplane_daew6)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_115b_0_60 airplane_4xekd)
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
  ugly6900ugly486ugly941ugly955ugly906startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly6901ugly114ugly628ugly820ugly876move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew5)
       (not_blocked seg_w1_151a_0_34 airplane_daew6)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151a_0_34 airplane_4xekd))
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
  ugly6902ugly832ugly725ugly363ugly472startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly6903ugly284ugly713ugly948ugly324startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action
  ugly6904ugly696ugly442ugly530ugly408startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly6905ugly412ugly901ugly351ugly670startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly6906ugly443ugly337ugly186ugly636startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly6907ugly185ugly929ugly426ugly284startup_seg_m_a4a_0_120_934_south_medium
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
  ugly6908ugly392ugly624ugly546ugly276startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly6909ugly281ugly45ugly861ugly440move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew5)
       (not_blocked seg_o1_104b_0_60 airplane_daew6)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104b_0_60 airplane_4xekd)
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
 (:action
  ugly6910ugly178ugly621ugly241ugly517startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly6911ugly377ugly581ugly691ugly70startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action
  ugly6912ugly737ugly761ugly358ugly564move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_daewh)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew5)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew6)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe1)
       (not_blocked seg_a8_b_0_80_6226 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a8_b_1_0_79_7559))
       (not_occupied seg_a8_b_1_0_79_7559)
       (not (at-segment ?a seg_a8_b_1_0_79_7559)) (occupied seg_a8_b_0_80_6226)
       (not (not_occupied seg_a8_b_0_80_6226)) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))
       (at-segment ?a seg_a8_b_0_80_6226) (not (blocked seg_a8_a_0_157_785 ?a))
       (not_blocked seg_a8_a_0_157_785 ?a)))
 (:action
  ugly6913ugly899ugly730ugly926ugly76startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly6914ugly926ugly76ugly484ugly579move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew5)
       (not_blocked seg_w1_162a_0_34 airplane_daew6)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162a_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161c_0_34))
       (not_occupied seg_w1_161c_0_34) (not (at-segment ?a seg_w1_161c_0_34))
       (occupied seg_w1_162a_0_34) (not (not_occupied seg_w1_162a_0_34))
       (blocked seg_w1_162a_0_34 ?a) (not (not_blocked seg_w1_162a_0_34 ?a))
       (at-segment ?a seg_w1_162a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_161a_0_34 ?a))
       (not_blocked seg_w1_161a_0_34 ?a) (not (blocked seg_w1_161b_0_45 ?a))
       (not_blocked seg_w1_161b_0_45 ?a)))
 (:action ugly6915ugly915ugly52ugly509ugly809startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly6916ugly97ugly40ugly435ugly958move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew5)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew6)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6c_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6d_0_75))
       (not_occupied seg_n_a7a6d_0_75) (not (at-segment ?a seg_n_a7a6d_0_75))
       (occupied seg_n_a7a6c_0_75) (not (not_occupied seg_n_a7a6c_0_75))
       (blocked seg_n_a7a6c_0_75 ?a) (not (not_blocked seg_n_a7a6c_0_75 ?a))
       (at-segment ?a seg_n_a7a6c_0_75) (not (blocked seg_n_a6c_0_60 ?a))
       (not_blocked seg_n_a6c_0_60 ?a)))
 (:action
  ugly6917ugly246ugly406ugly510ugly720startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly6918ugly2ugly859ugly771ugly599move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew5)
       (not_blocked seg_o1_111d_0_45 airplane_daew6)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
       (not_blocked seg_o1_111d_0_45 airplane_4xekd)
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
  ugly6919ugly74ugly20ugly381ugly870startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly6920ugly38ugly88ugly28ugly104startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly6921ugly728ugly640ugly300ugly482startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly6922ugly72ugly851ugly618ugly918park_seg_p134_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly6923ugly627ugly367ugly925ugly657move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew5)
       (not_blocked seg_w1_153c_0_34 airplane_daew6)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_4xekd)
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
  ugly6924ugly928ugly525ugly897ugly228startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly6925ugly697ugly420ugly923ugly253move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew5)
       (not_blocked seg_w1_153a_0_34 airplane_daew6)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153a_0_34 airplane_4xekd)
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
  ugly6926ugly738ugly766ugly215ugly868startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly6927ugly890ugly538ugly446ugly884startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly6928ugly752ugly933ugly568ugly898startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action
  ugly6929ugly657ugly118ugly282ugly471startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly6930ugly41ugly59ugly643ugly242startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action ugly6931ugly749ugly521ugly578ugly29startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6932ugly84ugly455ugly313ugly841startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly6933ugly455ugly313ugly841ugly734startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly6934ugly340ugly812ugly199ugly900startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly6935ugly801ugly350ugly576ugly245startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly6936ugly531ugly167ugly326ugly849startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly6937ugly204ugly701ugly666ugly629startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action ugly6938ugly141ugly461ugly779ugly794park_seg_p132_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action ugly6939ugly865ugly684ugly190ugly125park_seg_p162_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly6940ugly779ugly794ugly555ugly256move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_4xekd))
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
  ugly6941ugly435ugly958ugly53ugly207startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly6942ugly401ugly507ugly797ugly787startup_seg_o1_109d_0_45_south_medium
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
  ugly6943ugly314ugly83ugly3ugly765startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly6944ugly777ugly445ugly910ugly361move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109c_0_34 airplane_4xekd)
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
  ugly6945ugly122ugly340ugly812ugly199startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly6946ugly680ugly273ugly862ugly702move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew5)
       (not_blocked seg_o1_c2b_0_60 airplane_daew6)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2b_0_60 airplane_4xekd)
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
  ugly6947ugly413ugly869ugly831ugly364startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly6948ugly861ugly440ugly203ugly723startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly6949ugly804ugly58ugly187ugly610startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly6950ugly744ugly132ugly91ugly427startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly6951ugly844ugly431ugly249ugly434startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly6952ugly950ugly937ugly520ugly456park_seg_p101_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action
  ugly6953ugly333ugly254ugly95ugly231startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly6954ugly439ugly692ugly854ugly679move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe1)
       (not_blocked seg_n_a2a3a_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3b_0_75))
       (not_occupied seg_n_a2a3b_0_75) (not (at-segment ?a seg_n_a2a3b_0_75))
       (occupied seg_n_a2a3a_0_75) (not (not_occupied seg_n_a2a3a_0_75))
       (blocked seg_n_a2a3a_0_75 ?a) (not (not_blocked seg_n_a2a3a_0_75 ?a))
       (at-segment ?a seg_n_a2a3a_0_75) (not (blocked seg_n_a2a3c_0_75 ?a))
       (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action
  ugly6955ugly146ugly38ugly88ugly28move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew5)
       (not_blocked seg_w1_143c_0_60 airplane_daew6)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
       (not_blocked seg_w1_143c_0_60 airplane_4xekd)
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
  ugly6956ugly140ugly893ugly477ugly225startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly6957ugly34ugly751ugly130ugly775startup_seg_o1_108d_0_45_south_medium
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
  ugly6958ugly870ugly500ugly404ugly339startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6959ugly350ugly576ugly245ugly745startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly6960ugly556ugly269ugly798ugly200startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly6961ugly190ugly125ugly438ugly707startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6962ugly741ugly632ugly168ugly393move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_111c_0_34 airplane_4xekd)
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
  ugly6963ugly673ugly317ugly101ugly554move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daewh)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew5)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew6)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe1)
       (not_blocked seg_08l_a7b_0_161_245 airplane_4xekd)
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
 (:action
  ugly6964ugly332ugly154ugly475ugly366move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew5)
       (not_blocked seg_w1_c3a_0_34 airplane_daew6)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c3a_0_34 airplane_4xekd))
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
  ugly6965ugly78ugly917ugly270ugly415move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew5)
       (not_blocked seg_o1_104c_0_60 airplane_daew6)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_4xekd)
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
  ugly6966ugly468ugly148ugly356ugly956startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly6967ugly815ugly714ugly116ugly98move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a6a8d_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8e_0_75))
       (not_occupied seg_n_a6a8e_0_75) (not (at-segment ?a seg_n_a6a8e_0_75))
       (occupied seg_n_a6a8d_0_75) (not (not_occupied seg_n_a6a8d_0_75))
       (blocked seg_n_a6a8d_0_75 ?a) (not (not_blocked seg_n_a6a8d_0_75 ?a))
       (at-segment ?a seg_n_a6a8d_0_75) (not (blocked seg_n_a6a8f_0_75 ?a))
       (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action
  ugly6968ugly444ugly754ugly710ugly297move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_daewh)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew5)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew6)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe1)
       (not_blocked seg_n_a4a7a_0_115 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7b_0_75))
       (not_occupied seg_n_a4a7b_0_75) (not (at-segment ?a seg_n_a4a7b_0_75))
       (occupied seg_n_a4a7a_0_115) (not (not_occupied seg_n_a4a7a_0_115))
       (blocked seg_n_a4a7a_0_115 ?a) (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action
  ugly6969ugly839ugly171ugly685ugly611move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew5)
       (not_blocked seg_o1_c2a_0_60 airplane_daew6)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_4xekd)
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
  ugly6970ugly605ugly882ugly124ugly675move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew5)
       (not_blocked seg_o1_115c_0_34 airplane_daew6)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116a_0_34))
       (not_occupied seg_o1_116a_0_34) (not (at-segment ?a seg_o1_116a_0_34))
       (occupied seg_o1_115c_0_34) (not (not_occupied seg_o1_115c_0_34))
       (blocked seg_o1_115c_0_34 ?a) (not (not_blocked seg_o1_115c_0_34 ?a))
       (at-segment ?a seg_o1_115c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_116b_0_60 ?a))
       (not_blocked seg_o1_116b_0_60 ?a) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly6971ugly610ugly850ugly150ugly459startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action
  ugly6972ugly305ugly48ugly916ugly217startup_seg_m_a4d_0_60_south_medium
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
  ugly6973ugly102ugly905ugly94ugly306move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_daewh)
       (not_blocked seg_n_a8a_0_60 airplane_daew5)
       (not_blocked seg_n_a8a_0_60 airplane_daew6)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8a_0_60 airplane_4xekd))
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
  ugly6974ugly892ugly183ugly595ugly813startup_seg_o1_111a_0_34_south_medium
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
  ugly6975ugly506ugly497ugly715ugly266startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly6976ugly462ugly114ugly628ugly820startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly6977ugly253ugly121ugly892ugly183startup_seg_o1_c3d_0_60_south_medium
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
  ugly6978ugly942ugly307ugly899ugly730startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly6979ugly234ugly458ugly911ugly559move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew5)
       (not_blocked seg_w1_154a_0_34 airplane_daew6)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_4xekd))
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
  ugly6980ugly22ugly414ugly635ugly486startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly6981ugly337ugly186ugly636ugly423startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly6982ugly593ugly57ugly807ugly421startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly6983ugly835ugly552ugly309ugly87move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_4xekd)
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
  ugly6984ugly11ugly612ugly99ugly545startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly6985ugly271ugly762ugly836ugly738startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly6986ugly762ugly836ugly738ugly766move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew5)
       (not_blocked seg_o1_109a_0_34 airplane_daew6)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_109a_0_34 airplane_4xekd))
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
  ugly6987ugly244ugly504ugly903ugly708move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew5)
       (not_blocked seg_c1_n2c_0_60 airplane_daew6)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2c_0_60 airplane_4xekd)
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
  ugly6988ugly913ugly654ugly548ugly268startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly6989ugly940ugly537ugly380ugly271startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly6990ugly32ugly614ugly105ugly60park_seg_p153_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action ugly6991ugly3ugly765ugly623ugly539startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly6992ugly196ugly750ugly810ugly1startup_seg_m_a7c_0_60_south_medium
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
  ugly6993ugly838ugly496ugly399ugly288startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly6994ugly206ugly626ugly693ugly808startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly6995ugly952ugly328ugly908ugly695park_seg_p161_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action
  ugly6996ugly430ugly511ugly229ugly329move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110c_0_34 airplane_4xekd)
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
  ugly6997ugly630ugly519ugly811ugly56startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly6998ugly93ugly597ugly69ugly772startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly6999ugly209ugly924ugly109ugly417startup_seg_o1_108b_0_60_south_medium
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
  ugly7000ugly77ugly835ugly552ugly309move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew5)
       (not_blocked seg_w1_142b_0_45 airplane_daew6)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_142b_0_45 airplane_4xekd)
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
  ugly7001ugly303ugly653ugly336ugly493move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew5)
       (not_blocked seg_w1_164a_0_34 airplane_daew6)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164a_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163c_0_34))
       (not_occupied seg_w1_163c_0_34) (not (at-segment ?a seg_w1_163c_0_34))
       (occupied seg_w1_164a_0_34) (not (not_occupied seg_w1_164a_0_34))
       (blocked seg_w1_164a_0_34 ?a) (not (not_blocked seg_w1_164a_0_34 ?a))
       (at-segment ?a seg_w1_164a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_163a_0_34 ?a))
       (not_blocked seg_w1_163a_0_34 ?a) (not (blocked seg_w1_163b_0_45 ?a))
       (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly7002ugly143ugly690ugly755ugly460move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_daewh)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew5)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew6)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe1)
       (not_blocked seg_08l_a6a7_0_450 airplane_4xekd)
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
  ugly7003ugly126ugly602ugly608ugly97move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_daewh)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew5)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew6)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe1)
       (not_blocked seg_m_a8d_0_120_934 airplane_4xekd))
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
  ugly7004ugly345ugly598ugly560ugly928startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly7005ugly903ugly708ugly175ugly129move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew5)
       (not_blocked seg_w1_162c_0_34 airplane_daew6)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_4xekd)
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
  ugly7006ugly194ugly444ugly754ugly710move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew5)
       (not_blocked seg_o1_117b_0_60 airplane_daew6)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_117b_0_60 airplane_4xekd)
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
  ugly7007ugly352ugly631ugly448ugly645startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly7008ugly60ugly400ugly585ugly737startup_seg_m_a6c_0_60_south_medium
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
  ugly7009ugly558ugly896ugly889ugly11startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly7010ugly590ugly103ugly778ugly49startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly7011ugly33ugly483ugly830ugly239move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_daewh)
       (not_blocked seg_09l_0_80 airplane_daew5)
       (not_blocked seg_09l_0_80 airplane_daew6)
       (not_blocked seg_09l_0_80 airplane_cfbe1)
       (not_blocked seg_09l_0_80 airplane_4xekd)
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
  ugly7012ugly344ugly689ugly347ugly10move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_daewh)
       (not_blocked seg_08l_a9c_0_80 airplane_daew5)
       (not_blocked seg_08l_a9c_0_80 airplane_daew6)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a9c_0_80 airplane_4xekd))
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
  ugly7013ugly827ugly353ugly265ugly303startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly7014ugly767ugly915ugly52ugly509startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action
  ugly7015ugly607ugly819ugly360ugly27startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly7016ugly522ugly365ugly323ugly780startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly7017ugly389ugly476ugly429ugly909startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly7018ugly768ugly66ugly212ugly943startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly7019ugly121ugly892ugly183ugly595startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly7020ugly953ugly410ugly240ugly940startup_seg_o1_109a_0_34_south_medium
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
  ugly7021ugly308ugly136ugly816ugly888move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_daewh)
       (not_blocked seg_08l_a2b_0_80 airplane_daew5)
       (not_blocked seg_08l_a2b_0_80 airplane_daew6)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2b_0_80 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_a_0_90))
       (not_occupied seg_a2_a_0_90) (not (at-segment ?a seg_a2_a_0_90))
       (occupied seg_08l_a2b_0_80) (not (not_occupied seg_08l_a2b_0_80))
       (blocked seg_08l_a2b_0_80 ?a) (not (not_blocked seg_08l_a2b_0_80 ?a))
       (at-segment ?a seg_08l_a2b_0_80) (not (blocked seg_a2_b_0_90 ?a))
       (not_blocked seg_a2_b_0_90 ?a)))
 (:action ugly7022ugly819ugly360ugly27ugly480startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly7023ugly13ugly840ugly180ugly529park_seg_p163_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly7024ugly270ugly415ugly198ugly633startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly7025ugly393ugly261ugly703ugly793startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly7026ugly334ugly652ugly259ugly855startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly7027ugly694ugly871ugly201ugly839move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew5)
       (not_blocked seg_o1_102a_0_34 airplane_daew6)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102a_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1b_0_34))
       (not_occupied seg_o1_c1b_0_34) (not (at-segment ?a seg_o1_c1b_0_34))
       (occupied seg_o1_102a_0_34) (not (not_occupied seg_o1_102a_0_34))
       (blocked seg_o1_102a_0_34 ?a) (not (not_blocked seg_o1_102a_0_34 ?a))
       (at-segment ?a seg_o1_102a_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_o1_c1a_0_60 ?a))
       (not_blocked seg_o1_c1a_0_60 ?a) (not (blocked seg_o1_c1c_0_80 ?a))
       (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action ugly7028ugly519ugly811ugly56ugly683startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly7029ugly50ugly251ugly113ugly571startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly7030ugly745ugly462ugly114ugly628startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly7031ugly617ugly463ugly422ugly248startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly7032ugly307ugly899ugly730ugly926move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_daewh)
       (not_blocked seg_w1_c1b_0_60 airplane_daew5)
       (not_blocked seg_w1_c1b_0_60 airplane_daew6)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe1)
       (not_blocked seg_w1_c1b_0_60 airplane_4xekd))
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
  ugly7033ugly274ugly667ugly757ugly658startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly7034ugly650ugly589ugly161ugly260startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly7035ugly821ugly111ugly157ugly513startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action
  ugly7036ugly904ugly613ugly588ugly781move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_4xekd))
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
  ugly7037ugly346ugly86ugly21ugly194startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action ugly7038ugly837ugly396ugly846ugly79park_seg_p162_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly7039ugly58ugly187ugly610ugly850move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew5)
       (not_blocked seg_w1_161c_0_34 airplane_daew6)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_161c_0_34 airplane_4xekd)
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
  ugly7040ugly782ugly609ugly672ugly615startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly7041ugly348ugly315ugly676ugly77startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly7042ugly520ugly456ugly474ugly202move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew5)
       (not_blocked seg_o1_c4c_0_80 airplane_daew6)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
       (not_blocked seg_o1_c4c_0_80 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_s6a_0_80))
       (not_occupied seg_c4_s6a_0_80) (not (at-segment ?a seg_c4_s6a_0_80))
       (occupied seg_o1_c4c_0_80) (not (not_occupied seg_o1_c4c_0_80))
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))
       (at-segment ?a seg_o1_c4c_0_80) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c4_s6c_0_60 ?a))
       (not_blocked seg_c4_s6c_0_60 ?a)))
 (:action
  ugly7043ugly353ugly265ugly303ugly653startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly7044ugly67ugly332ugly154ugly475startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly7045ugly662ugly344ugly689ugly347move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_daewh)
       (not_blocked seg_n_a3d_0_60 airplane_daew5)
       (not_blocked seg_n_a3d_0_60 airplane_daew6)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe1)
       (not_blocked seg_n_a3d_0_60 airplane_4xekd)
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
  ugly7046ugly318ugly659ugly875ugly354startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly7047ugly872ugly914ugly7ugly318startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly7048ugly922ugly133ugly724ugly913startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly7049ugly452ugly244ugly504ugly903startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly7050ugly160ugly942ugly307ugly899startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly7051ugly780ugly873ugly773ugly75startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly7052ugly128ugly138ugly195ugly258startup_seg_m_a9a_0_60_south_medium
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
  ugly7053ugly938ugly785ugly567ugly140startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly7054ugly532ugly89ugly542ugly494move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew5)
       (not_blocked seg_o1_111b_0_60 airplane_daew6)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_111b_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p111_0_76))
       (not_occupied seg_p111_0_76) (not (at-segment ?a seg_p111_0_76))
       (occupied seg_o1_111b_0_60) (not (not_occupied seg_o1_111b_0_60))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly7055ugly562ugly833ugly607ugly819startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action
  ugly7056ugly546ugly276ugly887ugly122startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly7057ugly717ugly250ugly246ugly406startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly7058ugly147ugly561ugly728ugly640move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew5)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118c_0_34 airplane_4xekd)
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
  ugly7059ugly845ugly503ugly283ugly80startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly7060ugly252ugly664ugly112ugly17startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly7061ugly212ugly943ugly767ugly915move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew5)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew6)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe1)
       (not_blocked seg_n_a7a6d_0_75 airplane_4xekd))
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
  ugly7062ugly267ugly856ugly627ugly367startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly7063ugly116ugly98ugly46ugly222move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew5)
       (not_blocked seg_w1_164c_0_34 airplane_daew6)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_164c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c4a_0_34))
       (not_occupied seg_w1_c4a_0_34) (not (at-segment ?a seg_w1_c4a_0_34))
       (occupied seg_w1_164c_0_34) (not (not_occupied seg_w1_164c_0_34))
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))
       (at-segment ?a seg_w1_164c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c4b_0_60 ?a))
       (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action
  ugly7064ugly184ugly746ugly572ugly263startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly7065ugly930ugly829ugly931ugly32startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action
  ugly7066ugly548ugly268ugly927ugly912startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly7067ugly480ugly441ugly333ugly254move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew5)
       (not_blocked seg_w1_143b_0_45 airplane_daew6)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_143b_0_45 airplane_4xekd)
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
  ugly7068ugly113ugly571ugly688ugly379startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly7069ugly908ugly695ugly428ugly220startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly7070ugly198ugly633ugly642ugly726startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly7071ugly219ugly85ugly267ugly856startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly7072ugly426ugly284ugly713ugly948takeoff_seg_09l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action ugly7073ugly169ugly433ugly64ugly235startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly7074ugly415ugly198ugly633ugly642startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly7075ugly309ugly87ugly126ugly602park_seg_p115_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly7076ugly139ugly205ugly641ugly191startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly7077ugly571ugly688ugly379ugly541move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_daewh)
       (not_blocked seg_n_a8c_0_60 airplane_daew5)
       (not_blocked seg_n_a8c_0_60 airplane_daew6)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe1)
       (not_blocked seg_n_a8c_0_60 airplane_4xekd)
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
  ugly7078ugly42ugly488ugly355ugly100move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew5)
       (not_blocked seg_w1_142c_0_34 airplane_daew6)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_142c_0_34 airplane_4xekd))
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
  ugly7079ugly802ugly878ugly182ugly197move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_daewh)
       (not_blocked seg_c1_n2a_0_60 airplane_daew5)
       (not_blocked seg_c1_n2a_0_60 airplane_daew6)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe1)
       (not_blocked seg_c1_n2a_0_60 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_0_108))
       (not_occupied seg_n2_0_108) (not (at-segment ?a seg_n2_0_108))
       (occupied seg_c1_n2a_0_60) (not (not_occupied seg_c1_n2a_0_60))
       (blocked seg_c1_n2a_0_60 ?a) (not (not_blocked seg_c1_n2a_0_60 ?a))
       (at-segment ?a seg_c1_n2a_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_n2b_0_60 ?a))
       (not_blocked seg_n_n2b_0_60 ?a)))
 (:action
  ugly7080ugly195ugly258ugly801ugly350startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action
  ugly7081ugly900ugly768ugly66ugly212startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly7082ugly376ugly815ugly714ugly116move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew5)
       (not_blocked seg_w1_151c_0_34 airplane_daew6)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_4xekd)
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
 (:action
  ugly7083ugly186ugly636ugly423ugly378startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action
  ugly7084ugly85ugly267ugly856ugly627startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly7085ugly504ugly903ugly708ugly175move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew5)
       (not_blocked seg_w1_154a_0_34 airplane_daew6)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154a_0_34 airplane_4xekd)
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
  ugly7086ugly205ugly641ugly191ugly735move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew5)
       (not_blocked seg_o1_117a_0_34 airplane_daew6)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_117a_0_34 airplane_4xekd))
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
  ugly7087ugly515ugly727ugly312ugly327move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew5)
       (not_blocked seg_w1_141a_0_34 airplane_daew6)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141a_0_34 airplane_4xekd))
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
  ugly7088ugly909ugly383ugly674ugly617startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly7089ugly429ugly909ugly383ugly674startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly7090ugly826ugly208ugly139ugly205startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly7091ugly951ugly163ugly134ugly656move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_daewh)
       (not_blocked seg_p163_0_75 airplane_daew5)
       (not_blocked seg_p163_0_75 airplane_daew6)
       (not_blocked seg_p163_0_75 airplane_cfbe1)
       (not_blocked seg_p163_0_75 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163b_0_45))
       (not_occupied seg_w1_163b_0_45) (not (at-segment ?a seg_w1_163b_0_45))
       (occupied seg_p163_0_75) (not (not_occupied seg_p163_0_75))
       (blocked seg_p163_0_75 ?a) (not (not_blocked seg_p163_0_75 ?a))
       (at-segment ?a seg_p163_0_75) (not (blocked seg_w1_163a_0_34 ?a))
       (not_blocked seg_w1_163a_0_34 ?a) (not (blocked seg_w1_163c_0_34 ?a))
       (not_blocked seg_w1_163c_0_34 ?a)))
 (:action ugly7092ugly373ugly644ugly663ugly562startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly7093ugly948ugly324ugly468ugly148startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly7094ugly616ugly227ugly51ugly524move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c3a_0_34))
       (not_occupied seg_w1_c3a_0_34) (not (at-segment ?a seg_w1_c3a_0_34))
       (occupied seg_w1_154c_0_34) (not (not_occupied seg_w1_154c_0_34))
       (blocked seg_w1_154c_0_34 ?a) (not (not_blocked seg_w1_154c_0_34 ?a))
       (at-segment ?a seg_w1_154c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c3b_0_60 ?a))
       (not_blocked seg_w1_c3b_0_60 ?a) (not (blocked seg_w1_c3c_0_48 ?a))
       (not_blocked seg_w1_c3c_0_48 ?a)))
 (:action
  ugly7095ugly880ugly123ugly272ugly389startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly7096ugly809ugly372ugly473ugly82move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_daewh)
       (not_blocked seg_08l_a2a_0_80 airplane_daew5)
       (not_blocked seg_08l_a2a_0_80 airplane_daew6)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a2a_0_80 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2b_0_80))
       (not_occupied seg_08l_a2b_0_80) (not (at-segment ?a seg_08l_a2b_0_80))
       (occupied seg_08l_a2a_0_80) (not (not_occupied seg_08l_a2a_0_80))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (at-segment ?a seg_08l_a2a_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_a2_a_0_90 ?a))
       (not_blocked seg_a2_a_0_90 ?a)))
 (:action
  ugly7097ugly514ugly936ugly732ugly791move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew5)
       (not_blocked seg_o1_118b_0_60 airplane_daew6)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_118b_0_60 airplane_4xekd)
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
  ugly7098ugly538ugly446ugly884ugly945startup_seg_m_a7d_0_60_south_medium
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
  ugly7099ugly279ugly108ugly50ugly251move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew5)
       (not_blocked seg_w1_152a_0_34 airplane_daew6)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_152a_0_34 airplane_4xekd)
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
  ugly7100ugly275ugly838ugly496ugly399move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew5)
       (not_blocked seg_o1_115c_0_34 airplane_daew6)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_115c_0_34 airplane_4xekd)
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
  ugly7101ugly471ugly907ugly325ugly594move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew5)
       (not_blocked seg_c1_n2b_0_80 airplane_daew6)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
       (not_blocked seg_c1_n2b_0_80 airplane_4xekd))
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
  ugly7102ugly52ugly509ugly809ugly372startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly7103ugly339ugly508ugly394ugly335startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly7104ugly47ugly753ugly299ugly502startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly7105ugly856ugly627ugly367ugly925startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly7106ugly173ugly553ugly523ugly467startup_seg_o1_c2c_0_34_south_medium
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
  ugly7107ugly958ugly53ugly207ugly959startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly7108ugly887ugly122ugly340ugly812move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew5)
       (not_blocked seg_o1_c2a_0_60 airplane_daew6)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c2a_0_60 airplane_4xekd))
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
  ugly7109ugly312ugly327ugly78ugly917move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew5)
       (not_blocked seg_o1_c3b_0_60 airplane_daew6)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
       (not_blocked seg_o1_c3b_0_60 airplane_4xekd)
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
  ugly7110ugly578ugly29ugly650ugly589move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew5)
       (not_blocked seg_w1_164b_0_45 airplane_daew6)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p164_0_75))
       (not_occupied seg_p164_0_75) (not (at-segment ?a seg_p164_0_75))
       (occupied seg_w1_164b_0_45) (not (not_occupied seg_w1_164b_0_45))
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action
  ugly7111ugly527ugly506ugly497ugly715move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daewh)
       (not_blocked seg_c3_b_0_80 airplane_daew5)
       (not_blocked seg_c3_b_0_80 airplane_daew6)
       (not_blocked seg_c3_b_0_80 airplane_cfbe1)
       (not_blocked seg_c3_b_0_80 airplane_4xekd))
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
  ugly7112ugly329ugly257ugly802ugly878move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew5)
       (not_blocked seg_o1_102c_0_34 airplane_daew6)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
       (not_blocked seg_o1_102c_0_34 airplane_4xekd)
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
  ugly7113ugly127ugly352ugly631ugly448startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly7114ugly211ugly814ugly454ugly549move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew5)
       (not_blocked seg_w1_153c_0_34 airplane_daew6)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_4xekd))
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
  ugly7115ugly390ugly487ugly457ugly934startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly7116ugly385ugly142ugly783ugly320startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly7117ugly660ugly181ugly12ugly616move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_daewh)
       (not_blocked seg_p131_0_75 airplane_daew5)
       (not_blocked seg_p131_0_75 airplane_daew6)
       (not_blocked seg_p131_0_75 airplane_cfbe1)
       (not_blocked seg_p131_0_75 airplane_4xekd))
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
  ugly7118ugly583ugly308ugly136ugly816startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly7119ugly283ugly80ugly704ugly951move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_daewh)
       (not_blocked seg_w1_c4a_0_34 airplane_daew5)
       (not_blocked seg_w1_c4a_0_34 airplane_daew6)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c4a_0_34 airplane_4xekd))
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
  ugly7120ugly611ugly209ugly924ugly109startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly7121ugly566ugly348ugly315ugly676move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew5)
       (not_blocked seg_w1_c1c_0_34 airplane_daew6)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c1c_0_34 airplane_4xekd)
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
 (:action ugly7122ugly927ugly912ugly557ugly71startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly7123ugly55ugly638ugly619ugly470startup_seg_m_a4c_0_60_south_medium
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
  ugly7124ugly672ugly615ugly921ugly514startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly7125ugly229ugly329ugly257ugly802startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly7126ugly889ugly11ugly612ugly99startup_seg_o1_109c_0_34_south_medium
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
  ugly7127ugly751ugly130ugly775ugly531move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew5)
       (not_blocked seg_w1_164b_0_45 airplane_daew6)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_164b_0_45 airplane_4xekd)
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
 (:action ugly7128ugly366ugly127ugly352ugly631park_seg_p163_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action
  ugly7129ugly266ugly827ugly353ugly265move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew5)
       (not_blocked seg_o1_118a_0_34 airplane_daew6)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_118a_0_34 airplane_4xekd)
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
  ugly7130ugly654ugly548ugly268ugly927startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly7131ugly240ugly940ugly537ugly380move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_daewh)
       (not_blocked seg_p112_0_76 airplane_daew5)
       (not_blocked seg_p112_0_76 airplane_daew6)
       (not_blocked seg_p112_0_76 airplane_cfbe1)
       (not_blocked seg_p112_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c3b_0_60))
       (not_occupied seg_o1_c3b_0_60) (not (at-segment ?a seg_o1_c3b_0_60))
       (occupied seg_p112_0_76) (not (not_occupied seg_p112_0_76))
       (blocked seg_p112_0_76 ?a) (not (not_blocked seg_p112_0_76 ?a))
       (at-segment ?a seg_p112_0_76) (not (blocked seg_o1_c3a_0_34 ?a))
       (not_blocked seg_o1_c3a_0_34 ?a) (not (blocked seg_o1_c3c_0_48 ?a))
       (not_blocked seg_o1_c3c_0_48 ?a) (not (blocked seg_o1_c3d_0_60 ?a))
       (not_blocked seg_o1_c3d_0_60 ?a)))
 (:action ugly7132ugly747ugly255ugly375ugly176park_seg_p152_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly7133ugly580ugly25ugly680ugly273startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly7134ugly642ugly726ugly932ugly721pushback_seg_w1_141b_0_45_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_141c_0_34 airplane_4xekd))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly7135ugly46ugly222ugly164ugly748startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly7136ugly330ugly716ugly570ugly452move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew5)
       (not_blocked seg_o1_110a_0_34 airplane_daew6)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
       (not_blocked seg_o1_110a_0_34 airplane_4xekd)
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
  ugly7137ugly606ugly894ugly593ugly57startup_seg_m_a9d_0_120_934_south_medium
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
  ugly7138ugly285ugly184ugly746ugly572move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_daewh)
       (not_blocked seg_p134_0_75 airplane_daew5)
       (not_blocked seg_p134_0_75 airplane_daew6)
       (not_blocked seg_p134_0_75 airplane_cfbe1)
       (not_blocked seg_p134_0_75 airplane_4xekd))
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
  ugly7139ugly635ugly486ugly941ugly955startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action ugly7140ugly92ugly818ugly540ugly946park_seg_p141_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly7141ugly347ugly10ugly34ugly751move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew5)
       (not_blocked seg_w1_153c_0_34 airplane_daew6)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_153c_0_34 airplane_4xekd)
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
  ugly7142ugly364ugly481ugly141ugly461startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly7143ugly793ugly938ugly785ugly567move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_154c_0_34 airplane_4xekd)
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
  ugly7144ugly812ugly199ugly900ugly768move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe1)
       (not_blocked seg_n_n2a4e_0_75 airplane_4xekd))
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
  ugly7145ugly676ugly77ugly835ugly552move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_daewh)
       (not_blocked seg_c4_s6a_0_80 airplane_daew5)
       (not_blocked seg_c4_s6a_0_80 airplane_daew6)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1)
       (not_blocked seg_c4_s6a_0_80 airplane_4xekd))
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
  ugly7146ugly164ugly748ugly424ugly731move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_daewh)
       (not_blocked seg_p104_0_76 airplane_daew5)
       (not_blocked seg_p104_0_76 airplane_daew6)
       (not_blocked seg_p104_0_76 airplane_cfbe1)
       (not_blocked seg_p104_0_76 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104b_0_60))
       (not_occupied seg_o1_104b_0_60) (not (at-segment ?a seg_o1_104b_0_60))
       (occupied seg_p104_0_76) (not (not_occupied seg_p104_0_76))
       (blocked seg_p104_0_76 ?a) (not (not_blocked seg_p104_0_76 ?a))
       (at-segment ?a seg_p104_0_76) (not (blocked seg_o1_104a_0_34 ?a))
       (not_blocked seg_o1_104a_0_34 ?a) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a)))
 (:action
  ugly7147ugly829ugly931ugly32ugly614move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew5)
       (not_blocked seg_w1_c2c_0_34 airplane_daew6)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_c2c_0_34 airplane_4xekd)
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
 (:action
  ugly7148ugly516ugly206ugly626ugly693startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly7149ugly306ugly42ugly488ugly355move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew5)
       (not_blocked seg_w1_151c_0_34 airplane_daew6)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_151c_0_34 airplane_4xekd))
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
  ugly7150ugly420ugly923ugly253ugly121startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly7151ugly293ugly665ugly41ugly59startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly7152ugly87ugly126ugly602ugly608move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew5)
       (not_blocked seg_w1_151b_0_45 airplane_daew6)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
       (not_blocked seg_w1_151b_0_45 airplane_4xekd))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p151_0_75))
       (not_occupied seg_p151_0_75) (not (at-segment ?a seg_p151_0_75))
       (occupied seg_w1_151b_0_45) (not (not_occupied seg_w1_151b_0_45))
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action
  ugly7153ugly588ugly781ugly4ugly165startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly7154ugly713ugly948ugly324ugly468move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew5)
       (not_blocked seg_w1_162c_0_34 airplane_daew6)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
       (not_blocked seg_w1_162c_0_34 airplane_4xekd))
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
  ugly7155ugly586ugly214ugly499ugly287startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly7156ugly783ugly320ugly758ugly72startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly7157ugly649ugly668ugly532ugly89startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action
  ugly7158ugly158ugly247ugly451ugly522startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly7159ugly901ugly351ugly670ugly453startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly7160ugly893ugly477ugly225ugly625move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_daewh)
       (not_blocked seg_08l_a7d_0_80 airplane_daew5)
       (not_blocked seg_08l_a7d_0_80 airplane_daew6)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe1)
       (not_blocked seg_08l_a7d_0_80 airplane_4xekd))
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
  ugly7161ugly421ugly784ugly558ugly896startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly7162ugly231ugly416ugly952ugly328startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly7163ugly91ugly427ugly777ugly445startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly7164ugly115ugly857ugly151ugly729startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly7165ugly806ugly556ugly269ugly798move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew5)
       (not_blocked seg_o1_104c_0_60 airplane_daew6)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
       (not_blocked seg_o1_104c_0_60 airplane_4xekd))
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
  ugly7166ugly666ugly629ugly436ugly33startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly7167ugly193ugly173ugly553ugly523startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))) 