
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (is-pushing ?a - airplane) (not_occupied ?s - segment)
  (is-start-runway ?s - segment ?d - direction)
  (is-parked ?a - airplane ?s - segment) (is-moving ?a - airplane)
  (not_blocked ?s - segment ?a - airplane)
  (has-type ?a - airplane ?t - airplanetype)
  (blocked ?s - segment ?a - airplane) (airborne ?a - airplane ?s - segment)
  (occupied ?s - segment) (at-segment ?a - airplane ?s - segment)
  (facing ?a - airplane ?d - direction))
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
  airplane_daew1 airplane_daew6 airplane_daew7 - airplane)
 (:functions (total-cost) - number)
 (:action
  ugly4291ugly296ugly153ugly117ugly895move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
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
 (:action
  ugly4292ugly738ugly766ugly215ugly868startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly4293ugly831ugly364ugly481ugly141startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly4294ugly61ugly357ugly806ugly556move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
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
 (:action
  ugly4295ugly11ugly612ugly99ugly545startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly4296ugly812ugly199ugly900ugly768move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew1)
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
 (:action
  ugly4297ugly828ugly218ugly551ugly382startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action ugly4298ugly123ugly272ugly389ugly476park_seg_p161_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action ugly4299ugly733ugly67ugly332ugly154park_seg_p101_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly4300ugly81ugly170ugly478ugly823startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action ugly4301ugly320ugly758ugly72ugly851park_seg_p116_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action
  ugly4302ugly53ugly207ugly959ugly700startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly4303ugly365ugly323ugly780ugly873startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly4304ugly195ugly258ugly801ugly350startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action
  ugly4305ugly510ugly720ugly647ugly374startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly4306ugly268ugly927ugly912ugly557move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_daew1)
       (not_blocked seg_n_n2a_0_60 airplane_daew6)
       (not_blocked seg_n_n2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4a_0_70))
       (not_occupied seg_n_n2a4a_0_70) (not (at-segment ?a seg_n_n2a4a_0_70))
       (occupied seg_n_n2a_0_60) (not (not_occupied seg_n_n2a_0_60))
       (blocked seg_n_n2a_0_60 ?a) (not (not_blocked seg_n_n2a_0_60 ?a))
       (at-segment ?a seg_n_n2a_0_60) (not (blocked seg_n_n2a4b_0_75 ?a))
       (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action ugly4307ugly497ugly715ugly266ugly827park_seg_p142_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly4308ugly192ugly349ugly189ugly385move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daew1)
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
 (:action
  ugly4309ugly84ugly455ugly313ugly841startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly4310ugly861ugly440ugly203ugly723startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly4311ugly166ugly662ugly344ugly689startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly4312ugly330ugly716ugly570ugly452move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
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
 (:action
  ugly4313ugly930ugly829ugly931ugly32startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action
  ugly4314ugly603ugly19ugly26ugly922move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daew1)
       (not_blocked seg_w1_161b_0_45 airplane_daew6)
       (not_blocked seg_w1_161b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p161_0_75))
       (not_occupied seg_p161_0_75) (not (at-segment ?a seg_p161_0_75))
       (occupied seg_w1_161b_0_45) (not (not_occupied seg_w1_161b_0_45))
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action
  ugly4315ugly352ugly631ugly448ugly645startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly4316ugly701ugly666ugly629ugly436move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew1)
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
 (:action
  ugly4317ugly427ugly777ugly445ugly910startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly4318ugly720ugly647ugly374ugly413startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action ugly4319ugly792ugly736ugly563ugly377park_seg_p111_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly4320ugly401ugly507ugly797ugly787startup_seg_o1_109d_0_45_south_medium
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
  ugly4321ugly282ugly471ugly907ugly325startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly4322ugly730ugly926ugly76ugly484startup_seg_o1_111d_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action ugly4323ugly373ugly644ugly663ugly562startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly4324ugly640ugly300ugly482ugly863move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_daew1)
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
 (:action
  ugly4325ugly48ugly916ugly217ugly719pushback_seg_o1_118b_0_60_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
       (not_blocked seg_o1_118c_0_34 airplane_daew6)
       (not_blocked seg_o1_118c_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly4326ugly155ugly294ugly712ugly828move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
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
 (:action ugly4327ugly550ugly866ugly698ugly630park_seg_p107_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action
  ugly4328ugly777ugly445ugly910ugly361move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
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
 (:action
  ugly4329ugly307ugly899ugly730ugly926move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_daew1)
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
 (:action
  ugly4330ugly468ugly148ugly356ugly956startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly4331ugly35ugly543ugly790ugly281move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8f_0_75))
       (not_occupied seg_n_a6a8f_0_75) (not (at-segment ?a seg_n_a6a8f_0_75))
       (occupied seg_n_a6a8e_0_75) (not (not_occupied seg_n_a6a8e_0_75))
       (blocked seg_n_a6a8e_0_75 ?a) (not (not_blocked seg_n_a6a8e_0_75 ?a))
       (at-segment ?a seg_n_a6a8e_0_75) (not (blocked seg_n_a8c_0_60 ?a))
       (not_blocked seg_n_a8c_0_60 ?a)))
 (:action
  ugly4332ugly131ugly930ugly829ugly931move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_daew1)
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
 (:action
  ugly4333ugly144ugly844ugly431ugly249startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly4334ugly436ugly33ugly483ugly830move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_daew1)
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
 (:action
  ugly4335ugly627ugly367ugly925ugly657move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
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
 (:action
  ugly4336ugly830ugly239ugly35ugly543startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action
  ugly4337ugly934ugly919ugly302ugly885move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daew1)
       (not_blocked seg_w1_162b_0_45 airplane_daew6)
       (not_blocked seg_w1_162b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p162_0_75))
       (not_occupied seg_p162_0_75) (not (at-segment ?a seg_p162_0_75))
       (occupied seg_w1_162b_0_45) (not (not_occupied seg_w1_162b_0_45))
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action
  ugly4338ugly403ugly498ugly604ugly756startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly4339ugly641ugly191ugly735ugly285move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
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
 (:action
  ugly4340ugly194ugly444ugly754ugly710move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daew1)
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
 (:action
  ugly4341ugly595ugly813ugly569ugly469move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daew1)
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
 (:action
  ugly4342ugly242ugly711ugly648ugly501move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3e_0_75))
       (not_occupied seg_n_a2a3e_0_75) (not (at-segment ?a seg_n_a2a3e_0_75))
       (occupied seg_n_a2a3d_0_75) (not (not_occupied seg_n_a2a3d_0_75))
       (blocked seg_n_a2a3d_0_75 ?a) (not (not_blocked seg_n_a2a3d_0_75 ?a))
       (at-segment ?a seg_n_a2a3d_0_75) (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action
  ugly4343ugly437ugly795ugly769ugly706startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly4344ugly177ugly853ugly518ugly655startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly4345ugly58ugly187ugly610ugly850move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
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
 (:action
  ugly4346ugly751ugly130ugly775ugly531move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daew1)
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
 (:action
  ugly4347ugly956ugly407ugly6ugly185startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly4348ugly568ugly898ugly492ugly677move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
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
 (:action
  ugly4349ugly149ugly947ugly516ugly206startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action ugly4350ugly169ugly433ugly64ugly235startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly4351ugly38ugly88ugly28ugly104startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly4352ugly951ugly163ugly134ugly656move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_daew1)
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
 (:action
  ugly4353ugly294ugly712ugly828ugly218startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly4354ugly920ugly935ugly223ugly5move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
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
 (:action ugly4355ugly154ugly475ugly366ugly127park_seg_p142_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action ugly4356ugly788ugly591ugly331ugly890park_seg_p131_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly4357ugly439ugly692ugly854ugly679move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3b_0_75))
       (not_occupied seg_n_a2a3b_0_75) (not (at-segment ?a seg_n_a2a3b_0_75))
       (occupied seg_n_a2a3a_0_75) (not (not_occupied seg_n_a2a3a_0_75))
       (blocked seg_n_a2a3a_0_75 ?a) (not (not_blocked seg_n_a2a3a_0_75 ?a))
       (at-segment ?a seg_n_a2a3a_0_75) (not (blocked seg_n_a2a3c_0_75 ?a))
       (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action
  ugly4358ugly882ugly124ugly675ugly275startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly4359ugly957ugly574ugly865ugly684move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
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
 (:action
  ugly4360ugly532ugly89ugly542ugly494move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
       (not_blocked seg_o1_111b_0_60 airplane_daew6)
       (not_blocked seg_o1_111b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p111_0_76))
       (not_occupied seg_p111_0_76) (not (at-segment ?a seg_p111_0_76))
       (occupied seg_o1_111b_0_60) (not (not_occupied seg_o1_111b_0_60))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly4361ugly75ugly330ugly716ugly570startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly4362ugly477ugly225ugly625ugly31startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action
  ugly4363ugly251ugly113ugly571ugly688startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action ugly4364ugly94ugly306ugly42ugly488startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly4365ugly428ugly220ugly696ugly442startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action
  ugly4366ugly405ugly464ugly342ugly536pushback_seg_o1_c2b_0_60_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
       (not_blocked seg_o1_c2d_0_60 airplane_daew6)
       (not_blocked seg_o1_c2d_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c2b_0_60)) (not_occupied seg_o1_c2b_0_60)
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)
       (not (at-segment ?a seg_o1_c2b_0_60)) (occupied seg_o1_c2d_0_60)
       (not (not_occupied seg_o1_c2d_0_60)) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a)) (at-segment ?a seg_o1_c2d_0_60)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly4367ugly816ugly888ugly22ugly414startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly4368ugly683ugly587ugly879ugly681startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly4369ugly205ugly641ugly191ugly735move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daew1)
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
 (:action
  ugly4370ugly238ugly169ugly433ugly64move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_daew1)
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
 (:action
  ugly4371ugly858ugly321ugly786ugly902startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly4372ugly705ugly159ugly107ugly193move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
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
 (:action
  ugly4373ugly649ugly668ugly532ugly89startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action
  ugly4374ugly332ugly154ugly475ugly366move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daew1)
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
 (:action
  ugly4375ugly803ugly55ugly638ugly619startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly4376ugly89ugly542ugly494ugly252startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly4377ugly834ugly166ugly662ugly344startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action
  ugly4378ugly598ugly560ugly928ugly525startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly4379ugly622ugly37ugly403ugly498startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly4380ugly561ugly728ugly640ugly300startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action
  ugly4381ugly113ugly571ugly688ugly379startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly4382ugly152ugly392ugly624ugly546move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daew1)
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
 (:action
  ugly4383ugly925ugly657ugly118ugly282startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly4384ugly246ugly406ugly510ugly720startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly4385ugly69ugly772ugly852ugly264startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly4386ugly490ugly162ugly824ugly864move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_daew1)
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
 (:action
  ugly4387ugly273ugly862ugly702ugly211startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly4388ugly451ugly522ugly365ugly323startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action ugly4389ugly188ugly236ugly733ugly67startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action ugly4390ugly83ugly3ugly765ugly623park_seg_p131_0_75_south :parameters
  (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly4391ugly531ugly167ugly326ugly849startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly4392ugly344ugly689ugly347ugly10move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_daew1)
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
 (:action
  ugly4393ugly870ugly500ugly404ugly339startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4394ugly153ugly117ugly895ugly216startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4395ugly486ugly941ugly955ugly906startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly4396ugly243ugly796ugly660ugly181move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3f_0_115))
       (not_occupied seg_n_a2a3f_0_115) (not (at-segment ?a seg_n_a2a3f_0_115))
       (occupied seg_n_a2a3e_0_75) (not (not_occupied seg_n_a2a3e_0_75))
       (blocked seg_n_a2a3e_0_75 ?a) (not (not_blocked seg_n_a2a3e_0_75 ?a))
       (at-segment ?a seg_n_a2a3e_0_75) (not (blocked seg_n_a3d_0_60 ?a))
       (not_blocked seg_n_a3d_0_60 ?a)))
 (:action
  ugly4397ugly356ugly956ugly407ugly6move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
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
 (:action
  ugly4398ugly669ugly528ugly749ugly521startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action
  ugly4399ugly892ugly183ugly595ugly813startup_seg_o1_111a_0_34_south_medium
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
  ugly4400ugly697ugly420ugly923ugly253move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daew1)
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
 (:action
  ugly4401ugly506ugly497ugly715ugly266startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly4402ugly684ugly190ugly125ugly438startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action ugly4403ugly245ugly745ugly462ugly114park_seg_p117_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action ugly4404ugly12ugly616ugly227ugly51startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly4405ugly465ugly575ugly362ugly792startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly4406ugly897ugly228ugly376ugly815startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly4407ugly610ugly850ugly150ugly459startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action
  ugly4408ugly829ugly931ugly32ugly614move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daew1)
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
 (:action ugly4409ugly98ugly46ugly222ugly164startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly4410ugly520ugly456ugly474ugly202move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daew1)
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
 (:action
  ugly4411ugly937ugly520ugly456ugly474move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
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
 (:action
  ugly4412ugly161ugly260ugly583ugly308move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
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
 (:action
  ugly4413ugly712ugly828ugly218ugly551startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4414ugly175ugly129ugly158ugly247startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly4415ugly50ugly251ugly113ugly571startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly4416ugly193ugly173ugly553ugly523startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly4417ugly867ugly73ugly837ugly396startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly4418ugly445ugly910ugly361ugly237move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
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
 (:action ugly4419ugly569ugly469ugly295ugly54startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly4420ugly446ugly884ugly945ugly743move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
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
 (:action
  ugly4421ugly186ugly636ugly423ugly378startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action
  ugly4422ugly56ugly683ugly587ugly879startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly4423ugly207ugly959ugly700ugly718move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_daew1)
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
 (:action ugly4424ugly399ugly288ugly418ugly93park_seg_p112_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly4425ugly421ugly784ugly558ugly896startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly4426ugly555ugly256ugly243ugly796startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly4427ugly953ugly410ugly240ugly940startup_seg_o1_109a_0_34_south_medium
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
  ugly4428ugly710ugly297ugly63ugly834move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
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
 (:action
  ugly4429ugly572ugly263ugly722ugly62move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
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
 (:action
  ugly4430ugly237ugly233ugly81ugly170startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly4431ugly748ugly424ugly731ugly204startup_seg_n_a3a_0_60_south_medium
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
  ugly4432ugly923ugly253ugly121ugly892move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daew1)
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
 (:action
  ugly4433ugly694ugly871ugly201ugly839move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daew1)
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
 (:action
  ugly4434ugly670ugly453ugly842ugly149startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly4435ugly64ugly235ugly582ugly47startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly4436ugly345ugly598ugly560ugly928startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action ugly4437ugly557ugly71ugly832ugly725park_seg_p143_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly4438ugly558ugly896ugly889ugly11startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly4439ugly67ugly332ugly154ugly475startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly4440ugly30ugly68ugly24ugly210move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daew1)
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
 (:action
  ugly4441ugly676ugly77ugly835ugly552move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_daew1)
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
 (:action
  ugly4442ugly386ugly799ugly596ugly485startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly4443ugly741ugly632ugly168ugly393move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
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
 (:action
  ugly4444ugly368ugly280ugly760ugly860startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly4445ugly304ugly430ugly511ugly229startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly4446ugly303ugly653ugly336ugly493move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
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
 (:action
  ugly4447ugly804ugly58ugly187ugly610startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly4448ugly466ugly637ugly580ugly25startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly4449ugly76ugly484ugly579ugly135startup_seg_08l_a4c_0_161_245_south_medium
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
  ugly4450ugly725ugly363ugly472ugly678startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action
  ugly4451ugly798ugly200ugly373ugly644startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action ugly4452ugly19ugly26ugly922ugly133startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly4453ugly796ugly660ugly181ugly12startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly4454ugly787ugly547ugly825ugly311move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
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
 (:action
  ugly4455ugly18ugly192ugly349ugly189startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly4456ugly538ugly446ugly884ugly945startup_seg_m_a7d_0_60_south_medium
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
  ugly4457ugly375ugly176ugly391ugly957startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action
  ugly4458ugly672ugly615ugly921ugly514startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly4459ugly115ugly857ugly151ugly729startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly4460ugly489ugly409ugly334ugly652move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_daew1)
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
 (:action
  ugly4461ugly159ugly107ugly193ugly173startup_seg_o1_110a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a)) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a)) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action ugly4462ugly747ugly255ugly375ugly176park_seg_p152_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly4463ugly521ugly578ugly29ugly650startup_seg_o1_c3a_0_34_south_medium
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
  ugly4464ugly102ugly905ugly94ugly306move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_daew1)
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
 (:action
  ugly4465ugly666ugly629ugly436ugly33startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly4466ugly794ugly555ugly256ugly243startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly4467ugly21ugly194ugly444ugly754startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly4468ugly285ugly184ugly746ugly572move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_daew1)
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
 (:action
  ugly4469ugly271ugly762ugly836ugly738startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly4470ugly327ugly78ugly917ugly270startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly4471ugly347ugly10ugly34ugly751move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
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
 (:action
  ugly4472ugly800ugly296ugly153ugly117startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action ugly4473ugly108ugly50ugly251ugly113park_seg_p133_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly4474ugly206ugly626ugly693ugly808startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action ugly4475ugly1ugly741ugly632ugly168startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly4476ugly879ugly681ugly874ugly338move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_daew1)
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
 (:action
  ugly4477ugly661ugly466ugly637ugly580move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_daew1)
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
 (:action
  ugly4478ugly409ugly334ugly652ugly259startup_seg_n_a3b_0_60_south_medium
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
  ugly4479ugly619ugly470ugly717ugly250move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daew1)
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
 (:action
  ugly4480ugly311ugly232ugly234ugly458startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly4481ugly248ugly601ugly949ugly437startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly4482ugly570ugly452ugly244ugly504startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly4483ugly583ugly308ugly136ugly816startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly4484ugly726ugly932ugly721ugly316startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly4485ugly458ugly911ugly559ugly119move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daew1)
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
 (:action
  ugly4486ugly264ugly370ugly425ugly577startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly4487ugly383ugly674ugly617ugly463startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly4488ugly638ugly619ugly470ugly717move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
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
 (:action
  ugly4489ugly298ugly179ugly800ugly296move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
       (not_blocked seg_w1_163b_0_45 airplane_daew6)
       (not_blocked seg_w1_163b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p163_0_75))
       (not_occupied seg_p163_0_75) (not (at-segment ?a seg_p163_0_75))
       (occupied seg_w1_163b_0_45) (not (not_occupied seg_w1_163b_0_45))
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly4490ugly299ugly502ugly387ugly402startup_seg_m_a6b_0_60_south_medium
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
  ugly4491ugly750ugly810ugly1ugly741startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly4492ugly809ugly372ugly473ugly82move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_daew1)
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
 (:action
  ugly4493ugly431ugly249ugly434ugly877startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action ugly4494ugly519ugly811ugly56ugly683startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly4495ugly59ugly643ugly242ugly711park_seg_p119_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action ugly4496ugly63ugly834ugly166ugly662startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4497ugly91ugly427ugly777ugly445startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly4498ugly494ugly252ugly664ugly112move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_daew1)
       (not_blocked seg_n_a2b_0_60 airplane_daew6)
       (not_blocked seg_n_a2b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3a_0_75))
       (not_occupied seg_n_a2a3a_0_75) (not (at-segment ?a seg_n_a2a3a_0_75))
       (occupied seg_n_a2b_0_60) (not (not_occupied seg_n_a2b_0_60))
       (blocked seg_n_a2b_0_60 ?a) (not (not_blocked seg_n_a2b_0_60 ?a))
       (at-segment ?a seg_n_a2b_0_60) (not (blocked seg_n_a2a3b_0_75 ?a))
       (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action
  ugly4499ugly204ugly701ugly666ugly629startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly4500ugly367ugly925ugly657ugly118move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_daew1)
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
 (:action
  ugly4501ugly448ugly645ugly880ugly123move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daew1)
       (not_blocked seg_o1_115b_0_60 airplane_daew6)
       (not_blocked seg_o1_115b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p115_0_76))
       (not_occupied seg_p115_0_76) (not (at-segment ?a seg_p115_0_76))
       (occupied seg_o1_115b_0_60) (not (not_occupied seg_o1_115b_0_60))
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action
  ugly4502ugly128ugly138ugly195ugly258startup_seg_m_a9a_0_60_south_medium
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
  ugly4503ugly715ugly266ugly827ugly353move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
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
 (:action
  ugly4504ugly174ugly304ugly430ugly511move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
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
 (:action
  ugly4505ugly607ugly819ugly360ugly27startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly4506ugly158ugly247ugly451ugly522startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action ugly4507ugly124ugly675ugly275ugly838park_seg_p103_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action ugly4508ugly760ugly860ugly465ugly575park_seg_p143_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly4509ugly487ugly457ugly934ugly919move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
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
 (:action
  ugly4510ugly348ugly315ugly676ugly77startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly4511ugly493ugly155ugly294ugly712startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly4512ugly129ugly158ugly247ugly451startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly4513ugly863ugly96ugly803ugly55park_seg_p118_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly4514ugly594ugly174ugly304ugly430startup_seg_o1_c2a_0_60_south_medium
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
  ugly4515ugly895ugly216ugly550ugly866startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly4516ugly336ugly493ugly155ugly294startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly4517ugly41ugly59ugly643ugly242startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly4518ugly321ugly786ugly902ugly891move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7d_0_75))
       (not_occupied seg_n_a4a7d_0_75) (not (at-segment ?a seg_n_a4a7d_0_75))
       (occupied seg_n_a4a7c_0_75) (not (not_occupied seg_n_a4a7c_0_75))
       (blocked seg_n_a4a7c_0_75 ?a) (not (not_blocked seg_n_a4a7c_0_75 ?a))
       (at-segment ?a seg_n_a4a7c_0_75) (not (blocked seg_n_a4a7e_0_75 ?a))
       (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action ugly4519ugly150ugly459ugly386ugly799park_seg_p112_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action
  ugly4520ugly120ugly450ugly489ugly409startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly4521ugly253ugly121ugly892ugly183startup_seg_o1_c3d_0_60_south_medium
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
  ugly4522ugly228ugly376ugly815ugly714move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_daew1)
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
 (:action
  ugly4523ugly70ugly590ugly103ugly778move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew1)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew6)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8b_0_75))
       (not_occupied seg_n_a6a8b_0_75) (not (at-segment ?a seg_n_a6a8b_0_75))
       (occupied seg_n_a6a8a_0_115) (not (not_occupied seg_n_a6a8a_0_115))
       (blocked seg_n_a6a8a_0_115 ?a) (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly4524ugly560ugly928ugly525ugly897move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daew1)
       (not_blocked seg_o1_109b_0_60 airplane_daew6)
       (not_blocked seg_o1_109b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p109_0_76))
       (not_occupied seg_p109_0_76) (not (at-segment ?a seg_p109_0_76))
       (occupied seg_o1_109b_0_60) (not (not_occupied seg_o1_109b_0_60))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action
  ugly4525ugly630ugly519ugly811ugly56startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly4526ugly860ugly465ugly575ugly362startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly4527ugly611ugly209ugly924ugly109startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly4528ugly456ugly474ugly202ugly310move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
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
 (:action
  ugly4529ugly452ugly244ugly504ugly903startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly4530ugly530ugly408ugly709ugly226startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly4531ugly660ugly181ugly12ugly616move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_daew1)
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
 (:action
  ugly4532ugly885ugly145ugly740ugly291move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daew1)
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
 (:action
  ugly4533ugly474ugly202ugly310ugly90startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly4534ugly47ugly753ugly299ugly502startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly4535ugly57ugly807ugly421ugly784startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly4536ugly407ugly6ugly185ugly929startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly4537ugly136ugly816ugly888ugly22startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action ugly4538ugly535ugly573ugly92ugly818startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4539ugly209ugly924ugly109ugly417startup_seg_o1_108b_0_60_south_medium
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
  ugly4540ugly275ugly838ugly496ugly399move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
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
 (:action
  ugly4541ugly362ugly792ugly736ugly563startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly4542ugly599ugly262ugly301ugly847move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_daew1)
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
 (:action ugly4543ugly927ugly912ugly557ugly71startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly4544ugly762ugly836ugly738ugly766move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daew1)
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
 (:action
  ugly4545ugly815ugly714ugly116ugly98move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8e_0_75))
       (not_occupied seg_n_a6a8e_0_75) (not (at-segment ?a seg_n_a6a8e_0_75))
       (occupied seg_n_a6a8d_0_75) (not (not_occupied seg_n_a6a8d_0_75))
       (blocked seg_n_a6a8d_0_75 ?a) (not (not_blocked seg_n_a6a8d_0_75 ?a))
       (at-segment ?a seg_n_a6a8d_0_75) (not (blocked seg_n_a6a8f_0_75 ?a))
       (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action
  ugly4546ugly255ugly375ugly176ugly391startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly4547ugly422ugly248ugly601ugly949startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly4548ugly637ugly580ugly25ugly680move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
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
  ugly4549ugly305ugly48ugly916ugly217startup_seg_m_a4d_0_60_south_medium
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
  ugly4550ugly55ugly638ugly619ugly470startup_seg_m_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_m_a4a_0_120_934) (not_occupied seg_m_a4b_0_60)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a)) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a)) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action ugly4551ugly96ugly803ugly55ugly638park_seg_p116_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action ugly4552ugly508ugly394ugly335ugly843park_seg_p152_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly4553ugly784ugly558ugly896ugly889move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew1)
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
 (:action
  ugly4554ugly846ugly79ugly439ugly692startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly4555ugly677ugly219ugly85ugly267startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly4556ugly306ugly42ugly488ugly355move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
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
 (:action
  ugly4557ugly101ugly554ugly36ugly274startup_seg_08l_a4b_0_161_245_south_medium
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
 (:action ugly4558ugly944ugly789ugly505ugly15startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4559ugly841ugly734ugly821ugly111move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daew1)
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
 (:action
  ugly4560ugly504ugly903ugly708ugly175move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
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
 (:action
  ugly4561ugly331ugly890ugly538ugly446startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly4562ugly34ugly751ugly130ugly775startup_seg_o1_108d_0_45_south_medium
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
  ugly4563ugly900ugly768ugly66ugly212startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly4564ugly235ugly582ugly47ugly753move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew6)
       (not_blocked seg_o1_118b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p118_0_76))
       (not_occupied seg_p118_0_76) (not (at-segment ?a seg_p118_0_76))
       (occupied seg_o1_118b_0_60) (not (not_occupied seg_o1_118b_0_60))
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly4565ugly866ugly698ugly630ugly519startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly4566ugly74ugly20ugly381ugly870startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action ugly4567ugly614ugly105ugly60ugly400park_seg_p134_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action ugly4568ugly469ugly295ugly54ugly535startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly4569ugly475ugly366ugly127ugly352startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly4570ugly162ugly824ugly864ugly290move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
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
 (:action
  ugly4571ugly581ugly691ugly70ugly590move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daew1)
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
 (:action
  ugly4572ugly461ugly779ugly794ugly555move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
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
 (:action
  ugly4573ugly385ugly142ugly783ugly320startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly4574ugly276ugly887ugly122ugly340startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly4575ugly631ugly448ugly645ugly880move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
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
 (:action
  ugly4576ugly339ugly508ugly394ugly335startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly4577ugly139ugly205ugly641ugly191startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly4578ugly500ugly404ugly339ugly508startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly4579ugly247ugly451ugly522ugly365pushback_seg_o1_118c_0_34_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
       (not_blocked seg_o1_c4a_0_34 airplane_daew6)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly4580ugly343ugly763ugly44ugly686move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
       (not_blocked seg_o1_108d_0_45 airplane_daew6)
       (not_blocked seg_o1_108d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p131_0_75))
       (not_occupied seg_p131_0_75) (not (at-segment ?a seg_p131_0_75))
       (occupied seg_o1_108d_0_45) (not (not_occupied seg_o1_108d_0_45))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly4581ugly782ugly609ugly672ugly615startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly4582ugly230ugly14ugly490ugly162startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly4583ugly326ugly849ugly697ugly420startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly4584ugly744ugly132ugly91ugly427startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly4585ugly675ugly275ugly838ugly496startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly4586ugly703ugly793ugly938ugly785startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action ugly4587ugly360ugly27ugly480ugly441startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly4588ugly443ugly337ugly186ugly636startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action ugly4589ugly822ugly646ugly8ugly178startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly4590ugly478ugly823ugly359ugly221startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly4591ugly591ugly331ugly890ugly538startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly4592ugly692ugly854ugly679ugly16move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_daew1)
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
 (:action ugly4593ugly865ugly684ugly190ugly125park_seg_p162_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly4594ugly832ugly725ugly363ugly472startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly4595ugly644ugly663ugly562ugly833startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly4596ugly838ugly496ugly399ugly288startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly4597ugly779ugly794ugly555ugly256move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
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
 (:action
  ugly4598ugly147ugly561ugly728ugly640move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
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
 (:action
  ugly4599ugly764ugly401ugly507ugly797startup_seg_m_a8d_0_120_934_south_medium
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
  ugly4600ugly288ugly418ugly93ugly597move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4c_0_75))
       (not_occupied seg_n_n2a4c_0_75) (not (at-segment ?a seg_n_n2a4c_0_75))
       (occupied seg_n_n2a4b_0_75) (not (not_occupied seg_n_n2a4b_0_75))
       (blocked seg_n_n2a4b_0_75 ?a) (not (not_blocked seg_n_n2a4b_0_75 ?a))
       (at-segment ?a seg_n_n2a4b_0_75) (not (blocked seg_n_n2a4d_0_75 ?a))
       (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action
  ugly4601ugly565ugly18ugly192ugly349move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daew1)
       (not_blocked seg_o1_103b_0_60 airplane_daew6)
       (not_blocked seg_o1_103b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p103_0_76))
       (not_occupied seg_p103_0_76) (not (at-segment ?a seg_p103_0_76))
       (occupied seg_o1_103b_0_60) (not (not_occupied seg_o1_103b_0_60))
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action
  ugly4602ugly795ugly769ugly706ugly495startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly4603ugly24ugly210ugly115ugly857move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daew1)
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
 (:action
  ugly4604ugly231ugly416ugly952ugly328startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly4605ugly919ugly302ugly885ugly145startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly4606ugly137ugly776ugly172ugly752startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly4607ugly62ugly292ugly146ugly38move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_daew1)
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
 (:action
  ugly4608ugly547ugly825ugly311ugly232move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daew1)
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
 (:action
  ugly4609ugly190ugly125ugly438ugly707startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly4610ugly585ugly737ugly761ugly358park_seg_p110_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action
  ugly4611ugly699ugly699ugly699ugly699startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly4612ugly584ugly883ugly131ugly930startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly4613ugly220ugly696ugly442ugly530startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action ugly4614ugly639ugly661ugly466ugly637park_seg_p111_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action ugly4615ugly825ugly311ugly232ugly234park_seg_p164_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action
  ugly4616ugly843ugly390ugly487ugly457startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly4617ugly533ugly447ugly143ugly690startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly4618ugly650ugly589ugly161ugly260startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly4619ugly813ugly569ugly469ugly295move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew6)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6c_0_75))
       (not_occupied seg_n_a7a6c_0_75) (not (at-segment ?a seg_n_a7a6c_0_75))
       (occupied seg_n_a7a6b_0_75) (not (not_occupied seg_n_a7a6b_0_75))
       (blocked seg_n_a7a6b_0_75 ?a) (not (not_blocked seg_n_a7a6b_0_75 ?a))
       (at-segment ?a seg_n_a7a6b_0_75) (not (blocked seg_n_a7a6d_0_75 ?a))
       (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly4620ugly958ugly53ugly207ugly959startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly4621ugly262ugly301ugly847ugly298move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
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
 (:action
  ugly4622ugly769ugly706ugly495ugly770startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly4623ugly516ugly206ugly626ugly693startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly4624ugly609ugly672ugly615ugly921startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly4625ugly855ugly479ugly639ugly661startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly4626ugly189ugly385ugly142ugly783pushback_seg_o1_c2d_0_60_seg_c2_b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daew1)
       (not_blocked seg_c2_b_0_80 airplane_daew6)
       (not_blocked seg_c2_b_0_80 airplane_daew7))
  :effect
  (and (not (occupied seg_o1_c2d_0_60)) (not_occupied seg_o1_c2d_0_60)
       (not (blocked seg_o1_c2d_0_60 ?a)) (not_blocked seg_o1_c2d_0_60 ?a)
       (not (at-segment ?a seg_o1_c2d_0_60)) (occupied seg_c2_b_0_80)
       (not (not_occupied seg_c2_b_0_80)) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a)) (at-segment ?a seg_c2_b_0_80)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly4627ugly4ugly165ugly826ugly208move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daew1)
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
 (:action
  ugly4628ugly160ugly942ugly307ugly899startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly4629ugly616ugly227ugly51ugly524move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
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
 (:action
  ugly4630ugly914ugly7ugly318ugly659startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly4631ugly119ugly230ugly14ugly490move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daew1)
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
 (:action
  ugly4632ugly270ugly415ugly198ugly633startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly4633ugly25ugly680ugly273ugly862startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly4634ugly110ugly682ugly858ugly321startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly4635ugly145ugly740ugly291ugly277move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daew1)
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
 (:action
  ugly4636ugly444ugly754ugly710ugly297move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew1)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew6)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7b_0_75))
       (not_occupied seg_n_a4a7b_0_75) (not (at-segment ?a seg_n_a4a7b_0_75))
       (occupied seg_n_a4a7a_0_115) (not (not_occupied seg_n_a4a7a_0_115))
       (blocked seg_n_a4a7a_0_115 ?a) (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action
  ugly4637ugly871ugly201ugly839ugly171startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action
  ugly4638ugly959ugly700ugly718ugly196startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action ugly4639ugly704ugly951ugly163ugly134startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly4640ugly740ugly291ugly277ugly289startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly4641ugly940ugly537ugly380ugly271startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly4642ugly821ugly111ugly157ugly513startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action
  ugly4643ugly688ugly379ugly541ugly43startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly4644ugly912ugly557ugly71ugly832startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly4645ugly681ugly874ugly338ugly152startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4646ugly316ugly491ugly314ugly83move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
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
 (:action
  ugly4647ugly658ugly368ugly280ugly760startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly4648ugly941ugly955ugly906ugly822startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly4649ugly429ugly909ugly383ugly674startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly4650ugly845ugly503ugly283ugly80startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly4651ugly763ugly44ugly686ugly224startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly4652ugly85ugly267ugly856ugly627startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly4653ugly117ugly895ugly216ugly550startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly4654ugly767ugly915ugly52ugly509startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action
  ugly4655ugly473ugly82ugly23ugly867move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_daew1)
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
 (:action
  ugly4656ugly563ugly377ugly581ugly691move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew1)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew6)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4b_0_75))
       (not_occupied seg_n_n2a4b_0_75) (not (at-segment ?a seg_n_n2a4b_0_75))
       (occupied seg_n_n2a4a_0_70) (not (not_occupied seg_n_n2a4a_0_70))
       (blocked seg_n_n2a4a_0_70 ?a) (not (not_blocked seg_n_n2a4a_0_70 ?a))
       (at-segment ?a seg_n_n2a4a_0_70) (not (blocked seg_n_n2a4c_0_75 ?a))
       (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action
  ugly4657ugly459ugly386ugly799ugly596startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly4658ugly589ugly161ugly260ugly583move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daew1)
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
 (:action
  ugly4659ugly460ugly30ugly68ugly24move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
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
 (:action
  ugly4660ugly134ugly656ugly160ugly942move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daew1)
       (not_blocked seg_o1_c4b_0_60 airplane_daew6)
       (not_blocked seg_o1_c4b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p119_0_76))
       (not_occupied seg_p119_0_76) (not (at-segment ?a seg_p119_0_76))
       (occupied seg_o1_c4b_0_60) (not (not_occupied seg_o1_c4b_0_60))
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))
       (at-segment ?a seg_o1_c4b_0_60)))
 (:action
  ugly4661ugly371ugly398ugly371ugly398startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly4662ugly929ugly426ugly284ugly713startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action ugly4663ugly309ugly87ugly126ugly602park_seg_p115_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly4664ugly315ugly676ugly77ugly835startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly4665ugly868ugly526ugly238ugly169startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly4666ugly467ugly515ugly727ugly312startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly4667ugly185ugly929ugly426ugly284startup_seg_m_a4a_0_120_934_south_medium
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
  ugly4668ugly628ugly820ugly876ugly106startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly4669ugly680ugly273ugly862ugly702move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
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
 (:action
  ugly4670ugly553ugly523ugly467ugly515startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly4671ugly766ugly215ugly868ugly526move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daew1)
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
 (:action
  ugly4672ugly511ugly229ugly329ugly257startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action
  ugly4673ugly324ugly468ugly148ugly356startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly4674ugly179ugly800ugly296ugly153move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daew1)
       (not_blocked seg_w1_153b_0_45 airplane_daew6)
       (not_blocked seg_w1_153b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p153_0_75))
       (not_occupied seg_p153_0_75) (not (at-segment ?a seg_p153_0_75))
       (occupied seg_w1_153b_0_45) (not (not_occupied seg_w1_153b_0_45))
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action
  ugly4675ugly562ugly833ugly607ugly819startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action ugly4676ugly819ugly360ugly27ugly480startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly4677ugly852ugly264ugly370ugly425startup_seg_o1_111c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a)) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a)) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action ugly4678ugly600ugly673ugly317ugly101park_seg_p132_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly4679ugly922ugly133ugly724ugly913startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly4680ugly590ugly103ugly778ugly49startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly4681ugly87ugly126ugly602ugly608move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daew1)
       (not_blocked seg_w1_151b_0_45 airplane_daew6)
       (not_blocked seg_w1_151b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p151_0_75))
       (not_occupied seg_p151_0_75) (not (at-segment ?a seg_p151_0_75))
       (occupied seg_w1_151b_0_45) (not (not_occupied seg_w1_151b_0_45))
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action
  ugly4682ugly706ugly495ugly770ugly432startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly4683ugly280ugly760ugly860ugly465startup_seg_o1_111b_0_60_south_medium
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
  ugly4684ugly945ugly743ugly147ugly561startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly4685ugly349ugly189ugly385ugly142startup_seg_m_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_m_a8a_0_60) (not_occupied seg_m_a8c_0_60)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a)) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a)) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action ugly4686ugly394ugly335ugly843ugly390park_seg_p102_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly4687ugly384ugly747ugly255ugly375move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daew1)
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
 (:action
  ugly4688ugly388ugly213ugly565ugly18move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daew1)
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
 (:action
  ugly4689ugly908ugly695ugly428ugly220startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly4690ugly462ugly114ugly628ugly820startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly4691ugly114ugly628ugly820ugly876move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daew1)
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
 (:action
  ugly4692ugly626ugly693ugly808ugly954startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly4693ugly45ugly861ugly440ugly203startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action
  ugly4694ugly495ugly770ugly432ugly705move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daew1)
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
 (:action
  ugly4695ugly212ugly943ugly767ugly915move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew1)
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
 (:action
  ugly4696ugly791ugly305ugly48ugly916move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
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
 (:action
  ugly4697ugly548ugly268ugly927ugly912startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly4698ugly757ugly658ugly368ugly280startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly4699ugly587ugly879ugly681ugly874startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly4700ugly278ugly620ugly443ugly337move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
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
 (:action
  ugly4701ugly202ugly310ugly90ugly397move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daew1)
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
 (:action
  ugly4702ugly746ugly572ugly263ugly722move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7c_0_75))
       (not_occupied seg_n_a4a7c_0_75) (not (at-segment ?a seg_n_a4a7c_0_75))
       (occupied seg_n_a4a7b_0_75) (not (not_occupied seg_n_a4a7b_0_75))
       (blocked seg_n_a4a7b_0_75 ?a) (not (not_blocked seg_n_a4a7b_0_75 ?a))
       (at-segment ?a seg_n_a4a7b_0_75) (not (blocked seg_n_a4a7d_0_75 ?a))
       (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly4703ugly454ugly549ugly120ugly450startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action ugly4704ugly187ugly610ugly850ugly150park_seg_p164_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly4705ugly425ugly577ugly953ugly410move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daew1)
       (not_blocked seg_o1_110b_0_60 airplane_daew6)
       (not_blocked seg_o1_110b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p110_0_76))
       (not_occupied seg_p110_0_76) (not (at-segment ?a seg_p110_0_76))
       (occupied seg_o1_110b_0_60) (not (not_occupied seg_o1_110b_0_60))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly4706ugly203ugly723ugly384ugly747move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
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
 (:action
  ugly4707ugly859ugly771ugly599ugly262move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
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
 (:action
  ugly4708ugly44ugly686ugly224ugly804move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew1)
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
 (:action
  ugly4709ugly223ugly5ugly278ugly620startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly4710ugly351ugly670ugly453ugly842move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daew1)
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
 (:action
  ugly4711ugly457ugly934ugly919ugly302startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly4712ugly679ugly16ugly65ugly845startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly4713ugly793ugly938ugly785ugly567move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
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
 (:action
  ugly4714ugly319ugly137ugly776ugly172startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly4715ugly36ugly274ugly667ugly757startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly4716ugly756ugly920ugly935ugly223move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daew1)
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
 (:action
  ugly4717ugly364ugly481ugly141ugly461startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly4718ugly28ugly104ugly369ugly600startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly4719ugly412ugly901ugly351ugly670startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly4720ugly932ugly721ugly316ugly491move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_daew1)
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
 (:action
  ugly4721ugly234ugly458ugly911ugly559move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daew1)
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
 (:action
  ugly4722ugly648ugly501ugly13ugly840move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_daew1)
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
 (:action
  ugly4723ugly536ugly319ugly137ugly776move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
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
 (:action
  ugly4724ugly921ugly514ugly936ugly732startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly4725ugly567ugly140ugly893ugly477move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
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
 (:action
  ugly4726ugly341ugly533ugly447ugly143startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly4727ugly100ugly84ugly455ugly313startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly4728ugly400ugly585ugly737ugly761startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action
  ugly4729ugly678ugly744ugly132ugly91startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action ugly4730ugly799ugly596ugly485ugly764park_seg_p153_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly4731ugly948ugly324ugly468ugly148startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action ugly4732ugly773ugly75ugly330ugly716park_seg_p133_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action
  ugly4733ugly105ugly60ugly400ugly585startup_seg_m_a7a_0_120_934_south_medium
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
  ugly4734ugly574ugly865ugly684ugly190move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
       (not_blocked seg_w1_154b_0_45 airplane_daew6)
       (not_blocked seg_w1_154b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p154_0_75))
       (not_occupied seg_p154_0_75) (not (at-segment ?a seg_p154_0_75))
       (occupied seg_w1_154b_0_45) (not (not_occupied seg_w1_154b_0_45))
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action
  ugly4735ugly633ugly642ugly726ugly932startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly4736ugly955ugly906ugly822ugly646move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_daew1)
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
 (:action
  ugly4737ugly143ugly690ugly755ugly460move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew1)
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
 (:action
  ugly4738ugly624ugly546ugly276ugly887move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
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
 (:action
  ugly4739ugly127ugly352ugly631ugly448startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly4740ugly433ugly64ugly235ugly582move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8d_0_75))
       (not_occupied seg_n_a6a8d_0_75) (not (at-segment ?a seg_n_a6a8d_0_75))
       (occupied seg_n_a6a8c_0_75) (not (not_occupied seg_n_a6a8c_0_75))
       (blocked seg_n_a6a8c_0_75 ?a) (not (not_blocked seg_n_a6a8c_0_75 ?a))
       (at-segment ?a seg_n_a6a8c_0_75) (not (blocked seg_n_a6a8e_0_75 ?a))
       (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action
  ugly4741ugly90ugly397ugly102ugly905move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
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
 (:action
  ugly4742ugly322ugly671ugly188ugly236startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly4743ugly625ugly31ugly634ugly279move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_daew1)
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
 (:action
  ugly4744ugly295ugly54ugly535ugly573move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
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
 (:action
  ugly4745ugly698ugly630ugly519ugly811move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_daew1)
       (not_blocked seg_n_a7b_0_60 airplane_daew6)
       (not_blocked seg_n_a7b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6a_0_85))
       (not_occupied seg_n_a7a6a_0_85) (not (at-segment ?a seg_n_a7a6a_0_85))
       (occupied seg_n_a7b_0_60) (not (not_occupied seg_n_a7b_0_60))
       (blocked seg_n_a7b_0_60 ?a) (not (not_blocked seg_n_a7b_0_60 ?a))
       (at-segment ?a seg_n_a7b_0_60) (not (blocked seg_n_a7a6b_0_75 ?a))
       (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action
  ugly4746ugly291ugly277ugly289ugly592startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly4747ugly379ugly541ugly43ugly388move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daew1)
       (not_blocked seg_o1_108b_0_60 airplane_daew6)
       (not_blocked seg_o1_108b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p108_0_76))
       (not_occupied seg_p108_0_76) (not (at-segment ?a seg_p108_0_76))
       (occupied seg_o1_108b_0_60) (not (not_occupied seg_o1_108b_0_60))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action
  ugly4748ugly485ugly764ugly401ugly507startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly4749ugly708ugly175ugly129ugly158move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_daew1)
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
 (:action
  ugly4750ugly138ugly195ugly258ugly801startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly4751ugly862ugly702ugly211ugly814startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action
  ugly4752ugly471ugly907ugly325ugly594move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daew1)
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
 (:action
  ugly4753ugly290ugly110ugly682ugly858pushback_seg_p118_0_76_seg_o1_118b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
       (not_blocked seg_o1_118b_0_60 airplane_daew6)
       (not_blocked seg_o1_118b_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly4754ugly269ugly798ugly200ugly373startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action
  ugly4755ugly201ugly839ugly171ugly685startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly4756ugly266ugly827ugly353ugly265move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daew1)
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
 (:action
  ugly4757ugly229ugly329ugly257ugly802startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly4758ugly515ugly727ugly312ugly327move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daew1)
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
 (:action
  ugly4759ugly374ugly413ugly869ugly831startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4760ugly690ugly755ugly460ugly30move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4d_0_75))
       (not_occupied seg_n_n2a4d_0_75) (not (at-segment ?a seg_n_n2a4d_0_75))
       (occupied seg_n_n2a4c_0_75) (not (not_occupied seg_n_n2a4c_0_75))
       (blocked seg_n_n2a4c_0_75 ?a) (not (not_blocked seg_n_n2a4c_0_75 ?a))
       (at-segment ?a seg_n_n2a4c_0_75) (not (blocked seg_n_n2a4e_0_75 ?a))
       (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action
  ugly4761ugly346ugly86ugly21ugly194startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action
  ugly4762ugly913ugly654ugly548ugly268startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly4763ugly258ugly801ugly350ugly576move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
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
 (:action
  ugly4764ugly449ugly881ugly534ugly293startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly4765ugly263ugly722ugly62ugly292move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
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
 (:action
  ugly4766ugly546ugly276ugly887ugly122startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly4767ugly737ugly761ugly358ugly564move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew1)
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
 (:action
  ugly4768ugly522ugly365ugly323ugly780startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly4769ugly673ugly317ugly101ugly554move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew1)
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
 (:action
  ugly4770ugly2ugly859ugly771ugly599move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daew1)
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
 (:action
  ugly4771ugly340ugly812ugly199ugly900startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly4772ugly647ugly374ugly413ugly869startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action ugly4773ugly749ugly521ugly578ugly29startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly4774ugly837ugly396ugly846ugly79park_seg_p162_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly4775ugly292ugly146ugly38ugly88move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_daew1)
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
 (:action ugly4776ugly68ugly24ugly210ugly115startup_seg_n_a3c_0_60_south_medium
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
  ugly4777ugly883ugly131ugly930ugly829startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly4778ugly440ugly203ugly723ugly384startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly4779ugly283ugly80ugly704ugly951move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_daew1)
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
 (:action
  ugly4780ugly645ugly880ugly123ugly272startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly4781ugly689ugly347ugly10ugly34startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly4782ugly518ugly655ugly345ugly598startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action ugly4783ugly82ugly23ugly867ugly73startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly4784ugly77ugly835ugly552ugly309move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daew1)
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
 (:action ugly4785ugly410ugly240ugly940ugly537park_seg_p151_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action
  ugly4786ugly39ugly9ugly603ugly19move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_daew1)
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
 (:action
  ugly4787ugly239ugly35ugly543ugly790move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daew1)
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
 (:action
  ugly4788ugly811ugly56ugly683ugly587startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly4789ugly743ugly147ugly561ugly728startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4790ugly382ugly950ugly937ugly520startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly4791ugly472ugly678ugly744ugly132move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daew1)
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
 (:action
  ugly4792ugly496ugly399ugly288ugly418move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daew1)
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
 (:action
  ugly4793ugly839ugly171ugly685ugly611move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
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
 (:action
  ugly4794ugly877ugly774ugly944ugly789startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly4795ugly417ugly527ugly506ugly497startup_seg_m_a4b_0_60_south_medium
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
  ugly4796ugly227ugly51ugly524ugly128move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daew1)
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
 (:action ugly4797ugly659ugly875ugly354ugly419park_seg_p154_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly4798ugly156ugly144ugly844ugly431move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
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
 (:action
  ugly4799ugly732ugly791ugly305ugly48startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly4800ugly498ugly604ugly756ugly920startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly4801ugly752ugly933ugly568ugly898startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action
  ugly4802ugly713ugly948ugly324ugly468move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
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
 (:action
  ugly4803ugly814ugly454ugly549ugly120startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4804ugly667ugly757ugly658ugly368move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daew1)
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
 (:action
  ugly4805ugly335ugly843ugly390ugly487startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly4806ugly354ugly419ugly411ugly788startup_seg_o1_c3b_0_60_south_medium
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
  ugly4807ugly49ugly405ugly464ugly342startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action ugly4808ugly182ugly197ugly74ugly20park_seg_p151_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly4809ugly389ugly476ugly429ugly909startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly4810ugly350ugly576ugly245ugly745startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly4811ugly707ugly566ugly348ugly315startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly4812ugly181ugly12ugly616ugly227move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_daew1)
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
 (:action
  ugly4813ugly176ugly391ugly957ugly574startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly4814ugly623ugly539ugly586ugly214startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly4815ugly65ugly845ugly503ugly283move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_daew1)
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
 (:action
  ugly4816ugly173ugly553ugly523ugly467startup_seg_o1_c2c_0_34_south_medium
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
  ugly4817ugly314ugly83ugly3ugly765startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly4818ugly488ugly355ugly100ugly84startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly4819ugly289ugly592ugly341ugly533startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly4820ugly753ugly299ugly502ugly387startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4821ugly79ugly439ugly692ugly854startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action
  ugly4822ugly73ugly837ugly396ugly846move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
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
 (:action
  ugly4823ugly378ugly687ugly286ugly346move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
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
 (:action
  ugly4824ugly886ugly156ugly144ugly844startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly4825ugly789ugly505ugly15ugly412startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly4826ugly355ugly100ugly84ugly455move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daew1)
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
 (:action
  ugly4827ugly817ugly649ugly668ugly532move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daew1)
       (not_blocked seg_w1_143b_0_45 airplane_daew6)
       (not_blocked seg_w1_143b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p143_0_75))
       (not_occupied seg_p143_0_75) (not (at-segment ?a seg_p143_0_75))
       (occupied seg_w1_143b_0_45) (not (not_occupied seg_w1_143b_0_45))
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action
  ugly4828ugly183ugly595ugly813ugly569startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly4829ugly95ugly231ugly416ugly952startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly4830ugly118ugly282ugly471ugly907takeoff_seg_08l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action
  ugly4831ugly329ugly257ugly802ugly878move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
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
 (:action
  ugly4832ugly387ugly402ugly759ugly739move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
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
 (:action
  ugly4833ugly463ugly422ugly248ugly601startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly4834ugly171ugly685ugly611ugly209startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly4835ugly260ugly583ugly308ugly136startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly4836ugly470ugly717ugly250ugly246startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action
  ugly4837ugly23ugly867ugly73ugly837startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly4838ugly754ugly710ugly297ugly63startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly4839ugly517ugly694ugly871ugly201startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly4840ugly43ugly388ugly213ugly565move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_daew1)
       (not_blocked seg_n_a2a_0_60 airplane_daew6)
       (not_blocked seg_n_a2a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2b_0_60))
       (not_occupied seg_n_a2b_0_60) (not (at-segment ?a seg_n_a2b_0_60))
       (occupied seg_n_a2a_0_60) (not (not_occupied seg_n_a2a_0_60))
       (blocked seg_n_a2a_0_60 ?a) (not (not_blocked seg_n_a2a_0_60 ?a))
       (at-segment ?a seg_n_a2a_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action
  ugly4841ugly695ugly428ugly220ugly696startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly4842ugly597ugly69ugly772ugly852move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
       (not_blocked seg_o1_c3b_0_60 airplane_daew6)
       (not_blocked seg_o1_c3b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p112_0_76))
       (not_occupied seg_p112_0_76) (not (at-segment ?a seg_p112_0_76))
       (occupied seg_o1_c3b_0_60) (not (not_occupied seg_o1_c3b_0_60))
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (at-segment ?a seg_o1_c3b_0_60)))
 (:action
  ugly4843ugly849ugly697ugly420ugly923move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daew1)
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
 (:action
  ugly4844ugly361ugly237ugly233ugly81move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daew1)
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
 (:action
  ugly4845ugly165ugly826ugly208ugly139move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew6)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p107_0_76))
       (not_occupied seg_p107_0_76) (not (at-segment ?a seg_p107_0_76))
       (occupied seg_o1_c2b_0_60) (not (not_occupied seg_o1_c2b_0_60))
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly4846ugly907ugly325ugly594ugly174move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
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
 (:action
  ugly4847ugly716ugly570ugly452ugly244startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly4848ugly301ugly847ugly298ugly179startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly4849ugly168ugly393ugly261ugly703startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action ugly4850ugly277ugly289ugly592ugly341park_seg_p108_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action
  ugly4851ugly476ugly429ugly909ugly383startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly4852ugly198ugly633ugly642ugly726startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly4853ugly864ugly290ugly110ugly682startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly4854ugly655ugly345ugly598ugly560startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action ugly4855ugly133ugly724ugly913ugly654park_seg_p109_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action
  ugly4856ugly780ugly873ugly773ugly75startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly4857ugly16ugly65ugly845ugly503move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daew1)
       (not_blocked seg_o1_116b_0_60 airplane_daew6)
       (not_blocked seg_o1_116b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p116_0_76))
       (not_occupied seg_p116_0_76) (not (at-segment ?a seg_p116_0_76))
       (occupied seg_o1_116b_0_60) (not (not_occupied seg_o1_116b_0_60))
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action
  ugly4858ugly164ugly748ugly424ugly731move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_daew1)
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
 (:action
  ugly4859ugly334ugly652ugly259ugly855startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly4860ugly936ugly732ugly791ugly305move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew1)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew6)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8c_0_75))
       (not_occupied seg_n_a6a8c_0_75) (not (at-segment ?a seg_n_a6a8c_0_75))
       (occupied seg_n_a6a8b_0_75) (not (not_occupied seg_n_a6a8b_0_75))
       (blocked seg_n_a6a8b_0_75 ?a) (not (not_blocked seg_n_a6a8b_0_75 ?a))
       (at-segment ?a seg_n_a6a8b_0_75) (not (blocked seg_n_a6a8d_0_75 ?a))
       (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action
  ugly4861ugly509ugly809ugly372ugly473move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
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
 (:action
  ugly4862ugly60ugly400ugly585ugly737startup_seg_m_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a6a_0_60) (not_occupied seg_m_a6b_0_60)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a)) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a)) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action ugly4863ugly924ugly109ugly417ugly527park_seg_p104_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action
  ugly4864ugly592ugly341ugly533ugly447move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daew1)
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
 (:action
  ugly4865ugly931ugly32ugly614ugly105move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7e_0_75))
       (not_occupied seg_n_a4a7e_0_75) (not (at-segment ?a seg_n_a4a7e_0_75))
       (occupied seg_n_a4a7d_0_75) (not (not_occupied seg_n_a4a7d_0_75))
       (blocked seg_n_a4a7d_0_75 ?a) (not (not_blocked seg_n_a4a7d_0_75 ?a))
       (at-segment ?a seg_n_a4a7d_0_75) (not (blocked seg_n_a4a7f_0_75 ?a))
       (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action
  ugly4866ugly369ugly600ugly673ugly317move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daew1)
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
 (:action
  ugly4867ugly776ugly172ugly752ugly933startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly4868ugly236ugly733ugly67ugly332move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
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
 (:action
  ugly4869ugly909ugly383ugly674ugly617startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action ugly4870ugly196ugly750ugly810ugly1startup_seg_m_a7c_0_60_south_medium
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
  ugly4871ugly687ugly286ugly346ugly86move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_daew1)
       (not_blocked seg_a2_a_0_90 airplane_daew6)
       (not_blocked seg_a2_a_0_90 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_b_0_90))
       (not_occupied seg_a2_b_0_90) (not (at-segment ?a seg_a2_b_0_90))
       (occupied seg_a2_a_0_90) (not (not_occupied seg_a2_a_0_90))
       (blocked seg_a2_a_0_90 ?a) (not (not_blocked seg_a2_a_0_90 ?a))
       (at-segment ?a seg_a2_a_0_90) (not (blocked seg_a2_c_0_100 ?a))
       (not_blocked seg_a2_c_0_100 ?a)))
 (:action
  ugly4872ugly148ugly356ugly956ugly407move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daew1)
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
 (:action
  ugly4873ugly297ugly63ugly834ugly166startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly4874ugly646ugly8ugly178ugly621move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
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
 (:action
  ugly4875ugly874ugly338ugly152ugly392startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action
  ugly4876ugly721ugly316ugly491ugly314move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daew1)
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
 (:action
  ugly4877ugly768ugly66ugly212ugly943startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly4878ugly910ugly361ugly237ugly233move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daew1)
       (not_blocked seg_w1_142b_0_45 airplane_daew6)
       (not_blocked seg_w1_142b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p142_0_75))
       (not_occupied seg_p142_0_75) (not (at-segment ?a seg_p142_0_75))
       (occupied seg_w1_142b_0_45) (not (not_occupied seg_w1_142b_0_45))
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action
  ugly4879ugly755ugly460ugly30ugly68move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew1)
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
 (:action
  ugly4880ugly615ugly921ugly514ugly936startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly4881ugly142ugly783ugly320ugly758move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_daew1)
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
 (:action
  ugly4882ugly549ugly120ugly450ugly489startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action ugly4883ugly888ugly22ugly414ugly635park_seg_p102_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly4884ugly214ugly499ugly287ugly622move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_daew1)
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
 (:action
  ugly4885ugly539ugly586ugly214ugly499move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daew1)
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
 (:action
  ugly4886ugly14ugly490ugly162ugly824startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action ugly4887ugly72ugly851ugly618ugly918park_seg_p134_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly4888ugly700ugly718ugly196ugly750startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action ugly4889ugly111ugly157ugly513ugly782park_seg_p115_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly4890ugly398ugly371ugly398ugly371startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly4891ugly904ugly613ugly588ugly781move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
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
 (:action
  ugly4892ugly267ugly856ugly627ugly367startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly4893ugly71ugly832ugly725ugly363startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly4894ugly949ugly437ugly795ugly769startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly4895ugly363ugly472ugly678ugly744move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_daew1)
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
 (:action
  ugly4896ugly249ugly434ugly877ugly774startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly4897ugly527ugly506ugly497ugly715move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daew1)
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
 (:action
  ugly4898ugly765ugly623ugly539ugly586move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daew1)
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
 (:action
  ugly4899ugly93ugly597ugly69ugly772startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action ugly4900ugly790ugly281ugly45ugly861startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4901ugly328ugly908ugly695ugly428move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daew1)
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
 (:action
  ugly4902ugly723ugly384ugly747ugly255startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly4903ugly896ugly889ugly11ugly612move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daew1)
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
 (:action
  ugly4904ugly132ugly91ugly427ugly777startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly4905ugly226ugly886ugly156ugly144startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly4906ugly551ugly382ugly950ugly937startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4907ugly218ugly551ugly382ugly950startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly4908ugly397ugly102ugly905ugly94move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_daew1)
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
 (:action
  ugly4909ugly396ugly846ugly79ugly439startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly4910ugly312ugly327ugly78ugly917move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daew1)
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
 (:action
  ugly4911ugly735ugly285ugly184ugly746startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4912ugly125ugly438ugly707ugly566startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action ugly4913ugly652ugly259ugly855ugly479park_seg_p118_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly4914ugly722ugly62ugly292ugly146move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew1)
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
 (:action ugly4915ugly596ugly485ugly764ugly401park_seg_p104_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly4916ugly157ugly513ugly782ugly609startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly4917ugly823ugly359ugly221ugly848startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action
  ugly4918ugly606ugly894ugly593ugly57startup_seg_m_a9d_0_120_934_south_medium
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
  ugly4919ugly736ugly563ugly377ugly581startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly4920ugly333ugly254ugly95ugly231startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly4921ugly869ugly831ugly364ugly481move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daew1)
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
 (:action
  ugly4922ugly256ugly243ugly796ugly660move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daew1)
       (not_blocked seg_o1_102b_0_60 airplane_daew6)
       (not_blocked seg_o1_102b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p102_0_76))
       (not_occupied seg_p102_0_76) (not (at-segment ?a seg_p102_0_76))
       (occupied seg_o1_102b_0_60) (not (not_occupied seg_o1_102b_0_60))
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action
  ugly4923ugly523ugly467ugly515ugly727move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daew1)
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
 (:action
  ugly4924ugly635ugly486ugly941ugly955startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly4925ugly653ugly336ugly493ugly155move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daew1)
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
 (:action
  ugly4926ugly259ugly855ugly479ugly639startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly4927ugly651ugly605ugly882ugly124startup_seg_08l_a7b_0_161_245_south_medium
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
  ugly4928ugly392ugly624ugly546ugly276startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action ugly4929ugly891ugly61ugly357ugly806startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4930ugly805ugly544ugly872ugly914move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daew1)
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
 (:action ugly4931ugly731ugly204ugly701ugly666park_seg_p117_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly4932ugly586ugly214ugly499ugly287startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly4933ugly582ugly47ugly753ugly299startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action
  ugly4934ugly42ugly488ugly355ugly100move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daew1)
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
 (:action
  ugly4935ugly824ugly864ugly290ugly110startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly4936ugly642ugly726ugly932ugly721pushback_seg_w1_141b_0_45_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daew1)
       (not_blocked seg_w1_141c_0_34 airplane_daew6)
       (not_blocked seg_w1_141c_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_141b_0_45)) (not_occupied seg_w1_141b_0_45)
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)
       (not (at-segment ?a seg_w1_141b_0_45)) (occupied seg_w1_141c_0_34)
       (not (not_occupied seg_w1_141c_0_34)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a)) (at-segment ?a seg_w1_141c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly4937ugly674ugly617ugly463ugly422move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daew1)
       (not_blocked seg_o1_110d_0_45 airplane_daew6)
       (not_blocked seg_o1_110d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p133_0_75))
       (not_occupied seg_p133_0_75) (not (at-segment ?a seg_p133_0_75))
       (occupied seg_o1_110d_0_45) (not (not_occupied seg_o1_110d_0_45))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action
  ugly4938ugly507ugly797ugly787ugly547startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly4939ugly323ugly780ugly873ugly773move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daew1)
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
 (:action
  ugly4940ugly491ugly314ugly83ugly3startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action
  ugly4941ugly783ugly320ugly758ugly72startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly4942ugly10ugly34ugly751ugly130startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly4943ugly576ugly245ugly745ugly462move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
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
 (:action ugly4944ugly287ugly622ugly37ugly403startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4945ugly632ugly168ugly393ugly261startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly4946ugly588ugly781ugly4ugly165startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly4947ugly54ugly535ugly573ugly92startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly4948ugly833ugly607ugly819ugly360move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew1)
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
 (:action
  ugly4949ugly40ugly435ugly958ugly53move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daew1)
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
 (:action
  ugly4950ugly244ugly504ugly903ugly708move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daew1)
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
 (:action
  ugly4951ugly88ugly28ugly104ugly369startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly4952ugly172ugly752ugly933ugly568startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly4953ugly505ugly15ugly412ugly901startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly4954ugly827ugly353ugly265ugly303startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action ugly4955ugly366ugly127ugly352ugly631park_seg_p163_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action
  ugly4956ugly840ugly180ugly529ugly449startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly4957ugly890ugly538ugly446ugly884startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly4958ugly559ugly119ugly230ugly14startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly4959ugly729ugly742ugly904ugly613startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly4960ugly416ugly952ugly328ugly908startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly4961ugly881ugly534ugly293ugly665move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_daew1)
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
 (:action ugly4962ugly7ugly318ugly659ugly875startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4963ugly130ugly775ugly531ugly167startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly4964ugly121ugly892ugly183ugly595startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly4965ugly717ugly250ugly246ugly406startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly4966ugly318ugly659ugly875ugly354startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly4967ugly848ugly512ugly805ugly544startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action ugly4968ugly541ugly43ugly388ugly213park_seg_p110_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action ugly4969ugly950ugly937ugly520ugly456park_seg_p101_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action
  ugly4970ugly617ugly463ugly422ugly248startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly4971ugly926ugly76ugly484ugly579move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daew1)
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
 (:action
  ugly4972ugly501ugly13ugly840ugly180startup_seg_o1_108c_0_34_south_medium
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
  ugly4973ugly534ugly293ugly665ugly41move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew1)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew6)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7f_0_75))
       (not_occupied seg_n_a4a7f_0_75) (not (at-segment ?a seg_n_a4a7f_0_75))
       (occupied seg_n_a4a7e_0_75) (not (not_occupied seg_n_a4a7e_0_75))
       (blocked seg_n_a4a7e_0_75 ?a) (not (not_blocked seg_n_a4a7e_0_75 ?a))
       (at-segment ?a seg_n_a4a7e_0_75) (not (blocked seg_n_a7c_0_60 ?a))
       (not_blocked seg_n_a7c_0_60 ?a)))
 (:action
  ugly4974ugly441ugly333ugly254ugly95move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daew1)
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
 (:action
  ugly4975ugly887ugly122ugly340ugly812move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daew1)
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
 (:action ugly4976ugly254ugly95ugly231ugly416startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly4977ugly325ugly594ugly174ugly304startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4978ugly66ugly212ugly943ugly767startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly4979ugly281ugly45ugly861ugly440move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daew1)
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
 (:action
  ugly4980ugly901ugly351ugly670ugly453startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly4981ugly308ugly136ugly816ugly888move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_daew1)
       (not_blocked seg_08l_a2b_0_80 airplane_daew6)
       (not_blocked seg_08l_a2b_0_80 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_a_0_90))
       (not_occupied seg_a2_a_0_90) (not (at-segment ?a seg_a2_a_0_90))
       (occupied seg_08l_a2b_0_80) (not (not_occupied seg_08l_a2b_0_80))
       (blocked seg_08l_a2b_0_80 ?a) (not (not_blocked seg_08l_a2b_0_80 ?a))
       (at-segment ?a seg_08l_a2b_0_80) (not (blocked seg_a2_b_0_90 ?a))
       (not_blocked seg_a2_b_0_90 ?a)))
 (:action
  ugly4982ugly629ugly436ugly33ugly483startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly4983ugly199ugly900ugly768ugly66move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_daew1)
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
 (:action
  ugly4984ugly593ugly57ugly807ugly421startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly4985ugly554ugly36ugly274ugly667startup_seg_m_a6a_0_60_south_medium
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
  ugly4986ugly146ugly38ugly88ugly28move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daew1)
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
 (:action
  ugly4987ugly801ugly350ugly576ugly245startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action ugly4988ugly943ugly767ugly915ugly52startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly4989ugly711ugly648ugly501ugly13startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly4990ugly893ugly477ugly225ugly625move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_daew1)
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
 (:action
  ugly4991ugly954ugly651ugly605ugly882move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_daew1)
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
 (:action
  ugly4992ugly933ugly568ugly898ugly492startup_seg_08l_a7c_0_161_245_south_medium
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
  ugly4993ugly854ugly679ugly16ugly65startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action ugly4994ugly32ugly614ugly105ugly60park_seg_p153_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action
  ugly4995ugly20ugly381ugly870ugly500startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly4996ugly26ugly922ugly133ugly724startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly4997ugly728ugly640ugly300ugly482startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly4998ugly853ugly518ugly655ugly345startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly4999ugly197ugly74ugly20ugly381startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action ugly5000ugly395ugly817ugly649ugly668park_seg_p108_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly5001ugly785ugly567ugly140ugly893startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly5002ugly342ugly536ugly319ugly137startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly5003ugly836ugly738ugly766ugly215startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action ugly5004ugly109ugly417ugly527ugly506park_seg_p103_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly5005ugly542ugly494ugly252ugly664move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daew1)
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
 (:action
  ugly5006ugly27ugly480ugly441ugly333move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
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
 (:action
  ugly5007ugly286ugly346ugly86ugly21move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daew1)
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
 (:action
  ugly5008ugly662ugly344ugly689ugly347move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_daew1)
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
 (:action
  ugly5009ugly857ugly151ugly729ugly742startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly5010ugly575ugly362ugly792ugly736startup_seg_o1_110d_0_45_south_medium
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
  ugly5011ugly774ugly944ugly789ugly505move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3c_0_75))
       (not_occupied seg_n_a2a3c_0_75) (not (at-segment ?a seg_n_a2a3c_0_75))
       (occupied seg_n_a2a3b_0_75) (not (not_occupied seg_n_a2a3b_0_75))
       (blocked seg_n_a2a3b_0_75 ?a) (not (not_blocked seg_n_a2a3b_0_75 ?a))
       (at-segment ?a seg_n_a2a3b_0_75) (not (blocked seg_n_a2a3d_0_75 ?a))
       (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action
  ugly5012ugly250ugly246ugly406ugly510startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly5013ugly820ugly876ugly106ugly939move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daew1)
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
 (:action
  ugly5014ugly601ugly949ugly437ugly795startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly5015ugly492ugly677ugly219ugly85move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daew1)
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
 (:action
  ugly5016ugly928ugly525ugly897ugly228startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly5017ugly528ugly749ugly521ugly578move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_daew1)
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
 (:action
  ugly5018ugly906ugly822ugly646ugly8move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daew1)
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
 (:action
  ugly5019ugly51ugly524ugly128ugly138move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daew1)
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
 (:action
  ugly5020ugly104ugly369ugly600ugly673pushback_seg_w1_141c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
       (not_blocked seg_w1_142a_0_34 airplane_daew6)
       (not_blocked seg_w1_142a_0_34 airplane_daew7))
  :effect
  (and (not (occupied seg_w1_141c_0_34)) (not_occupied seg_w1_141c_0_34)
       (not (blocked seg_w1_141c_0_34 ?a)) (not_blocked seg_w1_141c_0_34 ?a)
       (not (at-segment ?a seg_w1_141c_0_34)) (occupied seg_w1_142a_0_34)
       (not (not_occupied seg_w1_142a_0_34)) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (at-segment ?a seg_w1_142a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly5021ugly33ugly483ugly830ugly239move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_daew1)
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
 (:action
  ugly5022ugly241ugly517ugly694ugly871move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daew1)
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
 (:action
  ugly5023ugly293ugly665ugly41ugly59startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly5024ugly302ugly885ugly145ugly740move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daew1)
       (not_blocked seg_o1_117b_0_60 airplane_daew6)
       (not_blocked seg_o1_117b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p117_0_76))
       (not_occupied seg_p117_0_76) (not (at-segment ?a seg_p117_0_76))
       (occupied seg_o1_117b_0_60) (not (not_occupied seg_o1_117b_0_60))
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action
  ugly5025ugly317ugly101ugly554ugly36move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daew1)
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
 (:action
  ugly5026ugly564ugly39ugly9ugly603move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_daew1)
       (not_blocked seg_a2_c_0_100 airplane_daew6)
       (not_blocked seg_a2_c_0_100 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a_0_60))
       (not_occupied seg_n_a2a_0_60) (not (at-segment ?a seg_n_a2a_0_60))
       (occupied seg_a2_c_0_100) (not (not_occupied seg_a2_c_0_100))
       (blocked seg_a2_c_0_100 ?a) (not (not_blocked seg_a2_c_0_100 ?a))
       (at-segment ?a seg_a2_c_0_100) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action
  ugly5027ugly685ugly611ugly209ugly924move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daew1)
       (not_blocked seg_w1_152b_0_45 airplane_daew6)
       (not_blocked seg_w1_152b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p152_0_75))
       (not_occupied seg_p152_0_75) (not (at-segment ?a seg_p152_0_75))
       (occupied seg_w1_152b_0_45) (not (not_occupied seg_w1_152b_0_45))
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action
  ugly5028ugly654ugly548ugly268ugly927startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action ugly5029ugly224ugly804ugly58ugly187startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5030ugly464ugly342ugly536ugly319move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daew1)
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
 (:action
  ugly5031ugly571ugly688ugly379ugly541move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_daew1)
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
 (:action
  ugly5032ugly911ugly559ugly119ugly230move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew1)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew6)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3d_0_75))
       (not_occupied seg_n_a2a3d_0_75) (not (at-segment ?a seg_n_a2a3d_0_75))
       (occupied seg_n_a2a3c_0_75) (not (not_occupied seg_n_a2a3c_0_75))
       (blocked seg_n_a2a3c_0_75 ?a) (not (not_blocked seg_n_a2a3c_0_75 ?a))
       (at-segment ?a seg_n_a2a3c_0_75) (not (blocked seg_n_a2a3e_0_75 ?a))
       (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action ugly5033ugly915ugly52ugly509ugly809startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly5034ugly86ugly21ugly194ugly444startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly5035ugly618ugly918ugly584ugly883move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daew1)
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
 (:action
  ugly5036ugly613ugly588ugly781ugly4move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daew1)
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
 (:action
  ugly5037ugly217ugly719ugly322ugly671move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_daew1)
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
 (:action
  ugly5038ugly719ugly322ugly671ugly188move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daew1)
       (not_blocked seg_o1_109d_0_45 airplane_daew6)
       (not_blocked seg_o1_109d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p132_0_75))
       (not_occupied seg_p132_0_75) (not (at-segment ?a seg_p132_0_75))
       (occupied seg_o1_109d_0_45) (not (not_occupied seg_o1_109d_0_45))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action
  ugly5039ugly415ugly198ugly633ugly642startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly5040ugly284ugly713ugly948ugly324startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action
  ugly5041ugly391ugly957ugly574ugly865startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly5042ugly80ugly704ugly951ugly163move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daew1)
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
 (:action
  ugly5043ugly727ugly312ugly327ugly78startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly5044ugly338ugly152ugly392ugly624startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action
  ugly5045ugly404ugly339ugly508ugly394startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly5046ugly810ugly1ugly741ugly632move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_daew1)
       (not_blocked seg_p164_0_75 airplane_daew6)
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
  ugly5047ugly802ugly878ugly182ugly197move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_daew1)
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
 (:action
  ugly5048ugly167ugly326ugly849ugly697startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly5049ugly359ugly221ugly848ugly512startup_seg_m_a9c_0_60_south_medium
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
  ugly5050ugly46ugly222ugly164ugly748startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly5051ugly357ugly806ugly556ugly269startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action
  ugly5052ugly381ugly870ugly500ugly404startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly5053ugly252ugly664ugly112ugly17startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly5054ugly424ugly731ugly204ugly701startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly5055ugly525ugly897ugly228ugly376startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly5056ugly151ugly729ugly742ugly904startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly5057ugly889ugly11ugly612ugly99startup_seg_o1_109c_0_34_south_medium
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
  ugly5058ugly163ugly134ugly656ugly160startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly5059ugly170ugly478ugly823ugly359move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daew1)
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
  ugly5060ugly946ugly343ugly763ugly44startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action ugly5061ugly499ugly287ugly622ugly37startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly5062ugly556ugly269ugly798ugly200startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action ugly5063ugly141ugly461ugly779ugly794park_seg_p132_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly5064ugly482ugly863ugly96ugly803move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew1)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew6)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6b_0_75))
       (not_occupied seg_n_a7a6b_0_75) (not (at-segment ?a seg_n_a7a6b_0_75))
       (occupied seg_n_a7a6a_0_85) (not (not_occupied seg_n_a7a6a_0_85))
       (blocked seg_n_a7a6a_0_85 ?a) (not (not_blocked seg_n_a7a6a_0_85 ?a))
       (at-segment ?a seg_n_a7a6a_0_85) (not (blocked seg_n_a7a6c_0_75 ?a))
       (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action
  ugly5065ugly257ugly802ugly878ugly182move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daew1)
       (not_blocked seg_o1_104b_0_60 airplane_daew6)
       (not_blocked seg_o1_104b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p104_0_76))
       (not_occupied seg_p104_0_76) (not (at-segment ?a seg_p104_0_76))
       (occupied seg_o1_104b_0_60) (not (not_occupied seg_o1_104b_0_60))
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action
  ugly5066ugly479ugly639ugly661ugly466startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly5067ugly107ugly193ugly173ugly553startup_seg_o1_108a_0_34_south_medium
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
  ugly5068ugly682ugly858ugly321ugly786startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly5069ugly918ugly584ugly883ugly131startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly5070ugly52ugly509ugly809ugly372startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly5071ugly502ugly387ugly402ugly759startup_seg_m_a7b_0_60_south_medium
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
  ugly5072ugly447ugly143ugly690ugly755startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5073ugly775ugly531ugly167ugly326startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly5074ugly140ugly893ugly477ugly225startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly5075ugly135ugly669ugly528ugly749startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly5076ugly636ugly423ugly378ugly687move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
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
 (:action
  ugly5077ugly604ugly756ugly920ugly935move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_daew1)
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
 (:action
  ugly5078ugly634ugly279ugly108ugly50move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_daew1)
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
 (:action
  ugly5079ugly579ugly135ugly669ugly528startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly5080ugly414ugly635ugly486ugly941startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action ugly5081ugly702ugly211ugly814ugly454park_seg_p109_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action
  ugly5082ugly875ugly354ugly419ugly411startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly5083ugly15ugly412ugly901ugly351startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly5084ugly411ugly788ugly591ugly331startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly5085ugly423ugly378ugly687ugly286startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly5086ugly761ugly358ugly564ugly39move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_daew1)
       (not_blocked seg_n_a3c_0_60 airplane_daew6)
       (not_blocked seg_n_a3c_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_0_108))
       (not_occupied seg_n1_0_108) (not (at-segment ?a seg_n1_0_108))
       (occupied seg_n_a3c_0_60) (not (not_occupied seg_n_a3c_0_60))
       (blocked seg_n_a3c_0_60 ?a) (not (not_blocked seg_n_a3c_0_60 ?a))
       (at-segment ?a seg_n_a3c_0_60) (not (blocked seg_w1_c1a_0_60 ?a))
       (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action ugly5087ugly370ugly425ugly577ugly953park_seg_p154_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly5088ugly899ugly730ugly926ugly76startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly5089ugly180ugly529ugly449ugly881startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5090ugly772ugly852ugly264ugly370startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly5091ugly835ugly552ugly309ugly87move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daew1)
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
 (:action
  ugly5092ugly664ugly112ugly17ugly395startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action ugly5093ugly112ugly17ugly395ugly817park_seg_p119_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly5094ugly406ugly510ugly720ugly647startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly5095ugly434ugly877ugly774ugly944startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action
  ugly5096ugly225ugly625ugly31ugly634move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daew1)
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
 (:action ugly5097ugly106ugly939ugly177ugly853park_seg_p107_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly5098ugly210ugly115ugly857ugly151startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly5099ugly514ugly936ugly732ugly791move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daew1)
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
 (:action
  ugly5100ugly313ugly841ugly734ugly821move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daew1)
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
 (:action
  ugly5101ugly605ugly882ugly124ugly675move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daew1)
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
 (:action
  ugly5102ugly261ugly703ugly793ugly938startup_seg_m_a8c_0_60_south_medium
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
  ugly5103ugly724ugly913ugly654ugly548move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daew1)
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
 (:action
  ugly5104ugly902ugly891ugly61ugly357startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly5105ugly512ugly805ugly544ugly872startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly5106ugly6ugly185ugly929ugly426move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
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
 (:action
  ugly5107ugly233ugly81ugly170ugly478startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly5108ugly376ugly815ugly714ugly116move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daew1)
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
 (:action
  ugly5109ugly430ugly511ugly229ugly329move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daew1)
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
 (:action
  ugly5110ugly435ugly958ugly53ugly207startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly5111ugly503ugly283ugly80ugly704startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly5112ugly656ugly160ugly942ugly307startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly5113ugly216ugly550ugly866ugly698startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly5114ugly3ugly765ugly623ugly539startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5115ugly380ugly271ugly762ugly836startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly5116ugly29ugly650ugly589ugly161move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daew1)
       (not_blocked seg_o1_111d_0_45 airplane_daew6)
       (not_blocked seg_o1_111d_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p134_0_75))
       (not_occupied seg_p134_0_75) (not (at-segment ?a seg_p134_0_75))
       (occupied seg_o1_111d_0_45) (not (not_occupied seg_o1_111d_0_45))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action
  ugly5117ugly878ugly182ugly197ugly74move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_daew1)
       (not_blocked seg_a2_b_0_90 airplane_daew6)
       (not_blocked seg_a2_b_0_90 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_c_0_100))
       (not_occupied seg_a2_c_0_100) (not (at-segment ?a seg_a2_c_0_100))
       (occupied seg_a2_b_0_90) (not (not_occupied seg_a2_b_0_90))
       (blocked seg_a2_b_0_90 ?a) (not (not_blocked seg_a2_b_0_90 ?a))
       (at-segment ?a seg_a2_b_0_90) (not (blocked seg_n_a2a_0_60 ?a))
       (not_blocked seg_n_a2a_0_60 ?a)))
 (:action
  ugly5118ugly665ugly41ugly59ugly643move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daew1)
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
 (:action
  ugly5119ugly513ugly782ugly609ugly672startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly5120ugly310ugly90ugly397ugly102startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly5121ugly213ugly565ugly18ugly192startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly5122ugly419ugly411ugly788ugly591startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly5123ugly657ugly118ugly282ugly471startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly5124ugly31ugly634ugly279ugly108move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_daew1)
       (not_blocked seg_n_a6b_0_60 airplane_daew6)
       (not_blocked seg_n_a6b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8a_0_115))
       (not_occupied seg_n_a6a8a_0_115) (not (at-segment ?a seg_n_a6a8a_0_115))
       (occupied seg_n_a6b_0_60) (not (not_occupied seg_n_a6b_0_60))
       (blocked seg_n_a6b_0_60 ?a) (not (not_blocked seg_n_a6b_0_60 ?a))
       (at-segment ?a seg_n_a6b_0_60) (not (blocked seg_n_a6a8b_0_75 ?a))
       (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action
  ugly5125ugly884ugly945ugly743ugly147startup_seg_o1_110c_0_34_south_medium
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
  ugly5126ugly718ugly196ugly750ugly810move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
       (not_blocked seg_w1_141b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p141_0_75))
       (not_occupied seg_p141_0_75) (not (at-segment ?a seg_p141_0_75))
       (occupied seg_w1_141b_0_45) (not (not_occupied seg_w1_141b_0_45))
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action
  ugly5127ugly612ugly99ugly545ugly606startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action ugly5128ugly426ugly284ugly713ugly948takeoff_seg_09l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action
  ugly5129ugly873ugly773ugly75ugly330startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly5130ugly917ugly270ugly415ugly198startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly5131ugly847ugly298ugly179ugly800move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daew1)
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
 (:action
  ugly5132ugly413ugly869ugly831ugly364startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action ugly5133ugly739ugly2ugly859ugly771startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly5134ugly543ugly790ugly281ugly45startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly5135ugly184ugly746ugly572ugly263startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action ugly5136ugly358ugly564ugly39ugly9startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly5137ugly393ugly261ugly703ugly793startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly5138ugly573ugly92ugly818ugly540startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly5139ugly390ugly487ugly457ugly934startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly5140ugly671ugly188ugly236ugly733move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew1)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew6)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4e_0_75))
       (not_occupied seg_n_n2a4e_0_75) (not (at-segment ?a seg_n_n2a4e_0_75))
       (occupied seg_n_n2a4d_0_75) (not (not_occupied seg_n_n2a4d_0_75))
       (blocked seg_n_n2a4d_0_75 ?a) (not (not_blocked seg_n_n2a4d_0_75 ?a))
       (at-segment ?a seg_n_n2a4d_0_75) (not (blocked seg_n_a4c_0_60 ?a))
       (not_blocked seg_n_a4c_0_60 ?a)))
 (:action
  ugly5141ugly620ugly443ugly337ugly186startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly5142ugly580ugly25ugly680ugly273startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly5143ugly420ugly923ugly253ugly121startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly5144ugly116ugly98ugly46ugly222move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daew1)
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
 (:action
  ugly5145ugly453ugly842ugly149ugly947startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly5146ugly663ugly562ugly833ugly607startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly5147ugly916ugly217ugly719ugly322startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly5148ugly691ugly70ugly590ugly103startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action ugly5149ugly13ugly840ugly180ugly529park_seg_p163_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly5150ugly450ugly489ugly409ugly334startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly5151ugly903ugly708ugly175ugly129move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daew1)
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
 (:action
  ugly5152ugly850ugly150ugly459ugly386startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action ugly5153ugly92ugly818ugly540ugly946park_seg_p141_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly5154ugly122ugly340ugly812ugly199startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly5155ugly279ugly108ugly50ugly251move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daew1)
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
 (:action
  ugly5156ugly758ugly72ugly851ugly618startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly5157ugly880ugly123ugly272ugly389startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5158ugly526ugly238ugly169ugly433move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_daew1)
       (not_blocked seg_n_a4b_0_60 airplane_daew6)
       (not_blocked seg_n_a4b_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7a_0_115))
       (not_occupied seg_n_a4a7a_0_115) (not (at-segment ?a seg_n_a4a7a_0_115))
       (occupied seg_n_a4b_0_60) (not (not_occupied seg_n_a4b_0_60))
       (blocked seg_n_a4b_0_60 ?a) (not (not_blocked seg_n_a4b_0_60 ?a))
       (at-segment ?a seg_n_a4b_0_60) (not (blocked seg_n_a4a7b_0_75 ?a))
       (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action
  ugly5159ugly643ugly242ugly711ugly648startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly5160ugly126ugly602ugly608ugly97move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew1)
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
 (:action
  ugly5161ugly818ugly540ugly946ugly343startup_seg_m_a6d_0_120_934_south_medium
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
  ugly5162ugly191ugly735ugly285ugly184startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly5163ugly211ugly814ugly454ugly549move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daew1)
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
 (:action
  ugly5164ugly696ugly442ugly530ugly408startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action ugly5165ugly952ugly328ugly908ugly695park_seg_p161_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action
  ugly5166ugly438ugly707ugly566ugly348pushback_seg_p141_0_75_seg_w1_141b_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daew1)
       (not_blocked seg_w1_141b_0_45 airplane_daew6)
       (not_blocked seg_w1_141b_0_45 airplane_daew7))
  :effect
  (and (not (occupied seg_p141_0_75)) (not_occupied seg_p141_0_75)
       (not (blocked seg_p141_0_75 ?a)) (not_blocked seg_p141_0_75 ?a)
       (not (at-segment ?a seg_p141_0_75)) (occupied seg_w1_141b_0_45)
       (not (not_occupied seg_w1_141b_0_45)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action ugly5167ugly856ugly627ugly367ugly925startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly5168ugly842ugly149ugly947ugly516move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
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
 (:action
  ugly5169ugly37ugly403ugly498ugly604startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly5170ugly759ugly739ugly2ugly859startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly5171ugly770ugly432ugly705ugly159move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daew1)
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
 (:action
  ugly5172ugly621ugly241ugly517ugly694startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly5173ugly797ugly787ugly547ugly825move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daew1)
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
 (:action
  ugly5174ugly545ugly606ugly894ugly593move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_daew1)
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
 (:action
  ugly5175ugly232ugly234ugly458ugly911startup_seg_o1_110b_0_60_south_medium
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
  ugly5176ugly806ugly556ugly269ugly798move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
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
 (:action
  ugly5177ugly432ugly705ugly159ugly107move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daew1)
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
 (:action ugly5178ugly894ugly593ugly57ugly807startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly5179ugly178ugly621ugly241ugly517startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly5180ugly786ugly902ugly891ugly61startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly5181ugly240ugly940ugly537ugly380move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_daew1)
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
 (:action
  ugly5182ugly208ugly139ugly205ugly641move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daew1)
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
 (:action
  ugly5183ugly483ugly830ugly239ugly35startup_seg_o1_109b_0_60_south_medium
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
  ugly5184ugly265ugly303ugly653ugly336startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly5185ugly222ugly164ugly748ugly424startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly5186ugly481ugly141ugly461ugly779startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly5187ugly714ugly116ugly98ugly46move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daew1)
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
 (:action
  ugly5188ugly807ugly421ugly784ugly558startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action ugly5189ugly402ugly759ugly739ugly2startup_seg_n_a3d_0_60_south_medium
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
  ugly5190ugly99ugly545ugly606ugly894startup_seg_o1_c3c_0_48_south_medium
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
  ugly5191ugly826ugly208ugly139ugly205startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly5192ugly377ugly581ugly691ugly70startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action
  ugly5193ugly8ugly178ugly621ugly241startup_seg_o1_c2d_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action ugly5194ugly905ugly94ugly306ugly42startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5195ugly17ugly395ugly817ugly649startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly5196ugly300ugly482ugly863ugly96startup_seg_m_a9b_0_60_south_medium
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
  ugly5197ugly947ugly516ugly206ugly626startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly5198ugly200ugly373ugly644ugly663startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly5199ugly97ugly40ugly435ugly958move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew1)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew6)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6d_0_75))
       (not_occupied seg_n_a7a6d_0_75) (not (at-segment ?a seg_n_a7a6d_0_75))
       (occupied seg_n_a7a6c_0_75) (not (not_occupied seg_n_a7a6c_0_75))
       (blocked seg_n_a7a6c_0_75 ?a) (not (not_blocked seg_n_a7a6c_0_75 ?a))
       (at-segment ?a seg_n_a7a6c_0_75) (not (blocked seg_n_a6c_0_60 ?a))
       (not_blocked seg_n_a6c_0_60 ?a)))
 (:action
  ugly5200ugly353ugly265ugly303ugly653startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly5201ugly78ugly917ugly270ugly415move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daew1)
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
 (:action
  ugly5202ugly221ugly848ugly512ugly805startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly5203ugly608ugly97ugly40ugly435startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly5204ugly274ugly667ugly757ugly658startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly5205ugly22ugly414ugly635ugly486startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly5206ugly872ugly914ugly7ugly318startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly5207ugly484ugly579ugly135ugly669startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly5208ugly808ugly954ugly651ugly605startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly5209ugly529ugly449ugly881ugly534move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daew1)
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
 (:action
  ugly5210ugly408ugly709ugly226ugly886move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daew1)
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
 (:action
  ugly5211ugly771ugly599ugly262ugly301startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly5212ugly693ugly808ugly954ugly651startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly5213ugly577ugly953ugly410ugly240startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly5214ugly544ugly872ugly914ugly7pushback_seg_p107_0_76_seg_o1_c2b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daew1)
       (not_blocked seg_o1_c2b_0_60 airplane_daew6)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7))
  :effect
  (and (not (occupied seg_p107_0_76)) (not_occupied seg_p107_0_76)
       (not (blocked seg_p107_0_76 ?a)) (not_blocked seg_p107_0_76 ?a)
       (not (at-segment ?a seg_p107_0_76)) (occupied seg_o1_c2b_0_60)
       (not (not_occupied seg_o1_c2b_0_60)) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a)) (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly5215ugly851ugly618ugly918ugly584startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly5216ugly219ugly85ugly267ugly856startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly5217ugly745ugly462ugly114ugly628startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly5218ugly566ugly348ugly315ugly676move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daew1)
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
 (:action
  ugly5219ugly844ugly431ugly249ugly434startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly5220ugly876ugly106ugly939ugly177startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly5221ugly942ugly307ugly899ugly730startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly5222ugly480ugly441ugly333ugly254move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daew1)
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
 (:action ugly5223ugly552ugly309ugly87ugly126startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly5224ugly103ugly778ugly49ugly405startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly5225ugly898ugly492ugly677ugly219move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daew1)
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
 (:action
  ugly5226ugly668ugly532ugly89ugly542startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly5227ugly939ugly177ugly853ugly518startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly5228ugly524ugly128ugly138ugly195move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daew1)
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
 (:action ugly5229ugly778ugly49ugly405ugly464park_seg_p141_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly5230ugly686ugly224ugly804ugly58move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daew1)
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
 (:action
  ugly5231ugly5ugly278ugly620ugly443startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action ugly5232ugly9ugly603ugly19ugly26startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly5233ugly709ugly226ugly886ugly156move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_daew1)
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
 (:action
  ugly5234ugly938ugly785ugly567ugly140startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly5235ugly442ugly530ugly408ugly709move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daew1)
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
 (:action ugly5236ugly935ugly223ugly5ugly278startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5237ugly337ugly186ugly636ugly423startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly5238ugly742ugly904ugly613ugly588startup_seg_m_a8a_0_60_south_medium
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
  ugly5239ugly418ugly93ugly597ugly69startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly5240ugly540ugly946ugly343ugly763move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew1)
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
 (:action
  ugly5241ugly272ugly389ugly476ugly429startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly5242ugly372ugly473ugly82ugly23startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly5243ugly781ugly4ugly165ugly826move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daew1)
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
 (:action
  ugly5244ugly215ugly868ugly526ugly238move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daew1)
       (not_blocked seg_o1_c1a_0_60 airplane_daew6)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p101_0_76))
       (not_occupied seg_p101_0_76) (not (at-segment ?a seg_p101_0_76))
       (occupied seg_o1_c1a_0_60) (not (not_occupied seg_o1_c1a_0_60))
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))
       (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly5245ugly602ugly608ugly97ugly40startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly5246ugly578ugly29ugly650ugly589move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daew1)
       (not_blocked seg_w1_164b_0_45 airplane_daew6)
       (not_blocked seg_w1_164b_0_45 airplane_daew7))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p164_0_75))
       (not_occupied seg_p164_0_75) (not (at-segment ?a seg_p164_0_75))
       (occupied seg_w1_164b_0_45) (not (not_occupied seg_w1_164b_0_45))
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action
  ugly5247ugly734ugly821ugly111ugly157startup_seg_o1_c2b_0_60_south_medium
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
  ugly5248ugly455ugly313ugly841ugly734startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly5249ugly537ugly380ugly271ugly762startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))) 