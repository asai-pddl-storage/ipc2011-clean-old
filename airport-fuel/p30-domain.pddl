
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (not_blocked ?s - segment ?a - airplane)
  (is-pushing ?a - airplane) (is-start-runway ?s - segment ?d - direction)
  (not_occupied ?s - segment) (has-type ?a - airplane ?t - airplanetype)
  (airborne ?a - airplane ?s - segment) (is-moving ?a - airplane)
  (is-parked ?a - airplane ?s - segment)
  (at-segment ?a - airplane ?s - segment) (occupied ?s - segment)
  (facing ?a - airplane ?d - direction) (blocked ?s - segment ?a - airplane))
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
  airplane_daewh airplane_daew1 airplane_daew2 airplane_daew4 airplane_daew5
  airplane_daew6 airplane_daew7 - airplane)
 (:functions (total-cost) - number)
 (:action ugly1startup_seg_m_a4a7c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action ugly2startup_seg_n_a2a3c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action ugly3startup_seg_m_a7a6c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action ugly4move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
       (not_blocked seg_w1_164a_0_34 airplane_daew2)
       (not_blocked seg_w1_164a_0_34 airplane_daew4)
       (not_blocked seg_w1_164a_0_34 airplane_daew5)
       (not_blocked seg_w1_164a_0_34 airplane_daew6)
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
 (:action ugly5move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew2)
       (not_blocked seg_o1_c3a_0_34 airplane_daew4)
       (not_blocked seg_o1_c3a_0_34 airplane_daew5)
       (not_blocked seg_o1_c3a_0_34 airplane_daew6)
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
 (:action ugly6move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
       (not_blocked seg_o1_102a_0_34 airplane_daew2)
       (not_blocked seg_o1_102a_0_34 airplane_daew4)
       (not_blocked seg_o1_102a_0_34 airplane_daew5)
       (not_blocked seg_o1_102a_0_34 airplane_daew6)
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
 (:action ugly7pushback_seg_p153_0_75_seg_w1_153b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
       (not_blocked seg_w1_153b_0_45 airplane_daew2)
       (not_blocked seg_w1_153b_0_45 airplane_daew4)
       (not_blocked seg_w1_153b_0_45 airplane_daew5)
       (not_blocked seg_w1_153b_0_45 airplane_daew6)
       (not_blocked seg_w1_153b_0_45 airplane_daew7))
  :effect
  (and (not (occupied seg_p153_0_75)) (not_occupied seg_p153_0_75)
       (not (blocked seg_p153_0_75 ?a)) (not_blocked seg_p153_0_75 ?a)
       (not (at-segment ?a seg_p153_0_75)) (occupied seg_w1_153b_0_45)
       (not (not_occupied seg_w1_153b_0_45)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action ugly8move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew2)
       (not_blocked seg_o1_c1c_0_80 airplane_daew4)
       (not_blocked seg_o1_c1c_0_80 airplane_daew5)
       (not_blocked seg_o1_c1c_0_80 airplane_daew6)
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
 (:action ugly9startup_seg_o1_c3b_0_60_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action ugly10move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_daewh)
       (not_blocked seg_08l_a9c_0_80 airplane_daew1)
       (not_blocked seg_08l_a9c_0_80 airplane_daew2)
       (not_blocked seg_08l_a9c_0_80 airplane_daew4)
       (not_blocked seg_08l_a9c_0_80 airplane_daew5)
       (not_blocked seg_08l_a9c_0_80 airplane_daew6)
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
 (:action ugly11startup_seg_o1_115a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action ugly12startup_seg_o1_115b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action ugly13startup_seg_m_a10b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action ugly14startup_seg_o1_102a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly15park_seg_p153_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action ugly16move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_daewh)
       (not_blocked seg_n_a4c_0_60 airplane_daew1)
       (not_blocked seg_n_a4c_0_60 airplane_daew2)
       (not_blocked seg_n_a4c_0_60 airplane_daew4)
       (not_blocked seg_n_a4c_0_60 airplane_daew5)
       (not_blocked seg_n_a4c_0_60 airplane_daew6)
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
 (:action ugly17startup_seg_p151_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action ugly18move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
       (not_blocked seg_o1_103c_0_34 airplane_daew2)
       (not_blocked seg_o1_103c_0_34 airplane_daew4)
       (not_blocked seg_o1_103c_0_34 airplane_daew5)
       (not_blocked seg_o1_103c_0_34 airplane_daew6)
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
 (:action ugly19move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_daewh)
       (not_blocked seg_08l_a3a_0_80 airplane_daew1)
       (not_blocked seg_08l_a3a_0_80 airplane_daew2)
       (not_blocked seg_08l_a3a_0_80 airplane_daew4)
       (not_blocked seg_08l_a3a_0_80 airplane_daew5)
       (not_blocked seg_08l_a3a_0_80 airplane_daew6)
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
 (:action ugly20startup_seg_w1_c2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action ugly21move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
       (not_blocked seg_o1_102c_0_34 airplane_daew2)
       (not_blocked seg_o1_102c_0_34 airplane_daew4)
       (not_blocked seg_o1_102c_0_34 airplane_daew5)
       (not_blocked seg_o1_102c_0_34 airplane_daew6)
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
 (:action ugly22startup_seg_n_a9a10g_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action ugly23startup_seg_p153_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly24startup_seg_n_a3c_0_60_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action ugly25move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew2)
       (not_blocked seg_o1_c2b_0_60 airplane_daew4)
       (not_blocked seg_o1_c2b_0_60 airplane_daew5)
       (not_blocked seg_o1_c2b_0_60 airplane_daew6)
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
 (:action ugly26startup_seg_08l_a4c_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_08l_a4a_0_80) (not_occupied seg_08l_a4b_0_161_245)
       (not_occupied seg_08l_a4d_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4a_0_80 ?a)
       (not (not_blocked seg_08l_a4a_0_80 ?a))
       (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))
       (blocked seg_08l_a4d_0_80 ?a) (not (not_blocked seg_08l_a4d_0_80 ?a))))
 (:action ugly27startup_seg_n_a6a8b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action ugly28startup_seg_o1_c1a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly29move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew1)
       (not_blocked seg_w1_c2c_0_34 airplane_daew2)
       (not_blocked seg_w1_c2c_0_34 airplane_daew4)
       (not_blocked seg_w1_c2c_0_34 airplane_daew5)
       (not_blocked seg_w1_c2c_0_34 airplane_daew6)
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
 (:action ugly30park_seg_p118_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action ugly31move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew2)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew4)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4c_0_75))
       (not_occupied seg_n_n2a4c_0_75) (not (at-segment ?a seg_n_n2a4c_0_75))
       (occupied seg_n_n2a4b_0_75) (not (not_occupied seg_n_n2a4b_0_75))
       (blocked seg_n_n2a4b_0_75 ?a) (not (not_blocked seg_n_n2a4b_0_75 ?a))
       (at-segment ?a seg_n_n2a4b_0_75) (not (blocked seg_n_n2a4d_0_75 ?a))
       (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action ugly32startup_seg_o1_117a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly33startup_seg_c3_b_0_80_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action ugly34startup_seg_o1_c1c_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action ugly35startup_seg_m_a7c_0_60_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action ugly36park_seg_p108_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action ugly37move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
       (not_blocked seg_o1_115c_0_34 airplane_daew2)
       (not_blocked seg_o1_115c_0_34 airplane_daew4)
       (not_blocked seg_o1_115c_0_34 airplane_daew5)
       (not_blocked seg_o1_115c_0_34 airplane_daew6)
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
 (:action ugly38startup_seg_p152_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly39move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew1)
       (not_blocked seg_w1_143b_0_45 airplane_daew2)
       (not_blocked seg_w1_143b_0_45 airplane_daew4)
       (not_blocked seg_w1_143b_0_45 airplane_daew5)
       (not_blocked seg_w1_143b_0_45 airplane_daew6)
       (not_blocked seg_w1_143b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p143_0_75))
       (not_occupied seg_p143_0_75) (not (at-segment ?a seg_p143_0_75))
       (occupied seg_w1_143b_0_45) (not (not_occupied seg_w1_143b_0_45))
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action ugly40startup_seg_o1_c3c_0_48_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action ugly41startup_seg_w1_161b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action ugly42move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew2)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew4)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7e_0_75))
       (not_occupied seg_n_a4a7e_0_75) (not (at-segment ?a seg_n_a4a7e_0_75))
       (occupied seg_n_a4a7d_0_75) (not (not_occupied seg_n_a4a7d_0_75))
       (blocked seg_n_a4a7d_0_75 ?a) (not (not_blocked seg_n_a4a7d_0_75 ?a))
       (at-segment ?a seg_n_a4a7d_0_75) (not (blocked seg_n_a4a7f_0_75 ?a))
       (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action ugly43startup_seg_p101_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action ugly44startup_seg_w1_151b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly45startup_seg_08l_a7b_0_161_245_south_medium :parameters
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
 (:action ugly46startup_seg_n_a2a3e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action ugly47move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_daewh)
       (not_blocked seg_p108_0_76 airplane_daew1)
       (not_blocked seg_p108_0_76 airplane_daew2)
       (not_blocked seg_p108_0_76 airplane_daew4)
       (not_blocked seg_p108_0_76 airplane_daew5)
       (not_blocked seg_p108_0_76 airplane_daew6)
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
 (:action ugly48startup_seg_m_a7d_0_60_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action ugly49startup_seg_n_a6b_0_60_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly50startup_seg_w1_153a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly51move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
       (not_blocked seg_o1_111b_0_60 airplane_daew2)
       (not_blocked seg_o1_111b_0_60 airplane_daew4)
       (not_blocked seg_o1_111b_0_60 airplane_daew5)
       (not_blocked seg_o1_111b_0_60 airplane_daew6)
       (not_blocked seg_o1_111b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p111_0_76))
       (not_occupied seg_p111_0_76) (not (at-segment ?a seg_p111_0_76))
       (occupied seg_o1_111b_0_60) (not (not_occupied seg_o1_111b_0_60))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action ugly52startup_seg_o1_c2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly53startup_seg_p103_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly54move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew2)
       (not_blocked seg_o1_c2d_0_60 airplane_daew4)
       (not_blocked seg_o1_c2d_0_60 airplane_daew5)
       (not_blocked seg_o1_c2d_0_60 airplane_daew6)
       (not_blocked seg_o1_c2d_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_b_0_80))
       (not_occupied seg_c2_b_0_80) (not (at-segment ?a seg_c2_b_0_80))
       (occupied seg_o1_c2d_0_60) (not (not_occupied seg_o1_c2d_0_60))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))
       (at-segment ?a seg_o1_c2d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c2_a_0_80 ?a))
       (not_blocked seg_c2_a_0_80 ?a)))
 (:action ugly55startup_seg_c2_b_0_80_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly56startup_seg_o1_117c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly57startup_seg_a4_a_0_157_785_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action ugly58startup_seg_m_a8a9c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action ugly59move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_daewh)
       (not_blocked seg_p102_0_76 airplane_daew1)
       (not_blocked seg_p102_0_76 airplane_daew2)
       (not_blocked seg_p102_0_76 airplane_daew4)
       (not_blocked seg_p102_0_76 airplane_daew5)
       (not_blocked seg_p102_0_76 airplane_daew6)
       (not_blocked seg_p102_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102b_0_60))
       (not_occupied seg_o1_102b_0_60) (not (at-segment ?a seg_o1_102b_0_60))
       (occupied seg_p102_0_76) (not (not_occupied seg_p102_0_76))
       (blocked seg_p102_0_76 ?a) (not (not_blocked seg_p102_0_76 ?a))
       (at-segment ?a seg_p102_0_76) (not (blocked seg_o1_102a_0_34 ?a))
       (not_blocked seg_o1_102a_0_34 ?a) (not (blocked seg_o1_102c_0_34 ?a))
       (not_blocked seg_o1_102c_0_34 ?a)))
 (:action ugly60startup_seg_o1_118a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly61startup_seg_w1_152c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly62startup_seg_w1_142a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action ugly63move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew1)
       (not_blocked seg_o1_118a_0_34 airplane_daew2)
       (not_blocked seg_o1_118a_0_34 airplane_daew4)
       (not_blocked seg_o1_118a_0_34 airplane_daew5)
       (not_blocked seg_o1_118a_0_34 airplane_daew6)
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
 (:action ugly64startup_seg_m_a9a10f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action ugly65move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew1)
       (not_blocked seg_o1_109d_0_45 airplane_daew2)
       (not_blocked seg_o1_109d_0_45 airplane_daew4)
       (not_blocked seg_o1_109d_0_45 airplane_daew5)
       (not_blocked seg_o1_109d_0_45 airplane_daew6)
       (not_blocked seg_o1_109d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p132_0_75))
       (not_occupied seg_p132_0_75) (not (at-segment ?a seg_p132_0_75))
       (occupied seg_o1_109d_0_45) (not (not_occupied seg_o1_109d_0_45))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action ugly66startup_seg_n_a10a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action ugly67move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew1)
       (not_blocked seg_o1_108b_0_60 airplane_daew2)
       (not_blocked seg_o1_108b_0_60 airplane_daew4)
       (not_blocked seg_o1_108b_0_60 airplane_daew5)
       (not_blocked seg_o1_108b_0_60 airplane_daew6)
       (not_blocked seg_o1_108b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p108_0_76))
       (not_occupied seg_p108_0_76) (not (at-segment ?a seg_p108_0_76))
       (occupied seg_o1_108b_0_60) (not (not_occupied seg_o1_108b_0_60))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action ugly68pushback_seg_p118_0_76_seg_o1_118b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew2)
       (not_blocked seg_o1_118b_0_60 airplane_daew4)
       (not_blocked seg_o1_118b_0_60 airplane_daew5)
       (not_blocked seg_o1_118b_0_60 airplane_daew6)
       (not_blocked seg_o1_118b_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action ugly69move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_daewh)
       (not_blocked seg_08l_0_80 airplane_daew1)
       (not_blocked seg_08l_0_80 airplane_daew2)
       (not_blocked seg_08l_0_80 airplane_daew4)
       (not_blocked seg_08l_0_80 airplane_daew5)
       (not_blocked seg_08l_0_80 airplane_daew6)
       (not_blocked seg_08l_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a3_0_970))
       (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action ugly70startup_seg_m_a6c_0_60_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly71startup_seg_o1_111d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action ugly72startup_seg_m_a9a10e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action ugly73startup_seg_a2_c_0_100_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action ugly74startup_seg_m_a10a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action ugly75startup_seg_w1_c2c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action ugly76pushback_seg_o1_c3b_0_60_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew2)
       (not_blocked seg_o1_c3d_0_60 airplane_daew4)
       (not_blocked seg_o1_c3d_0_60 airplane_daew5)
       (not_blocked seg_o1_c3d_0_60 airplane_daew6)
       (not_blocked seg_o1_c3d_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c3b_0_60)) (not_occupied seg_o1_c3b_0_60)
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)
       (not (at-segment ?a seg_o1_c3b_0_60)) (occupied seg_o1_c3d_0_60)
       (not (not_occupied seg_o1_c3d_0_60)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a)) (at-segment ?a seg_o1_c3d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly77startup_seg_o1_c1c_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action ugly78startup_seg_m_a9a10g_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action ugly79startup_seg_n_a6c_0_60_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action ugly80park_seg_p161_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action ugly81startup_seg_m_a3b_0_60_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action ugly82move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
       (not_blocked seg_o1_102a_0_34 airplane_daew2)
       (not_blocked seg_o1_102a_0_34 airplane_daew4)
       (not_blocked seg_o1_102a_0_34 airplane_daew5)
       (not_blocked seg_o1_102a_0_34 airplane_daew6)
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
 (:action ugly83move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_daewh)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew1)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew2)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew4)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew5)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew6)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a_0_80))
       (not_occupied seg_08l_a2a_0_80) (not (at-segment ?a seg_08l_a2a_0_80))
       (occupied seg_08l_a2a3_0_970) (not (not_occupied seg_08l_a2a3_0_970))
       (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action ugly84startup_seg_m_a7a6d_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action ugly85startup_seg_w1_163b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action ugly86move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew2)
       (not_blocked seg_o1_c3a_0_34 airplane_daew4)
       (not_blocked seg_o1_c3a_0_34 airplane_daew5)
       (not_blocked seg_o1_c3a_0_34 airplane_daew6)
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
 (:action ugly87move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew1)
       (not_blocked seg_o1_103b_0_60 airplane_daew2)
       (not_blocked seg_o1_103b_0_60 airplane_daew4)
       (not_blocked seg_o1_103b_0_60 airplane_daew5)
       (not_blocked seg_o1_103b_0_60 airplane_daew6)
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
 (:action ugly88move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew1)
       (not_blocked seg_w1_c3a_0_34 airplane_daew2)
       (not_blocked seg_w1_c3a_0_34 airplane_daew4)
       (not_blocked seg_w1_c3a_0_34 airplane_daew5)
       (not_blocked seg_w1_c3a_0_34 airplane_daew6)
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
 (:action ugly89move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_daewh)
       (not_blocked seg_08l_a4a_0_80 airplane_daew1)
       (not_blocked seg_08l_a4a_0_80 airplane_daew2)
       (not_blocked seg_08l_a4a_0_80 airplane_daew4)
       (not_blocked seg_08l_a4a_0_80 airplane_daew5)
       (not_blocked seg_08l_a4a_0_80 airplane_daew6)
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
 (:action ugly90startup_seg_o1_108d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action ugly91startup_seg_w1_152b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action ugly92startup_seg_w1_c3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action ugly93startup_seg_m_a9d_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9b_0_60)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action ugly94startup_seg_p134_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly95move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew2)
       (not_blocked seg_o1_c4b_0_60 airplane_daew4)
       (not_blocked seg_o1_c4b_0_60 airplane_daew5)
       (not_blocked seg_o1_c4b_0_60 airplane_daew6)
       (not_blocked seg_o1_c4b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p119_0_76))
       (not_occupied seg_p119_0_76) (not (at-segment ?a seg_p119_0_76))
       (occupied seg_o1_c4b_0_60) (not (not_occupied seg_o1_c4b_0_60))
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))
       (at-segment ?a seg_o1_c4b_0_60)))
 (:action ugly96move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
       (not_blocked seg_o1_109a_0_34 airplane_daew2)
       (not_blocked seg_o1_109a_0_34 airplane_daew4)
       (not_blocked seg_o1_109a_0_34 airplane_daew5)
       (not_blocked seg_o1_109a_0_34 airplane_daew6)
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
 (:action ugly97startup_seg_a7_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action ugly98startup_seg_a8_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action ugly99startup_seg_w1_161b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly100move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
       (not_blocked seg_o1_108d_0_45 airplane_daew2)
       (not_blocked seg_o1_108d_0_45 airplane_daew4)
       (not_blocked seg_o1_108d_0_45 airplane_daew5)
       (not_blocked seg_o1_108d_0_45 airplane_daew6)
       (not_blocked seg_o1_108d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p131_0_75))
       (not_occupied seg_p131_0_75) (not (at-segment ?a seg_p131_0_75))
       (occupied seg_o1_108d_0_45) (not (not_occupied seg_o1_108d_0_45))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action ugly101startup_seg_p108_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action ugly102startup_seg_w1_163b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly103startup_seg_o1_109c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action ugly104startup_seg_n_a7c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action ugly105startup_seg_a6_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly106startup_seg_w1_143b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly107park_seg_p152_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action ugly108startup_seg_n_a8a9c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action ugly109move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew1)
       (not_blocked seg_w1_142b_0_45 airplane_daew2)
       (not_blocked seg_w1_142b_0_45 airplane_daew4)
       (not_blocked seg_w1_142b_0_45 airplane_daew5)
       (not_blocked seg_w1_142b_0_45 airplane_daew6)
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
 (:action ugly110move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2)
       (not_blocked seg_o1_111c_0_34 airplane_daew4)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
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
 (:action ugly111startup_seg_w1_154b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly112move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_daewh)
       (not_blocked seg_n_a7c_0_60 airplane_daew1)
       (not_blocked seg_n_a7c_0_60 airplane_daew2)
       (not_blocked seg_n_a7c_0_60 airplane_daew4)
       (not_blocked seg_n_a7c_0_60 airplane_daew5)
       (not_blocked seg_n_a7c_0_60 airplane_daew6)
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
 (:action ugly113move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
       (not_blocked seg_w1_163b_0_45 airplane_daew2)
       (not_blocked seg_w1_163b_0_45 airplane_daew4)
       (not_blocked seg_w1_163b_0_45 airplane_daew5)
       (not_blocked seg_w1_163b_0_45 airplane_daew6)
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
 (:action ugly114startup_seg_w1_152a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly115startup_seg_o1_110c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly116park_seg_p116_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action ugly117move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew2)
       (not_blocked seg_w1_141c_0_34 airplane_daew4)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
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
 (:action ugly118move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
       (not_blocked seg_w1_151c_0_34 airplane_daew2)
       (not_blocked seg_w1_151c_0_34 airplane_daew4)
       (not_blocked seg_w1_151c_0_34 airplane_daew5)
       (not_blocked seg_w1_151c_0_34 airplane_daew6)
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
 (:action ugly119startup_seg_n_a4a7c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action ugly120move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
       (not_blocked seg_o1_116c_0_34 airplane_daew2)
       (not_blocked seg_o1_116c_0_34 airplane_daew4)
       (not_blocked seg_o1_116c_0_34 airplane_daew5)
       (not_blocked seg_o1_116c_0_34 airplane_daew6)
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
 (:action ugly121move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_daewh)
       (not_blocked seg_p143_0_75 airplane_daew1)
       (not_blocked seg_p143_0_75 airplane_daew2)
       (not_blocked seg_p143_0_75 airplane_daew4)
       (not_blocked seg_p143_0_75 airplane_daew5)
       (not_blocked seg_p143_0_75 airplane_daew6)
       (not_blocked seg_p143_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143b_0_45))
       (not_occupied seg_w1_143b_0_45) (not (at-segment ?a seg_w1_143b_0_45))
       (occupied seg_p143_0_75) (not (not_occupied seg_p143_0_75))
       (blocked seg_p143_0_75 ?a) (not (not_blocked seg_p143_0_75 ?a))
       (at-segment ?a seg_p143_0_75) (not (blocked seg_w1_143a_0_34 ?a))
       (not_blocked seg_w1_143a_0_34 ?a) (not (blocked seg_w1_143c_0_60 ?a))
       (not_blocked seg_w1_143c_0_60 ?a)))
 (:action ugly122startup_seg_p162_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly123startup_seg_n_a4a7b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action ugly124startup_seg_w1_c1c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action ugly125move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew1)
       (not_blocked seg_o1_116a_0_34 airplane_daew2)
       (not_blocked seg_o1_116a_0_34 airplane_daew4)
       (not_blocked seg_o1_116a_0_34 airplane_daew5)
       (not_blocked seg_o1_116a_0_34 airplane_daew6)
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
 (:action ugly126startup_seg_a3_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action ugly127move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_daewh)
       (not_blocked seg_p141_0_75 airplane_daew1)
       (not_blocked seg_p141_0_75 airplane_daew2)
       (not_blocked seg_p141_0_75 airplane_daew4)
       (not_blocked seg_p141_0_75 airplane_daew5)
       (not_blocked seg_p141_0_75 airplane_daew6)
       (not_blocked seg_p141_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141b_0_45))
       (not_occupied seg_w1_141b_0_45) (not (at-segment ?a seg_w1_141b_0_45))
       (occupied seg_p141_0_75) (not (not_occupied seg_p141_0_75))
       (blocked seg_p141_0_75 ?a) (not (not_blocked seg_p141_0_75 ?a))
       (at-segment ?a seg_p141_0_75) (not (blocked seg_w1_141a_0_34 ?a))
       (not_blocked seg_w1_141a_0_34 ?a) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a)))
 (:action ugly128move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_daewh)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew1)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew2)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew4)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew5)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew6)
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
 (:action ugly129park_seg_p141_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action ugly130move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
       (not_blocked seg_w1_154c_0_34 airplane_daew2)
       (not_blocked seg_w1_154c_0_34 airplane_daew4)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
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
 (:action ugly131move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_daewh)
       (not_blocked seg_p163_0_75 airplane_daew1)
       (not_blocked seg_p163_0_75 airplane_daew2)
       (not_blocked seg_p163_0_75 airplane_daew4)
       (not_blocked seg_p163_0_75 airplane_daew5)
       (not_blocked seg_p163_0_75 airplane_daew6)
       (not_blocked seg_p163_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163b_0_45))
       (not_occupied seg_w1_163b_0_45) (not (at-segment ?a seg_w1_163b_0_45))
       (occupied seg_p163_0_75) (not (not_occupied seg_p163_0_75))
       (blocked seg_p163_0_75 ?a) (not (not_blocked seg_p163_0_75 ?a))
       (at-segment ?a seg_p163_0_75) (not (blocked seg_w1_163a_0_34 ?a))
       (not_blocked seg_w1_163a_0_34 ?a) (not (blocked seg_w1_163c_0_34 ?a))
       (not_blocked seg_w1_163c_0_34 ?a)))
 (:action ugly132startup_seg_m_a6a8a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action ugly133startup_seg_n_a8b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action ugly134startup_seg_w1_c3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly135startup_seg_m_a4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action ugly136startup_seg_o1_c4c_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action ugly137startup_seg_08l_a2b_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action ugly138startup_seg_m_a9d_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action ugly139startup_seg_n_a6a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action ugly140move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew1)
       (not_blocked seg_o1_104b_0_60 airplane_daew2)
       (not_blocked seg_o1_104b_0_60 airplane_daew4)
       (not_blocked seg_o1_104b_0_60 airplane_daew5)
       (not_blocked seg_o1_104b_0_60 airplane_daew6)
       (not_blocked seg_o1_104b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p104_0_76))
       (not_occupied seg_p104_0_76) (not (at-segment ?a seg_p104_0_76))
       (occupied seg_o1_104b_0_60) (not (not_occupied seg_o1_104b_0_60))
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action ugly141move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
       (not_blocked seg_c2_b_0_80 airplane_daew1)
       (not_blocked seg_c2_b_0_80 airplane_daew2)
       (not_blocked seg_c2_b_0_80 airplane_daew4)
       (not_blocked seg_c2_b_0_80 airplane_daew5)
       (not_blocked seg_c2_b_0_80 airplane_daew6)
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
 (:action ugly142startup_seg_n_a4a7b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action ugly143startup_seg_p163_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly144startup_seg_m_a6a8c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action ugly145startup_seg_a7_a_0_156_924_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action ugly146move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew2)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew4)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew6)
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
 (:action ugly147startup_seg_m_a4a7d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action ugly148move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew1)
       (not_blocked seg_w1_151a_0_34 airplane_daew2)
       (not_blocked seg_w1_151a_0_34 airplane_daew4)
       (not_blocked seg_w1_151a_0_34 airplane_daew5)
       (not_blocked seg_w1_151a_0_34 airplane_daew6)
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
 (:action ugly149startup_seg_p109_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action ugly150move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew2)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew4)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7c_0_75))
       (not_occupied seg_n_a4a7c_0_75) (not (at-segment ?a seg_n_a4a7c_0_75))
       (occupied seg_n_a4a7b_0_75) (not (not_occupied seg_n_a4a7b_0_75))
       (blocked seg_n_a4a7b_0_75 ?a) (not (not_blocked seg_n_a4a7b_0_75 ?a))
       (at-segment ?a seg_n_a4a7b_0_75) (not (blocked seg_n_a4a7d_0_75 ?a))
       (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action ugly151startup_seg_n_a9a10a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action ugly152park_seg_p163_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action ugly153startup_seg_m_a4d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action ugly154startup_seg_p151_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly155move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
       (not_blocked seg_w1_154a_0_34 airplane_daew2)
       (not_blocked seg_w1_154a_0_34 airplane_daew4)
       (not_blocked seg_w1_154a_0_34 airplane_daew5)
       (not_blocked seg_w1_154a_0_34 airplane_daew6)
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
 (:action ugly156startup_seg_w1_c4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action ugly157move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
       (not_blocked seg_o1_116c_0_34 airplane_daew2)
       (not_blocked seg_o1_116c_0_34 airplane_daew4)
       (not_blocked seg_o1_116c_0_34 airplane_daew5)
       (not_blocked seg_o1_116c_0_34 airplane_daew6)
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
 (:action ugly158move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
       (not_blocked seg_w1_162c_0_34 airplane_daew2)
       (not_blocked seg_w1_162c_0_34 airplane_daew4)
       (not_blocked seg_w1_162c_0_34 airplane_daew5)
       (not_blocked seg_w1_162c_0_34 airplane_daew6)
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
 (:action ugly159startup_seg_o1_104b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly160move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2)
       (not_blocked seg_o1_110c_0_34 airplane_daew4)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
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
 (:action ugly161move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew1)
       (not_blocked seg_w1_152b_0_45 airplane_daew2)
       (not_blocked seg_w1_152b_0_45 airplane_daew4)
       (not_blocked seg_w1_152b_0_45 airplane_daew5)
       (not_blocked seg_w1_152b_0_45 airplane_daew6)
       (not_blocked seg_w1_152b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p152_0_75))
       (not_occupied seg_p152_0_75) (not (at-segment ?a seg_p152_0_75))
       (occupied seg_w1_152b_0_45) (not (not_occupied seg_w1_152b_0_45))
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action ugly162startup_seg_n_a9b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action ugly163move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew1)
       (not_blocked seg_o1_111d_0_45 airplane_daew2)
       (not_blocked seg_o1_111d_0_45 airplane_daew4)
       (not_blocked seg_o1_111d_0_45 airplane_daew5)
       (not_blocked seg_o1_111d_0_45 airplane_daew6)
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
 (:action ugly164startup_seg_m_a9a10b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action ugly165move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
       (not_blocked seg_w1_161c_0_34 airplane_daew2)
       (not_blocked seg_w1_161c_0_34 airplane_daew4)
       (not_blocked seg_w1_161c_0_34 airplane_daew5)
       (not_blocked seg_w1_161c_0_34 airplane_daew6)
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
 (:action ugly166startup_seg_m_a7b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action ugly167startup_seg_m_a9a10c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action ugly168startup_seg_c4_s6a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly169pushback_seg_o1_c2b_0_60_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew2)
       (not_blocked seg_o1_c2d_0_60 airplane_daew4)
       (not_blocked seg_o1_c2d_0_60 airplane_daew5)
       (not_blocked seg_o1_c2d_0_60 airplane_daew6)
       (not_blocked seg_o1_c2d_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly170move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_daewh)
       (not_blocked seg_n_a2b_0_60 airplane_daew1)
       (not_blocked seg_n_a2b_0_60 airplane_daew2)
       (not_blocked seg_n_a2b_0_60 airplane_daew4)
       (not_blocked seg_n_a2b_0_60 airplane_daew5)
       (not_blocked seg_n_a2b_0_60 airplane_daew6)
       (not_blocked seg_n_a2b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3a_0_75))
       (not_occupied seg_n_a2a3a_0_75) (not (at-segment ?a seg_n_a2a3a_0_75))
       (occupied seg_n_a2b_0_60) (not (not_occupied seg_n_a2b_0_60))
       (blocked seg_n_a2b_0_60 ?a) (not (not_blocked seg_n_a2b_0_60 ?a))
       (at-segment ?a seg_n_a2b_0_60) (not (blocked seg_n_a2a3b_0_75 ?a))
       (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action ugly171startup_seg_w1_161a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly172startup_seg_o1_c1a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action ugly173move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew2)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew4)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8f_0_75))
       (not_occupied seg_n_a6a8f_0_75) (not (at-segment ?a seg_n_a6a8f_0_75))
       (occupied seg_n_a6a8e_0_75) (not (not_occupied seg_n_a6a8e_0_75))
       (blocked seg_n_a6a8e_0_75 ?a) (not (not_blocked seg_n_a6a8e_0_75 ?a))
       (at-segment ?a seg_n_a6a8e_0_75) (not (blocked seg_n_a8c_0_60 ?a))
       (not_blocked seg_n_a8c_0_60 ?a)))
 (:action ugly174move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew2)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew4)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8c_0_75))
       (not_occupied seg_n_a6a8c_0_75) (not (at-segment ?a seg_n_a6a8c_0_75))
       (occupied seg_n_a6a8b_0_75) (not (not_occupied seg_n_a6a8b_0_75))
       (blocked seg_n_a6a8b_0_75 ?a) (not (not_blocked seg_n_a6a8b_0_75 ?a))
       (at-segment ?a seg_n_a6a8b_0_75) (not (blocked seg_n_a6a8d_0_75 ?a))
       (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action ugly175startup_seg_o1_109b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly176move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_daewh)
       (not_blocked seg_p118_0_76 airplane_daew1)
       (not_blocked seg_p118_0_76 airplane_daew2)
       (not_blocked seg_p118_0_76 airplane_daew4)
       (not_blocked seg_p118_0_76 airplane_daew5)
       (not_blocked seg_p118_0_76 airplane_daew6)
       (not_blocked seg_p118_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118b_0_60))
       (not_occupied seg_o1_118b_0_60) (not (at-segment ?a seg_o1_118b_0_60))
       (occupied seg_p118_0_76) (not (not_occupied seg_p118_0_76))
       (blocked seg_p118_0_76 ?a) (not (not_blocked seg_p118_0_76 ?a))
       (at-segment ?a seg_p118_0_76) (not (blocked seg_o1_118a_0_34 ?a))
       (not_blocked seg_o1_118a_0_34 ?a) (not (blocked seg_o1_118c_0_34 ?a))
       (not_blocked seg_o1_118c_0_34 ?a)))
 (:action ugly177move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
       (not_blocked seg_w1_154b_0_45 airplane_daew2)
       (not_blocked seg_w1_154b_0_45 airplane_daew4)
       (not_blocked seg_w1_154b_0_45 airplane_daew5)
       (not_blocked seg_w1_154b_0_45 airplane_daew6)
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
 (:action ugly178park_seg_p151_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action ugly179startup_seg_n_a2a3a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action ugly180startup_seg_p115_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action ugly181startup_seg_n_a8a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action ugly182park_seg_p107_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action ugly183startup_seg_o1_115c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action ugly184move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew2)
       (not_blocked seg_o1_c2a_0_60 airplane_daew4)
       (not_blocked seg_o1_c2a_0_60 airplane_daew5)
       (not_blocked seg_o1_c2a_0_60 airplane_daew6)
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
 (:action ugly185park_seg_p134_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly186startup_seg_m_a7a_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action ugly187startup_seg_n_a6a8f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action ugly188startup_seg_o1_117c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action ugly189move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_daewh)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew1)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew2)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew4)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew5)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew6)
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
 (:action ugly190move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew1)
       (not_blocked seg_o1_109d_0_45 airplane_daew2)
       (not_blocked seg_o1_109d_0_45 airplane_daew4)
       (not_blocked seg_o1_109d_0_45 airplane_daew5)
       (not_blocked seg_o1_109d_0_45 airplane_daew6)
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
 (:action ugly191startup_seg_w1_151a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly192move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_daewh)
       (not_blocked seg_p142_0_75 airplane_daew1)
       (not_blocked seg_p142_0_75 airplane_daew2)
       (not_blocked seg_p142_0_75 airplane_daew4)
       (not_blocked seg_p142_0_75 airplane_daew5)
       (not_blocked seg_p142_0_75 airplane_daew6)
       (not_blocked seg_p142_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142b_0_45))
       (not_occupied seg_w1_142b_0_45) (not (at-segment ?a seg_w1_142b_0_45))
       (occupied seg_p142_0_75) (not (not_occupied seg_p142_0_75))
       (blocked seg_p142_0_75 ?a) (not (not_blocked seg_p142_0_75 ?a))
       (at-segment ?a seg_p142_0_75) (not (blocked seg_w1_142a_0_34 ?a))
       (not_blocked seg_w1_142a_0_34 ?a) (not (blocked seg_w1_142c_0_34 ?a))
       (not_blocked seg_w1_142c_0_34 ?a)))
 (:action ugly193startup_seg_n_a4a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly194startup_seg_w1_141b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action ugly195move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew1)
       (not_blocked seg_c1_n2c_0_60 airplane_daew2)
       (not_blocked seg_c1_n2c_0_60 airplane_daew4)
       (not_blocked seg_c1_n2c_0_60 airplane_daew5)
       (not_blocked seg_c1_n2c_0_60 airplane_daew6)
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
 (:action ugly196startup_seg_w1_162b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action ugly197move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew1)
       (not_blocked seg_o1_111d_0_45 airplane_daew2)
       (not_blocked seg_o1_111d_0_45 airplane_daew4)
       (not_blocked seg_o1_111d_0_45 airplane_daew5)
       (not_blocked seg_o1_111d_0_45 airplane_daew6)
       (not_blocked seg_o1_111d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p134_0_75))
       (not_occupied seg_p134_0_75) (not (at-segment ?a seg_p134_0_75))
       (occupied seg_o1_111d_0_45) (not (not_occupied seg_o1_111d_0_45))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action ugly198move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_daewh)
       (not_blocked seg_09l_0_80 airplane_daew1)
       (not_blocked seg_09l_0_80 airplane_daew2)
       (not_blocked seg_09l_0_80 airplane_daew4)
       (not_blocked seg_09l_0_80 airplane_daew5)
       (not_blocked seg_09l_0_80 airplane_daew6)
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
 (:action ugly199startup_seg_w1_c2c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action ugly200move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_daewh)
       (not_blocked seg_08l_a7a_0_80 airplane_daew1)
       (not_blocked seg_08l_a7a_0_80 airplane_daew2)
       (not_blocked seg_08l_a7a_0_80 airplane_daew4)
       (not_blocked seg_08l_a7a_0_80 airplane_daew5)
       (not_blocked seg_08l_a7a_0_80 airplane_daew6)
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
 (:action ugly201startup_seg_n_a4a7f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action ugly202park_seg_p143_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action ugly203startup_seg_m_a10b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action ugly204move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew2)
       (not_blocked seg_o1_118c_0_34 airplane_daew4)
       (not_blocked seg_o1_118c_0_34 airplane_daew5)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
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
 (:action ugly205startup_seg_m_a4a_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_m_a4b_0_60) (not_occupied seg_m_a4c_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly206startup_seg_m_a3a_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action ugly207startup_seg_p117_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action ugly208startup_seg_o1_116c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action ugly209move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_daewh)
       (not_blocked seg_08l_a2b_0_80 airplane_daew1)
       (not_blocked seg_08l_a2b_0_80 airplane_daew2)
       (not_blocked seg_08l_a2b_0_80 airplane_daew4)
       (not_blocked seg_08l_a2b_0_80 airplane_daew5)
       (not_blocked seg_08l_a2b_0_80 airplane_daew6)
       (not_blocked seg_08l_a2b_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_a_0_90))
       (not_occupied seg_a2_a_0_90) (not (at-segment ?a seg_a2_a_0_90))
       (occupied seg_08l_a2b_0_80) (not (not_occupied seg_08l_a2b_0_80))
       (blocked seg_08l_a2b_0_80 ?a) (not (not_blocked seg_08l_a2b_0_80 ?a))
       (at-segment ?a seg_08l_a2b_0_80) (not (blocked seg_a2_b_0_90 ?a))
       (not_blocked seg_a2_b_0_90 ?a)))
 (:action ugly210move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew1)
       (not_blocked seg_w1_c3c_0_48 airplane_daew2)
       (not_blocked seg_w1_c3c_0_48 airplane_daew4)
       (not_blocked seg_w1_c3c_0_48 airplane_daew5)
       (not_blocked seg_w1_c3c_0_48 airplane_daew6)
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
 (:action ugly211startup_seg_n_a6a8d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action ugly212move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
       (not_blocked seg_w1_153b_0_45 airplane_daew2)
       (not_blocked seg_w1_153b_0_45 airplane_daew4)
       (not_blocked seg_w1_153b_0_45 airplane_daew5)
       (not_blocked seg_w1_153b_0_45 airplane_daew6)
       (not_blocked seg_w1_153b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p153_0_75))
       (not_occupied seg_p153_0_75) (not (at-segment ?a seg_p153_0_75))
       (occupied seg_w1_153b_0_45) (not (not_occupied seg_w1_153b_0_45))
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action ugly213startup_seg_m_a9c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action ugly214startup_seg_n_a9b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action ugly215park_seg_p132_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action ugly216startup_seg_p102_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly217startup_seg_n_a3d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action ugly218startup_seg_p131_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly219startup_seg_m_a3a4e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action ugly220startup_seg_p131_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly221move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2)
       (not_blocked seg_o1_111c_0_34 airplane_daew4)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
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
 (:action ugly222startup_seg_08l_a10a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action ugly223startup_seg_n_a2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly224move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
       (not_blocked seg_w1_163c_0_34 airplane_daew2)
       (not_blocked seg_w1_163c_0_34 airplane_daew4)
       (not_blocked seg_w1_163c_0_34 airplane_daew5)
       (not_blocked seg_w1_163c_0_34 airplane_daew6)
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
 (:action ugly225move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew1)
       (not_blocked seg_o1_115a_0_34 airplane_daew2)
       (not_blocked seg_o1_115a_0_34 airplane_daew4)
       (not_blocked seg_o1_115a_0_34 airplane_daew5)
       (not_blocked seg_o1_115a_0_34 airplane_daew6)
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
 (:action ugly226startup_seg_m_a8a9b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action ugly227startup_seg_o1_116b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly228startup_seg_n_a4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action ugly229startup_seg_o1_c2c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action ugly230startup_seg_w1_c2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly231move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_daewh)
       (not_blocked seg_w1_c1b_0_60 airplane_daew1)
       (not_blocked seg_w1_c1b_0_60 airplane_daew2)
       (not_blocked seg_w1_c1b_0_60 airplane_daew4)
       (not_blocked seg_w1_c1b_0_60 airplane_daew5)
       (not_blocked seg_w1_c1b_0_60 airplane_daew6)
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
 (:action ugly232startup_seg_c1_n2b_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly233startup_seg_w1_154b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action ugly234move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew2)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew4)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3b_0_75))
       (not_occupied seg_n_a2a3b_0_75) (not (at-segment ?a seg_n_a2a3b_0_75))
       (occupied seg_n_a2a3a_0_75) (not (not_occupied seg_n_a2a3a_0_75))
       (blocked seg_n_a2a3a_0_75 ?a) (not (not_blocked seg_n_a2a3a_0_75 ?a))
       (at-segment ?a seg_n_a2a3a_0_75) (not (blocked seg_n_a2a3c_0_75 ?a))
       (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action ugly235move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2)
       (not_blocked seg_o1_c1b_0_34 airplane_daew4)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
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
 (:action ugly236park_seg_p163_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action ugly237startup_seg_p133_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly238startup_seg_m_a4a7a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action ugly239startup_seg_a4_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly240move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_daewh)
       (not_blocked seg_08l_a4d_0_80 airplane_daew1)
       (not_blocked seg_08l_a4d_0_80 airplane_daew2)
       (not_blocked seg_08l_a4d_0_80 airplane_daew4)
       (not_blocked seg_08l_a4d_0_80 airplane_daew5)
       (not_blocked seg_08l_a4d_0_80 airplane_daew6)
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
 (:action ugly241move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_daewh)
       (not_blocked seg_m_a8b_0_60 airplane_daew1)
       (not_blocked seg_m_a8b_0_60 airplane_daew2)
       (not_blocked seg_m_a8b_0_60 airplane_daew4)
       (not_blocked seg_m_a8b_0_60 airplane_daew5)
       (not_blocked seg_m_a8b_0_60 airplane_daew6)
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
 (:action ugly242startup_seg_p108_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly243startup_seg_n_a8a9d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action ugly244startup_seg_p104_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly245startup_seg_m_a3a4b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action ugly246startup_seg_m_a8d_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly247startup_seg_o1_103c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly248move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2)
       (not_blocked seg_o1_c1b_0_34 airplane_daew4)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
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
 (:action ugly249startup_seg_w1_153b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly250startup_seg_w1_163a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly251move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
       (not_blocked seg_w1_154c_0_34 airplane_daew2)
       (not_blocked seg_w1_154c_0_34 airplane_daew4)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
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
 (:action ugly252move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew1)
       (not_blocked seg_w1_152a_0_34 airplane_daew2)
       (not_blocked seg_w1_152a_0_34 airplane_daew4)
       (not_blocked seg_w1_152a_0_34 airplane_daew5)
       (not_blocked seg_w1_152a_0_34 airplane_daew6)
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
 (:action ugly253move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew2)
       (not_blocked seg_c1_n2b_0_80 airplane_daew4)
       (not_blocked seg_c1_n2b_0_80 airplane_daew5)
       (not_blocked seg_c1_n2b_0_80 airplane_daew6)
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
 (:action ugly254startup_seg_o1_110d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action ugly255startup_seg_c1_n2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly256move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew1)
       (not_blocked seg_w1_161a_0_34 airplane_daew2)
       (not_blocked seg_w1_161a_0_34 airplane_daew4)
       (not_blocked seg_w1_161a_0_34 airplane_daew5)
       (not_blocked seg_w1_161a_0_34 airplane_daew6)
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
 (:action ugly257move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew1)
       (not_blocked seg_w1_153a_0_34 airplane_daew2)
       (not_blocked seg_w1_153a_0_34 airplane_daew4)
       (not_blocked seg_w1_153a_0_34 airplane_daew5)
       (not_blocked seg_w1_153a_0_34 airplane_daew6)
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
 (:action ugly258move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
       (not_blocked seg_o1_110a_0_34 airplane_daew2)
       (not_blocked seg_o1_110a_0_34 airplane_daew4)
       (not_blocked seg_o1_110a_0_34 airplane_daew5)
       (not_blocked seg_o1_110a_0_34 airplane_daew6)
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
 (:action ugly259move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew1)
       (not_blocked seg_o1_110b_0_60 airplane_daew2)
       (not_blocked seg_o1_110b_0_60 airplane_daew4)
       (not_blocked seg_o1_110b_0_60 airplane_daew5)
       (not_blocked seg_o1_110b_0_60 airplane_daew6)
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
 (:action ugly260move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
       (not_blocked seg_w1_151c_0_34 airplane_daew2)
       (not_blocked seg_w1_151c_0_34 airplane_daew4)
       (not_blocked seg_w1_151c_0_34 airplane_daew5)
       (not_blocked seg_w1_151c_0_34 airplane_daew6)
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
 (:action ugly261startup_seg_a8_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly262startup_seg_n_a2a3c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action ugly263startup_seg_o1_111b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action ugly264startup_seg_m_a3c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action ugly265move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
       (not_blocked seg_o1_117c_0_34 airplane_daew2)
       (not_blocked seg_o1_117c_0_34 airplane_daew4)
       (not_blocked seg_o1_117c_0_34 airplane_daew5)
       (not_blocked seg_o1_117c_0_34 airplane_daew6)
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
 (:action ugly266move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew2)
       (not_blocked seg_o1_c2b_0_60 airplane_daew4)
       (not_blocked seg_o1_c2b_0_60 airplane_daew5)
       (not_blocked seg_o1_c2b_0_60 airplane_daew6)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p107_0_76))
       (not_occupied seg_p107_0_76) (not (at-segment ?a seg_p107_0_76))
       (occupied seg_o1_c2b_0_60) (not (not_occupied seg_o1_c2b_0_60))
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (at-segment ?a seg_o1_c2b_0_60)))
 (:action ugly267startup_seg_w1_143c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action ugly268move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew1)
       (not_blocked seg_w1_c1a_0_60 airplane_daew2)
       (not_blocked seg_w1_c1a_0_60 airplane_daew4)
       (not_blocked seg_w1_c1a_0_60 airplane_daew5)
       (not_blocked seg_w1_c1a_0_60 airplane_daew6)
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
 (:action ugly269startup_seg_m_a9a10d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action ugly270move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_daewh)
       (not_blocked seg_p107_0_76 airplane_daew1)
       (not_blocked seg_p107_0_76 airplane_daew2)
       (not_blocked seg_p107_0_76 airplane_daew4)
       (not_blocked seg_p107_0_76 airplane_daew5)
       (not_blocked seg_p107_0_76 airplane_daew6)
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
 (:action ugly271startup_seg_n_a6a8f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action ugly272startup_seg_m_a8a9a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action ugly273move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2)
       (not_blocked seg_o1_108c_0_34 airplane_daew4)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
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
 (:action ugly274move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
       (not_blocked seg_w1_142a_0_34 airplane_daew2)
       (not_blocked seg_w1_142a_0_34 airplane_daew4)
       (not_blocked seg_w1_142a_0_34 airplane_daew5)
       (not_blocked seg_w1_142a_0_34 airplane_daew6)
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
 (:action ugly275park_seg_p151_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action ugly276startup_seg_n_a2a3f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action ugly277startup_seg_08l_a2b_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action ugly278move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew1)
       (not_blocked seg_o1_104b_0_60 airplane_daew2)
       (not_blocked seg_o1_104b_0_60 airplane_daew4)
       (not_blocked seg_o1_104b_0_60 airplane_daew5)
       (not_blocked seg_o1_104b_0_60 airplane_daew6)
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
 (:action ugly279startup_seg_n_a4c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action ugly280move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
       (not_blocked seg_o1_117c_0_34 airplane_daew2)
       (not_blocked seg_o1_117c_0_34 airplane_daew4)
       (not_blocked seg_o1_117c_0_34 airplane_daew5)
       (not_blocked seg_o1_117c_0_34 airplane_daew6)
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
 (:action ugly281move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_daewh)
       (not_blocked seg_p101_0_76 airplane_daew1)
       (not_blocked seg_p101_0_76 airplane_daew2)
       (not_blocked seg_p101_0_76 airplane_daew4)
       (not_blocked seg_p101_0_76 airplane_daew5)
       (not_blocked seg_p101_0_76 airplane_daew6)
       (not_blocked seg_p101_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1a_0_60))
       (not_occupied seg_o1_c1a_0_60) (not (at-segment ?a seg_o1_c1a_0_60))
       (occupied seg_p101_0_76) (not (not_occupied seg_p101_0_76))
       (blocked seg_p101_0_76 ?a) (not (not_blocked seg_p101_0_76 ?a))
       (at-segment ?a seg_p101_0_76) (not (blocked seg_o1_c1b_0_34 ?a))
       (not_blocked seg_o1_c1b_0_34 ?a) (not (blocked seg_o1_c1c_0_80 ?a))
       (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action ugly282move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
       (not_blocked seg_o1_c3a_0_34 airplane_daew2)
       (not_blocked seg_o1_c3a_0_34 airplane_daew4)
       (not_blocked seg_o1_c3a_0_34 airplane_daew5)
       (not_blocked seg_o1_c3a_0_34 airplane_daew6)
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
 (:action ugly283startup_seg_m_a7a6b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action ugly284startup_seg_n_a2a3f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly285startup_seg_w1_c4a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly286startup_seg_m_a3c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action ugly287startup_seg_m_a3a4c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action ugly288startup_seg_m_a7a_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_m_a7b_0_60) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly289startup_seg_w1_141a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action ugly290startup_seg_o1_116a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly291startup_seg_w1_154c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly292startup_seg_p111_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action ugly293startup_seg_a4_a_0_157_785_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action ugly294move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2)
       (not_blocked seg_o1_108c_0_34 airplane_daew4)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
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
 (:action ugly295startup_seg_w1_143c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action ugly296startup_seg_n2_0_108_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action ugly297startup_seg_m_a3a4b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action ugly298startup_seg_o1_108b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action ugly299startup_seg_n_a4a7d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action ugly300startup_seg_m_a9a10g_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action ugly301startup_seg_n_a8a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action ugly302startup_seg_o1_103b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly303move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew1)
       (not_blocked seg_w1_c1c_0_34 airplane_daew2)
       (not_blocked seg_w1_c1c_0_34 airplane_daew4)
       (not_blocked seg_w1_c1c_0_34 airplane_daew5)
       (not_blocked seg_w1_c1c_0_34 airplane_daew6)
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
 (:action ugly304move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew2)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew4)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8d_0_75))
       (not_occupied seg_n_a6a8d_0_75) (not (at-segment ?a seg_n_a6a8d_0_75))
       (occupied seg_n_a6a8c_0_75) (not (not_occupied seg_n_a6a8c_0_75))
       (blocked seg_n_a6a8c_0_75 ?a) (not (not_blocked seg_n_a6a8c_0_75 ?a))
       (at-segment ?a seg_n_a6a8c_0_75) (not (blocked seg_n_a6a8e_0_75 ?a))
       (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action ugly305move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew1)
       (not_blocked seg_o1_109b_0_60 airplane_daew2)
       (not_blocked seg_o1_109b_0_60 airplane_daew4)
       (not_blocked seg_o1_109b_0_60 airplane_daew5)
       (not_blocked seg_o1_109b_0_60 airplane_daew6)
       (not_blocked seg_o1_109b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p109_0_76))
       (not_occupied seg_p109_0_76) (not (at-segment ?a seg_p109_0_76))
       (occupied seg_o1_109b_0_60) (not (not_occupied seg_o1_109b_0_60))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action ugly306startup_seg_o1_c4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action ugly307startup_seg_c3_a_0_80_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly308startup_seg_n_a6c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action ugly309startup_seg_o1_102a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly310move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew1)
       (not_blocked seg_o1_104a_0_34 airplane_daew2)
       (not_blocked seg_o1_104a_0_34 airplane_daew4)
       (not_blocked seg_o1_104a_0_34 airplane_daew5)
       (not_blocked seg_o1_104a_0_34 airplane_daew6)
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
 (:action ugly311move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew1)
       (not_blocked seg_w1_143a_0_34 airplane_daew2)
       (not_blocked seg_w1_143a_0_34 airplane_daew4)
       (not_blocked seg_w1_143a_0_34 airplane_daew5)
       (not_blocked seg_w1_143a_0_34 airplane_daew6)
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
 (:action ugly312startup_seg_o1_c3c_0_48_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action ugly313startup_seg_w1_152c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action ugly314move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_daewh)
       (not_blocked seg_p162_0_75 airplane_daew1)
       (not_blocked seg_p162_0_75 airplane_daew2)
       (not_blocked seg_p162_0_75 airplane_daew4)
       (not_blocked seg_p162_0_75 airplane_daew5)
       (not_blocked seg_p162_0_75 airplane_daew6)
       (not_blocked seg_p162_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162b_0_45))
       (not_occupied seg_w1_162b_0_45) (not (at-segment ?a seg_w1_162b_0_45))
       (occupied seg_p162_0_75) (not (not_occupied seg_p162_0_75))
       (blocked seg_p162_0_75 ?a) (not (not_blocked seg_p162_0_75 ?a))
       (at-segment ?a seg_p162_0_75) (not (blocked seg_w1_162a_0_34 ?a))
       (not_blocked seg_w1_162a_0_34 ?a) (not (blocked seg_w1_162c_0_34 ?a))
       (not_blocked seg_w1_162c_0_34 ?a)))
 (:action ugly315pushback_seg_p112_0_76_seg_o1_c3b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew2)
       (not_blocked seg_o1_c3b_0_60 airplane_daew4)
       (not_blocked seg_o1_c3b_0_60 airplane_daew5)
       (not_blocked seg_o1_c3b_0_60 airplane_daew6)
       (not_blocked seg_o1_c3b_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_p112_0_76)) (not_occupied seg_p112_0_76)
       (not (blocked seg_p112_0_76 ?a)) (not_blocked seg_p112_0_76 ?a)
       (not (at-segment ?a seg_p112_0_76)) (occupied seg_o1_c3b_0_60)
       (not (not_occupied seg_o1_c3b_0_60)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (at-segment ?a seg_o1_c3b_0_60)))
 (:action ugly316startup_seg_a10_0_80_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action ugly317startup_seg_m_a6a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action ugly318startup_seg_08l_a4b_0_161_245_south_medium :parameters
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
 (:action ugly319startup_seg_o1_102b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action ugly320startup_seg_o1_109c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly321startup_seg_p119_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly322startup_seg_n_a6a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly323startup_seg_n_a7a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action ugly324startup_seg_m_a6a8e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action ugly325startup_seg_08l_a3b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action ugly326startup_seg_m_a6a8b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action ugly327park_seg_p164_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action ugly328move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew1)
       (not_blocked seg_w1_c1c_0_34 airplane_daew2)
       (not_blocked seg_w1_c1c_0_34 airplane_daew4)
       (not_blocked seg_w1_c1c_0_34 airplane_daew5)
       (not_blocked seg_w1_c1c_0_34 airplane_daew6)
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
 (:action ugly329move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_daewh)
       (not_blocked seg_n2_0_108 airplane_daew1)
       (not_blocked seg_n2_0_108 airplane_daew2)
       (not_blocked seg_n2_0_108 airplane_daew4)
       (not_blocked seg_n2_0_108 airplane_daew5)
       (not_blocked seg_n2_0_108 airplane_daew6)
       (not_blocked seg_n2_0_108 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2b_0_60))
       (not_occupied seg_n_n2b_0_60) (not (at-segment ?a seg_n_n2b_0_60))
       (occupied seg_n2_0_108) (not (not_occupied seg_n2_0_108))
       (blocked seg_n2_0_108 ?a) (not (not_blocked seg_n2_0_108 ?a))
       (at-segment ?a seg_n2_0_108) (not (blocked seg_n_n2a_0_60 ?a))
       (not_blocked seg_n_n2a_0_60 ?a) (not (blocked seg_n_n2c_0_60 ?a))
       (not_blocked seg_n_n2c_0_60 ?a)))
 (:action ugly330startup_seg_n_a6a8a_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action ugly331startup_seg_a8_b_1_0_79_7559_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action ugly332startup_seg_n_a7a6c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action ugly333move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
       (not_blocked seg_o1_108d_0_45 airplane_daew2)
       (not_blocked seg_o1_108d_0_45 airplane_daew4)
       (not_blocked seg_o1_108d_0_45 airplane_daew5)
       (not_blocked seg_o1_108d_0_45 airplane_daew6)
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
 (:action ugly334startup_seg_m_a3a4e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action ugly335move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
       (not_blocked seg_w1_153b_0_45 airplane_daew2)
       (not_blocked seg_w1_153b_0_45 airplane_daew4)
       (not_blocked seg_w1_153b_0_45 airplane_daew5)
       (not_blocked seg_w1_153b_0_45 airplane_daew6)
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
 (:action ugly336startup_seg_c4_s6c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action ugly337startup_seg_w1_154c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action ugly338move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew2)
       (not_blocked seg_w1_141c_0_34 airplane_daew4)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
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
 (:action ugly339startup_seg_n_a10a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action ugly340startup_seg_o1_102c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly341park_seg_p117_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action ugly342startup_seg_w1_152a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action ugly343startup_seg_o1_104a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly344move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew2)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew4)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4e_0_75))
       (not_occupied seg_n_n2a4e_0_75) (not (at-segment ?a seg_n_n2a4e_0_75))
       (occupied seg_n_n2a4d_0_75) (not (not_occupied seg_n_n2a4d_0_75))
       (blocked seg_n_n2a4d_0_75 ?a) (not (not_blocked seg_n_n2a4d_0_75 ?a))
       (at-segment ?a seg_n_n2a4d_0_75) (not (blocked seg_n_a4c_0_60 ?a))
       (not_blocked seg_n_a4c_0_60 ?a)))
 (:action ugly345startup_seg_c2_b_0_80_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action ugly346startup_seg_o1_108c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action ugly347startup_seg_m_a7a6d_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action ugly348startup_seg_a7_a_0_156_924_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action ugly349startup_seg_o1_c3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action ugly350startup_seg_w1_162c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action ugly351startup_seg_m_a7d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action ugly352startup_seg_08l_a4c_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action ugly353move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew2)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew4)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew6)
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
 (:action ugly354startup_seg_o1_111a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action ugly355pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2)
       (not_blocked seg_o1_c1b_0_34 airplane_daew4)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly356move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
       (not_blocked seg_o1_104c_0_60 airplane_daew2)
       (not_blocked seg_o1_104c_0_60 airplane_daew4)
       (not_blocked seg_o1_104c_0_60 airplane_daew5)
       (not_blocked seg_o1_104c_0_60 airplane_daew6)
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
 (:action ugly357startup_seg_o1_c4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly358park_seg_p154_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action ugly359startup_seg_w1_163c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action ugly360startup_seg_n_a9a10g_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action ugly361startup_seg_m_a8a9d_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action ugly362startup_seg_p132_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly363pushback_seg_o1_c2d_0_60_seg_c2_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
       (not_blocked seg_c2_b_0_80 airplane_daew1)
       (not_blocked seg_c2_b_0_80 airplane_daew2)
       (not_blocked seg_c2_b_0_80 airplane_daew4)
       (not_blocked seg_c2_b_0_80 airplane_daew5)
       (not_blocked seg_c2_b_0_80 airplane_daew6)
       (not_blocked seg_c2_b_0_80 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_c2_b_0_80)
       (not (not_occupied seg_c2_b_0_80)) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a)) (at-segment ?a seg_c2_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly364move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_daewh)
       (not_blocked seg_n_a3d_0_60 airplane_daew1)
       (not_blocked seg_n_a3d_0_60 airplane_daew2)
       (not_blocked seg_n_a3d_0_60 airplane_daew4)
       (not_blocked seg_n_a3d_0_60 airplane_daew5)
       (not_blocked seg_n_a3d_0_60 airplane_daew6)
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
 (:action ugly365startup_seg_o1_c1b_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action ugly366startup_seg_m_a8c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action ugly367startup_seg_w1_c4b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly368move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew1)
       (not_blocked seg_o1_118a_0_34 airplane_daew2)
       (not_blocked seg_o1_118a_0_34 airplane_daew4)
       (not_blocked seg_o1_118a_0_34 airplane_daew5)
       (not_blocked seg_o1_118a_0_34 airplane_daew6)
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
 (:action ugly369startup_seg_m_a6a8c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action ugly370startup_seg_p141_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly371startup_seg_n_a6a8e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action ugly372startup_seg_m_a7a6c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action ugly373move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_daewh)
       (not_blocked seg_p133_0_75 airplane_daew1)
       (not_blocked seg_p133_0_75 airplane_daew2)
       (not_blocked seg_p133_0_75 airplane_daew4)
       (not_blocked seg_p133_0_75 airplane_daew5)
       (not_blocked seg_p133_0_75 airplane_daew6)
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
 (:action ugly374move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
       (not_blocked seg_w1_161c_0_34 airplane_daew2)
       (not_blocked seg_w1_161c_0_34 airplane_daew4)
       (not_blocked seg_w1_161c_0_34 airplane_daew5)
       (not_blocked seg_w1_161c_0_34 airplane_daew6)
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
 (:action ugly375move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew1)
       (not_blocked seg_w1_151b_0_45 airplane_daew2)
       (not_blocked seg_w1_151b_0_45 airplane_daew4)
       (not_blocked seg_w1_151b_0_45 airplane_daew5)
       (not_blocked seg_w1_151b_0_45 airplane_daew6)
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
 (:action ugly376move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
       (not_blocked seg_w1_163c_0_34 airplane_daew2)
       (not_blocked seg_w1_163c_0_34 airplane_daew4)
       (not_blocked seg_w1_163c_0_34 airplane_daew5)
       (not_blocked seg_w1_163c_0_34 airplane_daew6)
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
 (:action ugly377startup_seg_o1_118c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action ugly378startup_seg_w1_154a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly379move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
       (not_blocked seg_o1_c1b_0_34 airplane_daew2)
       (not_blocked seg_o1_c1b_0_34 airplane_daew4)
       (not_blocked seg_o1_c1b_0_34 airplane_daew5)
       (not_blocked seg_o1_c1b_0_34 airplane_daew6)
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
 (:action ugly380move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew2)
       (not_blocked seg_o1_c4a_0_34 airplane_daew4)
       (not_blocked seg_o1_c4a_0_34 airplane_daew5)
       (not_blocked seg_o1_c4a_0_34 airplane_daew6)
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
 (:action ugly381startup_seg_p133_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly382startup_seg_a8_a_0_157_785_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action ugly383park_seg_p108_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action ugly384move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
       (not_blocked seg_w1_142c_0_34 airplane_daew2)
       (not_blocked seg_w1_142c_0_34 airplane_daew4)
       (not_blocked seg_w1_142c_0_34 airplane_daew5)
       (not_blocked seg_w1_142c_0_34 airplane_daew6)
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
 (:action ugly385startup_seg_n_n2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly386startup_seg_n_a9a10d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action ugly387startup_seg_08l_a4b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly388startup_seg_m_a7b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7c_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly389startup_seg_m_a6a8d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action ugly390move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew2)
       (not_blocked seg_o1_c4a_0_34 airplane_daew4)
       (not_blocked seg_o1_c4a_0_34 airplane_daew5)
       (not_blocked seg_o1_c4a_0_34 airplane_daew6)
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
 (:action ugly391move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_daewh)
       (not_blocked seg_n_a6b_0_60 airplane_daew1)
       (not_blocked seg_n_a6b_0_60 airplane_daew2)
       (not_blocked seg_n_a6b_0_60 airplane_daew4)
       (not_blocked seg_n_a6b_0_60 airplane_daew5)
       (not_blocked seg_n_a6b_0_60 airplane_daew6)
       (not_blocked seg_n_a6b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8a_0_115))
       (not_occupied seg_n_a6a8a_0_115) (not (at-segment ?a seg_n_a6a8a_0_115))
       (occupied seg_n_a6b_0_60) (not (not_occupied seg_n_a6b_0_60))
       (blocked seg_n_a6b_0_60 ?a) (not (not_blocked seg_n_a6b_0_60 ?a))
       (at-segment ?a seg_n_a6b_0_60) (not (blocked seg_n_a6a8b_0_75 ?a))
       (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action ugly392startup_seg_p132_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly393move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_daewh)
       (not_blocked seg_p109_0_76 airplane_daew1)
       (not_blocked seg_p109_0_76 airplane_daew2)
       (not_blocked seg_p109_0_76 airplane_daew4)
       (not_blocked seg_p109_0_76 airplane_daew5)
       (not_blocked seg_p109_0_76 airplane_daew6)
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
 (:action ugly394move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_daewh)
       (not_blocked seg_c4_s6a_0_80 airplane_daew1)
       (not_blocked seg_c4_s6a_0_80 airplane_daew2)
       (not_blocked seg_c4_s6a_0_80 airplane_daew4)
       (not_blocked seg_c4_s6a_0_80 airplane_daew5)
       (not_blocked seg_c4_s6a_0_80 airplane_daew6)
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
 (:action ugly395move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew2)
       (not_blocked seg_o1_c2a_0_60 airplane_daew4)
       (not_blocked seg_o1_c2a_0_60 airplane_daew5)
       (not_blocked seg_o1_c2a_0_60 airplane_daew6)
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
 (:action ugly396move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew2)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew4)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew5)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew6)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6c_0_75))
       (not_occupied seg_n_a7a6c_0_75) (not (at-segment ?a seg_n_a7a6c_0_75))
       (occupied seg_n_a7a6b_0_75) (not (not_occupied seg_n_a7a6b_0_75))
       (blocked seg_n_a7a6b_0_75 ?a) (not (not_blocked seg_n_a7a6b_0_75 ?a))
       (at-segment ?a seg_n_a7a6b_0_75) (not (blocked seg_n_a7a6d_0_75 ?a))
       (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action ugly397move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
       (not_blocked seg_o1_116c_0_34 airplane_daew2)
       (not_blocked seg_o1_116c_0_34 airplane_daew4)
       (not_blocked seg_o1_116c_0_34 airplane_daew5)
       (not_blocked seg_o1_116c_0_34 airplane_daew6)
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
 (:action ugly398startup_seg_w1_c1a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly399startup_seg_m_a9a10a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action ugly400move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew2)
       (not_blocked seg_o1_c3d_0_60 airplane_daew4)
       (not_blocked seg_o1_c3d_0_60 airplane_daew5)
       (not_blocked seg_o1_c3d_0_60 airplane_daew6)
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
 (:action ugly401startup_seg_n_a7a6a_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action ugly402move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
       (not_blocked seg_o1_103c_0_34 airplane_daew2)
       (not_blocked seg_o1_103c_0_34 airplane_daew4)
       (not_blocked seg_o1_103c_0_34 airplane_daew5)
       (not_blocked seg_o1_103c_0_34 airplane_daew6)
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
 (:action ugly403park_seg_p154_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action ugly404startup_seg_o1_111c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly405startup_seg_p103_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action ugly406move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew1)
       (not_blocked seg_o1_116b_0_60 airplane_daew2)
       (not_blocked seg_o1_116b_0_60 airplane_daew4)
       (not_blocked seg_o1_116b_0_60 airplane_daew5)
       (not_blocked seg_o1_116b_0_60 airplane_daew6)
       (not_blocked seg_o1_116b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p116_0_76))
       (not_occupied seg_p116_0_76) (not (at-segment ?a seg_p116_0_76))
       (occupied seg_o1_116b_0_60) (not (not_occupied seg_o1_116b_0_60))
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action ugly407startup_seg_o1_103a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly408startup_seg_w1_c1c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action ugly409startup_seg_w1_164c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action ugly410startup_seg_o1_104b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action ugly411startup_seg_n_a8b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action ugly412startup_seg_n_a3a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_n_a3b_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly413startup_seg_w1_c1a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action ugly414move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew1)
       (not_blocked seg_w1_164c_0_34 airplane_daew2)
       (not_blocked seg_w1_164c_0_34 airplane_daew4)
       (not_blocked seg_w1_164c_0_34 airplane_daew5)
       (not_blocked seg_w1_164c_0_34 airplane_daew6)
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
 (:action ugly415startup_seg_m_a8a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action ugly416startup_seg_n_a7b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action ugly417startup_seg_n_n2c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action ugly418move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_daewh)
       (not_blocked seg_n_a7b_0_60 airplane_daew1)
       (not_blocked seg_n_a7b_0_60 airplane_daew2)
       (not_blocked seg_n_a7b_0_60 airplane_daew4)
       (not_blocked seg_n_a7b_0_60 airplane_daew5)
       (not_blocked seg_n_a7b_0_60 airplane_daew6)
       (not_blocked seg_n_a7b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6a_0_85))
       (not_occupied seg_n_a7a6a_0_85) (not (at-segment ?a seg_n_a7a6a_0_85))
       (occupied seg_n_a7b_0_60) (not (not_occupied seg_n_a7b_0_60))
       (blocked seg_n_a7b_0_60 ?a) (not (not_blocked seg_n_a7b_0_60 ?a))
       (at-segment ?a seg_n_a7b_0_60) (not (blocked seg_n_a7a6b_0_75 ?a))
       (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action ugly419startup_seg_o1_117b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action ugly420startup_seg_n_a9a10e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action ugly421move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
       (not_blocked seg_o1_102c_0_34 airplane_daew2)
       (not_blocked seg_o1_102c_0_34 airplane_daew4)
       (not_blocked seg_o1_102c_0_34 airplane_daew5)
       (not_blocked seg_o1_102c_0_34 airplane_daew6)
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
 (:action ugly422startup_seg_o1_c3a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_c3b_0_60) (not_occupied seg_o1_c3c_0_48)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a)) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action ugly423move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_daewh)
       (not_blocked seg_08l_a2a_0_80 airplane_daew1)
       (not_blocked seg_08l_a2a_0_80 airplane_daew2)
       (not_blocked seg_08l_a2a_0_80 airplane_daew4)
       (not_blocked seg_08l_a2a_0_80 airplane_daew5)
       (not_blocked seg_08l_a2a_0_80 airplane_daew6)
       (not_blocked seg_08l_a2a_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2b_0_80))
       (not_occupied seg_08l_a2b_0_80) (not (at-segment ?a seg_08l_a2b_0_80))
       (occupied seg_08l_a2a_0_80) (not (not_occupied seg_08l_a2a_0_80))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (at-segment ?a seg_08l_a2a_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_a2_a_0_90 ?a))
       (not_blocked seg_a2_a_0_90 ?a)))
 (:action ugly424startup_seg_n_a6a8d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action ugly425startup_seg_m_a6a8e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action ugly426move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_daewh)
       (not_blocked seg_p104_0_76 airplane_daew1)
       (not_blocked seg_p104_0_76 airplane_daew2)
       (not_blocked seg_p104_0_76 airplane_daew4)
       (not_blocked seg_p104_0_76 airplane_daew5)
       (not_blocked seg_p104_0_76 airplane_daew6)
       (not_blocked seg_p104_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104b_0_60))
       (not_occupied seg_o1_104b_0_60) (not (at-segment ?a seg_o1_104b_0_60))
       (occupied seg_p104_0_76) (not (not_occupied seg_p104_0_76))
       (blocked seg_p104_0_76 ?a) (not (not_blocked seg_p104_0_76 ?a))
       (at-segment ?a seg_p104_0_76) (not (blocked seg_o1_104a_0_34 ?a))
       (not_blocked seg_o1_104a_0_34 ?a) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a)))
 (:action ugly427move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew1)
       (not_blocked seg_c1_n2c_0_60 airplane_daew2)
       (not_blocked seg_c1_n2c_0_60 airplane_daew4)
       (not_blocked seg_c1_n2c_0_60 airplane_daew5)
       (not_blocked seg_c1_n2c_0_60 airplane_daew6)
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
 (:action ugly428move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
       (not_blocked seg_o1_103c_0_34 airplane_daew2)
       (not_blocked seg_o1_103c_0_34 airplane_daew4)
       (not_blocked seg_o1_103c_0_34 airplane_daew5)
       (not_blocked seg_o1_103c_0_34 airplane_daew6)
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
 (:action ugly429startup_seg_o1_111a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly430startup_seg_m_a3a4c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action ugly431startup_seg_a6_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action ugly432startup_seg_a10_1_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action ugly433startup_seg_n_a7a6c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action ugly434move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew1)
       (not_blocked seg_w1_152a_0_34 airplane_daew2)
       (not_blocked seg_w1_152a_0_34 airplane_daew4)
       (not_blocked seg_w1_152a_0_34 airplane_daew5)
       (not_blocked seg_w1_152a_0_34 airplane_daew6)
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
 (:action ugly435startup_seg_w1_161c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action ugly436startup_seg_a3_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action ugly437move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_daewh)
       (not_blocked seg_p134_0_75 airplane_daew1)
       (not_blocked seg_p134_0_75 airplane_daew2)
       (not_blocked seg_p134_0_75 airplane_daew4)
       (not_blocked seg_p134_0_75 airplane_daew5)
       (not_blocked seg_p134_0_75 airplane_daew6)
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
 (:action ugly438startup_seg_n_n2a4b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly439startup_seg_n_a10b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action ugly440park_seg_p101_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action ugly441move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_daewh)
       (not_blocked seg_p111_0_76 airplane_daew1)
       (not_blocked seg_p111_0_76 airplane_daew2)
       (not_blocked seg_p111_0_76 airplane_daew4)
       (not_blocked seg_p111_0_76 airplane_daew5)
       (not_blocked seg_p111_0_76 airplane_daew6)
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
 (:action ugly442startup_seg_m_a3a4a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action ugly443startup_seg_a9_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action ugly444startup_seg_m_a4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4c_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly445takeoff_seg_08l_0_80_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action ugly446startup_seg_o1_108a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly447startup_seg_w1_c1b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly448startup_seg_m_a7a6a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action ugly449startup_seg_n_a7a6d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action ugly450move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew2)
       (not_blocked seg_o1_118b_0_60 airplane_daew4)
       (not_blocked seg_o1_118b_0_60 airplane_daew5)
       (not_blocked seg_o1_118b_0_60 airplane_daew6)
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
 (:action ugly451startup_seg_08l_a9b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action ugly452startup_seg_o1_c2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_c2b_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly453move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew2)
       (not_blocked seg_o1_118c_0_34 airplane_daew4)
       (not_blocked seg_o1_118c_0_34 airplane_daew5)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
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
 (:action ugly454startup_seg_m_a10c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action ugly455startup_seg_a2_b_0_90_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action ugly456startup_seg_m_a10c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action ugly457startup_seg_n_a8c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action ugly458startup_seg_n_a7a6b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action ugly459park_seg_p161_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action ugly460startup_seg_n_a2a3b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly461pushback_seg_w1_154b_0_45_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
       (not_blocked seg_w1_154c_0_34 airplane_daew2)
       (not_blocked seg_w1_154c_0_34 airplane_daew4)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
       (not_blocked seg_w1_154c_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_154b_0_45)) (not_occupied seg_w1_154b_0_45)
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)
       (not (at-segment ?a seg_w1_154b_0_45)) (occupied seg_w1_154c_0_34)
       (not (not_occupied seg_w1_154c_0_34)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a)) (at-segment ?a seg_w1_154c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly462move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_daewh)
       (not_blocked seg_p153_0_75 airplane_daew1)
       (not_blocked seg_p153_0_75 airplane_daew2)
       (not_blocked seg_p153_0_75 airplane_daew4)
       (not_blocked seg_p153_0_75 airplane_daew5)
       (not_blocked seg_p153_0_75 airplane_daew6)
       (not_blocked seg_p153_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153b_0_45))
       (not_occupied seg_w1_153b_0_45) (not (at-segment ?a seg_w1_153b_0_45))
       (occupied seg_p153_0_75) (not (not_occupied seg_p153_0_75))
       (blocked seg_p153_0_75 ?a) (not (not_blocked seg_p153_0_75 ?a))
       (at-segment ?a seg_p153_0_75) (not (blocked seg_w1_153a_0_34 ?a))
       (not_blocked seg_w1_153a_0_34 ?a) (not (blocked seg_w1_153c_0_34 ?a))
       (not_blocked seg_w1_153c_0_34 ?a)))
 (:action ugly463park_seg_p152_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action ugly464move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_daewh)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew1)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew2)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew4)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew5)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew6)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6b_0_75))
       (not_occupied seg_n_a7a6b_0_75) (not (at-segment ?a seg_n_a7a6b_0_75))
       (occupied seg_n_a7a6a_0_85) (not (not_occupied seg_n_a7a6a_0_85))
       (blocked seg_n_a7a6a_0_85 ?a) (not (not_blocked seg_n_a7a6a_0_85 ?a))
       (at-segment ?a seg_n_a7a6a_0_85) (not (blocked seg_n_a7a6c_0_75 ?a))
       (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action ugly465startup_seg_o1_110d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action ugly466move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2)
       (not_blocked seg_o1_110c_0_34 airplane_daew4)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
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
 (:action ugly467startup_seg_w1_161a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly468startup_seg_w1_162a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly469startup_seg_o1_108a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly470startup_seg_w1_c3c_0_48_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action ugly471move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
       (not_blocked seg_w1_143c_0_60 airplane_daew2)
       (not_blocked seg_w1_143c_0_60 airplane_daew4)
       (not_blocked seg_w1_143c_0_60 airplane_daew5)
       (not_blocked seg_w1_143c_0_60 airplane_daew6)
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
 (:action ugly472move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew1)
       (not_blocked seg_o1_104a_0_34 airplane_daew2)
       (not_blocked seg_o1_104a_0_34 airplane_daew4)
       (not_blocked seg_o1_104a_0_34 airplane_daew5)
       (not_blocked seg_o1_104a_0_34 airplane_daew6)
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
 (:action ugly473startup_seg_n_a3b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3c_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly474startup_seg_w1_154a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly475move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2)
       (not_blocked seg_o1_109c_0_34 airplane_daew4)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
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
 (:action ugly476startup_seg_p116_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly477startup_seg_n_a7a6b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action ugly478startup_seg_o1_116b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action ugly479startup_seg_a9_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly480startup_seg_w1_162b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action ugly481startup_seg_n_a9a10c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly482move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_daewh)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew1)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew2)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew4)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew5)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew6)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a8_b_1_0_79_7559))
       (not_occupied seg_a8_b_1_0_79_7559)
       (not (at-segment ?a seg_a8_b_1_0_79_7559)) (occupied seg_a8_b_0_80_6226)
       (not (not_occupied seg_a8_b_0_80_6226)) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))
       (at-segment ?a seg_a8_b_0_80_6226) (not (blocked seg_a8_a_0_157_785 ?a))
       (not_blocked seg_a8_a_0_157_785 ?a)))
 (:action ugly483move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
       (not_blocked seg_w1_153c_0_34 airplane_daew2)
       (not_blocked seg_w1_153c_0_34 airplane_daew4)
       (not_blocked seg_w1_153c_0_34 airplane_daew5)
       (not_blocked seg_w1_153c_0_34 airplane_daew6)
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
 (:action ugly484startup_seg_m_a9a10d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action ugly485move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
       (not_blocked seg_w1_154a_0_34 airplane_daew2)
       (not_blocked seg_w1_154a_0_34 airplane_daew4)
       (not_blocked seg_w1_154a_0_34 airplane_daew5)
       (not_blocked seg_w1_154a_0_34 airplane_daew6)
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
 (:action ugly486move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
       (not_blocked seg_w1_154b_0_45 airplane_daew2)
       (not_blocked seg_w1_154b_0_45 airplane_daew4)
       (not_blocked seg_w1_154b_0_45 airplane_daew5)
       (not_blocked seg_w1_154b_0_45 airplane_daew6)
       (not_blocked seg_w1_154b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p154_0_75))
       (not_occupied seg_p154_0_75) (not (at-segment ?a seg_p154_0_75))
       (occupied seg_w1_154b_0_45) (not (not_occupied seg_w1_154b_0_45))
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action ugly487startup_seg_n_a8a9d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action ugly488startup_seg_n_a8c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action ugly489move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
       (not_blocked seg_w1_142a_0_34 airplane_daew2)
       (not_blocked seg_w1_142a_0_34 airplane_daew4)
       (not_blocked seg_w1_142a_0_34 airplane_daew5)
       (not_blocked seg_w1_142a_0_34 airplane_daew6)
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
 (:action ugly490startup_seg_p118_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly491startup_seg_a9_b_0_159_512_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action ugly492startup_seg_c2_a_0_80_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action ugly493startup_seg_p164_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly494move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew2)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew4)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3c_0_75))
       (not_occupied seg_n_a2a3c_0_75) (not (at-segment ?a seg_n_a2a3c_0_75))
       (occupied seg_n_a2a3b_0_75) (not (not_occupied seg_n_a2a3b_0_75))
       (blocked seg_n_a2a3b_0_75 ?a) (not (not_blocked seg_n_a2a3b_0_75 ?a))
       (at-segment ?a seg_n_a2a3b_0_75) (not (blocked seg_n_a2a3d_0_75 ?a))
       (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action ugly495startup_seg_c4_s6a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly496startup_seg_m_a6b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly497move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
       (not_blocked seg_w1_142c_0_34 airplane_daew2)
       (not_blocked seg_w1_142c_0_34 airplane_daew4)
       (not_blocked seg_w1_142c_0_34 airplane_daew5)
       (not_blocked seg_w1_142c_0_34 airplane_daew6)
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
 (:action ugly498move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew1)
       (not_blocked seg_o1_116a_0_34 airplane_daew2)
       (not_blocked seg_o1_116a_0_34 airplane_daew4)
       (not_blocked seg_o1_116a_0_34 airplane_daew5)
       (not_blocked seg_o1_116a_0_34 airplane_daew6)
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
 (:action ugly499startup_seg_w1_c3a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly500move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew1)
       (not_blocked seg_o1_115b_0_60 airplane_daew2)
       (not_blocked seg_o1_115b_0_60 airplane_daew4)
       (not_blocked seg_o1_115b_0_60 airplane_daew5)
       (not_blocked seg_o1_115b_0_60 airplane_daew6)
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
 (:action ugly501park_seg_p103_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action ugly502move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew1)
       (not_blocked seg_w1_141a_0_34 airplane_daew2)
       (not_blocked seg_w1_141a_0_34 airplane_daew4)
       (not_blocked seg_w1_141a_0_34 airplane_daew5)
       (not_blocked seg_w1_141a_0_34 airplane_daew6)
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
 (:action ugly503startup_seg_n_a7a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action ugly504move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew1)
       (not_blocked seg_w1_142b_0_45 airplane_daew2)
       (not_blocked seg_w1_142b_0_45 airplane_daew4)
       (not_blocked seg_w1_142b_0_45 airplane_daew5)
       (not_blocked seg_w1_142b_0_45 airplane_daew6)
       (not_blocked seg_w1_142b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p142_0_75))
       (not_occupied seg_p142_0_75) (not (at-segment ?a seg_p142_0_75))
       (occupied seg_w1_142b_0_45) (not (not_occupied seg_w1_142b_0_45))
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action ugly505startup_seg_n_a7b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action ugly506move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew2)
       (not_blocked seg_o1_c4c_0_80 airplane_daew4)
       (not_blocked seg_o1_c4c_0_80 airplane_daew5)
       (not_blocked seg_o1_c4c_0_80 airplane_daew6)
       (not_blocked seg_o1_c4c_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_s6a_0_80))
       (not_occupied seg_c4_s6a_0_80) (not (at-segment ?a seg_c4_s6a_0_80))
       (occupied seg_o1_c4c_0_80) (not (not_occupied seg_o1_c4c_0_80))
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))
       (at-segment ?a seg_o1_c4c_0_80) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c4_s6c_0_60 ?a))
       (not_blocked seg_c4_s6c_0_60 ?a)))
 (:action ugly507park_seg_p102_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action ugly508startup_seg_m_a8d_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action ugly509pushback_seg_w1_141b_0_45_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew2)
       (not_blocked seg_w1_141c_0_34 airplane_daew4)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
       (not_blocked seg_w1_141c_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly510startup_seg_w1_142b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly511move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
       (not_blocked seg_o1_c2a_0_60 airplane_daew2)
       (not_blocked seg_o1_c2a_0_60 airplane_daew4)
       (not_blocked seg_o1_c2a_0_60 airplane_daew5)
       (not_blocked seg_o1_c2a_0_60 airplane_daew6)
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
 (:action ugly512startup_seg_w1_151c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action ugly513move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew2)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew4)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew5)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4d_0_75))
       (not_occupied seg_n_n2a4d_0_75) (not (at-segment ?a seg_n_n2a4d_0_75))
       (occupied seg_n_n2a4c_0_75) (not (not_occupied seg_n_n2a4c_0_75))
       (blocked seg_n_n2a4c_0_75 ?a) (not (not_blocked seg_n_n2a4c_0_75 ?a))
       (at-segment ?a seg_n_n2a4c_0_75) (not (blocked seg_n_n2a4e_0_75 ?a))
       (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action ugly514pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
       (not_blocked seg_o1_102a_0_34 airplane_daew2)
       (not_blocked seg_o1_102a_0_34 airplane_daew4)
       (not_blocked seg_o1_102a_0_34 airplane_daew5)
       (not_blocked seg_o1_102a_0_34 airplane_daew6)
       (not_blocked seg_o1_102a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly515startup_seg_n_a8a9a_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action ugly516startup_seg_m_a4c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action ugly517move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_daewh)
       (not_blocked seg_p131_0_75 airplane_daew1)
       (not_blocked seg_p131_0_75 airplane_daew2)
       (not_blocked seg_p131_0_75 airplane_daew4)
       (not_blocked seg_p131_0_75 airplane_daew5)
       (not_blocked seg_p131_0_75 airplane_daew6)
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
 (:action ugly518startup_seg_08l_a9b_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action ugly519park_seg_p153_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action ugly520startup_seg_m_a9a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action ugly521startup_seg_a2_b_0_90_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action ugly522pushback_seg_p107_0_76_seg_o1_c2b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew2)
       (not_blocked seg_o1_c2b_0_60 airplane_daew4)
       (not_blocked seg_o1_c2b_0_60 airplane_daew5)
       (not_blocked seg_o1_c2b_0_60 airplane_daew6)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (blocked seg_p107_0_76 ?a)) (not_blocked seg_p107_0_76 ?a)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action ugly523startup_seg_w1_143a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly524startup_seg_m_a6a8b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action ugly525startup_seg_m_a4c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly526startup_seg_w1_153b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action ugly527startup_seg_n_a4a7d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action ugly528move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2)
       (not_blocked seg_o1_109c_0_34 airplane_daew4)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
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
 (:action ugly529park_seg_p164_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action ugly530startup_seg_w1_151b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action ugly531startup_seg_n_n2a4c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action ugly532startup_seg_p161_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly533startup_seg_n_a2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action ugly534move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daewh)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew1)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew2)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew4)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew5)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew6)
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
 (:action ugly535move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew1)
       (not_blocked seg_w1_162b_0_45 airplane_daew2)
       (not_blocked seg_w1_162b_0_45 airplane_daew4)
       (not_blocked seg_w1_162b_0_45 airplane_daew5)
       (not_blocked seg_w1_162b_0_45 airplane_daew6)
       (not_blocked seg_w1_162b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p162_0_75))
       (not_occupied seg_p162_0_75) (not (at-segment ?a seg_p162_0_75))
       (occupied seg_w1_162b_0_45) (not (not_occupied seg_w1_162b_0_45))
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action ugly536move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2)
       (not_blocked seg_o1_111c_0_34 airplane_daew4)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
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
 (:action ugly537startup_seg_w1_164a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly538move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew1)
       (not_blocked seg_w1_c3a_0_34 airplane_daew2)
       (not_blocked seg_w1_c3a_0_34 airplane_daew4)
       (not_blocked seg_w1_c3a_0_34 airplane_daew5)
       (not_blocked seg_w1_c3a_0_34 airplane_daew6)
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
 (:action ugly539move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew1)
       (not_blocked seg_o1_117a_0_34 airplane_daew2)
       (not_blocked seg_o1_117a_0_34 airplane_daew4)
       (not_blocked seg_o1_117a_0_34 airplane_daew5)
       (not_blocked seg_o1_117a_0_34 airplane_daew6)
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
 (:action ugly540startup_seg_n_n2a4e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly541startup_seg_o1_111c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action ugly542startup_seg_n_a9a10a_0_80_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action ugly543move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
       (not_blocked seg_o1_109a_0_34 airplane_daew2)
       (not_blocked seg_o1_109a_0_34 airplane_daew4)
       (not_blocked seg_o1_109a_0_34 airplane_daew5)
       (not_blocked seg_o1_109a_0_34 airplane_daew6)
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
 (:action ugly544startup_seg_c1_n2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action ugly545move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
       (not_blocked seg_w1_161c_0_34 airplane_daew2)
       (not_blocked seg_w1_161c_0_34 airplane_daew4)
       (not_blocked seg_w1_161c_0_34 airplane_daew5)
       (not_blocked seg_w1_161c_0_34 airplane_daew6)
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
 (:action ugly546startup_seg_c2_a_0_80_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action ugly547park_seg_p112_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action ugly548startup_seg_n_a4b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action ugly549startup_seg_m_a9a10b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action ugly550move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
       (not_blocked seg_w1_162c_0_34 airplane_daew2)
       (not_blocked seg_w1_162c_0_34 airplane_daew4)
       (not_blocked seg_w1_162c_0_34 airplane_daew5)
       (not_blocked seg_w1_162c_0_34 airplane_daew6)
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
 (:action ugly551startup_seg_o1_c4a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly552move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew1)
       (not_blocked seg_w1_143a_0_34 airplane_daew2)
       (not_blocked seg_w1_143a_0_34 airplane_daew4)
       (not_blocked seg_w1_143a_0_34 airplane_daew5)
       (not_blocked seg_w1_143a_0_34 airplane_daew6)
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
 (:action ugly553startup_seg_n_a9a10c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action ugly554move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
       (not_blocked seg_o1_c3d_0_60 airplane_daew2)
       (not_blocked seg_o1_c3d_0_60 airplane_daew4)
       (not_blocked seg_o1_c3d_0_60 airplane_daew5)
       (not_blocked seg_o1_c3d_0_60 airplane_daew6)
       (not_blocked seg_o1_c3d_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_b_0_80))
       (not_occupied seg_c3_b_0_80) (not (at-segment ?a seg_c3_b_0_80))
       (occupied seg_o1_c3d_0_60) (not (not_occupied seg_o1_c3d_0_60))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))
       (at-segment ?a seg_o1_c3d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c3_a_0_80 ?a))
       (not_blocked seg_c3_a_0_80 ?a)))
 (:action ugly555move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew2)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew4)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew5)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew6)
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
 (:action ugly556startup_seg_n2_0_108_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action ugly557park_seg_p103_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action ugly558startup_seg_m_a8a9a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action ugly559startup_seg_m_a9a10f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action ugly560move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew2)
       (not_blocked seg_o1_118b_0_60 airplane_daew4)
       (not_blocked seg_o1_118b_0_60 airplane_daew5)
       (not_blocked seg_o1_118b_0_60 airplane_daew6)
       (not_blocked seg_o1_118b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p118_0_76))
       (not_occupied seg_p118_0_76) (not (at-segment ?a seg_p118_0_76))
       (occupied seg_o1_118b_0_60) (not (not_occupied seg_o1_118b_0_60))
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action ugly561move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew1)
       (not_blocked seg_w1_164c_0_34 airplane_daew2)
       (not_blocked seg_w1_164c_0_34 airplane_daew4)
       (not_blocked seg_w1_164c_0_34 airplane_daew5)
       (not_blocked seg_w1_164c_0_34 airplane_daew6)
       (not_blocked seg_w1_164c_0_34 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c4a_0_34))
       (not_occupied seg_w1_c4a_0_34) (not (at-segment ?a seg_w1_c4a_0_34))
       (occupied seg_w1_164c_0_34) (not (not_occupied seg_w1_164c_0_34))
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))
       (at-segment ?a seg_w1_164c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c4b_0_60 ?a))
       (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action ugly562move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_daewh)
       (not_blocked seg_p112_0_76 airplane_daew1)
       (not_blocked seg_p112_0_76 airplane_daew2)
       (not_blocked seg_p112_0_76 airplane_daew4)
       (not_blocked seg_p112_0_76 airplane_daew5)
       (not_blocked seg_p112_0_76 airplane_daew6)
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
 (:action ugly563startup_seg_m_a4d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action ugly564move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_daewh)
       (not_blocked seg_n_a4b_0_60 airplane_daew1)
       (not_blocked seg_n_a4b_0_60 airplane_daew2)
       (not_blocked seg_n_a4b_0_60 airplane_daew4)
       (not_blocked seg_n_a4b_0_60 airplane_daew5)
       (not_blocked seg_n_a4b_0_60 airplane_daew6)
       (not_blocked seg_n_a4b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7a_0_115))
       (not_occupied seg_n_a4a7a_0_115) (not (at-segment ?a seg_n_a4a7a_0_115))
       (occupied seg_n_a4b_0_60) (not (not_occupied seg_n_a4b_0_60))
       (blocked seg_n_a4b_0_60 ?a) (not (not_blocked seg_n_a4b_0_60 ?a))
       (at-segment ?a seg_n_a4b_0_60) (not (blocked seg_n_a4a7b_0_75 ?a))
       (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action ugly565park_seg_p133_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action ugly566park_seg_p102_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action ugly567move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_daewh)
       (not_blocked seg_p161_0_75 airplane_daew1)
       (not_blocked seg_p161_0_75 airplane_daew2)
       (not_blocked seg_p161_0_75 airplane_daew4)
       (not_blocked seg_p161_0_75 airplane_daew5)
       (not_blocked seg_p161_0_75 airplane_daew6)
       (not_blocked seg_p161_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161b_0_45))
       (not_occupied seg_w1_161b_0_45) (not (at-segment ?a seg_w1_161b_0_45))
       (occupied seg_p161_0_75) (not (not_occupied seg_p161_0_75))
       (blocked seg_p161_0_75 ?a) (not (not_blocked seg_p161_0_75 ?a))
       (at-segment ?a seg_p161_0_75) (not (blocked seg_w1_161a_0_34 ?a))
       (not_blocked seg_w1_161a_0_34 ?a) (not (blocked seg_w1_161c_0_34 ?a))
       (not_blocked seg_w1_161c_0_34 ?a)))
 (:action ugly568startup_seg_c1_n2b_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly569move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2)
       (not_blocked seg_o1_111a_0_34 airplane_daew4)
       (not_blocked seg_o1_111a_0_34 airplane_daew5)
       (not_blocked seg_o1_111a_0_34 airplane_daew6)
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
 (:action ugly570startup_seg_n_a4a7e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action ugly571startup_seg_n1_0_108_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action ugly572move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew1)
       (not_blocked seg_o1_117a_0_34 airplane_daew2)
       (not_blocked seg_o1_117a_0_34 airplane_daew4)
       (not_blocked seg_o1_117a_0_34 airplane_daew5)
       (not_blocked seg_o1_117a_0_34 airplane_daew6)
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
 (:action ugly573startup_seg_a8_a_0_157_785_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action ugly574startup_seg_m_a4a_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly575startup_seg_w1_163a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly576startup_seg_w1_152b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action ugly577move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew2)
       (not_blocked seg_o1_c2c_0_34 airplane_daew4)
       (not_blocked seg_o1_c2c_0_34 airplane_daew5)
       (not_blocked seg_o1_c2c_0_34 airplane_daew6)
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
 (:action ugly578startup_seg_m_a8b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly579move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
       (not_blocked seg_o1_110d_0_45 airplane_daew2)
       (not_blocked seg_o1_110d_0_45 airplane_daew4)
       (not_blocked seg_o1_110d_0_45 airplane_daew5)
       (not_blocked seg_o1_110d_0_45 airplane_daew6)
       (not_blocked seg_o1_110d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p133_0_75))
       (not_occupied seg_p133_0_75) (not (at-segment ?a seg_p133_0_75))
       (occupied seg_o1_110d_0_45) (not (not_occupied seg_o1_110d_0_45))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action ugly580move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
       (not_blocked seg_w1_152c_0_34 airplane_daew2)
       (not_blocked seg_w1_152c_0_34 airplane_daew4)
       (not_blocked seg_w1_152c_0_34 airplane_daew5)
       (not_blocked seg_w1_152c_0_34 airplane_daew6)
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
 (:action ugly581move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew2)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew4)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3d_0_75))
       (not_occupied seg_n_a2a3d_0_75) (not (at-segment ?a seg_n_a2a3d_0_75))
       (occupied seg_n_a2a3c_0_75) (not (not_occupied seg_n_a2a3c_0_75))
       (blocked seg_n_a2a3c_0_75 ?a) (not (not_blocked seg_n_a2a3c_0_75 ?a))
       (at-segment ?a seg_n_a2a3c_0_75) (not (blocked seg_n_a2a3e_0_75 ?a))
       (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action ugly582startup_seg_a2_a_0_90_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action ugly583startup_seg_a6_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action ugly584park_seg_p162_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action ugly585startup_seg_a7_b_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action ugly586startup_seg_w1_c2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action ugly587startup_seg_c1_n2c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action ugly588startup_seg_m_a4a7c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action ugly589move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_daewh)
       (not_blocked seg_p116_0_76 airplane_daew1)
       (not_blocked seg_p116_0_76 airplane_daew2)
       (not_blocked seg_p116_0_76 airplane_daew4)
       (not_blocked seg_p116_0_76 airplane_daew5)
       (not_blocked seg_p116_0_76 airplane_daew6)
       (not_blocked seg_p116_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116b_0_60))
       (not_occupied seg_o1_116b_0_60) (not (at-segment ?a seg_o1_116b_0_60))
       (occupied seg_p116_0_76) (not (not_occupied seg_p116_0_76))
       (blocked seg_p116_0_76 ?a) (not (not_blocked seg_p116_0_76 ?a))
       (at-segment ?a seg_p116_0_76) (not (blocked seg_o1_116a_0_34 ?a))
       (not_blocked seg_o1_116a_0_34 ?a) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a)))
 (:action ugly590startup_seg_n_n2a4c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action ugly591startup_seg_w1_143a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly592move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_daewh)
       (not_blocked seg_n_a6c_0_60 airplane_daew1)
       (not_blocked seg_n_a6c_0_60 airplane_daew2)
       (not_blocked seg_n_a6c_0_60 airplane_daew4)
       (not_blocked seg_n_a6c_0_60 airplane_daew5)
       (not_blocked seg_n_a6c_0_60 airplane_daew6)
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
 (:action ugly593startup_seg_w1_c3c_0_48_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action ugly594startup_seg_n_a4a7a_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action ugly595startup_seg_w1_141a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action ugly596move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew2)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew4)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew5)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew6)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6d_0_75))
       (not_occupied seg_n_a7a6d_0_75) (not (at-segment ?a seg_n_a7a6d_0_75))
       (occupied seg_n_a7a6c_0_75) (not (not_occupied seg_n_a7a6c_0_75))
       (blocked seg_n_a7a6c_0_75 ?a) (not (not_blocked seg_n_a7a6c_0_75 ?a))
       (at-segment ?a seg_n_a7a6c_0_75) (not (blocked seg_n_a6c_0_60 ?a))
       (not_blocked seg_n_a6c_0_60 ?a)))
 (:action ugly597move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
       (not_blocked seg_w1_153c_0_34 airplane_daew2)
       (not_blocked seg_w1_153c_0_34 airplane_daew4)
       (not_blocked seg_w1_153c_0_34 airplane_daew5)
       (not_blocked seg_w1_153c_0_34 airplane_daew6)
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
 (:action ugly598startup_seg_n1_0_108_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action ugly599startup_seg_c1_n2c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action ugly600startup_seg_m_a6d_0_120_934_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action ugly601move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew1)
       (not_blocked seg_o1_102b_0_60 airplane_daew2)
       (not_blocked seg_o1_102b_0_60 airplane_daew4)
       (not_blocked seg_o1_102b_0_60 airplane_daew5)
       (not_blocked seg_o1_102b_0_60 airplane_daew6)
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
 (:action ugly602move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew2)
       (not_blocked seg_o1_c4b_0_60 airplane_daew4)
       (not_blocked seg_o1_c4b_0_60 airplane_daew5)
       (not_blocked seg_o1_c4b_0_60 airplane_daew6)
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
 (:action ugly603startup_seg_a3_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action ugly604move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
       (not_blocked seg_o1_c2c_0_34 airplane_daew2)
       (not_blocked seg_o1_c2c_0_34 airplane_daew4)
       (not_blocked seg_o1_c2c_0_34 airplane_daew5)
       (not_blocked seg_o1_c2c_0_34 airplane_daew6)
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
 (:action ugly605startup_seg_p112_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action ugly606startup_seg_n_a6a8c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action ugly607startup_seg_m_a7a6a_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action ugly608startup_seg_n_n2a4d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action ugly609move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
       (not_blocked seg_w1_164a_0_34 airplane_daew2)
       (not_blocked seg_w1_164a_0_34 airplane_daew4)
       (not_blocked seg_w1_164a_0_34 airplane_daew5)
       (not_blocked seg_w1_164a_0_34 airplane_daew6)
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
 (:action ugly610startup_seg_n_a9a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action ugly611startup_seg_w1_c2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action ugly612startup_seg_08l_a3b_0_161_245_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action ugly613startup_seg_a2_c_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action ugly614startup_seg_a7_b_1_0_80_6226_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action ugly615startup_seg_n_a6a8e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action ugly616park_seg_p109_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action ugly617move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
       (not_blocked seg_w1_143c_0_60 airplane_daew2)
       (not_blocked seg_w1_143c_0_60 airplane_daew4)
       (not_blocked seg_w1_143c_0_60 airplane_daew5)
       (not_blocked seg_w1_143c_0_60 airplane_daew6)
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
 (:action ugly618move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew2)
       (not_blocked seg_w1_141b_0_45 airplane_daew4)
       (not_blocked seg_w1_141b_0_45 airplane_daew5)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
       (not_blocked seg_w1_141b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p141_0_75))
       (not_occupied seg_p141_0_75) (not (at-segment ?a seg_p141_0_75))
       (occupied seg_w1_141b_0_45) (not (not_occupied seg_w1_141b_0_45))
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action ugly619startup_seg_o1_c3d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action ugly620move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew2)
       (not_blocked seg_o1_c1a_0_60 airplane_daew4)
       (not_blocked seg_o1_c1a_0_60 airplane_daew5)
       (not_blocked seg_o1_c1a_0_60 airplane_daew6)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p101_0_76))
       (not_occupied seg_p101_0_76) (not (at-segment ?a seg_p101_0_76))
       (occupied seg_o1_c1a_0_60) (not (not_occupied seg_o1_c1a_0_60))
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))
       (at-segment ?a seg_o1_c1a_0_60)))
 (:action ugly621move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew1)
       (not_blocked seg_o1_110b_0_60 airplane_daew2)
       (not_blocked seg_o1_110b_0_60 airplane_daew4)
       (not_blocked seg_o1_110b_0_60 airplane_daew5)
       (not_blocked seg_o1_110b_0_60 airplane_daew6)
       (not_blocked seg_o1_110b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p110_0_76))
       (not_occupied seg_p110_0_76) (not (at-segment ?a seg_p110_0_76))
       (occupied seg_o1_110b_0_60) (not (not_occupied seg_o1_110b_0_60))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action ugly622startup_seg_n_a6a8b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action ugly623startup_seg_p152_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action ugly624move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_daewh)
       (not_blocked seg_n1_0_108 airplane_daew1)
       (not_blocked seg_n1_0_108 airplane_daew2)
       (not_blocked seg_n1_0_108 airplane_daew4)
       (not_blocked seg_n1_0_108 airplane_daew5)
       (not_blocked seg_n1_0_108 airplane_daew6)
       (not_blocked seg_n1_0_108 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1a_0_60))
       (not_occupied seg_w1_c1a_0_60) (not (at-segment ?a seg_w1_c1a_0_60))
       (occupied seg_n1_0_108) (not (not_occupied seg_n1_0_108))
       (blocked seg_n1_0_108 ?a) (not (not_blocked seg_n1_0_108 ?a))
       (at-segment ?a seg_n1_0_108) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)))
 (:action ugly625move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew1)
       (not_blocked seg_o1_108b_0_60 airplane_daew2)
       (not_blocked seg_o1_108b_0_60 airplane_daew4)
       (not_blocked seg_o1_108b_0_60 airplane_daew5)
       (not_blocked seg_o1_108b_0_60 airplane_daew6)
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
 (:action ugly626startup_seg_o1_103a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly627startup_seg_c4_s6c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly628move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew1)
       (not_blocked seg_w1_151b_0_45 airplane_daew2)
       (not_blocked seg_w1_151b_0_45 airplane_daew4)
       (not_blocked seg_w1_151b_0_45 airplane_daew5)
       (not_blocked seg_w1_151b_0_45 airplane_daew6)
       (not_blocked seg_w1_151b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p151_0_75))
       (not_occupied seg_p151_0_75) (not (at-segment ?a seg_p151_0_75))
       (occupied seg_w1_151b_0_45) (not (not_occupied seg_w1_151b_0_45))
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action ugly629startup_seg_n_a4a7a_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action ugly630move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
       (not_blocked seg_o1_115c_0_34 airplane_daew2)
       (not_blocked seg_o1_115c_0_34 airplane_daew4)
       (not_blocked seg_o1_115c_0_34 airplane_daew5)
       (not_blocked seg_o1_115c_0_34 airplane_daew6)
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
 (:action
  ugly631move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daewh)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew1)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew2)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew4)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew5)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew6)
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
 (:action ugly632startup_seg_p109_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly633move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
       (not_blocked seg_w1_163c_0_34 airplane_daew2)
       (not_blocked seg_w1_163c_0_34 airplane_daew4)
       (not_blocked seg_w1_163c_0_34 airplane_daew5)
       (not_blocked seg_w1_163c_0_34 airplane_daew6)
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
 (:action ugly634startup_seg_o1_110a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action ugly635startup_seg_w1_c1b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly636park_seg_p118_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action ugly637startup_seg_a3_b_0_159_512_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action ugly638startup_seg_o1_118b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly639startup_seg_a4_b_1_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action ugly640startup_seg_o1_c2d_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action ugly641startup_seg_n_a9c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action ugly642move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
       (not_blocked seg_o1_117c_0_34 airplane_daew2)
       (not_blocked seg_o1_117c_0_34 airplane_daew4)
       (not_blocked seg_o1_117c_0_34 airplane_daew5)
       (not_blocked seg_o1_117c_0_34 airplane_daew6)
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
 (:action ugly643startup_seg_08l_a7b_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action ugly644startup_seg_m_a3a4f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action ugly645startup_seg_w1_164a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action ugly646startup_seg_n_a3c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly647move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew1)
       (not_blocked seg_o1_103a_0_34 airplane_daew2)
       (not_blocked seg_o1_103a_0_34 airplane_daew4)
       (not_blocked seg_o1_103a_0_34 airplane_daew5)
       (not_blocked seg_o1_103a_0_34 airplane_daew6)
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
 (:action ugly648startup_seg_a4_b_0_79_7559_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action ugly649startup_seg_o1_c2d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly650move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew1)
       (not_blocked seg_w1_c2a_0_60 airplane_daew2)
       (not_blocked seg_w1_c2a_0_60 airplane_daew4)
       (not_blocked seg_w1_c2a_0_60 airplane_daew5)
       (not_blocked seg_w1_c2a_0_60 airplane_daew6)
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
 (:action ugly651startup_seg_o1_111b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly652startup_seg_c3_a_0_80_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action ugly653startup_seg_n_n2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly654move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
       (not_blocked seg_w1_162c_0_34 airplane_daew2)
       (not_blocked seg_w1_162c_0_34 airplane_daew4)
       (not_blocked seg_w1_162c_0_34 airplane_daew5)
       (not_blocked seg_w1_162c_0_34 airplane_daew6)
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
 (:action ugly655park_seg_p141_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action ugly656startup_seg_a8_b_1_0_79_7559_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action ugly657startup_seg_n_a9a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action ugly658startup_seg_o1_109a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action ugly659move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew2)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew4)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew5)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8e_0_75))
       (not_occupied seg_n_a6a8e_0_75) (not (at-segment ?a seg_n_a6a8e_0_75))
       (occupied seg_n_a6a8d_0_75) (not (not_occupied seg_n_a6a8d_0_75))
       (blocked seg_n_a6a8d_0_75 ?a) (not (not_blocked seg_n_a6a8d_0_75 ?a))
       (at-segment ?a seg_n_a6a8d_0_75) (not (blocked seg_n_a6a8f_0_75 ?a))
       (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action ugly660startup_seg_m_a3a4d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action ugly661move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew1)
       (not_blocked seg_w1_c2c_0_34 airplane_daew2)
       (not_blocked seg_w1_c2c_0_34 airplane_daew4)
       (not_blocked seg_w1_c2c_0_34 airplane_daew5)
       (not_blocked seg_w1_c2c_0_34 airplane_daew6)
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
 (:action ugly662startup_seg_p101_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly663move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew1)
       (not_blocked seg_w1_162b_0_45 airplane_daew2)
       (not_blocked seg_w1_162b_0_45 airplane_daew4)
       (not_blocked seg_w1_162b_0_45 airplane_daew5)
       (not_blocked seg_w1_162b_0_45 airplane_daew6)
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
 (:action ugly664startup_seg_w1_162c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly665startup_seg_p134_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly666startup_seg_o1_111d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action ugly667move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew2)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew4)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew6)
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
 (:action ugly668move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
       (not_blocked seg_o1_c1c_0_80 airplane_daew2)
       (not_blocked seg_o1_c1c_0_80 airplane_daew4)
       (not_blocked seg_o1_c1c_0_80 airplane_daew5)
       (not_blocked seg_o1_c1c_0_80 airplane_daew6)
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
 (:action ugly669startup_seg_p161_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly670move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew2)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew4)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3e_0_75))
       (not_occupied seg_n_a2a3e_0_75) (not (at-segment ?a seg_n_a2a3e_0_75))
       (occupied seg_n_a2a3d_0_75) (not (not_occupied seg_n_a2a3d_0_75))
       (blocked seg_n_a2a3d_0_75 ?a) (not (not_blocked seg_n_a2a3d_0_75 ?a))
       (at-segment ?a seg_n_a2a3d_0_75) (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action ugly671takeoff_seg_09l_0_80_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action ugly672startup_seg_m_a3a4d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action ugly673move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew2)
       (not_blocked seg_o1_118c_0_34 airplane_daew4)
       (not_blocked seg_o1_118c_0_34 airplane_daew5)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
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
 (:action ugly674startup_seg_o1_108b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly675move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew1)
       (not_blocked seg_w1_161a_0_34 airplane_daew2)
       (not_blocked seg_w1_161a_0_34 airplane_daew4)
       (not_blocked seg_w1_161a_0_34 airplane_daew5)
       (not_blocked seg_w1_161a_0_34 airplane_daew6)
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
 (:action ugly676move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_daewh)
       (not_blocked seg_a2_b_0_90 airplane_daew1)
       (not_blocked seg_a2_b_0_90 airplane_daew2)
       (not_blocked seg_a2_b_0_90 airplane_daew4)
       (not_blocked seg_a2_b_0_90 airplane_daew5)
       (not_blocked seg_a2_b_0_90 airplane_daew6)
       (not_blocked seg_a2_b_0_90 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_c_0_100))
       (not_occupied seg_a2_c_0_100) (not (at-segment ?a seg_a2_c_0_100))
       (occupied seg_a2_b_0_90) (not (not_occupied seg_a2_b_0_90))
       (blocked seg_a2_b_0_90 ?a) (not (not_blocked seg_a2_b_0_90 ?a))
       (at-segment ?a seg_a2_b_0_90) (not (blocked seg_n_a2a_0_60 ?a))
       (not_blocked seg_n_a2a_0_60 ?a)))
 (:action ugly677startup_seg_n_a2a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action ugly678startup_seg_o1_108c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a)) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action ugly679move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_daewh)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew1)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew2)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew4)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew5)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew6)
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
 (:action ugly680startup_seg_o1_c4a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action ugly681move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
       (not_blocked seg_w1_152c_0_34 airplane_daew2)
       (not_blocked seg_w1_152c_0_34 airplane_daew4)
       (not_blocked seg_w1_152c_0_34 airplane_daew5)
       (not_blocked seg_w1_152c_0_34 airplane_daew6)
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
 (:action ugly682startup_seg_a10_0_80_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action ugly683move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_daewh)
       (not_blocked seg_n_a8c_0_60 airplane_daew1)
       (not_blocked seg_n_a8c_0_60 airplane_daew2)
       (not_blocked seg_n_a8c_0_60 airplane_daew4)
       (not_blocked seg_n_a8c_0_60 airplane_daew5)
       (not_blocked seg_n_a8c_0_60 airplane_daew6)
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
 (:action ugly684startup_seg_n_a2a3e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action ugly685park_seg_p107_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action ugly686startup_seg_w1_142c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action ugly687startup_seg_o1_118b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action ugly688move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
       (not_blocked seg_w1_142c_0_34 airplane_daew2)
       (not_blocked seg_w1_142c_0_34 airplane_daew4)
       (not_blocked seg_w1_142c_0_34 airplane_daew5)
       (not_blocked seg_w1_142c_0_34 airplane_daew6)
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
 (:action ugly689move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew1)
       (not_blocked seg_o1_115a_0_34 airplane_daew2)
       (not_blocked seg_o1_115a_0_34 airplane_daew4)
       (not_blocked seg_o1_115a_0_34 airplane_daew5)
       (not_blocked seg_o1_115a_0_34 airplane_daew6)
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
 (:action ugly690move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_daewh)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew1)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew2)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew4)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew5)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew6)
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
 (:action ugly691move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2)
       (not_blocked seg_o1_109c_0_34 airplane_daew4)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
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
 (:action ugly692move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew1)
       (not_blocked seg_w1_161b_0_45 airplane_daew2)
       (not_blocked seg_w1_161b_0_45 airplane_daew4)
       (not_blocked seg_w1_161b_0_45 airplane_daew5)
       (not_blocked seg_w1_161b_0_45 airplane_daew6)
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
 (:action ugly693startup_seg_m_a8a9d_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action ugly694pushback_seg_w1_154c_0_34_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew1)
       (not_blocked seg_w1_c3a_0_34 airplane_daew2)
       (not_blocked seg_w1_c3a_0_34 airplane_daew4)
       (not_blocked seg_w1_c3a_0_34 airplane_daew5)
       (not_blocked seg_w1_c3a_0_34 airplane_daew6)
       (not_blocked seg_w1_c3a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_154c_0_34)) (not_occupied seg_w1_154c_0_34)
       (not (blocked seg_w1_154c_0_34 ?a)) (not_blocked seg_w1_154c_0_34 ?a)
       (not (at-segment ?a seg_w1_154c_0_34)) (occupied seg_w1_c3a_0_34)
       (not (not_occupied seg_w1_c3a_0_34)) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (at-segment ?a seg_w1_c3a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly695startup_seg_m_a6a8f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly696startup_seg_w1_141b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action ugly697startup_seg_m_a7a6b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action ugly698startup_seg_o1_115b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly699startup_seg_n_a2a3d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action ugly700startup_seg_m_a9b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly701startup_seg_n_n2a4a_0_70_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action ugly702move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew2)
       (not_blocked seg_o1_c2d_0_60 airplane_daew4)
       (not_blocked seg_o1_c2d_0_60 airplane_daew5)
       (not_blocked seg_o1_c2d_0_60 airplane_daew6)
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
 (:action ugly703move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_daewh)
       (not_blocked seg_p110_0_76 airplane_daew1)
       (not_blocked seg_p110_0_76 airplane_daew2)
       (not_blocked seg_p110_0_76 airplane_daew4)
       (not_blocked seg_p110_0_76 airplane_daew5)
       (not_blocked seg_p110_0_76 airplane_daew6)
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
 (:action ugly704startup_seg_p142_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action ugly705move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew1)
       (not_blocked seg_w1_c3c_0_48 airplane_daew2)
       (not_blocked seg_w1_c3c_0_48 airplane_daew4)
       (not_blocked seg_w1_c3c_0_48 airplane_daew5)
       (not_blocked seg_w1_c3c_0_48 airplane_daew6)
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
 (:action ugly706move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew2)
       (not_blocked seg_o1_c3b_0_60 airplane_daew4)
       (not_blocked seg_o1_c3b_0_60 airplane_daew5)
       (not_blocked seg_o1_c3b_0_60 airplane_daew6)
       (not_blocked seg_o1_c3b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p112_0_76))
       (not_occupied seg_p112_0_76) (not (at-segment ?a seg_p112_0_76))
       (occupied seg_o1_c3b_0_60) (not (not_occupied seg_o1_c3b_0_60))
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (at-segment ?a seg_o1_c3b_0_60)))
 (:action ugly707move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daewh)
       (not_blocked seg_c3_b_0_80 airplane_daew1)
       (not_blocked seg_c3_b_0_80 airplane_daew2)
       (not_blocked seg_c3_b_0_80 airplane_daew4)
       (not_blocked seg_c3_b_0_80 airplane_daew5)
       (not_blocked seg_c3_b_0_80 airplane_daew6)
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
 (:action ugly708startup_seg_a2_a_0_90_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action ugly709park_seg_p110_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action ugly710startup_seg_o1_109d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action ugly711startup_seg_a4_b_0_79_7559_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action ugly712move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew2)
       (not_blocked seg_w1_141c_0_34 airplane_daew4)
       (not_blocked seg_w1_141c_0_34 airplane_daew5)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
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
 (:action ugly713startup_seg_w1_164b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action ugly714move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
       (not_blocked seg_o1_110d_0_45 airplane_daew2)
       (not_blocked seg_o1_110d_0_45 airplane_daew4)
       (not_blocked seg_o1_110d_0_45 airplane_daew5)
       (not_blocked seg_o1_110d_0_45 airplane_daew6)
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
 (:action ugly715startup_seg_n_a9a10b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action ugly716move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
       (not_blocked seg_w1_153c_0_34 airplane_daew2)
       (not_blocked seg_w1_153c_0_34 airplane_daew4)
       (not_blocked seg_w1_153c_0_34 airplane_daew5)
       (not_blocked seg_w1_153c_0_34 airplane_daew6)
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
 (:action ugly717startup_seg_m_a9a10c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action ugly718startup_seg_o1_110c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action ugly719startup_seg_m_a3a4f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly720move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
       (not_blocked seg_o1_104c_0_60 airplane_daew2)
       (not_blocked seg_o1_104c_0_60 airplane_daew4)
       (not_blocked seg_o1_104c_0_60 airplane_daew5)
       (not_blocked seg_o1_104c_0_60 airplane_daew6)
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
 (:action ugly721move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
       (not_blocked seg_w1_143c_0_60 airplane_daew2)
       (not_blocked seg_w1_143c_0_60 airplane_daew4)
       (not_blocked seg_w1_143c_0_60 airplane_daew5)
       (not_blocked seg_w1_143c_0_60 airplane_daew6)
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
 (:action ugly722startup_seg_n_a3d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a3a_0_60) (not_occupied seg_n_a3b_0_60)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a)) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a)) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action ugly723startup_seg_o1_102b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action ugly724startup_seg_o1_c3d_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a)) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a)) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action ugly725move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
       (not_blocked seg_o1_115c_0_34 airplane_daew2)
       (not_blocked seg_o1_115c_0_34 airplane_daew4)
       (not_blocked seg_o1_115c_0_34 airplane_daew5)
       (not_blocked seg_o1_115c_0_34 airplane_daew6)
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
 (:action ugly726startup_seg_n_a7a6d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action ugly727startup_seg_m_a4a7f_0_115_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly728park_seg_p119_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action ugly729move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew1)
       (not_blocked seg_o1_c4c_0_80 airplane_daew2)
       (not_blocked seg_o1_c4c_0_80 airplane_daew4)
       (not_blocked seg_o1_c4c_0_80 airplane_daew5)
       (not_blocked seg_o1_c4c_0_80 airplane_daew6)
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
 (:action ugly730startup_seg_08l_a7c_0_161_245_south_medium :parameters
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
 (:action ugly731startup_seg_m_a4a7e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action ugly732move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew1)
       (not_blocked seg_w1_c1a_0_60 airplane_daew2)
       (not_blocked seg_w1_c1a_0_60 airplane_daew4)
       (not_blocked seg_w1_c1a_0_60 airplane_daew5)
       (not_blocked seg_w1_c1a_0_60 airplane_daew6)
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
 (:action ugly733startup_seg_m_a9a10e_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action ugly734startup_seg_m_a8a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8b_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly735move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_daewh)
       (not_blocked seg_p103_0_76 airplane_daew1)
       (not_blocked seg_p103_0_76 airplane_daew2)
       (not_blocked seg_p103_0_76 airplane_daew4)
       (not_blocked seg_p103_0_76 airplane_daew5)
       (not_blocked seg_p103_0_76 airplane_daew6)
       (not_blocked seg_p103_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103b_0_60))
       (not_occupied seg_o1_103b_0_60) (not (at-segment ?a seg_o1_103b_0_60))
       (occupied seg_p103_0_76) (not (not_occupied seg_p103_0_76))
       (blocked seg_p103_0_76 ?a) (not (not_blocked seg_p103_0_76 ?a))
       (at-segment ?a seg_p103_0_76) (not (blocked seg_o1_103a_0_34 ?a))
       (not_blocked seg_o1_103a_0_34 ?a) (not (blocked seg_o1_103c_0_34 ?a))
       (not_blocked seg_o1_103c_0_34 ?a)))
 (:action ugly736startup_seg_p141_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly737startup_seg_p110_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action ugly738park_seg_p142_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action ugly739startup_seg_w1_151c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action ugly740pushback_seg_w1_141c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
       (not_blocked seg_w1_142a_0_34 airplane_daew2)
       (not_blocked seg_w1_142a_0_34 airplane_daew4)
       (not_blocked seg_w1_142a_0_34 airplane_daew5)
       (not_blocked seg_w1_142a_0_34 airplane_daew6)
       (not_blocked seg_w1_142a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly741startup_seg_08l_a10a_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action ugly742startup_seg_a7_b_0_80_6226_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action ugly743startup_seg_p110_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly744startup_seg_n_a7c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action ugly745move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew1)
       (not_blocked seg_w1_162a_0_34 airplane_daew2)
       (not_blocked seg_w1_162a_0_34 airplane_daew4)
       (not_blocked seg_w1_162a_0_34 airplane_daew5)
       (not_blocked seg_w1_162a_0_34 airplane_daew6)
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
 (:action ugly746move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_daewh)
       (not_blocked seg_p119_0_76 airplane_daew1)
       (not_blocked seg_p119_0_76 airplane_daew2)
       (not_blocked seg_p119_0_76 airplane_daew4)
       (not_blocked seg_p119_0_76 airplane_daew5)
       (not_blocked seg_p119_0_76 airplane_daew6)
       (not_blocked seg_p119_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4b_0_60))
       (not_occupied seg_o1_c4b_0_60) (not (at-segment ?a seg_o1_c4b_0_60))
       (occupied seg_p119_0_76) (not (not_occupied seg_p119_0_76))
       (blocked seg_p119_0_76 ?a) (not (not_blocked seg_p119_0_76 ?a))
       (at-segment ?a seg_p119_0_76) (not (blocked seg_o1_c4a_0_34 ?a))
       (not_blocked seg_o1_c4a_0_34 ?a) (not (blocked seg_o1_c4c_0_80 ?a))
       (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action ugly747startup_seg_p112_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly748move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_daewh)
       (not_blocked seg_p115_0_76 airplane_daew1)
       (not_blocked seg_p115_0_76 airplane_daew2)
       (not_blocked seg_p115_0_76 airplane_daew4)
       (not_blocked seg_p115_0_76 airplane_daew5)
       (not_blocked seg_p115_0_76 airplane_daew6)
       (not_blocked seg_p115_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115b_0_60))
       (not_occupied seg_o1_115b_0_60) (not (at-segment ?a seg_o1_115b_0_60))
       (occupied seg_p115_0_76) (not (not_occupied seg_p115_0_76))
       (blocked seg_p115_0_76 ?a) (not (not_blocked seg_p115_0_76 ?a))
       (at-segment ?a seg_p115_0_76) (not (blocked seg_o1_115a_0_34 ?a))
       (not_blocked seg_o1_115a_0_34 ?a) (not (blocked seg_o1_115c_0_34 ?a))
       (not_blocked seg_o1_115c_0_34 ?a)))
 (:action ugly749startup_seg_n_a9a10f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action ugly750startup_seg_p107_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly751startup_seg_o1_103b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action ugly752move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
       (not_blocked seg_o1_110a_0_34 airplane_daew2)
       (not_blocked seg_o1_110a_0_34 airplane_daew4)
       (not_blocked seg_o1_110a_0_34 airplane_daew5)
       (not_blocked seg_o1_110a_0_34 airplane_daew6)
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
 (:action ugly753move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_daewh)
       (not_blocked seg_p154_0_75 airplane_daew1)
       (not_blocked seg_p154_0_75 airplane_daew2)
       (not_blocked seg_p154_0_75 airplane_daew4)
       (not_blocked seg_p154_0_75 airplane_daew5)
       (not_blocked seg_p154_0_75 airplane_daew6)
       (not_blocked seg_p154_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154b_0_45))
       (not_occupied seg_w1_154b_0_45) (not (at-segment ?a seg_w1_154b_0_45))
       (occupied seg_p154_0_75) (not (not_occupied seg_p154_0_75))
       (blocked seg_p154_0_75 ?a) (not (not_blocked seg_p154_0_75 ?a))
       (at-segment ?a seg_p154_0_75) (not (blocked seg_w1_154a_0_34 ?a))
       (not_blocked seg_w1_154a_0_34 ?a) (not (blocked seg_w1_154c_0_34 ?a))
       (not_blocked seg_w1_154c_0_34 ?a)))
 (:action ugly754pushback_seg_p154_0_75_seg_w1_154b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
       (not_blocked seg_w1_154b_0_45 airplane_daew2)
       (not_blocked seg_w1_154b_0_45 airplane_daew4)
       (not_blocked seg_w1_154b_0_45 airplane_daew5)
       (not_blocked seg_w1_154b_0_45 airplane_daew6)
       (not_blocked seg_w1_154b_0_45 airplane_daew7))
  :effect
  (and (not (occupied seg_p154_0_75)) (not_occupied seg_p154_0_75)
       (not (blocked seg_p154_0_75 ?a)) (not_blocked seg_p154_0_75 ?a)
       (not (at-segment ?a seg_p154_0_75)) (occupied seg_w1_154b_0_45)
       (not (not_occupied seg_w1_154b_0_45)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action ugly755startup_seg_o1_116a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly756startup_seg_p163_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly757pushback_seg_w1_153b_0_45_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
       (not_blocked seg_w1_153c_0_34 airplane_daew2)
       (not_blocked seg_w1_153c_0_34 airplane_daew4)
       (not_blocked seg_w1_153c_0_34 airplane_daew5)
       (not_blocked seg_w1_153c_0_34 airplane_daew6)
       (not_blocked seg_w1_153c_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_153b_0_45)) (not_occupied seg_w1_153b_0_45)
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)
       (not (at-segment ?a seg_w1_153b_0_45)) (occupied seg_w1_153c_0_34)
       (not (not_occupied seg_w1_153c_0_34)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a)) (at-segment ?a seg_w1_153c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly758startup_seg_n_a2a3d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action ugly759move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_daewh)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew1)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew2)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew4)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew5)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew6)
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
 (:action ugly760startup_seg_m_a4a7b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action ugly761startup_seg_n_a2a3a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action ugly762startup_seg_o1_c4c_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly763move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
       (not_blocked seg_w1_152c_0_34 airplane_daew2)
       (not_blocked seg_w1_152c_0_34 airplane_daew4)
       (not_blocked seg_w1_152c_0_34 airplane_daew5)
       (not_blocked seg_w1_152c_0_34 airplane_daew6)
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
 (:action ugly764startup_seg_o1_115c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action ugly765startup_seg_c3_b_0_80_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action ugly766move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew2)
       (not_blocked seg_o1_c3c_0_48 airplane_daew4)
       (not_blocked seg_o1_c3c_0_48 airplane_daew5)
       (not_blocked seg_o1_c3c_0_48 airplane_daew6)
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
 (:action ugly767startup_seg_o1_118a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action ugly768move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew1)
       (not_blocked seg_o1_115b_0_60 airplane_daew2)
       (not_blocked seg_o1_115b_0_60 airplane_daew4)
       (not_blocked seg_o1_115b_0_60 airplane_daew5)
       (not_blocked seg_o1_115b_0_60 airplane_daew6)
       (not_blocked seg_o1_115b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p115_0_76))
       (not_occupied seg_p115_0_76) (not (at-segment ?a seg_p115_0_76))
       (occupied seg_o1_115b_0_60) (not (not_occupied seg_o1_115b_0_60))
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action ugly769startup_seg_n_a6a8c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action ugly770startup_seg_n_n2c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action ugly771move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew1)
       (not_blocked seg_w1_164b_0_45 airplane_daew2)
       (not_blocked seg_w1_164b_0_45 airplane_daew4)
       (not_blocked seg_w1_164b_0_45 airplane_daew5)
       (not_blocked seg_w1_164b_0_45 airplane_daew6)
       (not_blocked seg_w1_164b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p164_0_75))
       (not_occupied seg_p164_0_75) (not (at-segment ?a seg_p164_0_75))
       (occupied seg_w1_164b_0_45) (not (not_occupied seg_w1_164b_0_45))
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action ugly772park_seg_p117_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action ugly773startup_seg_m_a6d_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly774startup_seg_n_a6a8a_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action ugly775startup_seg_p107_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action ugly776startup_seg_p104_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly777move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew1)
       (not_blocked seg_o1_109b_0_60 airplane_daew2)
       (not_blocked seg_o1_109b_0_60 airplane_daew4)
       (not_blocked seg_o1_109b_0_60 airplane_daew5)
       (not_blocked seg_o1_109b_0_60 airplane_daew6)
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
 (:action ugly778startup_seg_n_a7a6a_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action ugly779startup_seg_p119_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action ugly780move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_daewh)
       (not_blocked seg_a2_a_0_90 airplane_daew1)
       (not_blocked seg_a2_a_0_90 airplane_daew2)
       (not_blocked seg_a2_a_0_90 airplane_daew4)
       (not_blocked seg_a2_a_0_90 airplane_daew5)
       (not_blocked seg_a2_a_0_90 airplane_daew6)
       (not_blocked seg_a2_a_0_90 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_b_0_90))
       (not_occupied seg_a2_b_0_90) (not (at-segment ?a seg_a2_b_0_90))
       (occupied seg_a2_a_0_90) (not (not_occupied seg_a2_a_0_90))
       (blocked seg_a2_a_0_90 ?a) (not (not_blocked seg_a2_a_0_90 ?a))
       (at-segment ?a seg_a2_a_0_90) (not (blocked seg_a2_c_0_100 ?a))
       (not_blocked seg_a2_c_0_100 ?a)))
 (:action ugly781startup_seg_n_a8a9b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action ugly782move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew1)
       (not_blocked seg_w1_162a_0_34 airplane_daew2)
       (not_blocked seg_w1_162a_0_34 airplane_daew4)
       (not_blocked seg_w1_162a_0_34 airplane_daew5)
       (not_blocked seg_w1_162a_0_34 airplane_daew6)
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
 (:action ugly783park_seg_p111_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action ugly784startup_seg_w1_142a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly785startup_seg_a10_1_0_80_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action ugly786park_seg_p142_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action ugly787move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_daewh)
       (not_blocked seg_08l_a7d_0_80 airplane_daew1)
       (not_blocked seg_08l_a7d_0_80 airplane_daew2)
       (not_blocked seg_08l_a7d_0_80 airplane_daew4)
       (not_blocked seg_08l_a7d_0_80 airplane_daew5)
       (not_blocked seg_08l_a7d_0_80 airplane_daew6)
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
 (:action ugly788startup_seg_n_a2a3b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action ugly789startup_seg_n_a4a7e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action ugly790move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew2)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew4)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew5)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3f_0_115))
       (not_occupied seg_n_a2a3f_0_115) (not (at-segment ?a seg_n_a2a3f_0_115))
       (occupied seg_n_a2a3e_0_75) (not (not_occupied seg_n_a2a3e_0_75))
       (blocked seg_n_a2a3e_0_75 ?a) (not (not_blocked seg_n_a2a3e_0_75 ?a))
       (at-segment ?a seg_n_a2a3e_0_75) (not (blocked seg_n_a3d_0_60 ?a))
       (not_blocked seg_n_a3d_0_60 ?a)))
 (:action ugly791startup_seg_o1_c2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly792move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
       (not_blocked seg_o1_108a_0_34 airplane_daew2)
       (not_blocked seg_o1_108a_0_34 airplane_daew4)
       (not_blocked seg_o1_108a_0_34 airplane_daew5)
       (not_blocked seg_o1_108a_0_34 airplane_daew6)
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
  ugly793move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_daewh)
       (not_blocked seg_a8_a_0_157_785 airplane_daew1)
       (not_blocked seg_a8_a_0_157_785 airplane_daew2)
       (not_blocked seg_a8_a_0_157_785 airplane_daew4)
       (not_blocked seg_a8_a_0_157_785 airplane_daew5)
       (not_blocked seg_a8_a_0_157_785 airplane_daew6)
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
 (:action ugly794move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
       (not_blocked seg_w1_163b_0_45 airplane_daew2)
       (not_blocked seg_w1_163b_0_45 airplane_daew4)
       (not_blocked seg_w1_163b_0_45 airplane_daew5)
       (not_blocked seg_w1_163b_0_45 airplane_daew6)
       (not_blocked seg_w1_163b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p163_0_75))
       (not_occupied seg_p163_0_75) (not (at-segment ?a seg_p163_0_75))
       (occupied seg_w1_163b_0_45) (not (not_occupied seg_w1_163b_0_45))
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action ugly795startup_seg_n_a3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly796move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_daewh)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew1)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew2)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew4)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew5)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew6)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4b_0_75))
       (not_occupied seg_n_n2a4b_0_75) (not (at-segment ?a seg_n_n2a4b_0_75))
       (occupied seg_n_n2a4a_0_70) (not (not_occupied seg_n_n2a4a_0_70))
       (blocked seg_n_n2a4a_0_70 ?a) (not (not_blocked seg_n_n2a4a_0_70 ?a))
       (at-segment ?a seg_n_n2a4a_0_70) (not (blocked seg_n_n2a4c_0_75 ?a))
       (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action ugly797startup_seg_w1_153c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action ugly798move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_daewh)
       (not_blocked seg_p152_0_75 airplane_daew1)
       (not_blocked seg_p152_0_75 airplane_daew2)
       (not_blocked seg_p152_0_75 airplane_daew4)
       (not_blocked seg_p152_0_75 airplane_daew5)
       (not_blocked seg_p152_0_75 airplane_daew6)
       (not_blocked seg_p152_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152b_0_45))
       (not_occupied seg_w1_152b_0_45) (not (at-segment ?a seg_w1_152b_0_45))
       (occupied seg_p152_0_75) (not (not_occupied seg_p152_0_75))
       (blocked seg_p152_0_75 ?a) (not (not_blocked seg_p152_0_75 ?a))
       (at-segment ?a seg_p152_0_75) (not (blocked seg_w1_152a_0_34 ?a))
       (not_blocked seg_w1_152a_0_34 ?a) (not (blocked seg_w1_152c_0_34 ?a))
       (not_blocked seg_w1_152c_0_34 ?a)))
 (:action ugly799startup_seg_p153_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly800move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew1)
       (not_blocked seg_o1_102b_0_60 airplane_daew2)
       (not_blocked seg_o1_102b_0_60 airplane_daew4)
       (not_blocked seg_o1_102b_0_60 airplane_daew5)
       (not_blocked seg_o1_102b_0_60 airplane_daew6)
       (not_blocked seg_o1_102b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p102_0_76))
       (not_occupied seg_p102_0_76) (not (at-segment ?a seg_p102_0_76))
       (occupied seg_o1_102b_0_60) (not (not_occupied seg_o1_102b_0_60))
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action ugly801move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew1)
       (not_blocked seg_o1_103a_0_34 airplane_daew2)
       (not_blocked seg_o1_103a_0_34 airplane_daew4)
       (not_blocked seg_o1_103a_0_34 airplane_daew5)
       (not_blocked seg_o1_103a_0_34 airplane_daew6)
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
 (:action ugly802startup_seg_m_a8a9b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action ugly803startup_seg_m_a6a8d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action ugly804startup_seg_m_a10a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action ugly805move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
       (not_blocked seg_o1_109c_0_34 airplane_daew2)
       (not_blocked seg_o1_109c_0_34 airplane_daew4)
       (not_blocked seg_o1_109c_0_34 airplane_daew5)
       (not_blocked seg_o1_109c_0_34 airplane_daew6)
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
 (:action ugly806pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew2)
       (not_blocked seg_o1_c1a_0_60 airplane_daew4)
       (not_blocked seg_o1_c1a_0_60 airplane_daew5)
       (not_blocked seg_o1_c1a_0_60 airplane_daew6)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action ugly807park_seg_p109_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action ugly808startup_seg_n_n2a4d_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action ugly809park_seg_p143_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action ugly810startup_seg_p154_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly811park_seg_p116_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action ugly812move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
       (not_blocked seg_o1_111c_0_34 airplane_daew2)
       (not_blocked seg_o1_111c_0_34 airplane_daew4)
       (not_blocked seg_o1_111c_0_34 airplane_daew5)
       (not_blocked seg_o1_111c_0_34 airplane_daew6)
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
 (:action ugly813startup_seg_o1_103c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action ugly814startup_seg_w1_142b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action ugly815move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
       (not_blocked seg_o1_111b_0_60 airplane_daew2)
       (not_blocked seg_o1_111b_0_60 airplane_daew4)
       (not_blocked seg_o1_111b_0_60 airplane_daew5)
       (not_blocked seg_o1_111b_0_60 airplane_daew6)
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
 (:action ugly816move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_daewh)
       (not_blocked seg_n_n2a_0_60 airplane_daew1)
       (not_blocked seg_n_n2a_0_60 airplane_daew2)
       (not_blocked seg_n_n2a_0_60 airplane_daew4)
       (not_blocked seg_n_n2a_0_60 airplane_daew5)
       (not_blocked seg_n_n2a_0_60 airplane_daew6)
       (not_blocked seg_n_n2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4a_0_70))
       (not_occupied seg_n_n2a4a_0_70) (not (at-segment ?a seg_n_n2a4a_0_70))
       (occupied seg_n_n2a_0_60) (not (not_occupied seg_n_n2a_0_60))
       (blocked seg_n_n2a_0_60 ?a) (not (not_blocked seg_n_n2a_0_60 ?a))
       (at-segment ?a seg_n_n2a_0_60) (not (blocked seg_n_n2a4b_0_75 ?a))
       (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action ugly817move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew1)
       (not_blocked seg_w1_151a_0_34 airplane_daew2)
       (not_blocked seg_w1_151a_0_34 airplane_daew4)
       (not_blocked seg_w1_151a_0_34 airplane_daew5)
       (not_blocked seg_w1_151a_0_34 airplane_daew6)
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
 (:action ugly818move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_daewh)
       (not_blocked seg_n_a3c_0_60 airplane_daew1)
       (not_blocked seg_n_a3c_0_60 airplane_daew2)
       (not_blocked seg_n_a3c_0_60 airplane_daew4)
       (not_blocked seg_n_a3c_0_60 airplane_daew5)
       (not_blocked seg_n_a3c_0_60 airplane_daew6)
       (not_blocked seg_n_a3c_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_0_108))
       (not_occupied seg_n1_0_108) (not (at-segment ?a seg_n1_0_108))
       (occupied seg_n_a3c_0_60) (not (not_occupied seg_n_a3c_0_60))
       (blocked seg_n_a3c_0_60 ?a) (not (not_blocked seg_n_a3c_0_60 ?a))
       (at-segment ?a seg_n_a3c_0_60) (not (blocked seg_w1_c1a_0_60 ?a))
       (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action ugly819startup_seg_m_a6a8f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action ugly820startup_seg_p116_0_76_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly821startup_seg_a9_a_0_158_647_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action ugly822park_seg_p101_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action ugly823move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_daewh)
       (not_blocked seg_c1_n2a_0_60 airplane_daew1)
       (not_blocked seg_c1_n2a_0_60 airplane_daew2)
       (not_blocked seg_c1_n2a_0_60 airplane_daew4)
       (not_blocked seg_c1_n2a_0_60 airplane_daew5)
       (not_blocked seg_c1_n2a_0_60 airplane_daew6)
       (not_blocked seg_c1_n2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_0_108))
       (not_occupied seg_n2_0_108) (not (at-segment ?a seg_n2_0_108))
       (occupied seg_c1_n2a_0_60) (not (not_occupied seg_c1_n2a_0_60))
       (blocked seg_c1_n2a_0_60 ?a) (not (not_blocked seg_c1_n2a_0_60 ?a))
       (at-segment ?a seg_c1_n2a_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_n2b_0_60 ?a))
       (not_blocked seg_n_n2b_0_60 ?a)))
 (:action ugly824startup_seg_n_a4a7c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action ugly825startup_seg_m_a9a10a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action ugly826startup_seg_w1_151a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action ugly827startup_seg_m_a9b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action ugly828move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_daewh)
       (not_blocked seg_n_a8a_0_60 airplane_daew1)
       (not_blocked seg_n_a8a_0_60 airplane_daew2)
       (not_blocked seg_n_a8a_0_60 airplane_daew4)
       (not_blocked seg_n_a8a_0_60 airplane_daew5)
       (not_blocked seg_n_a8a_0_60 airplane_daew6)
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
 (:action ugly829park_seg_p131_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action ugly830startup_seg_n_n2a4a_0_70_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action ugly831park_seg_p134_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action ugly832startup_seg_m_a6b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action ugly833startup_seg_o1_102c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action ugly834park_seg_p110_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action ugly835startup_seg_m_a4a7f_0_115_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action ugly836move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
       (not_blocked seg_w1_163a_0_34 airplane_daew2)
       (not_blocked seg_w1_163a_0_34 airplane_daew4)
       (not_blocked seg_w1_163a_0_34 airplane_daew5)
       (not_blocked seg_w1_163a_0_34 airplane_daew6)
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
 (:action ugly837move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
       (not_blocked seg_w1_151c_0_34 airplane_daew2)
       (not_blocked seg_w1_151c_0_34 airplane_daew4)
       (not_blocked seg_w1_151c_0_34 airplane_daew5)
       (not_blocked seg_w1_151c_0_34 airplane_daew6)
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
 (:action ugly838startup_seg_n_a8a9c_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action ugly839move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
       (not_blocked seg_o1_108a_0_34 airplane_daew2)
       (not_blocked seg_o1_108a_0_34 airplane_daew4)
       (not_blocked seg_o1_108a_0_34 airplane_daew5)
       (not_blocked seg_o1_108a_0_34 airplane_daew6)
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
 (:action ugly840startup_seg_m_a9c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a9a_0_60) (not_occupied seg_m_a9b_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a)) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly841move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_daewh)
       (not_blocked seg_n_n2b_0_60 airplane_daew1)
       (not_blocked seg_n_n2b_0_60 airplane_daew2)
       (not_blocked seg_n_n2b_0_60 airplane_daew4)
       (not_blocked seg_n_n2b_0_60 airplane_daew5)
       (not_blocked seg_n_n2b_0_60 airplane_daew6)
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
 (:action ugly842startup_seg_m_a7c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_m_a7a_0_120_934) (not_occupied seg_m_a7b_0_60)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a)) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a)) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action ugly843move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_daewh)
       (not_blocked seg_p132_0_75 airplane_daew1)
       (not_blocked seg_p132_0_75 airplane_daew2)
       (not_blocked seg_p132_0_75 airplane_daew4)
       (not_blocked seg_p132_0_75 airplane_daew5)
       (not_blocked seg_p132_0_75 airplane_daew6)
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
 (:action ugly844startup_seg_n_n2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action ugly845startup_seg_m_a4a7b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly846startup_seg_o1_117b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action ugly847move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew1)
       (not_blocked seg_w1_161b_0_45 airplane_daew2)
       (not_blocked seg_w1_161b_0_45 airplane_daew4)
       (not_blocked seg_w1_161b_0_45 airplane_daew5)
       (not_blocked seg_w1_161b_0_45 airplane_daew6)
       (not_blocked seg_w1_161b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p161_0_75))
       (not_occupied seg_p161_0_75) (not (at-segment ?a seg_p161_0_75))
       (occupied seg_w1_161b_0_45) (not (not_occupied seg_w1_161b_0_45))
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action ugly848startup_seg_n_a3a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action ugly849startup_seg_o1_118c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action ugly850startup_seg_n_a9a10d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action ugly851move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_daewh)
       (not_blocked seg_n_a2a_0_60 airplane_daew1)
       (not_blocked seg_n_a2a_0_60 airplane_daew2)
       (not_blocked seg_n_a2a_0_60 airplane_daew4)
       (not_blocked seg_n_a2a_0_60 airplane_daew5)
       (not_blocked seg_n_a2a_0_60 airplane_daew6)
       (not_blocked seg_n_a2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2b_0_60))
       (not_occupied seg_n_a2b_0_60) (not (at-segment ?a seg_n_a2b_0_60))
       (occupied seg_n_a2a_0_60) (not (not_occupied seg_n_a2a_0_60))
       (blocked seg_n_a2a_0_60 ?a) (not (not_blocked seg_n_a2a_0_60 ?a))
       (at-segment ?a seg_n_a2a_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action ugly852move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew1)
       (not_blocked seg_w1_153a_0_34 airplane_daew2)
       (not_blocked seg_w1_153a_0_34 airplane_daew4)
       (not_blocked seg_w1_153a_0_34 airplane_daew5)
       (not_blocked seg_w1_153a_0_34 airplane_daew6)
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
 (:action ugly853move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew1)
       (not_blocked seg_w1_141a_0_34 airplane_daew2)
       (not_blocked seg_w1_141a_0_34 airplane_daew4)
       (not_blocked seg_w1_141a_0_34 airplane_daew5)
       (not_blocked seg_w1_141a_0_34 airplane_daew6)
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
 (:action ugly854move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2)
       (not_blocked seg_o1_110c_0_34 airplane_daew4)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
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
 (:action ugly855startup_seg_n_a4a7f_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action ugly856startup_seg_n_n2a4b_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action ugly857startup_seg_w1_164c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly858startup_seg_w1_153a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action ugly859startup_seg_w1_141c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action ugly860park_seg_p132_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action ugly861startup_seg_n_a8a9a_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action ugly862startup_seg_o1_115a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action ugly863pushback_seg_o1_118b_0_60_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew2)
       (not_blocked seg_o1_118c_0_34 airplane_daew4)
       (not_blocked seg_o1_118c_0_34 airplane_daew5)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
       (not_blocked seg_o1_118c_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly864startup_seg_w1_153c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action ugly865pushback_seg_o1_c3d_0_60_seg_c3_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daewh)
       (not_blocked seg_c3_b_0_80 airplane_daew1)
       (not_blocked seg_c3_b_0_80 airplane_daew2)
       (not_blocked seg_c3_b_0_80 airplane_daew4)
       (not_blocked seg_c3_b_0_80 airplane_daew5)
       (not_blocked seg_c3_b_0_80 airplane_daew6)
       (not_blocked seg_c3_b_0_80 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c3d_0_60)) (not_occupied seg_o1_c3d_0_60)
       (not (blocked seg_o1_c3d_0_60 ?a)) (not_blocked seg_o1_c3d_0_60 ?a)
       (not (at-segment ?a seg_o1_c3d_0_60)) (occupied seg_c3_b_0_80)
       (not (not_occupied seg_c3_b_0_80)) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a)) (at-segment ?a seg_c3_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly866startup_seg_p143_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly867move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew2)
       (not_blocked seg_o1_c1a_0_60 airplane_daew4)
       (not_blocked seg_o1_c1a_0_60 airplane_daew5)
       (not_blocked seg_o1_c1a_0_60 airplane_daew6)
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
 (:action ugly868move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_daewh)
       (not_blocked seg_p151_0_75 airplane_daew1)
       (not_blocked seg_p151_0_75 airplane_daew2)
       (not_blocked seg_p151_0_75 airplane_daew4)
       (not_blocked seg_p151_0_75 airplane_daew5)
       (not_blocked seg_p151_0_75 airplane_daew6)
       (not_blocked seg_p151_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151b_0_45))
       (not_occupied seg_w1_151b_0_45) (not (at-segment ?a seg_w1_151b_0_45))
       (occupied seg_p151_0_75) (not (not_occupied seg_p151_0_75))
       (blocked seg_p151_0_75 ?a) (not (not_blocked seg_p151_0_75 ?a))
       (at-segment ?a seg_p151_0_75) (not (blocked seg_w1_151a_0_34 ?a))
       (not_blocked seg_w1_151a_0_34 ?a) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a)))
 (:action ugly869startup_seg_m_a6a8a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action ugly870startup_seg_o1_104c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action ugly871startup_seg_n_n2b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action ugly872startup_seg_m_a4a7d_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action ugly873startup_seg_w1_c3a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action ugly874startup_seg_n_n2a4e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action ugly875startup_seg_a6_a_0_158_647_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action ugly876startup_seg_p164_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action ugly877move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew1)
       (not_blocked seg_w1_164b_0_45 airplane_daew2)
       (not_blocked seg_w1_164b_0_45 airplane_daew4)
       (not_blocked seg_w1_164b_0_45 airplane_daew5)
       (not_blocked seg_w1_164b_0_45 airplane_daew6)
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
 (:action ugly878startup_seg_o1_c3a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action ugly879move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew1)
       (not_blocked seg_w1_c2a_0_60 airplane_daew2)
       (not_blocked seg_w1_c2a_0_60 airplane_daew4)
       (not_blocked seg_w1_c2a_0_60 airplane_daew5)
       (not_blocked seg_w1_c2a_0_60 airplane_daew6)
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
 (:action ugly880startup_seg_p115_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly881startup_seg_w1_163c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action ugly882startup_seg_m_a4a7a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action ugly883move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_daewh)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew1)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew2)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew4)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew5)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew6)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7b_0_75))
       (not_occupied seg_n_a4a7b_0_75) (not (at-segment ?a seg_n_a4a7b_0_75))
       (occupied seg_n_a4a7a_0_115) (not (not_occupied seg_n_a4a7a_0_115))
       (blocked seg_n_a4a7a_0_115 ?a) (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action ugly884startup_seg_o1_c2c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action ugly885startup_seg_o1_108d_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action ugly886park_seg_p115_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action ugly887move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
       (not_blocked seg_o1_110c_0_34 airplane_daew2)
       (not_blocked seg_o1_110c_0_34 airplane_daew4)
       (not_blocked seg_o1_110c_0_34 airplane_daew5)
       (not_blocked seg_o1_110c_0_34 airplane_daew6)
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
 (:action ugly888move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew1)
       (not_blocked seg_o1_103b_0_60 airplane_daew2)
       (not_blocked seg_o1_103b_0_60 airplane_daew4)
       (not_blocked seg_o1_103b_0_60 airplane_daew5)
       (not_blocked seg_o1_103b_0_60 airplane_daew6)
       (not_blocked seg_o1_103b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p103_0_76))
       (not_occupied seg_p103_0_76) (not (at-segment ?a seg_p103_0_76))
       (occupied seg_o1_103b_0_60) (not (not_occupied seg_o1_103b_0_60))
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action ugly889move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew2)
       (not_blocked seg_w1_141b_0_45 airplane_daew4)
       (not_blocked seg_w1_141b_0_45 airplane_daew5)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
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
 (:action ugly890move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew1)
       (not_blocked seg_o1_c3c_0_48 airplane_daew2)
       (not_blocked seg_o1_c3c_0_48 airplane_daew4)
       (not_blocked seg_o1_c3c_0_48 airplane_daew5)
       (not_blocked seg_o1_c3c_0_48 airplane_daew6)
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
 (:action ugly891startup_seg_w1_161c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly892startup_seg_n_a8a9b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action ugly893startup_seg_m_a3a4a_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action ugly894move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew1)
       (not_blocked seg_w1_143b_0_45 airplane_daew2)
       (not_blocked seg_w1_143b_0_45 airplane_daew4)
       (not_blocked seg_w1_143b_0_45 airplane_daew5)
       (not_blocked seg_w1_143b_0_45 airplane_daew6)
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
 (:action ugly895move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew1)
       (not_blocked seg_w1_152b_0_45 airplane_daew2)
       (not_blocked seg_w1_152b_0_45 airplane_daew4)
       (not_blocked seg_w1_152b_0_45 airplane_daew5)
       (not_blocked seg_w1_152b_0_45 airplane_daew6)
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
 (:action ugly896move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew2)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew4)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7d_0_75))
       (not_occupied seg_n_a4a7d_0_75) (not (at-segment ?a seg_n_a4a7d_0_75))
       (occupied seg_n_a4a7c_0_75) (not (not_occupied seg_n_a4a7c_0_75))
       (blocked seg_n_a4a7c_0_75 ?a) (not (not_blocked seg_n_a4a7c_0_75 ?a))
       (at-segment ?a seg_n_a4a7c_0_75) (not (blocked seg_n_a4a7e_0_75 ?a))
       (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action ugly897move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew1)
       (not_blocked seg_o1_117b_0_60 airplane_daew2)
       (not_blocked seg_o1_117b_0_60 airplane_daew4)
       (not_blocked seg_o1_117b_0_60 airplane_daew5)
       (not_blocked seg_o1_117b_0_60 airplane_daew6)
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
 (:action ugly898move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2)
       (not_blocked seg_o1_108c_0_34 airplane_daew4)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
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
 (:action ugly899startup_seg_p111_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly900park_seg_p131_0_75_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action ugly901move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew1)
       (not_blocked seg_o1_116b_0_60 airplane_daew2)
       (not_blocked seg_o1_116b_0_60 airplane_daew4)
       (not_blocked seg_o1_116b_0_60 airplane_daew5)
       (not_blocked seg_o1_116b_0_60 airplane_daew6)
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
 (:action ugly902startup_seg_p154_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly903park_seg_p133_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action ugly904park_seg_p162_0_75_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action ugly905move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew1)
       (not_blocked seg_o1_117b_0_60 airplane_daew2)
       (not_blocked seg_o1_117b_0_60 airplane_daew4)
       (not_blocked seg_o1_117b_0_60 airplane_daew5)
       (not_blocked seg_o1_117b_0_60 airplane_daew6)
       (not_blocked seg_o1_117b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p117_0_76))
       (not_occupied seg_p117_0_76) (not (at-segment ?a seg_p117_0_76))
       (occupied seg_o1_117b_0_60) (not (not_occupied seg_o1_117b_0_60))
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action ugly906startup_seg_p118_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly907startup_seg_p102_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly908startup_seg_n_a9a10f_0_75_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action ugly909startup_seg_p162_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action ugly910startup_seg_o1_116c_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action ugly911startup_seg_m_a9a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9b_0_60) (not_occupied seg_m_a9c_0_60)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a)) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a)) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action ugly912startup_seg_m_a8b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action ugly913park_seg_p104_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action ugly914move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
       (not_blocked seg_o1_102c_0_34 airplane_daew2)
       (not_blocked seg_o1_102c_0_34 airplane_daew4)
       (not_blocked seg_o1_102c_0_34 airplane_daew5)
       (not_blocked seg_o1_102c_0_34 airplane_daew6)
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
 (:action ugly915startup_seg_p117_0_76_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly916pushback_seg_o1_118c_0_34_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew2)
       (not_blocked seg_o1_c4a_0_34 airplane_daew4)
       (not_blocked seg_o1_c4a_0_34 airplane_daew5)
       (not_blocked seg_o1_c4a_0_34 airplane_daew6)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly917park_seg_p111_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action ugly918move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_daewh)
       (not_blocked seg_p117_0_76 airplane_daew1)
       (not_blocked seg_p117_0_76 airplane_daew2)
       (not_blocked seg_p117_0_76 airplane_daew4)
       (not_blocked seg_p117_0_76 airplane_daew5)
       (not_blocked seg_p117_0_76 airplane_daew6)
       (not_blocked seg_p117_0_76 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117b_0_60))
       (not_occupied seg_o1_117b_0_60) (not (at-segment ?a seg_o1_117b_0_60))
       (occupied seg_p117_0_76) (not (not_occupied seg_p117_0_76))
       (blocked seg_p117_0_76 ?a) (not (not_blocked seg_p117_0_76 ?a))
       (at-segment ?a seg_p117_0_76) (not (blocked seg_o1_117a_0_34 ?a))
       (not_blocked seg_o1_117a_0_34 ?a) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a)))
 (:action ugly919startup_seg_w1_142c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action ugly920startup_seg_o1_110b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action ugly921move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_daewh)
       (not_blocked seg_w1_c4a_0_34 airplane_daew1)
       (not_blocked seg_w1_c4a_0_34 airplane_daew2)
       (not_blocked seg_w1_c4a_0_34 airplane_daew4)
       (not_blocked seg_w1_c4a_0_34 airplane_daew5)
       (not_blocked seg_w1_c4a_0_34 airplane_daew6)
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
 (:action ugly922move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew2)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew4)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew5)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7f_0_75))
       (not_occupied seg_n_a4a7f_0_75) (not (at-segment ?a seg_n_a4a7f_0_75))
       (occupied seg_n_a4a7e_0_75) (not (not_occupied seg_n_a4a7e_0_75))
       (blocked seg_n_a4a7e_0_75 ?a) (not (not_blocked seg_n_a4a7e_0_75 ?a))
       (at-segment ?a seg_n_a4a7e_0_75) (not (blocked seg_n_a7c_0_60 ?a))
       (not_blocked seg_n_a7c_0_60 ?a)))
 (:action ugly923park_seg_p119_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action ugly924startup_seg_o1_109a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a)) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action ugly925startup_seg_n_a2a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action ugly926startup_seg_o1_109d_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a)) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action ugly927startup_seg_m_a3a_0_120_934_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action ugly928startup_seg_o1_c2b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action ugly929startup_seg_w1_143b_0_45_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action ugly930move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
       (not_blocked seg_o1_108c_0_34 airplane_daew2)
       (not_blocked seg_o1_108c_0_34 airplane_daew4)
       (not_blocked seg_o1_108c_0_34 airplane_daew5)
       (not_blocked seg_o1_108c_0_34 airplane_daew6)
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
 (:action ugly931park_seg_p115_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action ugly932park_seg_p104_0_76_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action ugly933move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_daewh)
       (not_blocked seg_a2_c_0_100 airplane_daew1)
       (not_blocked seg_a2_c_0_100 airplane_daew2)
       (not_blocked seg_a2_c_0_100 airplane_daew4)
       (not_blocked seg_a2_c_0_100 airplane_daew5)
       (not_blocked seg_a2_c_0_100 airplane_daew6)
       (not_blocked seg_a2_c_0_100 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a_0_60))
       (not_occupied seg_n_a2a_0_60) (not (at-segment ?a seg_n_a2a_0_60))
       (occupied seg_a2_c_0_100) (not (not_occupied seg_a2_c_0_100))
       (blocked seg_a2_c_0_100 ?a) (not (not_blocked seg_a2_c_0_100 ?a))
       (at-segment ?a seg_a2_c_0_100) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action ugly934startup_seg_m_a6a_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6b_0_60) (not_occupied seg_m_a6c_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly935move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
       (not_blocked seg_w1_154c_0_34 airplane_daew2)
       (not_blocked seg_w1_154c_0_34 airplane_daew4)
       (not_blocked seg_w1_154c_0_34 airplane_daew5)
       (not_blocked seg_w1_154c_0_34 airplane_daew6)
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
 (:action ugly936startup_seg_n_a9a10b_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action ugly937startup_seg_o1_104a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action ugly938startup_seg_n_a9a10e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action ugly939move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_daewh)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew1)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew2)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew4)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew5)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew6)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8b_0_75))
       (not_occupied seg_n_a6a8b_0_75) (not (at-segment ?a seg_n_a6a8b_0_75))
       (occupied seg_n_a6a8a_0_115) (not (not_occupied seg_n_a6a8a_0_115))
       (blocked seg_n_a6a8a_0_115 ?a) (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action ugly940move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
       (not_blocked seg_o1_111a_0_34 airplane_daew2)
       (not_blocked seg_o1_111a_0_34 airplane_daew4)
       (not_blocked seg_o1_111a_0_34 airplane_daew5)
       (not_blocked seg_o1_111a_0_34 airplane_daew6)
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
 (:action ugly941startup_seg_p143_0_75_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action ugly942move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew2)
       (not_blocked seg_o1_c3b_0_60 airplane_daew4)
       (not_blocked seg_o1_c3b_0_60 airplane_daew5)
       (not_blocked seg_o1_c3b_0_60 airplane_daew6)
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
 (:action ugly943startup_seg_p142_0_75_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly944startup_seg_n_a6b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action ugly945startup_seg_w1_141c_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action ugly946startup_seg_m_a3b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action ugly947startup_seg_w1_c4a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly948startup_seg_w1_164b_0_45_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action ugly949pushback_seg_w1_153c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
       (not_blocked seg_w1_154a_0_34 airplane_daew2)
       (not_blocked seg_w1_154a_0_34 airplane_daew4)
       (not_blocked seg_w1_154a_0_34 airplane_daew5)
       (not_blocked seg_w1_154a_0_34 airplane_daew6)
       (not_blocked seg_w1_154a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_153c_0_34)) (not_occupied seg_w1_153c_0_34)
       (not (blocked seg_w1_153c_0_34 ?a)) (not_blocked seg_w1_153c_0_34 ?a)
       (not (at-segment ?a seg_w1_153c_0_34)) (occupied seg_w1_154a_0_34)
       (not (not_occupied seg_w1_154a_0_34)) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (at-segment ?a seg_w1_154a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action ugly950move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew1)
       (not_blocked seg_c1_n2b_0_80 airplane_daew2)
       (not_blocked seg_c1_n2b_0_80 airplane_daew4)
       (not_blocked seg_c1_n2b_0_80 airplane_daew5)
       (not_blocked seg_c1_n2b_0_80 airplane_daew6)
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
 (:action ugly951startup_seg_n_a4a_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action ugly952startup_seg_m_a4a7e_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action ugly953startup_seg_o1_109b_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action ugly954startup_seg_n_a4c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action ugly955startup_seg_n_a9c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action ugly956startup_seg_o1_117a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action ugly957startup_seg_n_a10b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action ugly958move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
       (not_blocked seg_w1_163a_0_34 airplane_daew2)
       (not_blocked seg_w1_163a_0_34 airplane_daew4)
       (not_blocked seg_w1_163a_0_34 airplane_daew5)
       (not_blocked seg_w1_163a_0_34 airplane_daew6)
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
 (:action ugly959startup_seg_w1_162a_0_34_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly960startup_seg_m_a8c_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8b_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly961park_seg_p112_0_76_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action ugly962startup_seg_o1_110b_0_60_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly963startup_seg_m_a8a9c_0_75_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action ugly964startup_seg_08l_a7c_0_161_245_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action ugly965startup_seg_o1_104c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action ugly966move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
       (not_blocked seg_o1_104c_0_60 airplane_daew2)
       (not_blocked seg_o1_104c_0_60 airplane_daew4)
       (not_blocked seg_o1_104c_0_60 airplane_daew5)
       (not_blocked seg_o1_104c_0_60 airplane_daew6)
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
 (:action ugly967startup_seg_o1_110a_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly968startup_seg_o1_c1b_0_34_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action ugly969startup_seg_m_a6c_0_60_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action ugly970pushback_seg_p141_0_75_seg_w1_141b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew2)
       (not_blocked seg_w1_141b_0_45 airplane_daew4)
       (not_blocked seg_w1_141b_0_45 airplane_daew5)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
       (not_blocked seg_w1_141b_0_45 airplane_daew7))
  :effect
  (and (not (occupied seg_p141_0_75)) (not_occupied seg_p141_0_75)
       (not (blocked seg_p141_0_75 ?a)) (not_blocked seg_p141_0_75 ?a)
       (not (at-segment ?a seg_p141_0_75)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action ugly971move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_daewh)
       (not_blocked seg_p164_0_75 airplane_daew1)
       (not_blocked seg_p164_0_75 airplane_daew2)
       (not_blocked seg_p164_0_75 airplane_daew4)
       (not_blocked seg_p164_0_75 airplane_daew5)
       (not_blocked seg_p164_0_75 airplane_daew6)
       (not_blocked seg_p164_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164b_0_45))
       (not_occupied seg_w1_164b_0_45) (not (at-segment ?a seg_w1_164b_0_45))
       (occupied seg_p164_0_75) (not (not_occupied seg_p164_0_75))
       (blocked seg_p164_0_75 ?a) (not (not_blocked seg_p164_0_75 ?a))
       (at-segment ?a seg_p164_0_75) (not (blocked seg_w1_164a_0_34 ?a))
       (not_blocked seg_w1_164a_0_34 ?a) (not (blocked seg_w1_164c_0_34 ?a))
       (not_blocked seg_w1_164c_0_34 ?a)))) 