
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (at-segment ?a - airplane ?s - segment)
  (not_blocked ?s - segment ?a - airplane) (is-pushing ?a - airplane)
  (is-moving ?a - airplane) (has-type ?a - airplane ?t - airplanetype)
  (not_occupied ?s - segment) (blocked ?s - segment ?a - airplane)
  (is-parked ?a - airplane ?s - segment)
  (is-start-runway ?s - segment ?d - direction)
  (facing ?a - airplane ?d - direction) (airborne ?a - airplane ?s - segment)
  (occupied ?s - segment))
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
  airplane_daewh airplane_daew3 airplane_daew7 airplane_cfbe1 - airplane)
 (:functions (total-cost) - number)
 (:action
  ugly5250ugly5685ugly6056ugly5252ugly5598ugly5344ugly259ugly855ugly479ugly639startup_seg_a2_a_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_08l_a2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2b_0_80 ?a)
       (not (not_blocked seg_08l_a2b_0_80 ?a))))
 (:action
  ugly5251ugly5570ugly6134ugly6117ugly5387ugly6080ugly875ugly354ugly419ugly411startup_seg_m_a8a9a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly5252ugly5598ugly5344ugly5508ugly6149ugly6003ugly334ugly652ugly259ugly855startup_seg_o1_102a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly5253ugly5535ugly5935ugly6174ugly5474ugly6012ugly292ugly146ugly38ugly88move_seg_08l_a3a4_0_450_seg_08l_a4d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a4_0_450) (not_occupied seg_08l_a4d_0_80)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4d_0_80 airplane_daewh)
       (not_blocked seg_08l_a4d_0_80 airplane_daew3)
       (not_blocked seg_08l_a4d_0_80 airplane_daew7)
       (not_blocked seg_08l_a4d_0_80 airplane_cfbe1))
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
  ugly5254ugly5607ugly5724ugly5328ugly5461ugly5577ugly891ugly61ugly357ugly806startup_seg_p132_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5255ugly5742ugly5300ugly5801ugly5618ugly5318ugly23ugly867ugly73ugly837startup_seg_w1_153b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_p153_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p153_0_75 ?a)
       (not (not_blocked seg_p153_0_75 ?a))))
 (:action
  ugly5256ugly5384ugly5528ugly5800ugly5886ugly5829ugly333ugly254ugly95ugly231startup_seg_w1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly5257ugly5716ugly5864ugly5250ugly5685ugly6056ugly3ugly765ugly623ugly539startup_seg_p134_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5258ugly5638ugly5811ugly5448ugly5646ugly6106ugly158ugly247ugly451ugly522startup_seg_p143_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)
       (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly5259ugly5929ugly6204ugly5768ugly6172ugly5385ugly172ugly752ugly933ugly568startup_seg_n_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly5260ugly5390ugly6119ugly5758ugly6160ugly5791ugly619ugly470ugly717ugly250move_seg_o1_110a_0_34_seg_o1_110b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daew7)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1)
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
  ugly5261ugly5330ugly5786ugly5319ugly5763ugly5553ugly188ugly236ugly733ugly67startup_seg_n1_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_w1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a))))
 (:action
  ugly5262ugly5418ugly5794ugly5740ugly6043ugly5780ugly892ugly183ugly595ugly813startup_seg_o1_111a_0_34_south_medium
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
  ugly5263ugly5558ugly5340ugly5483ugly5415ugly5332ugly932ugly721ugly316ugly491move_seg_o1_c4b_0_60_seg_p119_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_p119_0_76)
       (not_blocked seg_p119_0_76 airplane_cfbeg)
       (not_blocked seg_p119_0_76 airplane_daewh)
       (not_blocked seg_p119_0_76 airplane_daew3)
       (not_blocked seg_p119_0_76 airplane_daew7)
       (not_blocked seg_p119_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c4b_0_60))
       (not_occupied seg_o1_c4b_0_60) (not (at-segment ?a seg_o1_c4b_0_60))
       (occupied seg_p119_0_76) (not (not_occupied seg_p119_0_76))
       (blocked seg_p119_0_76 ?a) (not (not_blocked seg_p119_0_76 ?a))
       (at-segment ?a seg_p119_0_76) (not (blocked seg_o1_c4a_0_34 ?a))
       (not_blocked seg_o1_c4a_0_34 ?a) (not (blocked seg_o1_c4c_0_80 ?a))
       (not_blocked seg_o1_c4c_0_80 ?a)))
 (:action
  ugly5264ugly5435ugly5585ugly5943ugly5507ugly5700ugly458ugly911ugly559ugly119move_seg_o1_109c_0_34_seg_o1_110a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daew7)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1))
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
  ugly5265ugly5661ugly5270ugly5977ugly5439ugly5363ugly810ugly1ugly741ugly632move_seg_w1_164b_0_45_seg_p164_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_p164_0_75)
       (not_blocked seg_p164_0_75 airplane_cfbeg)
       (not_blocked seg_p164_0_75 airplane_daewh)
       (not_blocked seg_p164_0_75 airplane_daew3)
       (not_blocked seg_p164_0_75 airplane_daew7)
       (not_blocked seg_p164_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_164b_0_45))
       (not_occupied seg_w1_164b_0_45) (not (at-segment ?a seg_w1_164b_0_45))
       (occupied seg_p164_0_75) (not (not_occupied seg_p164_0_75))
       (blocked seg_p164_0_75 ?a) (not (not_blocked seg_p164_0_75 ?a))
       (at-segment ?a seg_p164_0_75) (not (blocked seg_w1_164a_0_34 ?a))
       (not_blocked seg_w1_164a_0_34 ?a) (not (blocked seg_w1_164c_0_34 ?a))
       (not_blocked seg_w1_164c_0_34 ?a)))
 (:action
  ugly5266ugly5655ugly5380ugly5804ugly6111ugly5414ugly928ugly525ugly897ugly228startup_seg_w1_151b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_p151_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p151_0_75 ?a)
       (not (not_blocked seg_p151_0_75 ?a))))
 (:action
  ugly5267ugly5963ugly5852ugly5673ugly6198ugly5412ugly241ugly517ugly694ugly871move_seg_o1_104c_0_60_seg_o1_104a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daew7)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1)
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
  ugly5268ugly5428ugly6042ugly5366ugly5739ugly5928ugly264ugly370ugly425ugly577startup_seg_a2_b_0_90_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly5269ugly6136ugly5600ugly6104ugly5757ugly5563ugly886ugly156ugly144ugly844startup_seg_p161_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)
       (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly5270ugly5977ugly5439ugly5363ugly6059ugly5452ugly60ugly400ugly585ugly737startup_seg_m_a6c_0_60_south_medium
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
  ugly5271ugly6186ugly5873ugly5261ugly5330ugly5786ugly70ugly590ugly103ugly778move_seg_n_a6a8b_0_75_seg_n_a6a8a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8b_0_75) (not_occupied seg_n_a6a8a_0_115)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a6a8a_0_115 airplane_daewh)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew3)
       (not_blocked seg_n_a6a8a_0_115 airplane_daew7)
       (not_blocked seg_n_a6a8a_0_115 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8b_0_75))
       (not_occupied seg_n_a6a8b_0_75) (not (at-segment ?a seg_n_a6a8b_0_75))
       (occupied seg_n_a6a8a_0_115) (not (not_occupied seg_n_a6a8a_0_115))
       (blocked seg_n_a6a8a_0_115 ?a) (not (not_blocked seg_n_a6a8a_0_115 ?a))
       (at-segment ?a seg_n_a6a8a_0_115) (not (blocked seg_n_a6a8c_0_75 ?a))
       (not_blocked seg_n_a6a8c_0_75 ?a)))
 (:action
  ugly5272ugly5497ugly5440ugly5586ugly5316ugly5413ugly413ugly869ugly831ugly364startup_seg_c1_n2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly5273ugly5969ugly5293ugly5346ugly5704ugly5729ugly574ugly865ugly684ugly190move_seg_p154_0_75_seg_w1_154b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p154_0_75) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daew7)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p154_0_75))
       (not_occupied seg_p154_0_75) (not (at-segment ?a seg_p154_0_75))
       (occupied seg_w1_154b_0_45) (not (not_occupied seg_w1_154b_0_45))
       (blocked seg_w1_154b_0_45 ?a) (not (not_blocked seg_w1_154b_0_45 ?a))
       (at-segment ?a seg_w1_154b_0_45)))
 (:action
  ugly5274ugly5884ugly5980ugly5878ugly5895ugly5505ugly9ugly603ugly19ugly26startup_seg_n_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly5275ugly5656ugly5282ugly6070ugly5706ugly6162ugly71ugly832ugly725ugly363startup_seg_o1_c1c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly5276ugly5403ugly5981ugly5516ugly5578ugly6115ugly879ugly681ugly874ugly338move_seg_w1_162b_0_45_seg_p162_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_p162_0_75)
       (not_blocked seg_p162_0_75 airplane_cfbeg)
       (not_blocked seg_p162_0_75 airplane_daewh)
       (not_blocked seg_p162_0_75 airplane_daew3)
       (not_blocked seg_p162_0_75 airplane_daew7)
       (not_blocked seg_p162_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_162b_0_45))
       (not_occupied seg_w1_162b_0_45) (not (at-segment ?a seg_w1_162b_0_45))
       (occupied seg_p162_0_75) (not (not_occupied seg_p162_0_75))
       (blocked seg_p162_0_75 ?a) (not (not_blocked seg_p162_0_75 ?a))
       (at-segment ?a seg_p162_0_75) (not (blocked seg_w1_162a_0_34 ?a))
       (not_blocked seg_w1_162a_0_34 ?a) (not (blocked seg_w1_162c_0_34 ?a))
       (not_blocked seg_w1_162c_0_34 ?a)))
 (:action
  ugly5277ugly5629ugly6054ugly6029ugly5393ugly5849ugly822ugly646ugly8ugly178startup_seg_p116_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)
       (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly5278ugly5784ugly5987ugly6020ugly5889ugly5865ugly146ugly38ugly88ugly28move_seg_w1_143a_0_34_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daew7)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
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
  ugly5279ugly5756ugly5855ugly5956ugly5348ugly5881ugly296ugly153ugly117ugly895move_seg_o1_109a_0_34_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1))
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
  ugly5280ugly6098ugly6038ugly5817ugly6009ugly5456ugly293ugly665ugly41ugly59startup_seg_o1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly5281ugly5391ugly5493ugly6200ugly5593ugly5985ugly630ugly519ugly811ugly56startup_seg_08l_a9b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_09l_0_80) (not_occupied seg_08l_a9c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09l_0_80 ?a)
       (not (not_blocked seg_09l_0_80 ?a)) (blocked seg_08l_a9c_0_80 ?a)
       (not (not_blocked seg_08l_a9c_0_80 ?a))))
 (:action
  ugly5282ugly6070ugly5706ugly6162ugly5320ugly5737ugly40ugly435ugly958ugly53move_seg_o1_c2d_0_60_seg_c2_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_c2_b_0_80)
       (not_blocked seg_c2_b_0_80 airplane_cfbeg)
       (not_blocked seg_c2_b_0_80 airplane_daewh)
       (not_blocked seg_c2_b_0_80 airplane_daew3)
       (not_blocked seg_c2_b_0_80 airplane_daew7)
       (not_blocked seg_c2_b_0_80 airplane_cfbe1))
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
  ugly5283ugly6123ugly6142ugly5690ugly5588ugly5954ugly288ugly418ugly93ugly597move_seg_n_n2a4c_0_75_seg_n_n2a4b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4c_0_75) (not_occupied seg_n_n2a4b_0_75)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4b_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4b_0_75 airplane_daew7)
       (not_blocked seg_n_n2a4b_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4c_0_75))
       (not_occupied seg_n_n2a4c_0_75) (not (at-segment ?a seg_n_n2a4c_0_75))
       (occupied seg_n_n2a4b_0_75) (not (not_occupied seg_n_n2a4b_0_75))
       (blocked seg_n_n2a4b_0_75 ?a) (not (not_blocked seg_n_n2a4b_0_75 ?a))
       (at-segment ?a seg_n_n2a4b_0_75) (not (blocked seg_n_n2a4d_0_75 ?a))
       (not_blocked seg_n_n2a4d_0_75 ?a)))
 (:action
  ugly5284ugly5697ugly5628ugly5509ugly5416ugly5286ugly313ugly841ugly734ugly821move_seg_w1_152c_0_34_seg_w1_153a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daew7)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1))
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
  ugly5285ugly5299ugly5641ugly5920ugly6036ugly5760ugly845ugly503ugly283ugly80startup_seg_m_a3a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly5286ugly5562ugly5494ugly5746ugly5470ugly5764ugly94ugly306ugly42ugly488startup_seg_p142_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)
       (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly5287ugly5733ugly5353ugly5858ugly5711ugly6165ugly183ugly595ugly813ugly569startup_seg_o1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly5288ugly6057ugly5571ugly6164ugly6166ugly5603ugly840ugly180ugly529ugly449startup_seg_n_a4a7a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly5289ugly5688ugly5371ugly5668ugly5383ugly5504ugly159ugly107ugly193ugly173startup_seg_o1_110a_0_34_south_medium
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
  ugly5290ugly5373ugly5650ugly5653ugly5457ugly6138ugly804ugly58ugly187ugly610startup_seg_n_a2a3e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly5291ugly5779ugly5264ugly5435ugly5585ugly5943ugly258ugly801ugly350ugly576move_seg_o1_109a_0_34_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daew7)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
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
  ugly5292ugly5905ugly5696ugly5896ugly5947ugly5973ugly882ugly124ugly675ugly275startup_seg_n_a2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly5293ugly5346ugly5704ugly5729ugly5823ugly5597ugly835ugly552ugly309ugly87move_seg_w1_154b_0_45_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daew7)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
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
  ugly5294ugly6092ugly5911ugly5916ugly5922ugly5883ugly540ugly946ugly343ugly763move_seg_n_a8c_0_60_seg_n_a6a8f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a8c_0_60) (not_occupied seg_n_a6a8f_0_75)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8f_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8f_0_75 airplane_daew7)
       (not_blocked seg_n_a6a8f_0_75 airplane_cfbe1))
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
  ugly5295ugly5620ugly5610ugly5265ugly5661ugly5270ugly728ugly640ugly300ugly482startup_seg_n_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2b_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly5296ugly5614ugly5814ugly5466ugly5427ugly6028ugly84ugly455ugly313ugly841startup_seg_m_a4a7f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a7d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7d_0_60 ?a)
       (not (not_blocked seg_m_a7d_0_60 ?a))))
 (:action
  ugly5297ugly5664ugly5349ugly5906ugly5659ugly6047ugly385ugly142ugly783ugly320startup_seg_m_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6b_0_60)
       (not_occupied seg_n_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a))))
 (:action
  ugly5298ugly5370ugly5806ugly5587ugly5347ugly5589ugly688ugly379ugly541ugly43startup_seg_w1_152c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_153a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a))))
 (:action
  ugly5299ugly5641ugly5920ugly6036ugly5760ugly6094ugly940ugly537ugly380ugly271startup_seg_m_a6d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6d_0_120_934)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly5300ugly5801ugly5618ugly5318ugly5272ugly5497ugly191ugly735ugly285ugly184startup_seg_m_a7a6a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly5301ugly5819ugly5546ugly5388ugly5267ugly5963ugly603ugly19ugly26ugly922move_seg_p161_0_75_seg_w1_161b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p161_0_75) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daew7)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p161_0_75))
       (not_occupied seg_p161_0_75) (not (at-segment ?a seg_p161_0_75))
       (occupied seg_w1_161b_0_45) (not (not_occupied seg_w1_161b_0_45))
       (blocked seg_w1_161b_0_45 ?a) (not (not_blocked seg_w1_161b_0_45 ?a))
       (at-segment ?a seg_w1_161b_0_45)))
 (:action
  ugly5302ugly5325ugly5859ugly6000ugly5944ugly5901ugly324ugly468ugly148ugly356startup_seg_a7_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly5303ugly5703ugly5681ugly6079ugly6013ugly5345ugly729ugly742ugly904ugly613startup_seg_o1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3a_0_34)
       (not_occupied seg_o1_111c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111c_0_34 ?a)
       (not (not_blocked seg_o1_111c_0_34 ?a))))
 (:action
  ugly5304ugly5962ugly5326ugly5669ugly5730ugly5447ugly567ugly140ugly893ugly477move_seg_o1_108d_0_45_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
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
  ugly5305ugly5405ugly5846ugly5958ugly5361ugly6192ugly712ugly828ugly218ugly551startup_seg_p151_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5306ugly5799ugly5887ugly5930ugly5687ugly5998ugly573ugly92ugly818ugly540startup_seg_n_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly5307ugly5441ugly5847ugly5365ugly6102ugly5322ugly561ugly728ugly640ugly300startup_seg_o1_102b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_p102_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p102_0_76 ?a)
       (not (not_blocked seg_p102_0_76 ?a))))
 (:action
  ugly5308ugly5684ugly6030ugly5893ugly5310ugly5352ugly375ugly176ugly391ugly957startup_seg_o1_111b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111b_0_60)
       (not_occupied seg_p111_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p111_0_76 ?a)
       (not (not_blocked seg_p111_0_76 ?a))))
 (:action
  ugly5309ugly5501ugly5856ugly5876ugly5396ugly6207ugly927ugly912ugly557ugly71startup_seg_a10_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_m_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a))))
 (:action
  ugly5310ugly5352ugly5624ugly6008ugly6052ugly6082ugly137ugly776ugly172ugly752startup_seg_n_a9b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly5311ugly5625ugly5377ugly6027ugly6105ugly5774ugly818ugly540ugly946ugly343startup_seg_m_a6d_0_120_934_south_medium
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
  ugly5312ugly5630ugly6034ugly5663ugly5399ugly5287ugly484ugly579ugly135ugly669startup_seg_o1_108c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108c_0_34)
       (not_occupied seg_o1_109a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a))))
 (:action
  ugly5313ugly6058ugly5959ugly5458ugly5481ugly6143ugly788ugly591ugly331ugly890park_seg_p131_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))))
 (:action
  ugly5314ugly5775ugly5676ugly5464ugly5670ugly6175ugly494ugly252ugly664ugly112move_seg_n_a2a3a_0_75_seg_n_a2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3a_0_75) (not_occupied seg_n_a2b_0_60)
       (not_blocked seg_n_a2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2b_0_60 airplane_daewh)
       (not_blocked seg_n_a2b_0_60 airplane_daew3)
       (not_blocked seg_n_a2b_0_60 airplane_daew7)
       (not_blocked seg_n_a2b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3a_0_75))
       (not_occupied seg_n_a2a3a_0_75) (not (at-segment ?a seg_n_a2a3a_0_75))
       (occupied seg_n_a2b_0_60) (not (not_occupied seg_n_a2b_0_60))
       (blocked seg_n_a2b_0_60 ?a) (not (not_blocked seg_n_a2b_0_60 ?a))
       (at-segment ?a seg_n_a2b_0_60) (not (blocked seg_n_a2a3b_0_75 ?a))
       (not_blocked seg_n_a2a3b_0_75 ?a)))
 (:action
  ugly5315ugly5473ugly5619ugly5645ugly6024ugly5792ugly316ugly491ugly314ugly83move_seg_w1_141c_0_34_seg_w1_142a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daew7)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1))
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
  ugly5316ugly5413ugly5662ugly5283ugly6123ugly6142ugly441ugly333ugly254ugly95move_seg_o1_110a_0_34_seg_o1_109c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daew7)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1))
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
  ugly5317ugly5689ugly5833ugly6118ugly5362ugly5294ugly843ugly390ugly487ugly457startup_seg_n_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly5318ugly5272ugly5497ugly5440ugly5586ugly5316ugly164ugly748ugly424ugly731move_seg_o1_104b_0_60_seg_p104_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_p104_0_76)
       (not_blocked seg_p104_0_76 airplane_cfbeg)
       (not_blocked seg_p104_0_76 airplane_daewh)
       (not_blocked seg_p104_0_76 airplane_daew3)
       (not_blocked seg_p104_0_76 airplane_daew7)
       (not_blocked seg_p104_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_104b_0_60))
       (not_occupied seg_o1_104b_0_60) (not (at-segment ?a seg_o1_104b_0_60))
       (occupied seg_p104_0_76) (not (not_occupied seg_p104_0_76))
       (blocked seg_p104_0_76 ?a) (not (not_blocked seg_p104_0_76 ?a))
       (at-segment ?a seg_p104_0_76) (not (blocked seg_o1_104a_0_34 ?a))
       (not_blocked seg_o1_104a_0_34 ?a) (not (blocked seg_o1_104c_0_60 ?a))
       (not_blocked seg_o1_104c_0_60 ?a)))
 (:action
  ugly5319ugly5763ugly5553ugly5437ugly5671ugly5455ugly614ugly105ugly60ugly400park_seg_p134_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_111d_0_45 ?a)) (not_blocked seg_o1_111d_0_45 ?a)))
 (:action
  ugly5320ugly5737ugly5289ugly5688ugly5371ugly5668ugly134ugly656ugly160ugly942move_seg_p119_0_76_seg_o1_c4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p119_0_76) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew7)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p119_0_76))
       (not_occupied seg_p119_0_76) (not (at-segment ?a seg_p119_0_76))
       (occupied seg_o1_c4b_0_60) (not (not_occupied seg_o1_c4b_0_60))
       (blocked seg_o1_c4b_0_60 ?a) (not (not_blocked seg_o1_c4b_0_60 ?a))
       (at-segment ?a seg_o1_c4b_0_60)))
 (:action
  ugly5321ugly5459ugly6015ugly6199ugly5596ugly6197ugly393ugly261ugly703ugly793startup_seg_n_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly5322ugly5810ugly5451ugly5728ugly5476ugly6206ugly428ugly220ugly696ugly442startup_seg_o1_108d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108d_0_45)
       (not_occupied seg_p131_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p131_0_75 ?a)
       (not (not_blocked seg_p131_0_75 ?a))))
 (:action
  ugly5323ugly5576ugly5960ugly5375ugly6130ugly5949ugly251ugly113ugly571ugly688startup_seg_w1_151c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly5324ugly5313ugly6058ugly5959ugly5458ugly5481ugly894ugly593ugly57ugly807startup_seg_c3_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly5325ugly5859ugly6000ugly5944ugly5901ugly5573ugly266ugly827ugly353ugly265move_seg_o1_118c_0_34_seg_o1_118a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daew7)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1)
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
  ugly5326ugly5669ugly5730ugly5447ugly5816ugly5672ugly326ugly849ugly697ugly420startup_seg_n_a8c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8c_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly5327ugly6063ugly5964ugly5975ugly5870ugly5454ugly716ugly570ugly452ugly244startup_seg_o1_104c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2a_0_60 ?a)
       (not (not_blocked seg_o1_c2a_0_60 ?a))))
 (:action
  ugly5328ugly5461ugly5577ugly6140ugly5835ugly5426ugly230ugly14ugly490ugly162startup_seg_m_a9a10g_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly5329ugly6139ugly6120ugly5268ugly5428ugly6042ugly117ugly895ugly216ugly550startup_seg_n_n2a4a_0_70_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly5330ugly5786ugly5319ugly5763ugly5553ugly5437ugly422ugly248ugly601ugly949startup_seg_w1_162c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly5331ugly5971ugly5277ugly5629ugly6054ugly6029ugly144ugly844ugly431ugly249startup_seg_w1_162b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_p162_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p162_0_75 ?a)
       (not (not_blocked seg_p162_0_75 ?a))))
 (:action
  ugly5332ugly6181ugly5480ugly6093ugly5442ugly6074ugly938ugly785ugly567ugly140startup_seg_n_a7b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly5333ugly6026ugly5544ugly6183ugly6193ugly5425ugly5ugly278ugly620ugly443startup_seg_w1_141a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly5334ugly6127ugly5613ugly6078ugly5848ugly5475ugly478ugly823ugly359ugly221startup_seg_n_a2a3d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly5335ugly5434ugly6040ugly5499ugly6109ugly6014ugly912ugly557ugly71ugly832startup_seg_n_a4a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly5336ugly5674ugly5581ugly5988ugly6023ugly6041ugly743ugly147ugly561ugly728startup_seg_p118_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5337ugly6159ugly5417ugly5813ugly5350ugly5770ugly706ugly495ugly770ugly432startup_seg_m_a3a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4c_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly5338ugly5900ugly6010ugly5933ugly5568ugly6180ugly270ugly415ugly198ugly633startup_seg_o1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4a_0_34)
       (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly5339ugly5755ugly5699ugly5749ugly5771ugly5307ugly192ugly349ugly189ugly385move_seg_w1_c3c_0_48_seg_w1_161a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daew7)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1))
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
  ugly5340ugly5483ugly5415ugly5332ugly6181ugly5480ugly844ugly431ugly249ugly434startup_seg_n_a4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly5341ugly6178ugly5936ugly5908ugly5654ugly5337ugly910ugly361ugly237ugly233move_seg_p142_0_75_seg_w1_142b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p142_0_75) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daew7)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p142_0_75))
       (not_occupied seg_p142_0_75) (not (at-segment ?a seg_p142_0_75))
       (occupied seg_w1_142b_0_45) (not (not_occupied seg_w1_142b_0_45))
       (blocked seg_w1_142b_0_45 ?a) (not (not_blocked seg_w1_142b_0_45 ?a))
       (at-segment ?a seg_w1_142b_0_45)))
 (:action
  ugly5342ugly6075ugly6090ugly5394ugly5364ugly6050ugly653ugly336ugly493ugly155move_seg_o1_118a_0_34_seg_o1_117c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daew7)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1))
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
  ugly5343ugly5329ugly6139ugly6120ugly5268ugly5428ugly793ugly938ugly785ugly567move_seg_w1_154a_0_34_seg_w1_154c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daew7)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1)
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
  ugly5344ugly5508ugly6149ugly6003ugly5583ugly5735ugly32ugly614ugly105ugly60park_seg_p153_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))))
 (:action
  ugly5345ugly5978ugly5359ugly5468ugly5762ugly5907ugly884ugly945ugly743ugly147startup_seg_o1_110c_0_34_south_medium
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
  ugly5346ugly5704ugly5729ugly5823ugly5597ugly6084ugly452ugly244ugly504ugly903startup_seg_m_a3a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly5347ugly5589ugly5937ugly5984ugly5401ugly5994ugly129ugly158ugly247ugly451startup_seg_o1_108a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108a_0_34)
       (not_occupied seg_o1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2c_0_34 ?a)
       (not (not_blocked seg_o1_c2c_0_34 ?a))))
 (:action
  ugly5348ugly5881ugly5545ugly5411ugly5367ugly6049ugly281ugly45ugly861ugly440move_seg_o1_104a_0_34_seg_o1_104b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daew7)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1)
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
  ugly5349ugly5906ugly5659ugly6047ugly5634ugly5608ugly767ugly915ugly52ugly509startup_seg_m_a9a10a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a_0_60 ?a)
       (not (not_blocked seg_m_a9a_0_60 ?a))))
 (:action
  ugly5350ugly5770ugly5955ugly5271ugly6186ugly5873ugly12ugly616ugly227ugly51startup_seg_c2_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_o1_c2d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2d_0_60 ?a)
       (not (not_blocked seg_o1_c2d_0_60 ?a))))
 (:action
  ugly5351ugly5298ugly5370ugly5806ugly5587ugly5347ugly340ugly812ugly199ugly900startup_seg_a6_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_m_a6d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6d_0_120_934 ?a)
       (not (not_blocked seg_m_a6d_0_120_934 ?a))))
 (:action
  ugly5352ugly5624ugly6008ugly6052ugly6082ugly5386ugly430ugly511ugly229ugly329move_seg_o1_110a_0_34_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daew7)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
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
  ugly5353ugly5858ugly5711ugly6165ugly5432ugly5510ugly560ugly928ugly525ugly897move_seg_p109_0_76_seg_o1_109b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p109_0_76) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daew7)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p109_0_76))
       (not_occupied seg_p109_0_76) (not (at-segment ?a seg_p109_0_76))
       (occupied seg_o1_109b_0_60) (not (not_occupied seg_o1_109b_0_60))
       (blocked seg_o1_109b_0_60 ?a) (not (not_blocked seg_o1_109b_0_60 ?a))
       (at-segment ?a seg_o1_109b_0_60)))
 (:action
  ugly5354ugly5611ugly5946ugly6086ugly6188ugly5713ugly229ugly329ugly257ugly802startup_seg_n_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly5355ugly5693ugly5717ugly5761ugly5262ugly5418ugly545ugly606ugly894ugly593move_seg_n_a7b_0_60_seg_n_a7c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60)
       (not_blocked seg_n_a7c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7c_0_60 airplane_daewh)
       (not_blocked seg_n_a7c_0_60 airplane_daew3)
       (not_blocked seg_n_a7c_0_60 airplane_daew7)
       (not_blocked seg_n_a7c_0_60 airplane_cfbe1)
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
  ugly5356ugly6116ugly5632ugly5660ugly5948ugly5754ugly239ugly35ugly543ugly790move_seg_o1_115a_0_34_seg_o1_115b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daew7)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1)
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
  ugly5357ugly6108ugly5590ugly5512ugly5402ugly5471ugly854ugly679ugly16ugly65startup_seg_n_a2a3b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3a_0_75 ?a)
       (not (not_blocked seg_n_a2a3a_0_75 ?a))))
 (:action
  ugly5358ugly5702ugly5831ugly5273ugly5969ugly5293ugly97ugly40ugly435ugly958move_seg_n_a7a6d_0_75_seg_n_a7a6c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6d_0_75) (not_occupied seg_n_a7a6c_0_75)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6c_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6c_0_75 airplane_daew7)
       (not_blocked seg_n_a7a6c_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6d_0_75))
       (not_occupied seg_n_a7a6d_0_75) (not (at-segment ?a seg_n_a7a6d_0_75))
       (occupied seg_n_a7a6c_0_75) (not (not_occupied seg_n_a7a6c_0_75))
       (blocked seg_n_a7a6c_0_75 ?a) (not (not_blocked seg_n_a7a6c_0_75 ?a))
       (at-segment ?a seg_n_a7a6c_0_75) (not (blocked seg_n_a6c_0_60 ?a))
       (not_blocked seg_n_a6c_0_60 ?a)))
 (:action
  ugly5359ugly5468ugly5762ugly5907ugly6133ugly5759ugly930ugly829ugly931ugly32startup_seg_o1_116b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_p116_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p116_0_76 ?a)
       (not (not_blocked seg_p116_0_76 ?a))))
 (:action
  ugly5360ugly5636ugly5633ugly5898ugly5778ugly5604ugly456ugly474ugly202ugly310move_seg_w1_143b_0_45_seg_w1_143c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daew7)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1)
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
  ugly5361ugly6192ugly5961ugly6194ugly5974ugly6112ugly6ugly185ugly929ugly426move_seg_o1_116b_0_60_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daew7)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
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
  ugly5362ugly5294ugly6092ugly5911ugly5916ugly5922ugly634ugly279ugly108ugly50move_seg_o1_110d_0_45_seg_p133_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_p133_0_75)
       (not_blocked seg_p133_0_75 airplane_cfbeg)
       (not_blocked seg_p133_0_75 airplane_daewh)
       (not_blocked seg_p133_0_75 airplane_daew3)
       (not_blocked seg_p133_0_75 airplane_daew7)
       (not_blocked seg_p133_0_75 airplane_cfbe1))
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
  ugly5363ugly6059ugly5452ugly5309ugly5501ugly5856ugly627ugly367ugly925ugly657move_seg_w1_153b_0_45_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daew7)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
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
  ugly5364ugly6050ugly5902ugly5257ugly5716ugly5864ugly1ugly741ugly632ugly168startup_seg_p152_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)
       (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly5365ugly6102ugly5322ugly5810ugly5451ugly5728ugly227ugly51ugly524ugly128move_seg_w1_161a_0_34_seg_w1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_daew7)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1))
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
  ugly5366ugly5739ugly5928ugly5513ugly5686ugly5680ugly57ugly807ugly421ugly784startup_seg_o1_110b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110b_0_60)
       (not_occupied seg_p110_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p110_0_76 ?a)
       (not (not_blocked seg_p110_0_76 ?a))))
 (:action
  ugly5367ugly6049ugly5530ugly5738ugly5805ugly5751ugly548ugly268ugly927ugly912startup_seg_p132_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p132_0_75)
       (not_occupied seg_o1_109d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109d_0_45 ?a)
       (not (not_blocked seg_o1_109d_0_45 ?a))))
 (:action
  ugly5368ugly5808ugly5877ugly6073ugly5446ugly5741ugly834ugly166ugly662ugly344startup_seg_a10_1_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_08l_a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10a_0_80 ?a)
       (not (not_blocked seg_08l_a10a_0_80 ?a))))
 (:action
  ugly5369ugly6077ugly5912ugly5941ugly5683ugly5404ugly896ugly889ugly11ugly612move_seg_w1_151c_0_34_seg_w1_152a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daew7)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1))
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
  ugly5370ugly5806ugly5587ugly5347ugly5589ugly5937ugly735ugly285ugly184ugly746startup_seg_p133_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5371ugly5668ugly5383ugly5504ugly5408ugly5621ugly14ugly490ugly162ugly824startup_seg_n_n2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly5372ugly5857ugly5643ugly5424ugly5360ugly5636ugly384ugly747ugly255ugly375move_seg_w1_c1b_0_60_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_daew7)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
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
  ugly5373ugly5650ugly5653ugly5457ugly6138ugly6053ugly289ugly592ugly341ugly533startup_seg_w1_163c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly5374ugly5644ugly5574ugly5550ugly6182ugly5652ugly906ugly822ugly646ugly8move_seg_c1_n2b_0_80_seg_o1_c1c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew7)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1))
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
  ugly5375ugly6130ugly5949ugly5500ugly5795ugly5860ugly93ugly597ugly69ugly772startup_seg_n_a2a3f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3d_0_60 ?a)
       (not (not_blocked seg_n_a3d_0_60 ?a))))
 (:action
  ugly5376ugly5331ugly5971ugly5277ugly5629ugly6054ugly780ugly873ugly773ugly75startup_seg_w1_c1c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_141a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a))))
 (:action
  ugly5377ugly6027ugly6105ugly5774ugly6067ugly6044ugly223ugly5ugly278ugly620startup_seg_w1_163a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly5378ugly6163ugly5924ugly6190ugly5919ugly5915ugly302ugly885ugly145ugly740move_seg_p117_0_76_seg_o1_117b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p117_0_76) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daew7)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p117_0_76))
       (not_occupied seg_p117_0_76) (not (at-segment ?a seg_p117_0_76))
       (occupied seg_o1_117b_0_60) (not (not_occupied seg_o1_117b_0_60))
       (blocked seg_o1_117b_0_60 ?a) (not (not_blocked seg_o1_117b_0_60 ?a))
       (at-segment ?a seg_o1_117b_0_60)))
 (:action
  ugly5379ugly5389ugly6065ugly5691ugly5788ugly5869ugly498ugly604ugly756ugly920startup_seg_n_a9c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9c_0_60)
       (not_occupied seg_n_a9a_0_60) (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a)) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly5380ugly5804ugly6111ugly5414ugly6177ugly5967ugly683ugly587ugly879ugly681startup_seg_n_n2a4e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4c_0_60 ?a)
       (not (not_blocked seg_n_a4c_0_60 ?a))))
 (:action
  ugly5381ugly5837ugly5591ugly5291ugly5779ugly5264ugly186ugly636ugly423ugly378startup_seg_08l_a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_08l_a10b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a10b_0_80 ?a)
       (not (not_blocked seg_08l_a10b_0_80 ?a))))
 (:action
  ugly5382ugly5251ugly5570ugly6134ugly6117ugly5387ugly831ugly364ugly481ugly141startup_seg_p164_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)
       (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly5383ugly5504ugly5408ugly5621ugly5263ugly5558ugly91ugly427ugly777ugly445startup_seg_n_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly5384ugly5528ugly5800ugly5886ugly5829ugly5582ugly170ugly478ugly823ugly359move_seg_o1_c2c_0_34_seg_o1_108a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daew7)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1))
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
  ugly5385ugly5421ugly5292ugly5905ugly5696ugly5896ugly698ugly630ugly519ugly811move_seg_n_a7a6a_0_85_seg_n_a7b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6a_0_85) (not_occupied seg_n_a7b_0_60)
       (not_blocked seg_n_a7b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a7b_0_60 airplane_daewh)
       (not_blocked seg_n_a7b_0_60 airplane_daew3)
       (not_blocked seg_n_a7b_0_60 airplane_daew7)
       (not_blocked seg_n_a7b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6a_0_85))
       (not_occupied seg_n_a7a6a_0_85) (not (at-segment ?a seg_n_a7a6a_0_85))
       (occupied seg_n_a7b_0_60) (not (not_occupied seg_n_a7b_0_60))
       (blocked seg_n_a7b_0_60 ?a) (not (not_blocked seg_n_a7b_0_60 ?a))
       (at-segment ?a seg_n_a7b_0_60) (not (blocked seg_n_a7a6b_0_75 ?a))
       (not_blocked seg_n_a7a6b_0_75 ?a)))
 (:action
  ugly5386ugly5679ugly5925ugly6055ugly5999ugly5438ugly558ugly896ugly889ugly11startup_seg_o1_116a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly5387ugly6080ugly6124ugly5606ugly6100ugly5834ugly528ugly749ugly521ugly578move_seg_08l_a4d_0_80_seg_08l_a4a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a4d_0_80) (not_occupied seg_08l_a4a_0_80)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a4a_0_80 airplane_daewh)
       (not_blocked seg_08l_a4a_0_80 airplane_daew3)
       (not_blocked seg_08l_a4a_0_80 airplane_daew7)
       (not_blocked seg_08l_a4a_0_80 airplane_cfbe1)
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
  ugly5388ugly5267ugly5963ugly5852ugly5673ugly6198ugly163ugly134ugly656ugly160startup_seg_n_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly5389ugly6065ugly5691ugly5788ugly5869ugly5747ugly708ugly175ugly129ugly158move_seg_o1_110b_0_60_seg_p110_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_p110_0_76)
       (not_blocked seg_p110_0_76 airplane_cfbeg)
       (not_blocked seg_p110_0_76 airplane_daewh)
       (not_blocked seg_p110_0_76 airplane_daew3)
       (not_blocked seg_p110_0_76 airplane_daew7)
       (not_blocked seg_p110_0_76 airplane_cfbe1))
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
  ugly5390ugly6119ugly5758ugly6160ugly5791ugly5868ugly66ugly212ugly943ugly767startup_seg_n_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8c_0_75 ?a)
       (not (not_blocked seg_n_a6a8c_0_75 ?a))))
 (:action
  ugly5391ugly5493ugly6200ugly5593ugly5985ugly5879ugly27ugly480ugly441ugly333move_seg_o1_111c_0_34_seg_o1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew7)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1))
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
  ugly5392ugly5523ugly5882ugly5453ugly5557ugly5423ugly466ugly637ugly580ugly25startup_seg_a7_a_0_156_924_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly5393ugly5849ugly6071ugly5601ugly5336ugly5674ugly332ugly154ugly475ugly366move_seg_w1_154c_0_34_seg_w1_c3a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_daew7)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1))
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
  ugly5394ugly5364ugly6050ugly5902ugly5257ugly5716ugly615ugly921ugly514ugly936startup_seg_m_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly5395ugly5311ugly5625ugly5377ugly6027ugly6105ugly525ugly897ugly228ugly376startup_seg_m_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly5396ugly6207ugly6176ugly5595ugly5253ugly5535ugly686ugly224ugly804ugly58move_seg_o1_102a_0_34_seg_o1_102b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daew7)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1)
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
  ugly5397ugly5433ugly5903ugly6035ugly6137ugly5874ugly48ugly916ugly217ugly719pushback_seg_o1_118b_0_60_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daew7)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1))
  :effect
  (and (not (occupied seg_o1_118b_0_60)) (not_occupied seg_o1_118b_0_60)
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)
       (not (at-segment ?a seg_o1_118b_0_60)) (occupied seg_o1_118c_0_34)
       (not (not_occupied seg_o1_118c_0_34)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a)) (at-segment ?a seg_o1_118c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly5398ugly5549ugly6110ugly5725ugly5290ugly5373ugly401ugly507ugly797ugly787startup_seg_o1_109d_0_45_south_medium
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
  ugly5399ugly5287ugly5733ugly5353ugly5858ugly5711ugly916ugly217ugly719ugly322startup_seg_a6_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_08l_a4b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4b_0_161_245 ?a)
       (not (not_blocked seg_08l_a4b_0_161_245 ?a))))
 (:action
  ugly5400ugly5323ugly5576ugly5960ugly5375ugly6130ugly700ugly718ugly196ugly750startup_seg_n_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_m_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9b_0_60 ?a)
       (not (not_blocked seg_m_a9b_0_60 ?a))))
 (:action
  ugly5401ugly5994ugly5378ugly6163ugly5924ugly6190ugly670ugly453ugly842ugly149startup_seg_n_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10f_0_75)
       (not_occupied seg_n_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10e_0_75 ?a)
       (not (not_blocked seg_n_a9a10e_0_75 ?a))))
 (:action
  ugly5402ugly5471ugly6103ugly5830ugly5547ugly5951ugly527ugly506ugly497ugly715move_seg_o1_c3d_0_60_seg_c3_b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_c3_b_0_80)
       (not_blocked seg_c3_b_0_80 airplane_cfbeg)
       (not_blocked seg_c3_b_0_80 airplane_daewh)
       (not_blocked seg_c3_b_0_80 airplane_daew3)
       (not_blocked seg_c3_b_0_80 airplane_daew7)
       (not_blocked seg_c3_b_0_80 airplane_cfbe1))
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
  ugly5403ugly5981ugly5516ugly5578ugly6115ugly6128ugly330ugly716ugly570ugly452move_seg_o1_110c_0_34_seg_o1_110a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_110a_0_34)
       (not_blocked seg_o1_110a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110a_0_34 airplane_daewh)
       (not_blocked seg_o1_110a_0_34 airplane_daew3)
       (not_blocked seg_o1_110a_0_34 airplane_daew7)
       (not_blocked seg_o1_110a_0_34 airplane_cfbe1)
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
  ugly5404ugly6145ugly5714ugly5317ugly5689ugly5833ugly869ugly831ugly364ugly481move_seg_w1_c3a_0_34_seg_w1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_w1_c3c_0_48 airplane_daewh)
       (not_blocked seg_w1_c3c_0_48 airplane_daew3)
       (not_blocked seg_w1_c3c_0_48 airplane_daew7)
       (not_blocked seg_w1_c3c_0_48 airplane_cfbe1)
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
  ugly5405ugly5846ugly5958ugly5361ugly6192ugly5961ugly945ugly743ugly147ugly561startup_seg_m_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly5406ugly5721ugly5719ugly5839ugly5382ugly5251ugly321ugly786ugly902ugly891move_seg_n_a4a7d_0_75_seg_n_a4a7c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7d_0_75) (not_occupied seg_n_a4a7c_0_75)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7c_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7c_0_75 airplane_daew7)
       (not_blocked seg_n_a4a7c_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7d_0_75))
       (not_occupied seg_n_a4a7d_0_75) (not (at-segment ?a seg_n_a4a7d_0_75))
       (occupied seg_n_a4a7c_0_75) (not (not_occupied seg_n_a4a7c_0_75))
       (blocked seg_n_a4a7c_0_75 ?a) (not (not_blocked seg_n_a4a7c_0_75 ?a))
       (at-segment ?a seg_n_a4a7c_0_75) (not (blocked seg_n_a4a7e_0_75 ?a))
       (not_blocked seg_n_a4a7e_0_75 ?a)))
 (:action
  ugly5407ugly6060ugly5682ugly5796ugly6006ugly5861ugly487ugly457ugly934ugly919move_seg_o1_c4a_0_34_seg_o1_118c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daew7)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1))
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
  ugly5408ugly5621ugly5263ugly5558ugly5340ugly5483ugly166ugly662ugly344ugly689startup_seg_w1_142a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly5409ugly5518ugly5772ugly6150ugly5899ugly5773ugly483ugly830ugly239ugly35startup_seg_o1_109b_0_60_south_medium
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
  ugly5410ugly5827ugly6068ugly5486ugly5623ugly5445ugly613ugly588ugly781ugly4move_seg_w1_164c_0_34_seg_w1_164a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daew7)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1)
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
  ugly5411ugly5367ugly6049ugly5530ugly5738ugly5805ugly502ugly387ugly402ugly759startup_seg_m_a7b_0_60_south_medium
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
  ugly5412ugly5490ugly5431ugly5302ugly5325ugly5859ugly751ugly130ugly775ugly531move_seg_w1_164a_0_34_seg_w1_164b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daew7)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1)
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
  ugly5413ugly5662ugly5283ugly6123ugly6142ugly5690ugly339ugly508ugly394ugly335startup_seg_n_a2a3a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly5414ugly6177ugly5967ugly5932ugly6011ugly5866ugly898ugly492ugly677ugly219move_seg_w1_142c_0_34_seg_w1_142a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_142a_0_34)
       (not_blocked seg_w1_142a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142a_0_34 airplane_daewh)
       (not_blocked seg_w1_142a_0_34 airplane_daew3)
       (not_blocked seg_w1_142a_0_34 airplane_daew7)
       (not_blocked seg_w1_142a_0_34 airplane_cfbe1)
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
  ugly5415ugly5332ugly6181ugly5480ugly6093ugly5442ugly825ugly311ugly232ugly234park_seg_p164_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))))
 (:action
  ugly5416ugly5286ugly5562ugly5494ugly5746ugly5470ugly515ugly727ugly312ugly327move_seg_w1_c1c_0_34_seg_w1_141a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daew7)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1))
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
  ugly5417ugly5813ugly5350ugly5770ugly5955ugly5271ugly937ugly520ugly456ugly474move_seg_o1_103a_0_34_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daew7)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
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
  ugly5418ugly5794ugly5740ugly6043ugly5780ugly6141ugly783ugly320ugly758ugly72startup_seg_n_a2a3e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3e_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly5419ugly5543ugly5997ugly5675ugly5482ugly6051ugly593ugly57ugly807ugly421startup_seg_m_a8c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8c_0_60)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly5420ugly5351ugly5298ugly5370ugly5806ugly5587ugly98ugly46ugly222ugly164startup_seg_n_a7a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_m_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7c_0_60 ?a)
       (not (not_blocked seg_m_a7c_0_60 ?a))))
 (:action
  ugly5421ugly5292ugly5905ugly5696ugly5896ugly5947ugly724ugly913ugly654ugly548move_seg_o1_c3d_0_60_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3d_0_60) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew7)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
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
  ugly5422ugly5782ugly5745ugly5462ugly5314ugly5775ugly427ugly777ugly445ugly910startup_seg_w1_143c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a))))
 (:action
  ugly5423ugly5715ugly5734ugly5324ugly5313ugly6058ugly710ugly297ugly63ugly834move_seg_w1_163a_0_34_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daew7)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
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
  ugly5424ugly5360ugly5636ugly5633ugly5898ugly5778ugly355ugly100ugly84ugly455move_seg_o1_c4a_0_34_seg_o1_c4b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c4b_0_60 airplane_daewh)
       (not_blocked seg_o1_c4b_0_60 airplane_daew3)
       (not_blocked seg_o1_c4b_0_60 airplane_daew7)
       (not_blocked seg_o1_c4b_0_60 airplane_cfbe1)
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
  ugly5425ugly5254ugly5607ugly5724ugly5328ugly5461ugly328ugly908ugly695ugly428move_seg_o1_c2a_0_60_seg_o1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew7)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1)
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
  ugly5426ugly5479ugly5296ugly5614ugly5814ugly5466ugly178ugly621ugly241ugly517startup_seg_m_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_n_a3a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3a_0_60 ?a)
       (not (not_blocked seg_n_a3a_0_60 ?a))))
 (:action
  ugly5427ugly6028ugly5333ugly6026ugly5544ugly6183ugly944ugly789ugly505ugly15startup_seg_p154_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5428ugly6042ugly5366ugly5739ugly5928ugly5513ugly437ugly795ugly769ugly706startup_seg_o1_103c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly5429ugly5357ugly6108ugly5590ugly5512ugly5402ugly222ugly164ugly748ugly424startup_seg_m_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly5430ugly5266ugly5655ugly5380ugly5804ugly6111ugly165ugly826ugly208ugly139move_seg_p107_0_76_seg_o1_c2b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p107_0_76) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p107_0_76))
       (not_occupied seg_p107_0_76) (not (at-segment ?a seg_p107_0_76))
       (occupied seg_o1_c2b_0_60) (not (not_occupied seg_o1_c2b_0_60))
       (blocked seg_o1_c2b_0_60 ?a) (not (not_blocked seg_o1_c2b_0_60 ?a))
       (at-segment ?a seg_o1_c2b_0_60)))
 (:action
  ugly5431ugly5302ugly5325ugly5859ugly6000ugly5944ugly652ugly259ugly855ugly479park_seg_p118_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_118b_0_60 ?a)) (not_blocked seg_o1_118b_0_60 ?a)))
 (:action
  ugly5432ugly5510ugly5809ugly5892ugly5556ugly6076ugly345ugly598ugly560ugly928startup_seg_c2_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_b_0_80)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly5433ugly5903ugly6035ugly6137ugly5874ugly5297ugly415ugly198ugly633ugly642startup_seg_m_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7c_0_75 ?a)
       (not (not_blocked seg_m_a4a7c_0_75 ?a))))
 (:action
  ugly5434ugly6040ugly5499ugly6109ugly6014ugly6161ugly784ugly558ugly896ugly889move_seg_n_a3d_0_60_seg_n_a2a3f_0_115_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a3d_0_60) (not_occupied seg_n_a2a3f_0_115)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbeg)
       (not_blocked seg_n_a2a3f_0_115 airplane_daewh)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew3)
       (not_blocked seg_n_a2a3f_0_115 airplane_daew7)
       (not_blocked seg_n_a2a3f_0_115 airplane_cfbe1))
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
  ugly5435ugly5585ugly5943ugly5507ugly5700ugly5707ugly409ugly334ugly652ugly259startup_seg_n_a3b_0_60_south_medium
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
  ugly5436ugly6153ugly5339ugly5755ugly5699ugly5749ugly522ugly365ugly323ugly780startup_seg_n_n2a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly5437ugly5671ugly5455ugly5863ugly5934ugly6208ugly303ugly653ugly336ugly493move_seg_w1_163c_0_34_seg_w1_164a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_164a_0_34)
       (not_blocked seg_w1_164a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164a_0_34 airplane_daewh)
       (not_blocked seg_w1_164a_0_34 airplane_daew3)
       (not_blocked seg_w1_164a_0_34 airplane_daew7)
       (not_blocked seg_w1_164a_0_34 airplane_cfbe1))
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
  ugly5438ugly5807ugly5753ugly6031ugly5285ugly5299ugly392ugly624ugly546ugly276startup_seg_n_a4a7d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly5439ugly5363ugly6059ugly5452ugly5309ugly5501ugly607ugly819ugly360ugly27startup_seg_c1_n2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2b_0_80)
       (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly5440ugly5586ugly5316ugly5413ugly5662ugly5283ugly874ugly338ugly152ugly392startup_seg_o1_117b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_p117_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p117_0_76 ?a)
       (not (not_blocked seg_p117_0_76 ?a))))
 (:action
  ugly5441ugly5847ugly5365ugly6102ugly5322ugly5810ugly202ugly310ugly90ugly397move_seg_w1_151a_0_34_seg_w1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_daew7)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1))
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
  ugly5442ugly6074ugly6187ugly5769ugly5850ugly5787ugly72ugly851ugly618ugly918park_seg_p134_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p134_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p134_0_75) (not (is-moving ?a))))
 (:action
  ugly5443ugly5312ugly5630ugly6034ugly5663ugly5399ugly38ugly88ugly28ugly104startup_seg_w1_c2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly5444ugly5826ugly5815ugly5338ugly5900ugly6010ugly684ugly190ugly125ugly438startup_seg_m_a3a4d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly5445ugly5862ugly5615ugly5379ugly5389ugly6065ugly442ugly530ugly408ugly709move_seg_o1_108a_0_34_seg_o1_108d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daew7)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1)
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
  ugly5446ugly5741ugly6083ugly5972ugly5651ugly6185ugly579ugly135ugly669ugly528startup_seg_n_a7a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a_0_60)
       (not_occupied seg_n_a7b_0_60) (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a)) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly5447ugly5816ugly5672ugly5575ugly5649ugly5891ugly495ugly770ugly432ugly705move_seg_w1_163a_0_34_seg_w1_163b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daew7)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1)
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
  ugly5448ugly5646ugly6106ugly5407ugly6060ugly5682ugly547ugly825ugly311ugly232move_seg_o1_109a_0_34_seg_o1_109b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109b_0_60)
       (not_blocked seg_o1_109b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_109b_0_60 airplane_daewh)
       (not_blocked seg_o1_109b_0_60 airplane_daew3)
       (not_blocked seg_o1_109b_0_60 airplane_daew7)
       (not_blocked seg_o1_109b_0_60 airplane_cfbe1)
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
  ugly5449ugly6173ugly6126ugly5487ugly5567ugly5982ugly306ugly42ugly488ugly355move_seg_w1_152a_0_34_seg_w1_151c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daew7)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1))
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
  ugly5450ugly5798ugly5374ugly5644ugly5574ugly5550ugly933ugly568ugly898ugly492startup_seg_08l_a7c_0_161_245_south_medium
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
  ugly5451ugly5728ugly5476ugly6206ugly5677ugly6152ugly278ugly620ugly443ugly337move_seg_o1_c1c_0_80_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
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
  ugly5452ugly5309ugly5501ugly5856ugly5876ugly5396ugly958ugly53ugly207ugly959startup_seg_n_a3a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3a_0_60)
       (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly5453ugly5557ugly5423ugly5715ugly5734ugly5324ugly64ugly235ugly582ugly47startup_seg_m_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6b_0_75 ?a)
       (not (not_blocked seg_m_a7a6b_0_75 ?a))))
 (:action
  ugly5454ugly5965ugly6144ugly6167ugly5871ugly5491ugly880ugly123ugly272ugly389startup_seg_p101_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5455ugly5863ugly5934ugly6208ugly5552ugly6097ugly534ugly293ugly665ugly41move_seg_n_a4a7f_0_75_seg_n_a4a7e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7f_0_75) (not_occupied seg_n_a4a7e_0_75)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7e_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7e_0_75 airplane_daew7)
       (not_blocked seg_n_a4a7e_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7f_0_75))
       (not_occupied seg_n_a4a7f_0_75) (not (at-segment ?a seg_n_a4a7f_0_75))
       (occupied seg_n_a4a7e_0_75) (not (not_occupied seg_n_a4a7e_0_75))
       (blocked seg_n_a4a7e_0_75 ?a) (not (not_blocked seg_n_a4a7e_0_75 ?a))
       (at-segment ?a seg_n_a4a7e_0_75) (not (blocked seg_n_a7c_0_60 ?a))
       (not_blocked seg_n_a7c_0_60 ?a)))
 (:action
  ugly5456ugly5542ugly5303ugly5703ugly5681ugly6079ugly764ugly401ugly507ugly797startup_seg_m_a8d_0_120_934_south_medium
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
  ugly5457ugly6138ugly6053ugly5538ugly6007ugly5913ugly839ugly171ugly685ugly611move_seg_o1_c2d_0_60_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2d_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew7)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
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
  ugly5458ugly5481ugly6143ugly6037ugly5990ugly6018ugly864ugly290ugly110ugly682startup_seg_n_a3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3d_0_60)
       (not_occupied seg_n_a2a3f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3f_0_115 ?a)
       (not (not_blocked seg_n_a2a3f_0_115 ?a))))
 (:action
  ugly5459ugly6015ugly6199ugly5596ugly6197ugly5642ugly323ugly780ugly873ugly773move_seg_c1_n2a_0_60_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_daew7)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
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
  ugly5460ugly5274ugly5884ugly5980ugly5878ugly5895ugly256ugly243ugly796ugly660move_seg_p102_0_76_seg_o1_102b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p102_0_76) (not_occupied seg_o1_102b_0_60)
       (not_blocked seg_o1_102b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_102b_0_60 airplane_daewh)
       (not_blocked seg_o1_102b_0_60 airplane_daew3)
       (not_blocked seg_o1_102b_0_60 airplane_daew7)
       (not_blocked seg_o1_102b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p102_0_76))
       (not_occupied seg_p102_0_76) (not (at-segment ?a seg_p102_0_76))
       (occupied seg_o1_102b_0_60) (not (not_occupied seg_o1_102b_0_60))
       (blocked seg_o1_102b_0_60 ?a) (not (not_blocked seg_o1_102b_0_60 ?a))
       (at-segment ?a seg_o1_102b_0_60)))
 (:action
  ugly5461ugly5577ugly6140ugly5835ugly5426ugly5479ugly47ugly753ugly299ugly502startup_seg_w1_152b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly5462ugly5314ugly5775ugly5676ugly5464ugly5670ugly926ugly76ugly484ugly579move_seg_w1_161c_0_34_seg_w1_162a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daew7)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1))
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
  ugly5463ugly6201ugly5592ugly5854ugly5259ugly5929ugly955ugly906ugly822ugly646move_seg_w1_c1a_0_60_seg_n1_0_108_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c1a_0_60) (not_occupied seg_n1_0_108)
       (not_blocked seg_n1_0_108 airplane_cfbeg)
       (not_blocked seg_n1_0_108 airplane_daewh)
       (not_blocked seg_n1_0_108 airplane_daew3)
       (not_blocked seg_n1_0_108 airplane_daew7)
       (not_blocked seg_n1_0_108 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c1a_0_60))
       (not_occupied seg_w1_c1a_0_60) (not (at-segment ?a seg_w1_c1a_0_60))
       (occupied seg_n1_0_108) (not (not_occupied seg_n1_0_108))
       (blocked seg_n1_0_108 ?a) (not (not_blocked seg_n1_0_108 ?a))
       (at-segment ?a seg_n1_0_108) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_w1_c1b_0_60 ?a)) (not_blocked seg_w1_c1b_0_60 ?a)
       (not (blocked seg_w1_c1c_0_34 ?a)) (not_blocked seg_w1_c1c_0_34 ?a)))
 (:action
  ugly5464ugly5670ugly6175ugly5743ugly5710ugly5917ugly858ugly321ugly786ugly902startup_seg_n_a4a7f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly5465ugly5469ugly5372ugly5857ugly5643ugly5424ugly111ugly157ugly513ugly782park_seg_p115_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_115b_0_60 ?a)) (not_blocked seg_o1_115b_0_60 ?a)))
 (:action
  ugly5466ugly5427ugly6028ugly5333ugly6026ugly5544ugly934ugly919ugly302ugly885move_seg_p162_0_75_seg_w1_162b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p162_0_75) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daew7)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p162_0_75))
       (not_occupied seg_p162_0_75) (not (at-segment ?a seg_p162_0_75))
       (occupied seg_w1_162b_0_45) (not (not_occupied seg_w1_162b_0_45))
       (blocked seg_w1_162b_0_45 ?a) (not (not_blocked seg_w1_162b_0_45 ?a))
       (at-segment ?a seg_w1_162b_0_45)))
 (:action
  ugly5467ugly5845ugly5983ugly5953ugly6121ugly5720ugly271ugly762ugly836ugly738startup_seg_n_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_m_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6b_0_60 ?a)
       (not (not_blocked seg_m_a6b_0_60 ?a))))
 (:action
  ugly5468ugly5762ugly5907ugly6133ugly5759ugly6179ugly591ugly331ugly890ugly538startup_seg_w1_163c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163c_0_34)
       (not_occupied seg_w1_164a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a))))
 (:action
  ugly5469ugly5372ugly5857ugly5643ugly5424ugly5360ugly387ugly402ugly759ugly739move_seg_w1_141b_0_45_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daew7)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
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
  ugly5470ugly5764ugly5343ugly5329ugly6139ugly6120ugly19ugly26ugly922ugly133startup_seg_n_a4a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a_0_60)
       (not_occupied seg_m_a4c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4c_0_60 ?a)
       (not (not_blocked seg_m_a4c_0_60 ?a))))
 (:action
  ugly5471ugly6103ugly5830ugly5547ugly5951ugly5776ugly921ugly514ugly936ugly732startup_seg_n_a8a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_n_a8b_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly5472ugly5420ugly5351ugly5298ugly5370ugly5806ugly338ugly152ugly392ugly624startup_seg_o1_109d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109d_0_45)
       (not_occupied seg_p132_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p132_0_75 ?a)
       (not (not_blocked seg_p132_0_75 ?a))))
 (:action
  ugly5473ugly5619ugly5645ugly6024ugly5792ugly5565ugly360ugly27ugly480ugly441startup_seg_n1_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_0_108)
       (not_occupied seg_n_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3c_0_60 ?a)
       (not (not_blocked seg_n_a3c_0_60 ?a))))
 (:action
  ugly5474ugly6012ugly5541ugly5639ugly6191ugly5666ugly148ugly356ugly956ugly407move_seg_w1_141a_0_34_seg_w1_c1c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_daew7)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1))
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
  ugly5475ugly5727ugly5305ugly5405ugly5846ugly5958ugly112ugly17ugly395ugly817park_seg_p119_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c4b_0_60 ?a)) (not_blocked seg_o1_c4b_0_60 ?a)))
 (:action
  ugly5476ugly6206ugly5677ugly6152ugly5527ugly5894ugly594ugly174ugly304ugly430startup_seg_o1_c2a_0_60_south_medium
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
  ugly5477ugly5853ugly6196ugly5838ugly5444ugly5826ugly566ugly348ugly315ugly676move_seg_w1_c1b_0_60_seg_w1_c1c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c1c_0_34 airplane_daewh)
       (not_blocked seg_w1_c1c_0_34 airplane_daew3)
       (not_blocked seg_w1_c1c_0_34 airplane_daew7)
       (not_blocked seg_w1_c1c_0_34 airplane_cfbe1)
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
  ugly5478ugly5914ugly5824ugly5495ugly6158ugly5569ugly315ugly676ugly77ugly835startup_seg_o1_110a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110a_0_34)
       (not_occupied seg_o1_109c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109c_0_34 ?a)
       (not (not_blocked seg_o1_109c_0_34 ?a))))
 (:action
  ugly5479ugly5296ugly5614ugly5814ugly5466ugly5427ugly779ugly794ugly555ugly256move_seg_o1_111a_0_34_seg_o1_110c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daew7)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1))
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
  ugly5480ugly6093ugly5442ugly6074ugly6187ugly5769ugly601ugly949ugly437ugly795startup_seg_a6_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_b_0_159_512)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly5481ugly6143ugly6037ugly5990ugly6018ugly6113ugly228ugly376ugly815ugly714move_seg_w1_152b_0_45_seg_p152_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_p152_0_75)
       (not_blocked seg_p152_0_75 airplane_cfbeg)
       (not_blocked seg_p152_0_75 airplane_daewh)
       (not_blocked seg_p152_0_75 airplane_daew3)
       (not_blocked seg_p152_0_75 airplane_daew7)
       (not_blocked seg_p152_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_152b_0_45))
       (not_occupied seg_w1_152b_0_45) (not (at-segment ?a seg_w1_152b_0_45))
       (occupied seg_p152_0_75) (not (not_occupied seg_p152_0_75))
       (blocked seg_p152_0_75 ?a) (not (not_blocked seg_p152_0_75 ?a))
       (at-segment ?a seg_p152_0_75) (not (blocked seg_w1_152a_0_34 ?a))
       (not_blocked seg_w1_152a_0_34 ?a) (not (blocked seg_w1_152c_0_34 ?a))
       (not_blocked seg_w1_152c_0_34 ?a)))
 (:action
  ugly5482ugly6051ugly5842ugly5867ugly5617ugly5904ugly187ugly610ugly850ugly150park_seg_p164_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p164_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p164_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_164b_0_45 ?a)) (not_blocked seg_w1_164b_0_45 ?a)))
 (:action
  ugly5483ugly5415ugly5332ugly6181ugly5480ugly6093ugly193ugly173ugly553ugly523startup_seg_c4_s6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly5484ugly5812ugly5647ugly6004ugly5449ugly6173ugly877ugly774ugly944ugly789startup_seg_o1_104c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104c_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly5485ugly5836ugly5752ugly6017ugly5926ugly5561ugly35ugly543ugly790ugly281move_seg_n_a6a8f_0_75_seg_n_a6a8e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8f_0_75) (not_occupied seg_n_a6a8e_0_75)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8e_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8e_0_75 airplane_daew7)
       (not_blocked seg_n_a6a8e_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8f_0_75))
       (not_occupied seg_n_a6a8f_0_75) (not (at-segment ?a seg_n_a6a8f_0_75))
       (occupied seg_n_a6a8e_0_75) (not (not_occupied seg_n_a6a8e_0_75))
       (blocked seg_n_a6a8e_0_75 ?a) (not (not_blocked seg_n_a6a8e_0_75 ?a))
       (at-segment ?a seg_n_a6a8e_0_75) (not (blocked seg_n_a8c_0_60 ?a))
       (not_blocked seg_n_a8c_0_60 ?a)))
 (:action
  ugly5486ugly5623ugly5445ugly5862ugly5615ugly5379ugly140ugly893ugly477ugly225startup_seg_o1_117b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117b_0_60)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly5487ugly5567ugly5982ugly5555ugly5368ugly5808ugly628ugly820ugly876ugly106startup_seg_n_a9a10b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10b_0_75)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly5488ugly6045ugly5723ugly5376ugly5331ugly5971ugly28ugly104ugly369ugly600startup_seg_a4_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_08l_a4c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a4c_0_161_245 ?a)
       (not (not_blocked seg_08l_a4c_0_161_245 ?a))))
 (:action
  ugly5489ugly5851ugly6146ugly6169ugly5678ugly5748ugly815ugly714ugly116ugly98move_seg_n_a6a8e_0_75_seg_n_a6a8d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8e_0_75) (not_occupied seg_n_a6a8d_0_75)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8d_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8d_0_75 airplane_daew7)
       (not_blocked seg_n_a6a8d_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8e_0_75))
       (not_occupied seg_n_a6a8e_0_75) (not (at-segment ?a seg_n_a6a8e_0_75))
       (occupied seg_n_a6a8d_0_75) (not (not_occupied seg_n_a6a8d_0_75))
       (blocked seg_n_a6a8d_0_75 ?a) (not (not_blocked seg_n_a6a8d_0_75 ?a))
       (at-segment ?a seg_n_a6a8d_0_75) (not (blocked seg_n_a6a8f_0_75 ?a))
       (not_blocked seg_n_a6a8f_0_75 ?a)))
 (:action
  ugly5490ugly5431ugly5302ugly5325ugly5859ugly6000ugly695ugly428ugly220ugly696startup_seg_w1_163a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163a_0_34)
       (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly5491ugly6129ugly5890ugly6085ugly5355ugly5693ugly468ugly148ugly356ugly956startup_seg_w1_154b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly5492ugly5280ugly6098ugly6038ugly5817ugly6009ugly207ugly959ugly700ugly718move_seg_o1_103b_0_60_seg_p103_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_p103_0_76)
       (not_blocked seg_p103_0_76 airplane_cfbeg)
       (not_blocked seg_p103_0_76 airplane_daewh)
       (not_blocked seg_p103_0_76 airplane_daew3)
       (not_blocked seg_p103_0_76 airplane_daew7)
       (not_blocked seg_p103_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_103b_0_60))
       (not_occupied seg_o1_103b_0_60) (not (at-segment ?a seg_o1_103b_0_60))
       (occupied seg_p103_0_76) (not (not_occupied seg_p103_0_76))
       (blocked seg_p103_0_76 ?a) (not (not_blocked seg_p103_0_76 ?a))
       (at-segment ?a seg_p103_0_76) (not (blocked seg_o1_103a_0_34 ?a))
       (not_blocked seg_o1_103a_0_34 ?a) (not (blocked seg_o1_103c_0_34 ?a))
       (not_blocked seg_o1_103c_0_34 ?a)))
 (:action
  ugly5493ugly6200ugly5593ugly5985ugly5879ugly5276ugly154ugly475ugly366ugly127park_seg_p142_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))))
 (:action
  ugly5494ugly5746ugly5470ugly5764ugly5343ugly5329ugly890ugly538ugly446ugly884startup_seg_n_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly5495ugly6158ugly5569ugly5564ugly5511ugly5400ugly74ugly20ugly381ugly870startup_seg_o1_104a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly5496ugly5275ugly5656ugly5282ugly6070ugly5706ugly913ugly654ugly548ugly268startup_seg_n_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly5497ugly5440ugly5586ugly5316ugly5413ugly5662ugly34ugly751ugly130ugly775startup_seg_o1_108d_0_45_south_medium
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
  ugly5498ugly5356ugly6116ugly5632ugly5660ugly5948ugly505ugly15ugly412ugly901startup_seg_w1_142c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142b_0_45 ?a)
       (not (not_blocked seg_w1_142b_0_45 ?a))))
 (:action
  ugly5499ugly6109ugly6014ugly6161ugly6033ugly5989ugly953ugly410ugly240ugly940startup_seg_o1_109a_0_34_south_medium
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
  ugly5500ugly5795ugly5860ugly5342ugly6075ugly6090ugly145ugly740ugly291ugly277move_seg_o1_116a_0_34_seg_o1_116b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daew7)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1)
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
  ugly5501ugly5856ugly5876ugly5396ugly6207ugly6176ugly346ugly86ugly21ugly194startup_seg_w1_163b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_p163_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p163_0_75 ?a)
       (not (not_blocked seg_p163_0_75 ?a))))
 (:action
  ugly5502ugly6156ugly6171ugly5695ugly5335ugly5434ugly791ugly305ugly48ugly916move_seg_o1_108c_0_34_seg_o1_108a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_108a_0_34)
       (not_blocked seg_o1_108a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108a_0_34 airplane_daewh)
       (not_blocked seg_o1_108a_0_34 airplane_daew3)
       (not_blocked seg_o1_108a_0_34 airplane_daew7)
       (not_blocked seg_o1_108a_0_34 airplane_cfbe1)
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
  ugly5503ugly5278ugly5784ugly5987ugly6020ugly5889ugly616ugly227ugly51ugly524move_seg_w1_c3a_0_34_seg_w1_154c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c3a_0_34) (not_occupied seg_w1_154c_0_34)
       (not_blocked seg_w1_154c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154c_0_34 airplane_daewh)
       (not_blocked seg_w1_154c_0_34 airplane_daew3)
       (not_blocked seg_w1_154c_0_34 airplane_daew7)
       (not_blocked seg_w1_154c_0_34 airplane_cfbe1))
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
  ugly5504ugly5408ugly5621ugly5263ugly5558ugly5340ugly234ugly458ugly911ugly559move_seg_w1_153c_0_34_seg_w1_154a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daew7)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1))
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
  ugly5505ugly5258ugly5638ugly5811ugly5448ugly5646ugly857ugly151ugly729ugly742startup_seg_n_a6b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly5506ugly6096ugly5803ugly6087ugly5712ugly5566ugly377ugly581ugly691ugly70startup_seg_o1_c3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3b_0_60)
       (not_occupied seg_p112_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p112_0_76 ?a)
       (not (not_blocked seg_p112_0_76 ?a))))
 (:action
  ugly5507ugly5700ugly5707ugly5658ugly5923ugly5844ugly265ugly303ugly653ugly336startup_seg_o1_103b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_o1_103a_0_34) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly5508ugly6149ugly6003ugly5583ugly5735ugly5281ugly142ugly783ugly320ugly758move_seg_n_n2a_0_60_seg_n_n2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60)
       (not_blocked seg_n_n2b_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2b_0_60 airplane_daewh)
       (not_blocked seg_n_n2b_0_60 airplane_daew3)
       (not_blocked seg_n_n2b_0_60 airplane_daew7)
       (not_blocked seg_n_n2b_0_60 airplane_cfbe1)
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
  ugly5509ugly5416ugly5286ugly5562ugly5494ugly5746ugly221ugly848ugly512ugly805startup_seg_o1_109c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109c_0_34)
       (not_occupied seg_o1_110a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110a_0_34 ?a)
       (not (not_blocked seg_o1_110a_0_34 ?a))))
 (:action
  ugly5510ugly5809ugly5892ugly5556ugly6076ugly5594ugly908ugly695ugly428ugly220startup_seg_a3_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_m_a3a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a))))
 (:action
  ugly5511ugly5400ugly5323ugly5576ugly5960ugly5375ugly881ugly534ugly293ugly665move_seg_m_a8d_0_120_934_seg_m_a8b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_m_a8d_0_120_934) (not_occupied seg_m_a8b_0_60)
       (not_blocked seg_m_a8b_0_60 airplane_cfbeg)
       (not_blocked seg_m_a8b_0_60 airplane_daewh)
       (not_blocked seg_m_a8b_0_60 airplane_daew3)
       (not_blocked seg_m_a8b_0_60 airplane_daew7)
       (not_blocked seg_m_a8b_0_60 airplane_cfbe1)
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
  ugly5512ugly5402ugly5471ugly6103ugly5830ugly5547ugly702ugly211ugly814ugly454park_seg_p109_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_109b_0_60 ?a)) (not_blocked seg_o1_109b_0_60 ?a)))
 (:action
  ugly5513ugly5686ugly5680ugly5306ugly5799ugly5887ugly681ugly874ugly338ugly152startup_seg_p152_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p152_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5514ugly5489ugly5851ugly6146ugly6169ugly5678ugly499ugly287ugly622ugly37startup_seg_p153_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)
       (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly5515ugly6099ugly6132ugly5750ugly5540ugly5288ugly808ugly954ugly651ugly605startup_seg_n_a4a7b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7c_0_75 ?a)
       (not (not_blocked seg_n_a4a7c_0_75 ?a))))
 (:action
  ugly5516ugly5578ugly6115ugly6128ugly5579ugly6072ugly277ugly289ugly592ugly341park_seg_p108_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_108b_0_60 ?a)) (not_blocked seg_o1_108b_0_60 ?a)))
 (:action
  ugly5517ugly5484ugly5812ugly5647ugly6004ugly5449ugly924ugly109ugly417ugly527park_seg_p104_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))))
 (:action
  ugly5518ugly5772ugly6150ugly5899ugly5773ugly5732ugly201ugly839ugly171ugly685startup_seg_p115_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)
       (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly5519ugly6168ugly5381ugly5837ugly5591ugly5291ugly530ugly408ugly709ugly226startup_seg_n_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7d_0_75)
       (not_occupied seg_n_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7e_0_75 ?a)
       (not (not_blocked seg_n_a4a7e_0_75 ?a))))
 (:action
  ugly5520ugly5304ugly5962ugly5326ugly5669ugly5730ugly198ugly633ugly642ugly726startup_seg_n_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9b_0_60)
       (not_occupied seg_n_a9a10a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10a_0_80 ?a)
       (not (not_blocked seg_n_a9a10a_0_80 ?a))))
 (:action
  ugly5521ugly6184ugly5422ugly5782ugly5745ugly5462ugly65ugly845ugly503ugly283move_seg_w1_141b_0_45_seg_p141_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_141b_0_45) (not_occupied seg_p141_0_75)
       (not_blocked seg_p141_0_75 airplane_cfbeg)
       (not_blocked seg_p141_0_75 airplane_daewh)
       (not_blocked seg_p141_0_75 airplane_daew3)
       (not_blocked seg_p141_0_75 airplane_daew7)
       (not_blocked seg_p141_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_141b_0_45))
       (not_occupied seg_w1_141b_0_45) (not (at-segment ?a seg_w1_141b_0_45))
       (occupied seg_p141_0_75) (not (not_occupied seg_p141_0_75))
       (blocked seg_p141_0_75 ?a) (not (not_blocked seg_p141_0_75 ?a))
       (at-segment ?a seg_p141_0_75) (not (blocked seg_w1_141a_0_34 ?a))
       (not_blocked seg_w1_141a_0_34 ?a) (not (blocked seg_w1_141c_0_34 ?a))
       (not_blocked seg_w1_141c_0_34 ?a)))
 (:action
  ugly5522ugly5767ugly6025ugly5279ugly5756ugly5855ugly707ugly566ugly348ugly315startup_seg_08l_a7c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7c_0_161_245)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly5523ugly5882ugly5453ugly5557ugly5423ugly5715ugly485ugly764ugly401ugly507startup_seg_m_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9b_0_75 ?a)
       (not (not_blocked seg_m_a8a9b_0_75 ?a))))
 (:action
  ugly5524ugly5559ugly5726ugly5945ugly5927ugly6195ugly797ugly787ugly547ugly825move_seg_o1_c4c_0_80_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1)
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
  ugly5525ugly5467ugly5845ugly5983ugly5953ugly6121ugly471ugly907ugly325ugly594move_seg_o1_c1c_0_80_seg_c1_n2b_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew7)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1))
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
  ugly5526ugly6039ugly5635ugly5657ugly6154ugly6101ugly703ugly793ugly938ugly785startup_seg_p110_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)
       (not_occupied seg_o1_110b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110b_0_60 ?a)
       (not (not_blocked seg_o1_110b_0_60 ?a))))
 (:action
  ugly5527ugly5894ugly5843ugly5821ugly6148ugly5841ugly682ugly858ugly321ugly786startup_seg_n_a7a6d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly5528ugly5800ugly5886ugly5829ugly5582ugly5419ugly294ugly712ugly828ugly218startup_seg_p109_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)
       (not_occupied seg_o1_109b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_109b_0_60 ?a)
       (not (not_blocked seg_o1_109b_0_60 ?a))))
 (:action
  ugly5529ugly5460ugly5274ugly5884ugly5980ugly5878ugly646ugly8ugly178ugly621move_seg_o1_110b_0_60_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110b_0_60) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daew7)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
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
  ugly5530ugly5738ugly5805ugly5751ugly5797ugly5631ugly181ugly12ugly616ugly227move_seg_n_a6b_0_60_seg_n_a6c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60)
       (not_blocked seg_n_a6c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6c_0_60 airplane_daewh)
       (not_blocked seg_n_a6c_0_60 airplane_daew3)
       (not_blocked seg_n_a6c_0_60 airplane_daew7)
       (not_blocked seg_n_a6c_0_60 airplane_cfbe1)
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
  ugly5531ugly6095ugly5872ugly6019ugly5637ugly5536ugly701ugly666ugly629ugly436move_seg_08l_a7a_0_80_seg_08l_a7a9_0_270_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a_0_80) (not_occupied seg_08l_a7a9_0_270)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbeg)
       (not_blocked seg_08l_a7a9_0_270 airplane_daewh)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew3)
       (not_blocked seg_08l_a7a9_0_270 airplane_daew7)
       (not_blocked seg_08l_a7a9_0_270 airplane_cfbe1)
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
  ugly5532ugly6001ugly5463ugly6201ugly5592ugly5854ugly10ugly34ugly751ugly130startup_seg_m_a6a8d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly5533ugly5818ugly5517ugly5484ugly5812ugly5647ugly755ugly460ugly30ugly68move_seg_08l_a2a_0_80_seg_08l_a2a3_0_970_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a_0_80) (not_occupied seg_08l_a2a3_0_970)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbeg)
       (not_blocked seg_08l_a2a3_0_970 airplane_daewh)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew3)
       (not_blocked seg_08l_a2a3_0_970 airplane_daew7)
       (not_blocked seg_08l_a2a3_0_970 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a_0_80))
       (not_occupied seg_08l_a2a_0_80) (not (at-segment ?a seg_08l_a2a_0_80))
       (occupied seg_08l_a2a3_0_970) (not (not_occupied seg_08l_a2a3_0_970))
       (blocked seg_08l_a2a3_0_970 ?a)
       (not (not_blocked seg_08l_a2a3_0_970 ?a))
       (at-segment ?a seg_08l_a2a3_0_970) (not (blocked seg_08l_a2b_0_80 ?a))
       (not_blocked seg_08l_a2b_0_80 ?a)))
 (:action
  ugly5534ugly6125ugly5918ugly5731ugly5820ugly5534ugly876ugly106ugly939ugly177startup_seg_n_a2a3f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3f_0_115)
       (not_occupied seg_n_a2a3e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3e_0_75 ?a)
       (not (not_blocked seg_n_a2a3e_0_75 ?a))))
 (:action
  ugly5535ugly5935ugly6174ugly5474ugly6012ugly5541ugly390ugly487ugly457ugly934startup_seg_n_a6a8f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly5536ugly5950ugly5793ugly5341ugly6178ugly5936ugly659ugly875ugly354ugly419park_seg_p154_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_154b_0_45 ?a)) (not_blocked seg_w1_154b_0_45 ?a)))
 (:action
  ugly5537ugly5531ugly6095ugly5872ugly6019ugly5637ugly287ugly622ugly37ugly403startup_seg_p103_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5538ugly6007ugly5913ugly6088ugly5825ugly5392ugly274ugly667ugly757ugly658startup_seg_w1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2b_0_60)
       (not_occupied seg_c2_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_a_0_80 ?a)
       (not (not_blocked seg_c2_a_0_80 ?a))))
 (:action
  ugly5539ugly5888ugly5790ugly5269ugly6136ugly5600ugly855ugly479ugly639ugly661startup_seg_c4_s6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6c_0_60)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly5540ugly5288ugly6057ugly5571ugly6164ugly6166ugly354ugly419ugly411ugly788startup_seg_o1_c3b_0_60_south_medium
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
  ugly5541ugly5639ugly6191ugly5666ugly5397ugly5433ugly654ugly548ugly268ugly927startup_seg_n_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly5542ugly5303ugly5703ugly5681ugly6079ugly6013ugly96ugly803ugly55ugly638park_seg_p116_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_116b_0_60 ?a)) (not_blocked seg_o1_116b_0_60 ?a)))
 (:action
  ugly5543ugly5997ugly5675ugly5482ugly6051ugly5842ugly618ugly918ugly584ugly883move_seg_w1_154a_0_34_seg_w1_154b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45)
       (not_blocked seg_w1_154b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_154b_0_45 airplane_daewh)
       (not_blocked seg_w1_154b_0_45 airplane_daew3)
       (not_blocked seg_w1_154b_0_45 airplane_daew7)
       (not_blocked seg_w1_154b_0_45 airplane_cfbe1)
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
  ugly5544ugly6183ugly6193ugly5425ugly5254ugly5607ugly475ugly366ugly127ugly352startup_seg_p117_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)
       (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly5545ugly5411ugly5367ugly6049ugly5530ugly5738ugly556ugly269ugly798ugly200startup_seg_c2_a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly5546ugly5388ugly5267ugly5963ugly5852ugly5673ugly949ugly437ugly795ugly769startup_seg_m_a3a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4d_0_75)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly5547ugly5951ugly5776ugly6170ugly6122ugly5640ugly756ugly920ugly935ugly223move_seg_w1_141c_0_34_seg_w1_141a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141c_0_34) (not_occupied seg_w1_141a_0_34)
       (not_blocked seg_w1_141a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141a_0_34 airplane_daewh)
       (not_blocked seg_w1_141a_0_34 airplane_daew3)
       (not_blocked seg_w1_141a_0_34 airplane_daew7)
       (not_blocked seg_w1_141a_0_34 airplane_cfbe1)
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
  ugly5548ugly5496ugly5275ugly5656ugly5282ugly6070ugly457ugly934ugly919ugly302startup_seg_n_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly5549ugly6110ugly5725ugly5290ugly5373ugly5650ugly404ugly339ugly508ugly394startup_seg_c1_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a)) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a))))
 (:action
  ugly5550ugly6182ugly5652ugly6155ugly6021ugly5560ugly742ugly904ugly613ugly588startup_seg_m_a8a_0_60_south_medium
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
  ugly5551ugly5996ugly5521ugly6184ugly5422ugly5782ugly496ugly399ugly288ugly418move_seg_w1_143c_0_60_seg_w1_143a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daew7)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1)
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
  ugly5552ugly6097ugly5783ugly5708ugly5665ugly6061ugly516ugly206ugly626ugly693startup_seg_m_a9a10a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10a_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly5553ugly5437ugly5671ugly5455ugly5863ugly5934ugly959ugly700ugly718ugly196startup_seg_m_a7a6b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly5554ugly5599ugly5532ugly6001ugly5463ugly6201ugly343ugly763ugly44ugly686move_seg_p131_0_75_seg_o1_108d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daew7)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p131_0_75))
       (not_occupied seg_p131_0_75) (not (at-segment ?a seg_p131_0_75))
       (occupied seg_o1_108d_0_45) (not (not_occupied seg_o1_108d_0_45))
       (blocked seg_o1_108d_0_45 ?a) (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly5555ugly5368ugly5808ugly5877ugly6073ugly5446ugly492ugly677ugly219ugly85move_seg_c3_b_0_80_seg_o1_c3d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_b_0_80) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_daew7)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_b_0_80))
       (not_occupied seg_c3_b_0_80) (not (at-segment ?a seg_c3_b_0_80))
       (occupied seg_o1_c3d_0_60) (not (not_occupied seg_o1_c3d_0_60))
       (blocked seg_o1_c3d_0_60 ?a) (not (not_blocked seg_o1_c3d_0_60 ?a))
       (at-segment ?a seg_o1_c3d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c3_a_0_80 ?a))
       (not_blocked seg_c3_a_0_80 ?a)))
 (:action
  ugly5556ugly6076ugly5594ugly6157ugly6151ugly5301ugly570ugly452ugly244ugly504startup_seg_n_a7a6d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6d_0_75)
       (not_occupied seg_n_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6c_0_75 ?a)
       (not (not_blocked seg_n_a7a6c_0_75 ?a))))
 (:action
  ugly5557ugly5423ugly5715ugly5734ugly5324ugly5313ugly809ugly372ugly473ugly82move_seg_08l_a2b_0_80_seg_08l_a2a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a2b_0_80) (not_occupied seg_08l_a2a_0_80)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2a_0_80 airplane_daewh)
       (not_blocked seg_08l_a2a_0_80 airplane_daew3)
       (not_blocked seg_08l_a2a_0_80 airplane_daew7)
       (not_blocked seg_08l_a2a_0_80 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2b_0_80))
       (not_occupied seg_08l_a2b_0_80) (not (at-segment ?a seg_08l_a2b_0_80))
       (occupied seg_08l_a2a_0_80) (not (not_occupied seg_08l_a2a_0_80))
       (blocked seg_08l_a2a_0_80 ?a) (not (not_blocked seg_08l_a2a_0_80 ?a))
       (at-segment ?a seg_08l_a2a_0_80) (not (facing ?a north))
       (facing ?a south) (not (blocked seg_a2_a_0_90 ?a))
       (not_blocked seg_a2_a_0_90 ?a)))
 (:action
  ugly5558ugly5340ugly5483ugly5415ugly5332ugly6181ugly231ugly416ugly952ugly328startup_seg_n_a6a8a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly5559ugly5726ugly5945ugly5927ugly6195ugly6046ugly418ugly93ugly597ugly69startup_seg_m_a6a8c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly5560ugly5991ugly6069ugly5766ugly5410ugly5827ugly819ugly360ugly27ugly480startup_seg_p162_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)
       (not_occupied seg_w1_162b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a))))
 (:action
  ugly5561ugly5284ugly5697ugly5628ugly5509ugly5416ugly37ugly403ugly498ugly604startup_seg_m_a6a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a_0_60)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly5562ugly5494ugly5746ugly5470ugly5764ugly5343ugly80ugly704ugly951ugly163move_seg_w1_161b_0_45_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daew7)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
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
  ugly5563ugly6135ugly5612ugly5616ugly5524ugly5559ugly477ugly225ugly625ugly31startup_seg_o1_118b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_p118_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p118_0_76 ?a)
       (not (not_blocked seg_p118_0_76 ?a))))
 (:action
  ugly5564ugly5511ugly5400ugly5323ugly5576ugly5960ugly126ugly602ugly608ugly97move_seg_a8_b_0_80_6226_seg_m_a8d_0_120_934_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_0_80_6226) (not_occupied seg_m_a8d_0_120_934)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbeg)
       (not_blocked seg_m_a8d_0_120_934 airplane_daewh)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew3)
       (not_blocked seg_m_a8d_0_120_934 airplane_daew7)
       (not_blocked seg_m_a8d_0_120_934 airplane_cfbe1))
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
  ugly5565ugly5609ugly5398ugly5549ugly6110ugly5725ugly41ugly59ugly643ugly242startup_seg_m_a3a4f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a3a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4e_0_75 ?a)
       (not (not_blocked seg_m_a3a4e_0_75 ?a))))
 (:action
  ugly5566ugly5626ugly6081ugly5885ugly5548ugly5496ugly26ugly922ugly133ugly724startup_seg_n_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8c_0_75)
       (not_occupied seg_n_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8b_0_75 ?a)
       (not (not_blocked seg_n_a6a8b_0_75 ?a))))
 (:action
  ugly5567ugly5982ugly5555ugly5368ugly5808ugly5877ugly824ugly864ugly290ugly110startup_seg_08l_a9b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a9b_0_161_245)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly5568ugly6180ugly5519ugly6168ugly5381ugly5837ugly342ugly536ugly319ugly137startup_seg_m_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8f_0_115 ?a)
       (not (not_blocked seg_m_a6a8f_0_115 ?a))))
 (:action
  ugly5569ugly5564ugly5511ugly5400ugly5323ugly5576ugly711ugly648ugly501ugly13startup_seg_a2_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly5570ugly6134ugly6117ugly5387ugly6080ugly6124ugly357ugly806ugly556ugly269startup_seg_m_a8a9d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9c_0_60 ?a)
       (not (not_blocked seg_m_a9c_0_60 ?a))))
 (:action
  ugly5571ugly6164ugly6166ugly5603ugly6089ugly5832ugly727ugly312ugly327ugly78startup_seg_n_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8d_0_75 ?a)
       (not (not_blocked seg_n_a6a8d_0_75 ?a))))
 (:action
  ugly5572ugly5465ugly5469ugly5372ugly5857ugly5643ugly175ugly129ugly158ugly247startup_seg_p163_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)
       (not_occupied seg_w1_163b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163b_0_45 ?a)
       (not (not_blocked seg_w1_163b_0_45 ?a))))
 (:action
  ugly5573ugly5515ugly6099ugly6132ugly5750ugly5540ugly39ugly9ugly603ugly19move_seg_08l_0_80_seg_08l_a3a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_0_80) (not_occupied seg_08l_a3a_0_80)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a3a_0_80 airplane_daewh)
       (not_blocked seg_08l_a3a_0_80 airplane_daew3)
       (not_blocked seg_08l_a3a_0_80 airplane_daew7)
       (not_blocked seg_08l_a3a_0_80 airplane_cfbe1)
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
  ugly5574ugly5550ugly6182ugly5652ugly6155ugly6021ugly311ugly232ugly234ugly458startup_seg_n_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8b_0_75)
       (not_occupied seg_n_a6a8a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8a_0_115 ?a)
       (not (not_blocked seg_n_a6a8a_0_115 ?a))))
 (:action
  ugly5575ugly5649ugly5891ugly5744ugly5781ugly6022ugly335ugly843ugly390ugly487startup_seg_w1_164c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a))))
 (:action
  ugly5576ugly5960ugly5375ugly6130ugly5949ugly5500ugly546ugly276ugly887ugly122startup_seg_w1_141c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_142a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a))))
 (:action
  ugly5577ugly6140ugly5835ugly5426ugly5479ugly5296ugly365ugly323ugly780ugly873startup_seg_m_a6a8c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8c_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly5578ugly6115ugly6128ugly5579ugly6072ugly5526ugly790ugly281ugly45ugly861startup_seg_p162_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p162_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5579ugly6072ugly5526ugly6039ugly5635ugly5657ugly905ugly94ugly306ugly42startup_seg_p102_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5580ugly5939ugly5605ugly5698ugly6114ugly5875ugly160ugly942ugly307ugly899startup_seg_m_a4a7d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7d_0_75)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly5581ugly5988ugly6023ugly6041ugly5992ugly6203ugly249ugly434ugly877ugly774startup_seg_n_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10e_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly5582ugly5419ugly5543ugly5997ugly5675ugly5482ugly802ugly878ugly182ugly197move_seg_n2_0_108_seg_c1_n2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n2_0_108) (not_occupied seg_c1_n2a_0_60)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2a_0_60 airplane_daewh)
       (not_blocked seg_c1_n2a_0_60 airplane_daew3)
       (not_blocked seg_c1_n2a_0_60 airplane_daew7)
       (not_blocked seg_c1_n2a_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_0_108))
       (not_occupied seg_n2_0_108) (not (at-segment ?a seg_n2_0_108))
       (occupied seg_c1_n2a_0_60) (not (not_occupied seg_c1_n2a_0_60))
       (blocked seg_c1_n2a_0_60 ?a) (not (not_blocked seg_c1_n2a_0_60 ?a))
       (at-segment ?a seg_c1_n2a_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_n2b_0_60 ?a))
       (not_blocked seg_n_n2b_0_60 ?a)))
 (:action
  ugly5583ugly5735ugly5281ugly5391ugly5493ugly6200ugly344ugly689ugly347ugly10move_seg_08l_a7a9_0_270_seg_08l_a9c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7a9_0_270) (not_occupied seg_08l_a9c_0_80)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a9c_0_80 airplane_daewh)
       (not_blocked seg_08l_a9c_0_80 airplane_daew3)
       (not_blocked seg_08l_a9c_0_80 airplane_daew7)
       (not_blocked seg_08l_a9c_0_80 airplane_cfbe1))
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
  ugly5584ugly5709ugly5308ugly5684ugly6030ugly5893ugly61ugly357ugly806ugly556move_seg_o1_111a_0_34_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daew7)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
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
  ugly5585ugly5943ugly5507ugly5700ugly5707ugly5658ugly674ugly617ugly463ugly422move_seg_p133_0_75_seg_o1_110d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p133_0_75) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daew7)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p133_0_75))
       (not_occupied seg_p133_0_75) (not (at-segment ?a seg_p133_0_75))
       (occupied seg_o1_110d_0_45) (not (not_occupied seg_o1_110d_0_45))
       (blocked seg_o1_110d_0_45 ?a) (not (not_blocked seg_o1_110d_0_45 ?a))
       (at-segment ?a seg_o1_110d_0_45)))
 (:action
  ugly5586ugly5316ugly5413ugly5662ugly5283ugly6123ugly893ugly477ugly225ugly625move_seg_08l_a6a7_0_450_seg_08l_a7d_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a6a7_0_450) (not_occupied seg_08l_a7d_0_80)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7d_0_80 airplane_daewh)
       (not_blocked seg_08l_a7d_0_80 airplane_daew3)
       (not_blocked seg_08l_a7d_0_80 airplane_daew7)
       (not_blocked seg_08l_a7d_0_80 airplane_cfbe1))
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
  ugly5587ugly5347ugly5589ugly5937ugly5984ugly5401ugly745ugly462ugly114ugly628startup_seg_m_a9a10e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly5588ugly5954ugly5537ugly5531ugly6095ugly5872ugly770ugly432ugly705ugly159move_seg_w1_151a_0_34_seg_w1_151b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daew7)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1)
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
  ugly5589ugly5937ugly5984ugly5401ugly5994ugly5378ugly914ugly7ugly318ugly659startup_seg_n_n2a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4e_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly5590ugly5512ugly5402ugly5471ugly6103ugly5830ugly298ugly179ugly800ugly296move_seg_p163_0_75_seg_w1_163b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p163_0_75) (not_occupied seg_w1_163b_0_45)
       (not_blocked seg_w1_163b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_163b_0_45 airplane_daewh)
       (not_blocked seg_w1_163b_0_45 airplane_daew3)
       (not_blocked seg_w1_163b_0_45 airplane_daew7)
       (not_blocked seg_w1_163b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p163_0_75))
       (not_occupied seg_p163_0_75) (not (at-segment ?a seg_p163_0_75))
       (occupied seg_w1_163b_0_45) (not (not_occupied seg_w1_163b_0_45))
       (blocked seg_w1_163b_0_45 ?a) (not (not_blocked seg_w1_163b_0_45 ?a))
       (at-segment ?a seg_w1_163b_0_45)))
 (:action
  ugly5591ugly5291ugly5779ugly5264ugly5435ugly5585ugly694ugly871ugly201ugly839move_seg_o1_c1b_0_34_seg_o1_102a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daew7)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1))
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
  ugly5592ugly5854ugly5259ugly5929ugly6204ugly5768ugly923ugly253ugly121ugly892move_seg_o1_102c_0_34_seg_o1_103a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daew7)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1))
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
  ugly5593ugly5985ugly5879ugly5276ugly5403ugly5981ugly267ugly856ugly627ugly367startup_seg_n_a8a9a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8b_0_60 ?a)
       (not (not_blocked seg_n_a8b_0_60 ?a))))
 (:action
  ugly5594ugly6157ugly6151ugly5301ugly5819ugly5546ugly139ugly205ugly641ugly191startup_seg_m_a4a7f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7f_0_115)
       (not_occupied seg_m_a4a7e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7e_0_75 ?a)
       (not (not_blocked seg_m_a4a7e_0_75 ?a))))
 (:action
  ugly5595ugly5253ugly5535ugly5935ugly6174ugly5474ugly763ugly44ugly686ugly224startup_seg_m_a9c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9c_0_60)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly5596ugly6197ugly5642ugly5572ugly5465ugly5469ugly123ugly272ugly389ugly476park_seg_p161_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_161b_0_45 ?a)) (not_blocked seg_w1_161b_0_45 ?a)))
 (:action
  ugly5597ugly6084ugly5701ugly5602ugly5429ugly5357ugly859ugly771ugly599ugly262move_seg_o1_118c_0_34_seg_o1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1))
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
  ugly5598ugly5344ugly5508ugly6149ugly6003ugly5583ugly486ugly941ugly955ugly906startup_seg_m_a9a10f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly5599ugly5532ugly6001ugly5463ugly6201ugly5592ugly605ugly882ugly124ugly675move_seg_o1_116a_0_34_seg_o1_115c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daew7)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1))
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
  ugly5600ugly6104ugly5757ugly5563ugly6135ugly5612ugly367ugly925ugly657ugly118move_seg_o1_115b_0_60_seg_p115_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_p115_0_76)
       (not_blocked seg_p115_0_76 airplane_cfbeg)
       (not_blocked seg_p115_0_76 airplane_daewh)
       (not_blocked seg_p115_0_76 airplane_daew3)
       (not_blocked seg_p115_0_76 airplane_daew7)
       (not_blocked seg_p115_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_115b_0_60))
       (not_occupied seg_o1_115b_0_60) (not (at-segment ?a seg_o1_115b_0_60))
       (occupied seg_p115_0_76) (not (not_occupied seg_p115_0_76))
       (blocked seg_p115_0_76 ?a) (not (not_blocked seg_p115_0_76 ?a))
       (at-segment ?a seg_p115_0_76) (not (blocked seg_o1_115a_0_34 ?a))
       (not_blocked seg_o1_115a_0_34 ?a) (not (blocked seg_o1_115c_0_34 ?a))
       (not_blocked seg_o1_115c_0_34 ?a)))
 (:action
  ugly5601ugly5336ugly5674ugly5581ugly5988ugly6023ugly792ugly736ugly563ugly377park_seg_p111_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_111b_0_60 ?a)) (not_blocked seg_o1_111b_0_60 ?a)))
 (:action
  ugly5602ugly5429ugly5357ugly6108ugly5590ugly5512ugly153ugly117ugly895ugly216startup_seg_p109_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p109_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5603ugly6089ugly5832ugly5976ugly5260ugly5390ugly870ugly500ugly404ugly339startup_seg_p104_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5604ugly5705ugly5334ugly6127ugly5613ugly6078ugly599ugly262ugly301ugly847move_seg_o1_117b_0_60_seg_p117_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_p117_0_76)
       (not_blocked seg_p117_0_76 airplane_cfbeg)
       (not_blocked seg_p117_0_76 airplane_daewh)
       (not_blocked seg_p117_0_76 airplane_daew3)
       (not_blocked seg_p117_0_76 airplane_daew7)
       (not_blocked seg_p117_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_117b_0_60))
       (not_occupied seg_o1_117b_0_60) (not (at-segment ?a seg_o1_117b_0_60))
       (occupied seg_p117_0_76) (not (not_occupied seg_p117_0_76))
       (blocked seg_p117_0_76 ?a) (not (not_blocked seg_p117_0_76 ?a))
       (at-segment ?a seg_p117_0_76) (not (blocked seg_o1_117a_0_34 ?a))
       (not_blocked seg_o1_117a_0_34 ?a) (not (blocked seg_o1_117c_0_34 ?a))
       (not_blocked seg_o1_117c_0_34 ?a)))
 (:action
  ugly5605ugly5698ugly6114ugly5875ugly5409ugly5518ugly523ugly467ugly515ugly727move_seg_o1_118a_0_34_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daew7)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
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
  ugly5606ugly6100ugly5834ugly5777ugly5692ugly6062ugly305ugly48ugly916ugly217startup_seg_m_a4d_0_60_south_medium
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
  ugly5607ugly5724ugly5328ugly5461ugly5577ugly6140ugly586ugly214ugly499ugly287startup_seg_o1_117a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly5608ugly6016ugly5358ugly5702ugly5831ugly5273ugly720ugly647ugly374ugly413startup_seg_n_n2a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly5609ugly5398ugly5549ugly6110ugly5725ugly5290ugly124ugly675ugly275ugly838park_seg_p103_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))))
 (:action
  ugly5610ugly5265ugly5661ugly5270ugly5977ugly5439ugly114ugly628ugly820ugly876move_seg_w1_c2c_0_34_seg_w1_151a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daew7)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1))
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
  ugly5611ugly5946ugly6086ugly6188ugly5713ugly5478ugly665ugly41ugly59ugly643move_seg_o1_110c_0_34_seg_o1_111a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_110c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daew7)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1))
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
  ugly5612ugly5616ugly5524ugly5559ugly5726ugly5945ugly678ugly744ugly132ugly91startup_seg_w1_161c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a))))
 (:action
  ugly5613ugly6078ugly5848ugly5475ugly5727ugly5305ugly156ugly144ugly844ugly431move_seg_o1_110d_0_45_seg_o1_110c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110d_0_45) (not_occupied seg_o1_110c_0_34)
       (not_blocked seg_o1_110c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_110c_0_34 airplane_daewh)
       (not_blocked seg_o1_110c_0_34 airplane_daew3)
       (not_blocked seg_o1_110c_0_34 airplane_daew7)
       (not_blocked seg_o1_110c_0_34 airplane_cfbe1)
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
  ugly5614ugly5814ugly5466ugly5427ugly6028ugly5333ugly777ugly445ugly910ugly361move_seg_o1_109d_0_45_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daew7)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
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
  ugly5615ugly5379ugly5389ugly6065ugly5691ugly5788ugly620ugly443ugly337ugly186startup_seg_o1_118c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a))))
 (:action
  ugly5616ugly5524ugly5559ugly5726ugly5945ugly5927ugly946ugly343ugly763ugly44startup_seg_08l_a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a10a_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly5617ugly5904ugly5436ugly6153ugly5339ugly5755ugly450ugly489ugly409ugly334startup_seg_c4_s6a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly5618ugly5318ugly5272ugly5497ugly5440ugly5586ugly67ugly332ugly154ugly475startup_seg_w1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly5619ugly5645ugly6024ugly5792ugly5565ugly5609ugly149ugly947ugly516ugly206startup_seg_o1_117c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_118a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a))))
 (:action
  ugly5620ugly5610ugly5265ugly5661ugly5270ugly5977ugly190ugly125ugly438ugly707startup_seg_p110_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p110_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5621ugly5263ugly5558ugly5340ugly5483ugly5415ugly83ugly3ugly765ugly623park_seg_p131_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p131_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p131_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)))
 (:action
  ugly5622ugly5580ugly5939ugly5605ugly5698ugly6114ugly626ugly693ugly808ugly954startup_seg_p119_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)
       (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly5623ugly5445ugly5862ugly5615ugly5379ugly5389ugly816ugly888ugly22ugly414startup_seg_o1_118b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118b_0_60)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly5624ugly6008ugly6052ugly6082ugly5386ugly5679ugly676ugly77ugly835ugly552move_seg_o1_c4c_0_80_seg_c4_s6a_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c4c_0_80) (not_occupied seg_c4_s6a_0_80)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbeg)
       (not_blocked seg_c4_s6a_0_80 airplane_daewh)
       (not_blocked seg_c4_s6a_0_80 airplane_daew3)
       (not_blocked seg_c4_s6a_0_80 airplane_daew7)
       (not_blocked seg_c4_s6a_0_80 airplane_cfbe1))
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
  ugly5625ugly5377ugly6027ugly6105ugly5774ugly6067ugly795ugly769ugly706ugly495startup_seg_m_a6a8b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8c_0_75 ?a)
       (not (not_blocked seg_m_a6a8c_0_75 ?a))))
 (:action
  ugly5626ugly6081ugly5885ugly5548ugly5496ugly5275ugly407ugly6ugly185ugly929startup_seg_w1_161c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161c_0_34)
       (not_occupied seg_w1_162a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a))))
 (:action
  ugly5627ugly5993ugly5506ugly6096ugly5803ugly6087ugly463ugly422ugly248ugly601startup_seg_n_a9a10g_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10f_0_75 ?a)
       (not (not_blocked seg_n_a9a10f_0_75 ?a))))
 (:action
  ugly5628ugly5509ugly5416ugly5286ugly5562ugly5494ugly497ugly715ugly266ugly827park_seg_p142_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p142_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p142_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_142b_0_45 ?a)) (not_blocked seg_w1_142b_0_45 ?a)))
 (:action
  ugly5629ugly6054ugly6029ugly5393ugly5849ugly6071ugly352ugly631ugly448ugly645startup_seg_n_a4a7a_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7a_0_115)
       (not_occupied seg_n_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7b_0_75 ?a)
       (not (not_blocked seg_n_a4a7b_0_75 ?a))))
 (:action
  ugly5630ugly6034ugly5663ugly5399ugly5287ugly5733ugly104ugly369ugly600ugly673pushback_seg_o1_c1b_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daew7)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1))
  :effect
  (and (not (occupied seg_o1_c1b_0_34)) (not_occupied seg_o1_c1b_0_34)
       (not (blocked seg_o1_c1b_0_34 ?a)) (not_blocked seg_o1_c1b_0_34 ?a)
       (not (at-segment ?a seg_o1_c1b_0_34)) (occupied seg_o1_102a_0_34)
       (not (not_occupied seg_o1_102a_0_34)) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (at-segment ?a seg_o1_102a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly5631ugly5430ugly5266ugly5655ugly5380ugly5804ugly862ugly702ugly211ugly814startup_seg_w1_164b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_p164_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p164_0_75 ?a)
       (not (not_blocked seg_p164_0_75 ?a))))
 (:action
  ugly5632ugly5660ugly5948ugly5754ugly5488ugly6045ugly474ugly202ugly310ugly90startup_seg_w1_153b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153b_0_45)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly5633ugly5898ugly5778ugly5604ugly5705ugly5334ugly878ugly182ugly197ugly74move_seg_a2_c_0_100_seg_a2_b_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_c_0_100) (not_occupied seg_a2_b_0_90)
       (not_blocked seg_a2_b_0_90 airplane_cfbeg)
       (not_blocked seg_a2_b_0_90 airplane_daewh)
       (not_blocked seg_a2_b_0_90 airplane_daew3)
       (not_blocked seg_a2_b_0_90 airplane_daew7)
       (not_blocked seg_a2_b_0_90 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_c_0_100))
       (not_occupied seg_a2_c_0_100) (not (at-segment ?a seg_a2_c_0_100))
       (occupied seg_a2_b_0_90) (not (not_occupied seg_a2_b_0_90))
       (blocked seg_a2_b_0_90 ?a) (not (not_blocked seg_a2_b_0_90 ?a))
       (at-segment ?a seg_a2_b_0_90) (not (blocked seg_n_a2a_0_60 ?a))
       (not_blocked seg_n_a2a_0_60 ?a)))
 (:action
  ugly5634ugly5608ugly6016ugly5358ugly5702ugly5831ugly24ugly210ugly115ugly857move_seg_w1_162a_0_34_seg_w1_162b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162b_0_45)
       (not_blocked seg_w1_162b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_162b_0_45 airplane_daewh)
       (not_blocked seg_w1_162b_0_45 airplane_daew3)
       (not_blocked seg_w1_162b_0_45 airplane_daew7)
       (not_blocked seg_w1_162b_0_45 airplane_cfbe1)
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
  ugly5635ugly5657ugly6154ugly6101ugly5952ugly5627ugly744ugly132ugly91ugly427startup_seg_m_a6a8e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8e_0_75)
       (not_occupied seg_m_a6a8d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8d_0_75 ?a)
       (not (not_blocked seg_m_a6a8d_0_75 ?a))))
 (:action
  ugly5636ugly5633ugly5898ugly5778ugly5604ugly5705ugly85ugly267ugly856ugly627startup_seg_w1_c2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2a_0_60)
       (not_occupied seg_w1_c2b_0_60) (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a)) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly5637ugly5536ugly5950ugly5793ugly5341ugly6178ugly687ugly286ugly346ugly86move_seg_a2_b_0_90_seg_a2_a_0_90_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_b_0_90) (not_occupied seg_a2_a_0_90)
       (not_blocked seg_a2_a_0_90 airplane_cfbeg)
       (not_blocked seg_a2_a_0_90 airplane_daewh)
       (not_blocked seg_a2_a_0_90 airplane_daew3)
       (not_blocked seg_a2_a_0_90 airplane_daew7)
       (not_blocked seg_a2_a_0_90 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_b_0_90))
       (not_occupied seg_a2_b_0_90) (not (at-segment ?a seg_a2_b_0_90))
       (occupied seg_a2_a_0_90) (not (not_occupied seg_a2_a_0_90))
       (blocked seg_a2_a_0_90 ?a) (not (not_blocked seg_a2_a_0_90 ?a))
       (at-segment ?a seg_a2_a_0_90) (not (blocked seg_a2_c_0_100 ?a))
       (not_blocked seg_a2_c_0_100 ?a)))
 (:action
  ugly5638ugly5811ugly5448ugly5646ugly6106ugly5407ugly811ugly56ugly683ugly587startup_seg_n_a4c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4c_0_60)
       (not_occupied seg_n_a4a_0_60) (not_occupied seg_n_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a)) (blocked seg_n_a4b_0_60 ?a)
       (not (not_blocked seg_n_a4b_0_60 ?a))))
 (:action
  ugly5639ugly6191ugly5666ugly5397ugly5433ugly5903ugly786ugly902ugly891ugly61startup_seg_w1_143a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_143b_0_45) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143b_0_45 ?a)
       (not (not_blocked seg_w1_143b_0_45 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly5640ugly6005ugly5529ugly5460ugly5274ugly5884ugly731ugly204ugly701ugly666park_seg_p117_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_117b_0_60 ?a)) (not_blocked seg_o1_117b_0_60 ?a)))
 (:action
  ugly5641ugly5920ugly6036ugly5760ugly6094ugly6189ugly243ugly796ugly660ugly181move_seg_n_a2a3f_0_115_seg_n_a2a3e_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3f_0_115) (not_occupied seg_n_a2a3e_0_75)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3e_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3e_0_75 airplane_daew7)
       (not_blocked seg_n_a2a3e_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3f_0_115))
       (not_occupied seg_n_a2a3f_0_115) (not (at-segment ?a seg_n_a2a3f_0_115))
       (occupied seg_n_a2a3e_0_75) (not (not_occupied seg_n_a2a3e_0_75))
       (blocked seg_n_a2a3e_0_75 ?a) (not (not_blocked seg_n_a2a3e_0_75 ?a))
       (at-segment ?a seg_n_a2a3e_0_75) (not (blocked seg_n_a3d_0_60 ?a))
       (not_blocked seg_n_a3d_0_60 ?a)))
 (:action
  ugly5642ugly5572ugly5465ugly5469ugly5372ugly5857ugly394ugly335ugly843ugly390park_seg_p102_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_102b_0_60 ?a)) (not_blocked seg_o1_102b_0_60 ?a)))
 (:action
  ugly5643ugly5424ugly5360ugly5636ugly5633ugly5898ugly529ugly449ugly881ugly534move_seg_o1_117c_0_34_seg_o1_118a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_118a_0_34)
       (not_blocked seg_o1_118a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118a_0_34 airplane_daewh)
       (not_blocked seg_o1_118a_0_34 airplane_daew3)
       (not_blocked seg_o1_118a_0_34 airplane_daew7)
       (not_blocked seg_o1_118a_0_34 airplane_cfbe1))
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
  ugly5644ugly5574ugly5550ugly6182ugly5652ugly6155ugly772ugly852ugly264ugly370startup_seg_w1_161b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly5645ugly6024ugly5792ugly5565ugly5609ugly5398ugly300ugly482ugly863ugly96startup_seg_m_a9b_0_60_south_medium
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
  ugly5646ugly6106ugly5407ugly6060ugly5682ugly5796ugly757ugly658ugly368ugly280startup_seg_m_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6c_0_60)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly5647ugly6004ugly5449ugly6173ugly6126ugly5487ugly318ugly659ugly875ugly354startup_seg_w1_c3c_0_48_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a))))
 (:action
  ugly5648ugly5295ugly5620ugly5610ugly5265ugly5661ugly21ugly194ugly444ugly754startup_seg_m_a3a4f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4f_0_115)
       (not_occupied seg_m_a4d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4d_0_60 ?a)
       (not (not_blocked seg_m_a4d_0_60 ?a))))
 (:action
  ugly5649ugly5891ugly5744ugly5781ugly6022ugly5584ugly460ugly30ugly68ugly24move_seg_o1_104a_0_34_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daew7)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
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
  ugly5650ugly5653ugly5457ugly6138ugly6053ugly5538ugly758ugly72ugly851ugly618startup_seg_n_a6a8f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8f_0_75)
       (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly5651ugly6185ugly5828ugly5406ugly5721ugly5719ugly590ugly103ugly778ugly49startup_seg_w1_154a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_154b_0_45) (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a)) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly5652ugly6155ugly6021ugly5560ugly5991ugly6069ugly517ugly694ugly871ugly201startup_seg_n_a2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2b_0_60)
       (not_occupied seg_n_a2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a_0_60 ?a)
       (not (not_blocked seg_n_a2a_0_60 ?a))))
 (:action
  ugly5653ugly5457ugly6138ugly6053ugly5538ugly6007ugly664ugly112ugly17ugly395startup_seg_m_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10b_0_75 ?a)
       (not (not_blocked seg_m_a9a10b_0_75 ?a))))
 (:action
  ugly5654ugly5337ugly6159ugly5417ugly5813ugly5350ugly521ugly578ugly29ugly650startup_seg_o1_c3a_0_34_south_medium
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
  ugly5655ugly5380ugly5804ugly6111ugly5414ugly6177ugly718ugly196ugly750ugly810move_seg_p141_0_75_seg_w1_141b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p141_0_75) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daew7)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p141_0_75))
       (not_occupied seg_p141_0_75) (not (at-segment ?a seg_p141_0_75))
       (occupied seg_w1_141b_0_45) (not (not_occupied seg_w1_141b_0_45))
       (blocked seg_w1_141b_0_45 ?a) (not (not_blocked seg_w1_141b_0_45 ?a))
       (at-segment ?a seg_w1_141b_0_45)))
 (:action
  ugly5656ugly5282ugly6070ugly5706ugly6162ugly5320ugly488ugly355ugly100ugly84startup_seg_w1_164b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164b_0_45)
       (not_occupied seg_w1_164a_0_34) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164a_0_34 ?a)
       (not (not_blocked seg_w1_164a_0_34 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly5657ugly6154ugly6101ugly5952ugly5627ugly5993ugly257ugly802ugly878ugly182move_seg_p104_0_76_seg_o1_104b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p104_0_76) (not_occupied seg_o1_104b_0_60)
       (not_blocked seg_o1_104b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104b_0_60 airplane_daewh)
       (not_blocked seg_o1_104b_0_60 airplane_daew3)
       (not_blocked seg_o1_104b_0_60 airplane_daew7)
       (not_blocked seg_o1_104b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p104_0_76))
       (not_occupied seg_p104_0_76) (not (at-segment ?a seg_p104_0_76))
       (occupied seg_o1_104b_0_60) (not (not_occupied seg_o1_104b_0_60))
       (blocked seg_o1_104b_0_60 ?a) (not (not_blocked seg_o1_104b_0_60 ?a))
       (at-segment ?a seg_o1_104b_0_60)))
 (:action
  ugly5658ugly5923ugly5844ugly5514ugly5489ugly5851ugly897ugly228ugly376ugly815startup_seg_m_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4b_0_60)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly5659ugly6047ugly5634ugly5608ugly6016ugly5358ugly453ugly842ugly149ugly947startup_seg_o1_c2d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2d_0_60)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly5660ugly5948ugly5754ugly5488ugly6045ugly5723ugly127ugly352ugly631ugly448startup_seg_o1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4c_0_80 ?a)
       (not (not_blocked seg_o1_c4c_0_80 ?a))))
 (:action
  ugly5661ugly5270ugly5977ugly5439ugly5363ugly6059ugly203ugly723ugly384ugly747move_seg_o1_c3a_0_34_seg_o1_111c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daew7)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1))
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
  ugly5662ugly5283ugly6123ugly6142ugly5690ugly5588ugly705ugly159ugly107ugly193move_seg_o1_c1b_0_34_seg_o1_c1c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1b_0_34) (not_occupied seg_o1_c1c_0_80)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c1c_0_80 airplane_daewh)
       (not_blocked seg_o1_c1c_0_80 airplane_daew3)
       (not_blocked seg_o1_c1c_0_80 airplane_daew7)
       (not_blocked seg_o1_c1c_0_80 airplane_cfbe1)
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
  ugly5663ugly5399ugly5287ugly5733ugly5353ugly5858ugly462ugly114ugly628ugly820startup_seg_n_a4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4b_0_60)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly5664ugly5349ugly5906ugly5659ugly6047ugly5634ugly359ugly221ugly848ugly512startup_seg_m_a9c_0_60_south_medium
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
  ugly5665ugly6061ugly5765ugly5718ugly5910ugly5979ugly691ugly70ugly590ugly103startup_seg_m_a6a8f_0_115_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8c_0_60 ?a)
       (not (not_blocked seg_m_a8c_0_60 ?a))))
 (:action
  ugly5666ugly5397ugly5433ugly5903ugly6035ugly6137ugly625ugly31ugly634ugly279move_seg_w1_151b_0_45_seg_p151_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_p151_0_75)
       (not_blocked seg_p151_0_75 airplane_cfbeg)
       (not_blocked seg_p151_0_75 airplane_daewh)
       (not_blocked seg_p151_0_75 airplane_daew3)
       (not_blocked seg_p151_0_75 airplane_daew7)
       (not_blocked seg_p151_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_151b_0_45))
       (not_occupied seg_w1_151b_0_45) (not (at-segment ?a seg_w1_151b_0_45))
       (occupied seg_p151_0_75) (not (not_occupied seg_p151_0_75))
       (blocked seg_p151_0_75 ?a) (not (not_blocked seg_p151_0_75 ?a))
       (at-segment ?a seg_p151_0_75) (not (blocked seg_w1_151a_0_34 ?a))
       (not_blocked seg_w1_151a_0_34 ?a) (not (blocked seg_w1_151c_0_34 ?a))
       (not_blocked seg_w1_151c_0_34 ?a)))
 (:action
  ugly5667ugly5622ugly5580ugly5939ugly5605ugly5698ugly865ugly684ugly190ugly125park_seg_p162_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))))
 (:action
  ugly5668ugly5383ugly5504ugly5408ugly5621ugly5263ugly309ugly87ugly126ugly602park_seg_p115_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p115_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p115_0_76) (not (is-moving ?a))))
 (:action
  ugly5669ugly5730ugly5447ugly5816ugly5672ugly5575ugly400ugly585ugly737ugly761startup_seg_w1_143b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_p143_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p143_0_75 ?a)
       (not (not_blocked seg_p143_0_75 ?a))))
 (:action
  ugly5670ugly6175ugly5743ugly5710ugly5917ugly6107ugly473ugly82ugly23ugly867move_seg_n_n2b_0_60_seg_n2_0_108_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_n2b_0_60) (not_occupied seg_n2_0_108)
       (not_blocked seg_n2_0_108 airplane_cfbeg)
       (not_blocked seg_n2_0_108 airplane_daewh)
       (not_blocked seg_n2_0_108 airplane_daew3)
       (not_blocked seg_n2_0_108 airplane_daew7)
       (not_blocked seg_n2_0_108 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2b_0_60))
       (not_occupied seg_n_n2b_0_60) (not (at-segment ?a seg_n_n2b_0_60))
       (occupied seg_n2_0_108) (not (not_occupied seg_n2_0_108))
       (blocked seg_n2_0_108 ?a) (not (not_blocked seg_n2_0_108 ?a))
       (at-segment ?a seg_n2_0_108) (not (blocked seg_n_n2a_0_60 ?a))
       (not_blocked seg_n_n2a_0_60 ?a) (not (blocked seg_n_n2c_0_60 ?a))
       (not_blocked seg_n_n2c_0_60 ?a)))
 (:action
  ugly5671ugly5455ugly5863ugly5934ugly6208ugly5552ugly848ugly512ugly805ugly544startup_seg_n_n2a4d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4d_0_75)
       (not_occupied seg_n_n2a4e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4e_0_75 ?a)
       (not (not_blocked seg_n_n2a4e_0_75 ?a))))
 (:action
  ugly5672ugly5575ugly5649ugly5891ugly5744ugly5781ugly773ugly75ugly330ugly716park_seg_p133_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))))
 (:action
  ugly5673ugly6198ugly5412ugly5490ugly5431ugly5302ugly76ugly484ugly579ugly135startup_seg_08l_a4c_0_161_245_south_medium
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
  ugly5674ugly5581ugly5988ugly6023ugly6041ugly5992ugly954ugly651ugly605ugly882move_seg_w1_153b_0_45_seg_p153_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153b_0_45) (not_occupied seg_p153_0_75)
       (not_blocked seg_p153_0_75 airplane_cfbeg)
       (not_blocked seg_p153_0_75 airplane_daewh)
       (not_blocked seg_p153_0_75 airplane_daew3)
       (not_blocked seg_p153_0_75 airplane_daew7)
       (not_blocked seg_p153_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_153b_0_45))
       (not_occupied seg_w1_153b_0_45) (not (at-segment ?a seg_w1_153b_0_45))
       (occupied seg_p153_0_75) (not (not_occupied seg_p153_0_75))
       (blocked seg_p153_0_75 ?a) (not (not_blocked seg_p153_0_75 ?a))
       (at-segment ?a seg_p153_0_75) (not (blocked seg_w1_153a_0_34 ?a))
       (not_blocked seg_w1_153a_0_34 ?a) (not (blocked seg_w1_153c_0_34 ?a))
       (not_blocked seg_w1_153c_0_34 ?a)))
 (:action
  ugly5675ugly5482ugly6051ugly5842ugly5867ugly5617ugly655ugly345ugly598ugly560startup_seg_n_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9d_0_75 ?a)
       (not (not_blocked seg_n_a8a9d_0_75 ?a))))
 (:action
  ugly5676ugly5464ugly5670ugly6175ugly5743ugly5710ugly668ugly532ugly89ugly542startup_seg_o1_103c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103c_0_34)
       (not_occupied seg_o1_104a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a))))
 (:action
  ugly5677ugly6152ugly5527ugly5894ugly5843ugly5821ugly899ugly730ugly926ugly76startup_seg_o1_102c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_103a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103a_0_34 ?a)
       (not (not_blocked seg_o1_103a_0_34 ?a))))
 (:action
  ugly5678ugly5748ugly6064ugly5503ugly5278ugly5784ugly738ugly766ugly215ugly868startup_seg_o1_108b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_108b_0_60)
       (not_occupied seg_p108_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p108_0_76 ?a)
       (not (not_blocked seg_p108_0_76 ?a))))
 (:action
  ugly5679ugly5925ugly6055ugly5999ugly5438ugly5807ugly504ugly903ugly708ugly175move_seg_w1_154c_0_34_seg_w1_154a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_154c_0_34) (not_occupied seg_w1_154a_0_34)
       (not_blocked seg_w1_154a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_154a_0_34 airplane_daewh)
       (not_blocked seg_w1_154a_0_34 airplane_daew3)
       (not_blocked seg_w1_154a_0_34 airplane_daew7)
       (not_blocked seg_w1_154a_0_34 airplane_cfbe1)
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
  ugly5680ugly5306ugly5799ugly5887ugly5930ugly5687ugly749ugly521ugly578ugly29startup_seg_p119_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p119_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5681ugly6079ugly6013ugly5345ugly5978ugly5359ugly219ugly85ugly267ugly856startup_seg_o1_117c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117c_0_34)
       (not_occupied seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a)) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a))))
 (:action
  ugly5682ugly5796ugly6006ugly5861ugly5736ugly5533ugly569ugly469ugly295ugly54startup_seg_p108_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)
       (not_occupied seg_o1_108b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108b_0_60 ?a)
       (not (not_blocked seg_o1_108b_0_60 ?a))))
 (:action
  ugly5683ugly5404ugly6145ugly5714ugly5317ugly5689ugly584ugly883ugly131ugly930startup_seg_m_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly5684ugly6030ugly5893ugly5310ugly5352ugly5624ugly759ugly739ugly2ugly859startup_seg_m_a6a8b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8b_0_75)
       (not_occupied seg_m_a6a8a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8a_0_75 ?a)
       (not (not_blocked seg_m_a6a8a_0_75 ?a))))
 (:action
  ugly5685ugly6056ugly5252ugly5598ugly5344ugly5508ugly900ugly768ugly66ugly212startup_seg_n_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10d_0_75)
       (not_occupied seg_n_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10c_0_75 ?a)
       (not (not_blocked seg_n_a9a10c_0_75 ?a))))
 (:action
  ugly5686ugly5680ugly5306ugly5799ugly5887ugly5930ugly438ugly707ugly566ugly348pushback_seg_p101_0_76_seg_o1_c1a_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1))
  :effect
  (and (not (occupied seg_p101_0_76)) (not_occupied seg_p101_0_76)
       (not (blocked seg_p101_0_76 ?a)) (not_blocked seg_p101_0_76 ?a)
       (not (at-segment ?a seg_p101_0_76)) (occupied seg_o1_c1a_0_60)
       (not (not_occupied seg_o1_c1a_0_60)) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly5687ugly5998ugly5822ugly5968ugly5897ugly5369ugly828ugly218ugly551ugly382startup_seg_n_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a9a10g_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10g_0_75 ?a)
       (not (not_blocked seg_n_a9a10g_0_75 ?a))))
 (:action
  ugly5688ugly5371ugly5668ugly5383ugly5504ugly5408ugly372ugly473ugly82ugly23startup_seg_n_n2a4a_0_70_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4a_0_70)
       (not_occupied seg_n_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a))))
 (:action
  ugly5689ugly5833ugly6118ugly5362ugly5294ugly6092ugly662ugly344ugly689ugly347move_seg_n_a3c_0_60_seg_n_a3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a3c_0_60) (not_occupied seg_n_a3d_0_60)
       (not_blocked seg_n_a3d_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3d_0_60 airplane_daewh)
       (not_blocked seg_n_a3d_0_60 airplane_daew3)
       (not_blocked seg_n_a3d_0_60 airplane_daew7)
       (not_blocked seg_n_a3d_0_60 airplane_cfbe1)
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
  ugly5690ugly5588ugly5954ugly5537ugly5531ugly6095ugly623ugly539ugly586ugly214startup_seg_p103_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p103_0_76)
       (not_occupied seg_o1_103b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a))))
 (:action
  ugly5691ugly5788ugly5869ugly5747ugly5957ugly5880ugly842ugly149ugly947ugly516move_seg_o1_c2b_0_60_seg_o1_c2d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daew7)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1)
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
  ugly5692ugly6062ugly5554ugly5599ugly5532ugly6001ugly214ugly499ugly287ugly622move_seg_08l_a7b_0_161_245_seg_a8_a_0_157_785_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a7b_0_161_245) (not_occupied seg_a8_a_0_157_785)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbeg)
       (not_blocked seg_a8_a_0_157_785 airplane_daewh)
       (not_blocked seg_a8_a_0_157_785 airplane_daew3)
       (not_blocked seg_a8_a_0_157_785 airplane_daew7)
       (not_blocked seg_a8_a_0_157_785 airplane_cfbe1))
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
  ugly5693ugly5717ugly5761ugly5262ugly5418ugly5794ugly491ugly314ugly83ugly3startup_seg_m_a6a8a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a_0_60 ?a)
       (not (not_blocked seg_m_a6a_0_60 ?a))))
 (:action
  ugly5694ugly5502ugly6156ugly6171ugly5695ugly5335ugly185ugly929ugly426ugly284startup_seg_m_a4a_0_120_934_south_medium
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
  ugly5695ugly5335ugly5434ugly6040ugly5499ugly6109ugly765ugly623ugly539ugly586move_seg_o1_108b_0_60_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
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
  ugly5696ugly5896ugly5947ugly5973ugly6131ugly5443ugly63ugly834ugly166ugly662startup_seg_p141_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5697ugly5628ugly5509ugly5416ugly5286ugly5562ugly245ugly745ugly462ugly114park_seg_p117_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p117_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p117_0_76) (not (is-moving ?a))))
 (:action
  ugly5698ugly6114ugly5875ugly5409ugly5518ugly5772ugly901ugly351ugly670ugly453startup_seg_n_a2a3a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3a_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly5699ugly5749ugly5771ugly5307ugly5441ugly5847ugly116ugly98ugly46ugly222move_seg_w1_c4a_0_34_seg_w1_164c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c4a_0_34) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daew7)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_c4a_0_34))
       (not_occupied seg_w1_c4a_0_34) (not (at-segment ?a seg_w1_c4a_0_34))
       (occupied seg_w1_164c_0_34) (not (not_occupied seg_w1_164c_0_34))
       (blocked seg_w1_164c_0_34 ?a) (not (not_blocked seg_w1_164c_0_34 ?a))
       (at-segment ?a seg_w1_164c_0_34) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_w1_c4b_0_60 ?a))
       (not_blocked seg_w1_c4b_0_60 ?a)))
 (:action
  ugly5700ugly5707ugly5658ugly5923ugly5844ugly5514ugly240ugly940ugly537ugly380move_seg_o1_c3b_0_60_seg_p112_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_p112_0_76)
       (not_blocked seg_p112_0_76 airplane_cfbeg)
       (not_blocked seg_p112_0_76 airplane_daewh)
       (not_blocked seg_p112_0_76 airplane_daew3)
       (not_blocked seg_p112_0_76 airplane_daew7)
       (not_blocked seg_p112_0_76 airplane_cfbe1))
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
  ugly5701ugly5602ugly5429ugly5357ugly6108ugly5590ugly263ugly722ugly62ugly292move_seg_w1_162b_0_45_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daew7)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
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
  ugly5702ugly5831ugly5273ugly5969ugly5293ugly5346ugly455ugly313ugly841ugly734startup_seg_m_a9a10e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10e_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly5703ugly5681ugly6079ugly6013ugly5345ugly5978ugly110ugly682ugly858ugly321startup_seg_m_a8d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8d_0_120_934)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly5704ugly5729ugly5823ugly5597ugly6084ugly5701ugly353ugly265ugly303ugly653startup_seg_w1_141a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141a_0_34)
       (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly5705ugly5334ugly6127ugly5613ugly6078ugly5848ugly226ugly886ugly156ugly144startup_seg_n_a2a3b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3b_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly5706ugly6162ugly5320ugly5737ugly5289ugly5688ugly122ugly340ugly812ugly199startup_seg_n_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly5707ugly5658ugly5923ugly5844ugly5514ugly5489ugly602ugly608ugly97ugly40startup_seg_w1_162b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162b_0_45)
       (not_occupied seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162a_0_34 ?a)
       (not (not_blocked seg_w1_162a_0_34 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly5708ugly5665ugly6061ugly5765ugly5718ugly5910ugly730ugly926ugly76ugly484startup_seg_o1_111d_0_45_south_medium
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
  ugly5709ugly5308ugly5684ugly6030ugly5893ugly5310ugly103ugly778ugly49ugly405startup_seg_w1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly5710ugly5917ugly6107ugly5722ugly5970ugly5525ugly218ugly551ugly382ugly950startup_seg_n_a9a10a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a))))
 (:action
  ugly5711ugly6165ugly5432ugly5510ugly5809ugly5892ugly307ugly899ugly730ugly926move_seg_c1_n2c_0_60_seg_w1_c1b_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c1_n2c_0_60) (not_occupied seg_w1_c1b_0_60)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1b_0_60 airplane_daewh)
       (not_blocked seg_w1_c1b_0_60 airplane_daew3)
       (not_blocked seg_w1_c1b_0_60 airplane_daew7)
       (not_blocked seg_w1_c1b_0_60 airplane_cfbe1))
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
  ugly5712ugly5566ugly5626ugly6081ugly5885ugly5548ugly247ugly451ugly522ugly365pushback_seg_o1_118c_0_34_seg_o1_c4a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_118c_0_34) (not_occupied seg_o1_c4a_0_34)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c4a_0_34 airplane_daewh)
       (not_blocked seg_o1_c4a_0_34 airplane_daew3)
       (not_blocked seg_o1_c4a_0_34 airplane_daew7)
       (not_blocked seg_o1_c4a_0_34 airplane_cfbe1))
  :effect
  (and (not (occupied seg_o1_118c_0_34)) (not_occupied seg_o1_118c_0_34)
       (not (blocked seg_o1_118c_0_34 ?a)) (not_blocked seg_o1_118c_0_34 ?a)
       (not (at-segment ?a seg_o1_118c_0_34)) (occupied seg_o1_c4a_0_34)
       (not (not_occupied seg_o1_c4a_0_34)) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (at-segment ?a seg_o1_c4a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly5713ugly5478ugly5914ugly5824ugly5495ugly6158ugly320ugly758ugly72ugly851park_seg_p116_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p116_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p116_0_76) (not (is-moving ?a))))
 (:action
  ugly5714ugly5317ugly5689ugly5833ugly6118ugly5362ugly45ugly861ugly440ugly203startup_seg_m_a4a7a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4b_0_60 ?a)
       (not (not_blocked seg_m_a4b_0_60 ?a))))
 (:action
  ugly5715ugly5734ugly5324ugly5313ugly6058ugly5959ugly209ugly924ugly109ugly417startup_seg_o1_108b_0_60_south_medium
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
  ugly5716ugly5864ugly5250ugly5685ugly6056ugly5252ugly349ugly189ugly385ugly142startup_seg_m_a8b_0_60_south_medium
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
  ugly5717ugly5761ugly5262ugly5418ugly5794ugly5740ugly794ugly555ugly256ugly243startup_seg_m_a8a9c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9c_0_75)
       (not_occupied seg_m_a8a9d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9d_0_85 ?a)
       (not (not_blocked seg_m_a8a9d_0_85 ?a))))
 (:action
  ugly5718ugly5910ugly5979ugly5940ugly5802ugly5995ugly689ugly347ugly10ugly34startup_seg_m_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6b_0_75)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly5719ugly5839ugly5382ugly5251ugly5570ugly6134ugly868ugly526ugly238ugly169startup_seg_w1_162a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_162b_0_45) (not_occupied seg_w1_162c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_162b_0_45 ?a)
       (not (not_blocked seg_w1_162b_0_45 ?a)) (blocked seg_w1_162c_0_34 ?a)
       (not (not_blocked seg_w1_162c_0_34 ?a))))
 (:action
  ugly5720ugly5520ugly5304ugly5962ugly5326ugly5669ugly481ugly141ugly461ugly779startup_seg_m_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly5721ugly5719ugly5839ugly5382ugly5251ugly5570ugly885ugly145ugly740ugly291move_seg_o1_115a_0_34_seg_o1_c3c_0_48_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew7)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1))
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
  ugly5722ugly5970ugly5525ugly5467ugly5845ugly5983ugly704ugly951ugly163ugly134startup_seg_n2_0_108_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_c1_n2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2a_0_60 ?a)
       (not (not_blocked seg_c1_n2a_0_60 ?a))))
 (:action
  ugly5723ugly5376ugly5331ugly5971ugly5277ugly5629ugly805ugly544ugly872ugly914move_seg_w1_c1c_0_34_seg_w1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c1c_0_34) (not_occupied seg_w1_c1a_0_60)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c1a_0_60 airplane_daewh)
       (not_blocked seg_w1_c1a_0_60 airplane_daew3)
       (not_blocked seg_w1_c1a_0_60 airplane_daew7)
       (not_blocked seg_w1_c1a_0_60 airplane_cfbe1)
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
  ugly5724ugly5328ugly5461ugly5577ugly6140ugly5835ugly177ugly853ugly518ugly655startup_seg_p141_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p141_0_75)
       (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly5725ugly5290ugly5373ugly5650ugly5653ugly5457ugly889ugly11ugly612ugly99startup_seg_o1_109c_0_34_south_medium
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
  ugly5726ugly5945ugly5927ugly6195ugly6046ugly5667ugly373ugly644ugly663ugly562startup_seg_a10_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_0_80)
       (not_occupied seg_a10_1_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_1_0_80 ?a)
       (not (not_blocked seg_a10_1_0_80 ?a))))
 (:action
  ugly5727ugly5305ugly5405ugly5846ugly5958ugly5361ugly943ugly767ugly915ugly52startup_seg_p104_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p104_0_76)
       (not_occupied seg_o1_104b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a))))
 (:action
  ugly5728ugly5476ugly6206ugly5677ugly6152ugly5527ugly645ugly880ugly123ugly272startup_seg_w1_152c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152c_0_34)
       (not_occupied seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a)) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a))))
 (:action
  ugly5729ugly5823ugly5597ugly6084ugly5701ugly5602ugly180ugly529ugly449ugly881startup_seg_p108_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p108_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5730ugly5447ugly5816ugly5672ugly5575ugly5649ugly642ugly726ugly932ugly721pushback_seg_o1_c1a_0_60_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1))
  :effect
  (and (not (occupied seg_o1_c1a_0_60)) (not_occupied seg_o1_c1a_0_60)
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)
       (not (at-segment ?a seg_o1_c1a_0_60)) (occupied seg_o1_c1b_0_34)
       (not (not_occupied seg_o1_c1b_0_34)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a)) (at-segment ?a seg_o1_c1b_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly5731ugly5820ugly5534ugly6125ugly5918ugly5731ugly571ugly688ugly379ugly541move_seg_n_a8a_0_60_seg_n_a8c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60)
       (not_blocked seg_n_a8c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8c_0_60 airplane_daewh)
       (not_blocked seg_n_a8c_0_60 airplane_daew3)
       (not_blocked seg_n_a8c_0_60 airplane_daew7)
       (not_blocked seg_n_a8c_0_60 airplane_cfbe1)
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
  ugly5732ugly5450ugly5798ugly5374ugly5644ugly5574ugly301ugly847ugly298ugly179startup_seg_m_a9a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a_0_60)
       (not_occupied seg_m_a9a10a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10a_0_75 ?a)
       (not (not_blocked seg_m_a9a10a_0_75 ?a))))
 (:action
  ugly5733ugly5353ugly5858ugly5711ugly6165ugly5432ugly261ugly703ugly793ugly938startup_seg_m_a8c_0_60_south_medium
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
  ugly5734ugly5324ugly5313ugly6058ugly5959ugly5458ugly232ugly234ugly458ugly911startup_seg_o1_110b_0_60_south_medium
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
  ugly5735ugly5281ugly5391ugly5493ugly6200ugly5593ugly736ugly563ugly377ugly581startup_seg_m_a3a_0_120_934_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_m_a3b_0_60) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly5736ugly5533ugly5818ugly5517ugly5484ugly5812ugly398ugly371ugly398ugly371startup_seg_w1_153c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_154a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a))))
 (:action
  ugly5737ugly5289ugly5688ugly5371ugly5668ugly5383ugly255ugly375ugly176ugly391startup_seg_a7_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_1_0_80_6226)
       (not_occupied seg_a7_a_0_156_924))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_a_0_156_924 ?a)
       (not (not_blocked seg_a7_a_0_156_924 ?a))))
 (:action
  ugly5738ugly5805ugly5751ugly5797ugly5631ugly5430ugly17ugly395ugly817ugly649startup_seg_08l_a4c_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4c_0_161_245)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly5739ugly5928ugly5513ugly5686ugly5680ugly5306ugly550ugly866ugly698ugly630park_seg_p107_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c2b_0_60 ?a)) (not_blocked seg_o1_c2b_0_60 ?a)))
 (:action
  ugly5740ugly6043ugly5780ugly6141ugly6032ugly5986ugly799ugly596ugly485ugly764park_seg_p153_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p153_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p153_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_153b_0_45 ?a)) (not_blocked seg_w1_153b_0_45 ?a)))
 (:action
  ugly5741ugly6083ugly5972ugly5651ugly6185ugly5828ugly157ugly513ugly782ugly609startup_seg_a4_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_a_0_157_785)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly5742ugly5300ugly5801ugly5618ugly5318ugly5272ugly248ugly601ugly949ugly437startup_seg_m_a8a9b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9b_0_75)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly5743ugly5710ugly5917ugly6107ugly5722ugly5970ugly276ugly887ugly122ugly340startup_seg_a9_b_0_159_512_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_m_a9d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9d_0_120_934 ?a)
       (not (not_blocked seg_m_a9d_0_120_934 ?a))))
 (:action
  ugly5744ugly5781ugly6022ugly5584ugly5709ugly5308ugly435ugly958ugly53ugly207startup_seg_a8_b_1_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly5745ugly5462ugly5314ugly5775ugly5676ugly5464ugly421ugly784ugly558ugly896startup_seg_n_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly5746ugly5470ugly5764ugly5343ugly5329ugly6139ugly871ugly201ugly839ugly171startup_seg_a9_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_08l_a9b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a9b_0_161_245 ?a)
       (not (not_blocked seg_08l_a9b_0_161_245 ?a))))
 (:action
  ugly5747ugly5957ugly5880ugly6091ugly5909ugly5522ugly518ugly655ugly345ugly598startup_seg_o1_110c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110c_0_34)
       (not_occupied seg_o1_111a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111a_0_34 ?a)
       (not (not_blocked seg_o1_111a_0_34 ?a))))
 (:action
  ugly5748ugly6064ugly5503ugly5278ugly5784ugly5987ugly771ugly599ugly262ugly301startup_seg_n_a2a3c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3b_0_75 ?a)
       (not (not_blocked seg_n_a2a3b_0_75 ?a))))
 (:action
  ugly5749ugly5771ugly5307ugly5441ugly5847ugly5365ugly853ugly518ugly655ugly345startup_seg_p112_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5750ugly5540ugly5288ugly6057ugly5571ugly6164ugly917ugly270ugly415ugly198startup_seg_o1_118a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a)) (blocked seg_o1_118c_0_34 ?a)
       (not (not_blocked seg_o1_118c_0_34 ?a))))
 (:action
  ugly5751ugly5797ugly5631ugly5430ugly5266ugly5655ugly131ugly930ugly829ugly931move_seg_08l_a7d_0_80_seg_08l_a7a_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7a_0_80)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a7a_0_80 airplane_daewh)
       (not_blocked seg_08l_a7a_0_80 airplane_daew3)
       (not_blocked seg_08l_a7a_0_80 airplane_daew7)
       (not_blocked seg_08l_a7a_0_80 airplane_cfbe1)
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
  ugly5752ugly6017ugly5926ugly5561ugly5284ugly5697ugly379ugly541ugly43ugly388move_seg_p108_0_76_seg_o1_108b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p108_0_76) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daew7)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p108_0_76))
       (not_occupied seg_p108_0_76) (not (at-segment ?a seg_p108_0_76))
       (occupied seg_o1_108b_0_60) (not (not_occupied seg_o1_108b_0_60))
       (blocked seg_o1_108b_0_60 ?a) (not (not_blocked seg_o1_108b_0_60 ?a))
       (at-segment ?a seg_o1_108b_0_60)))
 (:action
  ugly5753ugly6031ugly5285ugly5299ugly5641ugly5920ugly787ugly547ugly825ugly311move_seg_o1_109c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daew7)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1)
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
  ugly5754ugly5488ugly6045ugly5723ugly5376ugly5331ugly722ugly62ugly292ugly146move_seg_a8_a_0_157_785_seg_a8_b_1_0_79_7559_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_a_0_157_785) (not_occupied seg_a8_b_1_0_79_7559)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbeg)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daewh)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew3)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_daew7)
       (not_blocked seg_a8_b_1_0_79_7559 airplane_cfbe1))
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
  ugly5755ugly5699ugly5749ugly5771ugly5307ugly5441ugly598ugly560ugly928ugly525startup_seg_n_a7a6a_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly5756ugly5855ugly5956ugly5348ugly5881ugly5545ugly162ugly824ugly864ugly290move_seg_w1_152b_0_45_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daew7)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
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
  ugly5757ugly5563ugly6135ugly5612ugly5616ugly5524ugly310ugly90ugly397ugly102startup_seg_n_a6b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6b_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly5758ugly6160ugly5791ugly5868ugly5315ugly5473ugly370ugly425ugly577ugly953park_seg_p154_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p154_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p154_0_75) (not (is-moving ?a))))
 (:action
  ugly5759ugly6179ugly5840ugly5539ugly5888ugly5790ugly20ugly381ugly870ugly500startup_seg_w1_154a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154a_0_34)
       (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly5760ugly6094ugly6189ugly5492ugly5280ugly6098ugly789ugly505ugly15ugly412startup_seg_n_a7a6c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6c_0_75)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly5761ugly5262ugly5418ugly5794ugly5740ugly6043ugly531ugly167ugly326ugly849startup_seg_a3_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_b_0_159_512)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly5762ugly5907ugly6133ugly5759ugly6179ugly5840ugly290ugly110ugly682ugly858pushback_seg_p118_0_76_seg_o1_118b_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daew7)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1))
  :effect
  (and (not (occupied seg_p118_0_76)) (not_occupied seg_p118_0_76)
       (not (blocked seg_p118_0_76 ?a)) (not_blocked seg_p118_0_76 ?a)
       (not (at-segment ?a seg_p118_0_76)) (occupied seg_o1_118b_0_60)
       (not (not_occupied seg_o1_118b_0_60)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly5763ugly5553ugly5437ugly5671ugly5455ugly5863ugly685ugly611ugly209ugly924move_seg_p152_0_75_seg_w1_152b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p152_0_75) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daew7)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p152_0_75))
       (not_occupied seg_p152_0_75) (not (at-segment ?a seg_p152_0_75))
       (occupied seg_w1_152b_0_45) (not (not_occupied seg_w1_152b_0_45))
       (blocked seg_w1_152b_0_45 ?a) (not (not_blocked seg_w1_152b_0_45 ?a))
       (at-segment ?a seg_w1_152b_0_45)))
 (:action
  ugly5764ugly5343ugly5329ugly6139ugly6120ugly5268ugly179ugly800ugly296ugly153move_seg_p153_0_75_seg_w1_153b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p153_0_75) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daew7)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p153_0_75))
       (not_occupied seg_p153_0_75) (not (at-segment ?a seg_p153_0_75))
       (occupied seg_w1_153b_0_45) (not (not_occupied seg_w1_153b_0_45))
       (blocked seg_w1_153b_0_45 ?a) (not (not_blocked seg_w1_153b_0_45 ?a))
       (at-segment ?a seg_w1_153b_0_45)))
 (:action
  ugly5765ugly5718ugly5910ugly5979ugly5940ugly5802ugly746ugly572ugly263ugly722move_seg_n_a4a7c_0_75_seg_n_a4a7b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7c_0_75) (not_occupied seg_n_a4a7b_0_75)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7b_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7b_0_75 airplane_daew7)
       (not_blocked seg_n_a4a7b_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7c_0_75))
       (not_occupied seg_n_a4a7c_0_75) (not (at-segment ?a seg_n_a4a7c_0_75))
       (occupied seg_n_a4a7b_0_75) (not (not_occupied seg_n_a4a7b_0_75))
       (blocked seg_n_a4a7b_0_75 ?a) (not (not_blocked seg_n_a4a7b_0_75 ?a))
       (at-segment ?a seg_n_a4a7b_0_75) (not (blocked seg_n_a4a7d_0_75 ?a))
       (not_blocked seg_n_a4a7d_0_75 ?a)))
 (:action
  ugly5766ugly5410ugly5827ugly6068ugly5486ugly5623ugly196ugly750ugly810ugly1startup_seg_m_a7c_0_60_south_medium
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
  ugly5767ugly6025ugly5279ugly5756ugly5855ugly5956ugly99ugly545ugly606ugly894startup_seg_o1_c3c_0_48_south_medium
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
  ugly5768ugly6172ugly5385ugly5421ugly5292ugly5905ugly447ugly143ugly690ugly755startup_seg_p164_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p164_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5769ugly5850ugly5787ugly5321ugly5459ugly6015ugly950ugly937ugly520ugly456park_seg_p101_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))))
 (:action
  ugly5770ugly5955ugly5271ugly6186ugly5873ugly5261ugly81ugly170ugly478ugly823startup_seg_w1_143b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143b_0_45)
       (not_occupied seg_w1_143a_0_34) (not_occupied seg_w1_143c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a)) (blocked seg_w1_143c_0_60 ?a)
       (not (not_blocked seg_w1_143c_0_60 ?a))))
 (:action
  ugly5771ugly5307ugly5441ugly5847ugly5365ugly6102ugly73ugly837ugly396ugly846move_seg_w1_141a_0_34_seg_w1_141b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45)
       (not_blocked seg_w1_141b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_141b_0_45 airplane_daewh)
       (not_blocked seg_w1_141b_0_45 airplane_daew3)
       (not_blocked seg_w1_141b_0_45 airplane_daew7)
       (not_blocked seg_w1_141b_0_45 airplane_cfbe1)
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
  ugly5772ugly6150ugly5899ugly5773ugly5732ugly5450ugly549ugly120ugly450ugly489startup_seg_w1_154c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_154a_0_34) (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154a_0_34 ?a)
       (not (not_blocked seg_w1_154a_0_34 ?a)) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly5773ugly5732ugly5450ugly5798ugly5374ugly5644ugly325ugly594ugly174ugly304startup_seg_p161_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p161_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5774ugly6067ugly6044ugly5472ugly5420ugly5351ugly49ugly405ugly464ugly342startup_seg_o1_109a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109a_0_34)
       (not_occupied seg_o1_108c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a))))
 (:action
  ugly5775ugly5676ugly5464ugly5670ugly6175ugly5743ugly461ugly779ugly794ugly555move_seg_o1_111c_0_34_seg_o1_111a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111c_0_34) (not_occupied seg_o1_111a_0_34)
       (not_blocked seg_o1_111a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111a_0_34 airplane_daewh)
       (not_blocked seg_o1_111a_0_34 airplane_daew3)
       (not_blocked seg_o1_111a_0_34 airplane_daew7)
       (not_blocked seg_o1_111a_0_34 airplane_cfbe1)
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
  ugly5776ugly6170ugly6122ugly5640ugly6005ugly5529ugly211ugly814ugly454ugly549move_seg_w1_154a_0_34_seg_w1_153c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daew7)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1))
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
  ugly5777ugly5692ugly6062ugly5554ugly5599ugly5532ugly752ugly933ugly568ugly898startup_seg_o1_103b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103b_0_60)
       (not_occupied seg_p103_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p103_0_76 ?a)
       (not (not_blocked seg_p103_0_76 ?a))))
 (:action
  ugly5778ugly5604ugly5705ugly5334ugly6127ugly5613ugly829ugly931ugly32ugly614move_seg_w1_c2a_0_60_seg_w1_c2c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_c2c_0_34)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c2c_0_34 airplane_daewh)
       (not_blocked seg_w1_c2c_0_34 airplane_daew3)
       (not_blocked seg_w1_c2c_0_34 airplane_daew7)
       (not_blocked seg_w1_c2c_0_34 airplane_cfbe1)
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
  ugly5779ugly5264ugly5435ugly5585ugly5943ugly5507ugly451ugly522ugly365ugly323startup_seg_m_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a_0_60)
       (not_occupied seg_m_a8a9a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9a_0_75 ?a)
       (not (not_blocked seg_m_a8a9a_0_75 ?a))))
 (:action
  ugly5780ugly6141ugly6032ugly5986ugly6048ugly5648ugly46ugly222ugly164ugly748startup_seg_w1_161b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161b_0_45)
       (not_occupied seg_p161_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p161_0_75 ?a)
       (not (not_blocked seg_p161_0_75 ?a))))
 (:action
  ugly5781ugly6022ugly5584ugly5709ugly5308ugly5684ugly781ugly4ugly165ugly826move_seg_c2_b_0_80_seg_o1_c2d_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_b_0_80) (not_occupied seg_o1_c2d_0_60)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2d_0_60 airplane_daewh)
       (not_blocked seg_o1_c2d_0_60 airplane_daew3)
       (not_blocked seg_o1_c2d_0_60 airplane_daew7)
       (not_blocked seg_o1_c2d_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_b_0_80))
       (not_occupied seg_c2_b_0_80) (not (at-segment ?a seg_c2_b_0_80))
       (occupied seg_o1_c2d_0_60) (not (not_occupied seg_o1_c2d_0_60))
       (blocked seg_o1_c2d_0_60 ?a) (not (not_blocked seg_o1_c2d_0_60 ?a))
       (at-segment ?a seg_o1_c2d_0_60) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c2_a_0_80 ?a))
       (not_blocked seg_c2_a_0_80 ?a)))
 (:action
  ugly5782ugly5745ugly5462ugly5314ugly5775ugly5676ugly215ugly868ugly526ugly238move_seg_p101_0_76_seg_o1_c1a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p101_0_76) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p101_0_76))
       (not_occupied seg_p101_0_76) (not (at-segment ?a seg_p101_0_76))
       (occupied seg_o1_c1a_0_60) (not (not_occupied seg_o1_c1a_0_60))
       (blocked seg_o1_c1a_0_60 ?a) (not (not_blocked seg_o1_c1a_0_60 ?a))
       (at-segment ?a seg_o1_c1a_0_60)))
 (:action
  ugly5783ugly5708ugly5665ugly6061ugly5765ugly5718ugly661ugly466ugly637ugly580move_seg_08l_a2a3_0_970_seg_08l_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a2a3_0_970) (not_occupied seg_08l_0_80)
       (not_blocked seg_08l_0_80 airplane_cfbeg)
       (not_blocked seg_08l_0_80 airplane_daewh)
       (not_blocked seg_08l_0_80 airplane_daew3)
       (not_blocked seg_08l_0_80 airplane_daew7)
       (not_blocked seg_08l_0_80 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_08l_a2a3_0_970))
       (not_occupied seg_08l_a2a3_0_970)
       (not (at-segment ?a seg_08l_a2a3_0_970)) (occupied seg_08l_0_80)
       (not (not_occupied seg_08l_0_80)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a)) (at-segment ?a seg_08l_0_80)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_08l_a2a_0_80 ?a)) (not_blocked seg_08l_a2a_0_80 ?a)))
 (:action
  ugly5784ugly5987ugly6020ugly5889ugly5865ugly5395ugly62ugly292ugly146ugly38move_seg_w1_142b_0_45_seg_p142_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_p142_0_75)
       (not_blocked seg_p142_0_75 airplane_cfbeg)
       (not_blocked seg_p142_0_75 airplane_daewh)
       (not_blocked seg_p142_0_75 airplane_daew3)
       (not_blocked seg_p142_0_75 airplane_daew7)
       (not_blocked seg_p142_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_142b_0_45))
       (not_occupied seg_w1_142b_0_45) (not (at-segment ?a seg_w1_142b_0_45))
       (occupied seg_p142_0_75) (not (not_occupied seg_p142_0_75))
       (blocked seg_p142_0_75 ?a) (not (not_blocked seg_p142_0_75 ?a))
       (at-segment ?a seg_p142_0_75) (not (blocked seg_w1_142a_0_34 ?a))
       (not_blocked seg_w1_142a_0_34 ?a) (not (blocked seg_w1_142c_0_34 ?a))
       (not_blocked seg_w1_142c_0_34 ?a)))
 (:action
  ugly5785ugly5966ugly6066ugly5256ugly5384ugly5528ugly551ugly382ugly950ugly937startup_seg_p107_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5786ugly5319ugly5763ugly5553ugly5437ugly5671ugly206ugly626ugly693ugly808startup_seg_a4_b_1_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly5787ugly5321ugly5459ugly6015ugly6199ugly5596ugly948ugly324ugly468ugly148startup_seg_w1_143a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143a_0_34)
       (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly5788ugly5869ugly5747ugly5957ugly5880ugly6091ugly660ugly181ugly12ugly616move_seg_o1_108d_0_45_seg_p131_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_p131_0_75)
       (not_blocked seg_p131_0_75 airplane_cfbeg)
       (not_blocked seg_p131_0_75 airplane_daewh)
       (not_blocked seg_p131_0_75 airplane_daew3)
       (not_blocked seg_p131_0_75 airplane_daew7)
       (not_blocked seg_p131_0_75 airplane_cfbe1))
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
  ugly5789ugly5785ugly5966ugly6066ugly5256ugly5384ugly279ugly108ugly50ugly251move_seg_w1_152c_0_34_seg_w1_152a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152c_0_34) (not_occupied seg_w1_152a_0_34)
       (not_blocked seg_w1_152a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152a_0_34 airplane_daewh)
       (not_blocked seg_w1_152a_0_34 airplane_daew3)
       (not_blocked seg_w1_152a_0_34 airplane_daew7)
       (not_blocked seg_w1_152a_0_34 airplane_cfbe1)
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
  ugly5790ugly5269ugly6136ugly5600ugly6104ugly5757ugly314ugly83ugly3ugly765startup_seg_o1_117a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_117a_0_34)
       (not_occupied seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117b_0_60 ?a)
       (not (not_blocked seg_o1_117b_0_60 ?a)) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly5791ugly5868ugly5315ugly5473ugly5619ugly5645ugly775ugly531ugly167ugly326startup_seg_n_a2a3d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3d_0_75)
       (not_occupied seg_n_a2a3c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3c_0_75 ?a)
       (not (not_blocked seg_n_a2a3c_0_75 ?a))))
 (:action
  ugly5792ugly5565ugly5609ugly5398ugly5549ugly6110ugly476ugly429ugly909ugly383startup_seg_08l_a7b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a7b_0_161_245)
       (not_occupied seg_a8_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_a_0_157_785 ?a)
       (not (not_blocked seg_a8_a_0_157_785 ?a))))
 (:action
  ugly5793ugly5341ugly6178ugly5936ugly5908ugly5654ugly88ugly28ugly104ugly369startup_seg_o1_115a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3c_0_48 ?a)
       (not (not_blocked seg_o1_c3c_0_48 ?a))))
 (:action
  ugly5794ugly5740ugly6043ugly5780ugly6141ugly6032ugly737ugly761ugly358ugly564move_seg_a8_b_1_0_79_7559_seg_a8_b_0_80_6226_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a8_b_1_0_79_7559) (not_occupied seg_a8_b_0_80_6226)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbeg)
       (not_blocked seg_a8_b_0_80_6226 airplane_daewh)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew3)
       (not_blocked seg_a8_b_0_80_6226 airplane_daew7)
       (not_blocked seg_a8_b_0_80_6226 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a8_b_1_0_79_7559))
       (not_occupied seg_a8_b_1_0_79_7559)
       (not (at-segment ?a seg_a8_b_1_0_79_7559)) (occupied seg_a8_b_0_80_6226)
       (not (not_occupied seg_a8_b_0_80_6226)) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))
       (at-segment ?a seg_a8_b_0_80_6226) (not (blocked seg_a8_a_0_157_785 ?a))
       (not_blocked seg_a8_a_0_157_785 ?a)))
 (:action
  ugly5795ugly5860ugly5342ugly6075ugly6090ugly5394ugly115ugly857ugly151ugly729startup_seg_m_a7d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7d_0_60)
       (not_occupied seg_m_a4a7f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7f_0_115 ?a)
       (not (not_blocked seg_m_a4a7f_0_115 ?a))))
 (:action
  ugly5796ugly6006ugly5861ugly5736ugly5533ugly5818ugly268ugly927ugly912ugly557move_seg_n_n2a4a_0_70_seg_n_n2a_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4a_0_70) (not_occupied seg_n_n2a_0_60)
       (not_blocked seg_n_n2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_n2a_0_60 airplane_daewh)
       (not_blocked seg_n_n2a_0_60 airplane_daew3)
       (not_blocked seg_n_n2a_0_60 airplane_daew7)
       (not_blocked seg_n_n2a_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4a_0_70))
       (not_occupied seg_n_n2a4a_0_70) (not (at-segment ?a seg_n_n2a4a_0_70))
       (occupied seg_n_n2a_0_60) (not (not_occupied seg_n_n2a_0_60))
       (blocked seg_n_n2a_0_60 ?a) (not (not_blocked seg_n_n2a_0_60 ?a))
       (at-segment ?a seg_n_n2a_0_60) (not (blocked seg_n_n2a4b_0_75 ?a))
       (not_blocked seg_n_n2a4b_0_75 ?a)))
 (:action
  ugly5797ugly5631ugly5430ugly5266ugly5655ugly5380ugly555ugly256ugly243ugly796startup_seg_a2_a_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_a_0_90)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly5798ugly5374ugly5644ugly5574ugly5550ugly6182ugly403ugly498ugly604ugly756startup_seg_n_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a9a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9a_0_85 ?a)
       (not (not_blocked seg_n_a8a9a_0_85 ?a))))
 (:action
  ugly5799ugly5887ugly5930ugly5687ugly5998ugly5822ugly719ugly322ugly671ugly188move_seg_p132_0_75_seg_o1_109d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p132_0_75) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daew7)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p132_0_75))
       (not_occupied seg_p132_0_75) (not (at-segment ?a seg_p132_0_75))
       (occupied seg_o1_109d_0_45) (not (not_occupied seg_o1_109d_0_45))
       (blocked seg_o1_109d_0_45 ?a) (not (not_blocked seg_o1_109d_0_45 ?a))
       (at-segment ?a seg_o1_109d_0_45)))
 (:action
  ugly5800ugly5886ugly5829ugly5582ugly5419ugly5543ugly748ugly424ugly731ugly204startup_seg_n_a3a_0_60_south_medium
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
  ugly5801ugly5618ugly5318ugly5272ugly5497ugly5440ugly337ugly186ugly636ugly423startup_seg_w1_151c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151c_0_34)
       (not_occupied seg_w1_152a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152a_0_34 ?a)
       (not (not_blocked seg_w1_152a_0_34 ?a))))
 (:action
  ugly5802ugly5995ugly5938ugly6002ugly5921ugly5327ugly814ugly454ugly549ugly120startup_seg_p163_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p163_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5803ugly6087ugly5712ugly5566ugly5626ugly6081ugly636ugly423ugly378ugly687move_seg_o1_117a_0_34_seg_o1_116c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daew7)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1))
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
  ugly5804ugly6111ugly5414ugly6177ugly5967ugly5932ugly762ugly836ugly738ugly766move_seg_o1_108c_0_34_seg_o1_109a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daew7)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1))
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
  ugly5805ugly5751ugly5797ugly5631ugly5430ugly5266ugly406ugly510ugly720ugly647startup_seg_w1_151a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_c2c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2c_0_34 ?a)
       (not (not_blocked seg_w1_c2c_0_34 ?a))))
 (:action
  ugly5806ugly5587ugly5347ugly5589ugly5937ugly5984ugly152ugly392ugly624ugly546move_seg_o1_115c_0_34_seg_o1_115a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daew7)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1)
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
  ugly5807ugly5753ugly6031ugly5285ugly5299ugly5641ugly671ugly188ugly236ugly733move_seg_n_n2a4e_0_75_seg_n_n2a4d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4e_0_75) (not_occupied seg_n_n2a4d_0_75)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4d_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4d_0_75 airplane_daew7)
       (not_blocked seg_n_n2a4d_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4e_0_75))
       (not_occupied seg_n_n2a4e_0_75) (not (at-segment ?a seg_n_n2a4e_0_75))
       (occupied seg_n_n2a4d_0_75) (not (not_occupied seg_n_n2a4d_0_75))
       (blocked seg_n_n2a4d_0_75 ?a) (not (not_blocked seg_n_n2a4d_0_75 ?a))
       (at-segment ?a seg_n_n2a4d_0_75) (not (blocked seg_n_a4c_0_60 ?a))
       (not_blocked seg_n_a4c_0_60 ?a)))
 (:action
  ugly5808ugly5877ugly6073ugly5446ugly5741ugly6083ugly723ugly384ugly747ugly255startup_seg_w1_151a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151a_0_34)
       (not_occupied seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly5809ugly5892ugly5556ugly6076ugly5594ugly6157ugly902ugly891ugly61ugly357startup_seg_m_a9d_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9d_0_120_934)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly5810ugly5451ugly5728ugly5476ugly6206ugly5677ugly903ugly708ugly175ugly129move_seg_w1_162a_0_34_seg_w1_162c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daew7)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1)
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
  ugly5811ugly5448ugly5646ugly6106ugly5407ugly6060ugly433ugly64ugly235ugly582move_seg_n_a6a8d_0_75_seg_n_a6a8c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8d_0_75) (not_occupied seg_n_a6a8c_0_75)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8c_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8c_0_75 airplane_daew7)
       (not_blocked seg_n_a6a8c_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8d_0_75))
       (not_occupied seg_n_a6a8d_0_75) (not (at-segment ?a seg_n_a6a8d_0_75))
       (occupied seg_n_a6a8c_0_75) (not (not_occupied seg_n_a6a8c_0_75))
       (blocked seg_n_a6a8c_0_75 ?a) (not (not_blocked seg_n_a6a8c_0_75 ?a))
       (at-segment ?a seg_n_a6a8c_0_75) (not (blocked seg_n_a6a8e_0_75 ?a))
       (not_blocked seg_n_a6a8e_0_75 ?a)))
 (:action
  ugly5812ugly5647ugly6004ugly5449ugly6173ugly6126ugly238ugly169ugly433ugly64move_seg_o1_109b_0_60_seg_p109_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_p109_0_76)
       (not_blocked seg_p109_0_76 airplane_cfbeg)
       (not_blocked seg_p109_0_76 airplane_daewh)
       (not_blocked seg_p109_0_76 airplane_daew3)
       (not_blocked seg_p109_0_76 airplane_daew7)
       (not_blocked seg_p109_0_76 airplane_cfbe1))
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
  ugly5813ugly5350ugly5770ugly5955ugly5271ugly6186ugly624ugly546ugly276ugly887move_seg_w1_152a_0_34_seg_w1_152c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daew7)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1)
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
  ugly5814ugly5466ugly5427ugly6028ugly5333ugly6026ugly295ugly54ugly535ugly573move_seg_w1_c2a_0_60_seg_w1_143c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_c2a_0_60) (not_occupied seg_w1_143c_0_60)
       (not_blocked seg_w1_143c_0_60 airplane_cfbeg)
       (not_blocked seg_w1_143c_0_60 airplane_daewh)
       (not_blocked seg_w1_143c_0_60 airplane_daew3)
       (not_blocked seg_w1_143c_0_60 airplane_daew7)
       (not_blocked seg_w1_143c_0_60 airplane_cfbe1))
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
  ugly5815ugly5338ugly5900ugly6010ugly5933ugly5568ugly931ugly32ugly614ugly105move_seg_n_a4a7e_0_75_seg_n_a4a7d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7e_0_75) (not_occupied seg_n_a4a7d_0_75)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7d_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7d_0_75 airplane_daew7)
       (not_blocked seg_n_a4a7d_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7e_0_75))
       (not_occupied seg_n_a4a7e_0_75) (not (at-segment ?a seg_n_a4a7e_0_75))
       (occupied seg_n_a4a7d_0_75) (not (not_occupied seg_n_a4a7d_0_75))
       (blocked seg_n_a4a7d_0_75 ?a) (not (not_blocked seg_n_a4a7d_0_75 ?a))
       (at-segment ?a seg_n_a4a7d_0_75) (not (blocked seg_n_a4a7f_0_75 ?a))
       (not_blocked seg_n_a4a7f_0_75 ?a)))
 (:action
  ugly5816ugly5672ugly5575ugly5649ugly5891ugly5744ugly532ugly89ugly542ugly494move_seg_p111_0_76_seg_o1_111b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p111_0_76) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daew7)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p111_0_76))
       (not_occupied seg_p111_0_76) (not (at-segment ?a seg_p111_0_76))
       (occupied seg_o1_111b_0_60) (not (not_occupied seg_o1_111b_0_60))
       (blocked seg_o1_111b_0_60 ?a) (not (not_blocked seg_o1_111b_0_60 ?a))
       (at-segment ?a seg_o1_111b_0_60)))
 (:action
  ugly5817ugly6009ugly5456ugly5542ugly5303ugly5703ugly432ugly705ugly159ugly107move_seg_o1_103c_0_34_seg_o1_103a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_103a_0_34)
       (not_blocked seg_o1_103a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103a_0_34 airplane_daewh)
       (not_blocked seg_o1_103a_0_34 airplane_daew3)
       (not_blocked seg_o1_103a_0_34 airplane_daew7)
       (not_blocked seg_o1_103a_0_34 airplane_cfbe1)
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
  ugly5818ugly5517ugly5484ugly5812ugly5647ugly6004ugly200ugly373ugly644ugly663startup_seg_o1_110d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_110d_0_45)
       (not_occupied seg_p133_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p133_0_75 ?a)
       (not (not_blocked seg_p133_0_75 ?a))))
 (:action
  ugly5819ugly5546ugly5388ugly5267ugly5963ugly5852ugly424ugly731ugly204ugly701startup_seg_08l_a4b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a4b_0_161_245)
       (not_occupied seg_a6_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_a_0_158_647 ?a)
       (not (not_blocked seg_a6_a_0_158_647 ?a))))
 (:action
  ugly5820ugly5534ugly6125ugly5918ugly5731ugly5820ugly285ugly184ugly746ugly572move_seg_o1_111d_0_45_seg_p134_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_p134_0_75)
       (not_blocked seg_p134_0_75 airplane_cfbeg)
       (not_blocked seg_p134_0_75 airplane_daewh)
       (not_blocked seg_p134_0_75 airplane_daew3)
       (not_blocked seg_p134_0_75 airplane_daew7)
       (not_blocked seg_p134_0_75 airplane_cfbe1))
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
  ugly5821ugly6148ugly5841ugly5931ugly6205ugly5942ugly105ugly60ugly400ugly585startup_seg_m_a7a_0_120_934_south_medium
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
  ugly5822ugly5968ugly5897ugly5369ugly6077ugly5912ugly692ugly854ugly679ugly16move_seg_n_a4b_0_60_seg_n_a4c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4b_0_60) (not_occupied seg_n_a4c_0_60)
       (not_blocked seg_n_a4c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4c_0_60 airplane_daewh)
       (not_blocked seg_n_a4c_0_60 airplane_daew3)
       (not_blocked seg_n_a4c_0_60 airplane_daew7)
       (not_blocked seg_n_a4c_0_60 airplane_cfbe1)
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
  ugly5823ugly5597ugly6084ugly5701ugly5602ugly5429ugly108ugly50ugly251ugly113park_seg_p133_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p133_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p133_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_110d_0_45 ?a)) (not_blocked seg_o1_110d_0_45 ?a)))
 (:action
  ugly5824ugly5495ugly6158ugly5569ugly5564ugly5511ugly151ugly729ugly742ugly904startup_seg_o1_116a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116a_0_34)
       (not_occupied seg_o1_116b_0_60) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly5825ugly5392ugly5523ugly5882ugly5453ugly5557ugly174ugly304ugly430ugly511move_seg_o1_109b_0_60_seg_o1_109c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109b_0_60) (not_occupied seg_o1_109c_0_34)
       (not_blocked seg_o1_109c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109c_0_34 airplane_daewh)
       (not_blocked seg_o1_109c_0_34 airplane_daew3)
       (not_blocked seg_o1_109c_0_34 airplane_daew7)
       (not_blocked seg_o1_109c_0_34 airplane_cfbe1)
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
  ugly5826ugly5815ugly5338ugly5900ugly6010ugly5933ugly319ugly137ugly776ugly172startup_seg_m_a7a6c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6c_0_75)
       (not_occupied seg_m_a7a6d_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6d_0_85 ?a)
       (not (not_blocked seg_m_a7a6d_0_85 ?a))))
 (:action
  ugly5827ugly6068ugly5486ugly5623ugly5445ugly5862ugly366ugly127ugly352ugly631park_seg_p163_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))))
 (:action
  ugly5828ugly5406ugly5721ugly5719ugly5839ugly5382ugly2ugly859ugly771ugly599move_seg_o1_111a_0_34_seg_o1_111d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daew7)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1)
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
  ugly5829ugly5582ugly5419ugly5543ugly5997ugly5675ugly233ugly81ugly170ugly478startup_seg_m_a9a10f_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10f_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly5830ugly5547ugly5951ugly5776ugly6170ugly6122ugly391ugly957ugly574ugly865startup_seg_a9_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_a_0_158_647)
       (not_occupied seg_a9_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_b_0_159_512 ?a)
       (not (not_blocked seg_a9_b_0_159_512 ?a))))
 (:action
  ugly5831ugly5273ugly5969ugly5293ugly5346ugly5704ugly480ugly441ugly333ugly254move_seg_w1_143a_0_34_seg_w1_143b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daew7)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1)
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
  ugly5832ugly5976ugly5260ugly5390ugly6119ugly5758ugly911ugly559ugly119ugly230move_seg_n_a2a3d_0_75_seg_n_a2a3c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3d_0_75) (not_occupied seg_n_a2a3c_0_75)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3c_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3c_0_75 airplane_daew7)
       (not_blocked seg_n_a2a3c_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3d_0_75))
       (not_occupied seg_n_a2a3d_0_75) (not (at-segment ?a seg_n_a2a3d_0_75))
       (occupied seg_n_a2a3c_0_75) (not (not_occupied seg_n_a2a3c_0_75))
       (blocked seg_n_a2a3c_0_75 ?a) (not (not_blocked seg_n_a2a3c_0_75 ?a))
       (at-segment ?a seg_n_a2a3c_0_75) (not (blocked seg_n_a2a3e_0_75 ?a))
       (not_blocked seg_n_a2a3e_0_75 ?a)))
 (:action
  ugly5833ugly6118ugly5362ugly5294ugly6092ugly5911ugly667ugly757ugly658ugly368move_seg_o1_c3c_0_48_seg_o1_115a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_115a_0_34)
       (not_blocked seg_o1_115a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115a_0_34 airplane_daewh)
       (not_blocked seg_o1_115a_0_34 airplane_daew3)
       (not_blocked seg_o1_115a_0_34 airplane_daew7)
       (not_blocked seg_o1_115a_0_34 airplane_cfbe1))
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
  ugly5834ugly5777ugly5692ugly6062ugly5554ugly5599ugly283ugly80ugly704ugly951move_seg_w1_164c_0_34_seg_w1_c4a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164c_0_34) (not_occupied seg_w1_c4a_0_34)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c4a_0_34 airplane_daewh)
       (not_blocked seg_w1_c4a_0_34 airplane_daew3)
       (not_blocked seg_w1_c4a_0_34 airplane_daew7)
       (not_blocked seg_w1_c4a_0_34 airplane_cfbe1))
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
  ugly5835ugly5426ugly5479ugly5296ugly5614ugly5814ugly217ugly719ugly322ugly671move_seg_o1_102b_0_60_seg_p102_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_p102_0_76)
       (not_blocked seg_p102_0_76 airplane_cfbeg)
       (not_blocked seg_p102_0_76 airplane_daewh)
       (not_blocked seg_p102_0_76 airplane_daew3)
       (not_blocked seg_p102_0_76 airplane_daew7)
       (not_blocked seg_p102_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_102b_0_60))
       (not_occupied seg_o1_102b_0_60) (not (at-segment ?a seg_o1_102b_0_60))
       (occupied seg_p102_0_76) (not (not_occupied seg_p102_0_76))
       (blocked seg_p102_0_76 ?a) (not (not_blocked seg_p102_0_76 ?a))
       (at-segment ?a seg_p102_0_76) (not (blocked seg_o1_102a_0_34 ?a))
       (not_blocked seg_o1_102a_0_34 ?a) (not (blocked seg_o1_102c_0_34 ?a))
       (not_blocked seg_o1_102c_0_34 ?a)))
 (:action
  ugly5836ugly5752ugly6017ugly5926ugly5561ugly5284ugly448ugly645ugly880ugly123move_seg_p115_0_76_seg_o1_115b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p115_0_76) (not_occupied seg_o1_115b_0_60)
       (not_blocked seg_o1_115b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_115b_0_60 airplane_daewh)
       (not_blocked seg_o1_115b_0_60 airplane_daew3)
       (not_blocked seg_o1_115b_0_60 airplane_daew7)
       (not_blocked seg_o1_115b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p115_0_76))
       (not_occupied seg_p115_0_76) (not (at-segment ?a seg_p115_0_76))
       (occupied seg_o1_115b_0_60) (not (not_occupied seg_o1_115b_0_60))
       (blocked seg_o1_115b_0_60 ?a) (not (not_blocked seg_o1_115b_0_60 ?a))
       (at-segment ?a seg_o1_115b_0_60)))
 (:action
  ugly5837ugly5591ugly5291ugly5779ugly5264ugly5435ugly336ugly493ugly155ugly294startup_seg_m_a4a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a_0_120_934)
       (not_occupied seg_a4_b_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_0_79_7559 ?a)
       (not (not_blocked seg_a4_b_0_79_7559 ?a))))
 (:action
  ugly5838ugly5444ugly5826ugly5815ugly5338ugly5900ugly761ugly358ugly564ugly39move_seg_n1_0_108_seg_n_a3c_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_0_108) (not_occupied seg_n_a3c_0_60)
       (not_blocked seg_n_a3c_0_60 airplane_cfbeg)
       (not_blocked seg_n_a3c_0_60 airplane_daewh)
       (not_blocked seg_n_a3c_0_60 airplane_daew3)
       (not_blocked seg_n_a3c_0_60 airplane_daew7)
       (not_blocked seg_n_a3c_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_0_108))
       (not_occupied seg_n1_0_108) (not (at-segment ?a seg_n1_0_108))
       (occupied seg_n_a3c_0_60) (not (not_occupied seg_n_a3c_0_60))
       (blocked seg_n_a3c_0_60 ?a) (not (not_blocked seg_n_a3c_0_60 ?a))
       (at-segment ?a seg_n_a3c_0_60) (not (blocked seg_w1_c1a_0_60 ?a))
       (not_blocked seg_w1_c1a_0_60 ?a)))
 (:action
  ugly5839ugly5382ugly5251ugly5570ugly6134ugly6117ugly138ugly195ugly258ugly801startup_seg_w1_142c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142c_0_34)
       (not_occupied seg_w1_143a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_143a_0_34 ?a)
       (not (not_blocked seg_w1_143a_0_34 ?a))))
 (:action
  ugly5840ugly5539ugly5888ugly5790ugly5269ugly6136ugly351ugly670ugly453ugly842move_seg_w1_162c_0_34_seg_w1_162a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_162a_0_34)
       (not_blocked seg_w1_162a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162a_0_34 airplane_daewh)
       (not_blocked seg_w1_162a_0_34 airplane_daew3)
       (not_blocked seg_w1_162a_0_34 airplane_daew7)
       (not_blocked seg_w1_162a_0_34 airplane_cfbe1)
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
  ugly5841ugly5931ugly6205ugly5942ugly5354ugly5611ugly697ugly420ugly923ugly253move_seg_w1_153c_0_34_seg_w1_153a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153c_0_34) (not_occupied seg_w1_153a_0_34)
       (not_blocked seg_w1_153a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153a_0_34 airplane_daewh)
       (not_blocked seg_w1_153a_0_34 airplane_daew3)
       (not_blocked seg_w1_153a_0_34 airplane_daew7)
       (not_blocked seg_w1_153a_0_34 airplane_cfbe1)
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
  ugly5842ugly5867ugly5617ugly5904ugly5436ugly6153ugly90ugly397ugly102ugly905move_seg_w1_142a_0_34_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daew7)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
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
  ugly5843ugly5821ugly6148ugly5841ugly5931ugly6205ugly693ugly808ugly954ugly651startup_seg_o1_115b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly5844ugly5514ugly5489ugly5851ugly6146ugly6169ugly429ugly909ugly383ugly674startup_seg_o1_116c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116b_0_60 ?a)
       (not (not_blocked seg_o1_116b_0_60 ?a))))
 (:action
  ugly5845ugly5983ugly5953ugly6121ugly5720ugly5520ugly55ugly638ugly619ugly470startup_seg_m_a4c_0_60_south_medium
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
  ugly5846ugly5958ugly5361ugly6192ugly5961ugly6194ugly725ugly363ugly472ugly678startup_seg_a7_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_m_a7a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a_0_120_934 ?a)
       (not (not_blocked seg_m_a7a_0_120_934 ?a))))
 (:action
  ugly5847ugly5365ugly6102ugly5322ugly5810ugly5451ugly479ugly639ugly661ugly466startup_seg_o1_118c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118c_0_34)
       (not_occupied seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118a_0_34 ?a)
       (not (not_blocked seg_o1_118a_0_34 ?a)) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly5848ugly5475ugly5727ugly5305ugly5405ugly5846ugly709ugly226ugly886ugly156move_seg_w1_161b_0_45_seg_p161_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_161b_0_45) (not_occupied seg_p161_0_75)
       (not_blocked seg_p161_0_75 airplane_cfbeg)
       (not_blocked seg_p161_0_75 airplane_daewh)
       (not_blocked seg_p161_0_75 airplane_daew3)
       (not_blocked seg_p161_0_75 airplane_daew7)
       (not_blocked seg_p161_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_161b_0_45))
       (not_occupied seg_w1_161b_0_45) (not (at-segment ?a seg_w1_161b_0_45))
       (occupied seg_p161_0_75) (not (not_occupied seg_p161_0_75))
       (blocked seg_p161_0_75 ?a) (not (not_blocked seg_p161_0_75 ?a))
       (at-segment ?a seg_p161_0_75) (not (blocked seg_w1_161a_0_34 ?a))
       (not_blocked seg_w1_161a_0_34 ?a) (not (blocked seg_w1_161c_0_34 ?a))
       (not_blocked seg_w1_161c_0_34 ?a)))
 (:action
  ugly5849ugly6071ugly5601ugly5336ugly5674ugly5581ugly739ugly2ugly859ugly771startup_seg_p112_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p112_0_76)
       (not_occupied seg_o1_c3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3b_0_60 ?a)
       (not (not_blocked seg_o1_c3b_0_60 ?a))))
 (:action
  ugly5850ugly5787ugly5321ugly5459ugly6015ugly6199ugly347ugly10ugly34ugly751move_seg_w1_153a_0_34_seg_w1_153c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153c_0_34)
       (not_blocked seg_w1_153c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_153c_0_34 airplane_daewh)
       (not_blocked seg_w1_153c_0_34 airplane_daew3)
       (not_blocked seg_w1_153c_0_34 airplane_daew7)
       (not_blocked seg_w1_153c_0_34 airplane_cfbe1)
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
  ugly5851ugly6146ugly6169ugly5678ugly5748ugly6064ugly254ugly95ugly231ugly416startup_seg_a2_b_0_90_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_b_0_90)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly5852ugly5673ugly6198ugly5412ugly5490ugly5431ugly53ugly207ugly959ugly700startup_seg_m_a4d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4d_0_60)
       (not_occupied seg_m_a3a4f_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4f_0_115 ?a)
       (not (not_blocked seg_m_a3a4f_0_115 ?a))))
 (:action
  ugly5853ugly6196ugly5838ugly5444ugly5826ugly5815ugly89ugly542ugly494ugly252startup_seg_a3_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly5854ugly5259ugly5929ugly6204ugly5768ugly6172ugly136ugly816ugly888ugly22startup_seg_w1_c3a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_154c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154c_0_34 ?a)
       (not (not_blocked seg_w1_154c_0_34 ?a))))
 (:action
  ugly5855ugly5956ugly5348ugly5881ugly5545ugly5411ugly118ugly282ugly471ugly907takeoff_seg_08l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_08l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_08l_0_80)) (not_occupied seg_08l_0_80)
       (not (blocked seg_08l_0_80 ?a)) (not_blocked seg_08l_0_80 ?a)
       (not (at-segment ?a seg_08l_0_80)) (airborne ?a seg_08l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a2a3_0_970 ?a))
       (not_blocked seg_08l_a2a3_0_970 ?a)))
 (:action
  ugly5856ugly5876ugly5396ugly6207ugly6176ugly5595ugly4ugly165ugly826ugly208move_seg_w1_c3c_0_48_seg_w1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c3c_0_48) (not_occupied seg_w1_c3a_0_34)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_c3a_0_34 airplane_daewh)
       (not_blocked seg_w1_c3a_0_34 airplane_daew3)
       (not_blocked seg_w1_c3a_0_34 airplane_daew7)
       (not_blocked seg_w1_c3a_0_34 airplane_cfbe1)
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
  ugly5857ugly5643ugly5424ugly5360ugly5636ugly5633ugly649ugly668ugly532ugly89startup_seg_o1_109b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_109b_0_60)
       (not_occupied seg_p109_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p109_0_76 ?a)
       (not (not_blocked seg_p109_0_76 ?a))))
 (:action
  ugly5858ugly5711ugly6165ugly5432ugly5510ugly5809ugly643ugly242ugly711ugly648startup_seg_o1_104a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104a_0_34)
       (not_occupied seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104b_0_60 ?a)
       (not (not_blocked seg_o1_104b_0_60 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly5859ugly6000ugly5944ugly5901ugly5573ugly5515ugly850ugly150ugly459ugly386startup_seg_m_a8a9d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9d_0_85)
       (not_occupied seg_m_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a9c_0_75 ?a)
       (not (not_blocked seg_m_a8a9c_0_75 ?a))))
 (:action
  ugly5860ugly5342ugly6075ugly6090ugly5394ugly5364ugly801ugly350ugly576ugly245startup_seg_a7_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_b_0_80_6226)
       (not_occupied seg_a7_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_1_0_80_6226 ?a))))
 (:action
  ugly5861ugly5736ugly5533ugly5818ugly5517ugly5484ugly563ugly377ugly581ugly691move_seg_n_n2a4b_0_75_seg_n_n2a4a_0_70_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4b_0_75) (not_occupied seg_n_n2a4a_0_70)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbeg)
       (not_blocked seg_n_n2a4a_0_70 airplane_daewh)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew3)
       (not_blocked seg_n_n2a4a_0_70 airplane_daew7)
       (not_blocked seg_n_n2a4a_0_70 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4b_0_75))
       (not_occupied seg_n_n2a4b_0_75) (not (at-segment ?a seg_n_n2a4b_0_75))
       (occupied seg_n_n2a4a_0_70) (not (not_occupied seg_n_n2a4a_0_70))
       (blocked seg_n_n2a4a_0_70 ?a) (not (not_blocked seg_n_n2a4a_0_70 ?a))
       (at-segment ?a seg_n_n2a4a_0_70) (not (blocked seg_n_n2a4c_0_75 ?a))
       (not_blocked seg_n_n2a4c_0_75 ?a)))
 (:action
  ugly5862ugly5615ugly5379ugly5389ugly6065ugly5691ugly539ugly586ugly214ugly499move_seg_o1_116c_0_34_seg_o1_116a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daew7)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1)
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
  ugly5863ugly5934ugly6208ugly5552ugly6097ugly5783ugly459ugly386ugly799ugly596startup_seg_o1_102c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102c_0_34)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly5864ugly5250ugly5685ugly6056ugly5252ugly5598ugly95ugly231ugly416ugly952startup_seg_w1_c1b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly5865ugly5395ugly5311ugly5625ugly5377ugly6027ugly856ugly627ugly367ugly925startup_seg_n2_0_108_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_0_108)
       (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly5866ugly6147ugly5694ugly5502ugly6156ugly6171ugly446ugly884ugly945ugly743move_seg_w1_162c_0_34_seg_w1_163a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daew7)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1))
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
  ugly5867ugly5617ugly5904ugly5436ugly6153ugly5339ugly506ugly497ugly715ugly266startup_seg_m_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_m_a10b_0_60) (not_occupied seg_m_a10c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a)) (blocked seg_m_a10c_0_60 ?a)
       (not (not_blocked seg_m_a10c_0_60 ?a))))
 (:action
  ugly5868ugly5315ugly5473ugly5619ugly5645ugly6024ugly543ugly790ugly281ugly45startup_seg_n_n2c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2b_0_60 ?a)
       (not (not_blocked seg_n_n2b_0_60 ?a))))
 (:action
  ugly5869ugly5747ugly5957ugly5880ugly6091ugly5909ugly273ugly862ugly702ugly211startup_seg_m_a9a10b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10b_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly5870ugly5454ugly5965ugly6144ugly6167ugly5871ugly242ugly711ugly648ugly501move_seg_n_a2a3e_0_75_seg_n_a2a3d_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3e_0_75) (not_occupied seg_n_a2a3d_0_75)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3d_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3d_0_75 airplane_daew7)
       (not_blocked seg_n_a2a3d_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3e_0_75))
       (not_occupied seg_n_a2a3e_0_75) (not (at-segment ?a seg_n_a2a3e_0_75))
       (occupied seg_n_a2a3d_0_75) (not (not_occupied seg_n_a2a3d_0_75))
       (blocked seg_n_a2a3d_0_75 ?a) (not (not_blocked seg_n_a2a3d_0_75 ?a))
       (at-segment ?a seg_n_a2a3d_0_75) (not (blocked seg_n_a2a3f_0_115 ?a))
       (not_blocked seg_n_a2a3f_0_115 ?a)))
 (:action
  ugly5871ugly5491ugly6129ugly5890ugly6085ugly5355ugly444ugly754ugly710ugly297move_seg_n_a4a7b_0_75_seg_n_a4a7a_0_115_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7b_0_75) (not_occupied seg_n_a4a7a_0_115)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbeg)
       (not_blocked seg_n_a4a7a_0_115 airplane_daewh)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew3)
       (not_blocked seg_n_a4a7a_0_115 airplane_daew7)
       (not_blocked seg_n_a4a7a_0_115 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7b_0_75))
       (not_occupied seg_n_a4a7b_0_75) (not (at-segment ?a seg_n_a4a7b_0_75))
       (occupied seg_n_a4a7a_0_115) (not (not_occupied seg_n_a4a7a_0_115))
       (blocked seg_n_a4a7a_0_115 ?a) (not (not_blocked seg_n_a4a7a_0_115 ?a))
       (at-segment ?a seg_n_a4a7a_0_115) (not (blocked seg_n_a4a7c_0_75 ?a))
       (not_blocked seg_n_a4a7c_0_75 ?a)))
 (:action
  ugly5872ugly6019ugly5637ugly5536ugly5950ugly5793ugly92ugly818ugly540ugly946park_seg_p141_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_141b_0_45 ?a)) (not_blocked seg_w1_141b_0_45 ?a)))
 (:action
  ugly5873ugly5261ugly5330ugly5786ugly5319ugly5763ugly304ugly430ugly511ugly229startup_seg_w1_c1b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1b_0_60)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly5874ugly5297ugly5664ugly5349ugly5906ugly5659ugly798ugly200ugly373ugly644startup_seg_08l_a3b_0_161_245_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_08l_a3a_0_80) (not_occupied seg_08l_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3a_0_80 ?a)
       (not (not_blocked seg_08l_a3a_0_80 ?a)) (blocked seg_08l_0_80 ?a)
       (not (not_blocked seg_08l_0_80 ?a))))
 (:action
  ugly5875ugly5409ugly5518ugly5772ugly6150ugly5899ugly524ugly128ugly138ugly195move_seg_o1_111a_0_34_seg_o1_111b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111a_0_34) (not_occupied seg_o1_111b_0_60)
       (not_blocked seg_o1_111b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_111b_0_60 airplane_daewh)
       (not_blocked seg_o1_111b_0_60 airplane_daew3)
       (not_blocked seg_o1_111b_0_60 airplane_daew7)
       (not_blocked seg_o1_111b_0_60 airplane_cfbe1)
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
  ugly5876ugly5396ugly6207ugly6176ugly5595ugly5253ugly286ugly346ugly86ugly21move_seg_o1_102a_0_34_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daew7)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
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
  ugly5877ugly6073ugly5446ugly5741ugly6083ugly5972ugly402ugly759ugly739ugly2startup_seg_n_a3d_0_60_south_medium
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
  ugly5878ugly5895ugly5505ugly5258ugly5638ugly5811ugly199ugly900ugly768ugly66move_seg_o1_c2b_0_60_seg_p107_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2b_0_60) (not_occupied seg_p107_0_76)
       (not_blocked seg_p107_0_76 airplane_cfbeg)
       (not_blocked seg_p107_0_76 airplane_daewh)
       (not_blocked seg_p107_0_76 airplane_daew3)
       (not_blocked seg_p107_0_76 airplane_daew7)
       (not_blocked seg_p107_0_76 airplane_cfbe1))
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
  ugly5879ugly5276ugly5403ugly5981ugly5516ugly5578ugly866ugly698ugly630ugly519startup_seg_n_a9a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a_0_60)
       (not_occupied seg_n_a9b_0_60) (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9b_0_60 ?a)
       (not (not_blocked seg_n_a9b_0_60 ?a)) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly5880ugly6091ugly5909ugly5522ugly5767ugly6025ugly30ugly68ugly24ugly210move_seg_w1_152a_0_34_seg_w1_152b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_152a_0_34) (not_occupied seg_w1_152b_0_45)
       (not_blocked seg_w1_152b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_152b_0_45 airplane_daewh)
       (not_blocked seg_w1_152b_0_45 airplane_daew3)
       (not_blocked seg_w1_152b_0_45 airplane_daew7)
       (not_blocked seg_w1_152b_0_45 airplane_cfbe1)
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
  ugly5881ugly5545ugly5411ugly5367ugly6049ugly5530ugly489ugly409ugly334ugly652move_seg_o1_111b_0_60_seg_p111_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_p111_0_76)
       (not_blocked seg_p111_0_76 airplane_cfbeg)
       (not_blocked seg_p111_0_76 airplane_daewh)
       (not_blocked seg_p111_0_76 airplane_daew3)
       (not_blocked seg_p111_0_76 airplane_daew7)
       (not_blocked seg_p111_0_76 airplane_cfbe1))
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
  ugly5882ugly5453ugly5557ugly5423ugly5715ugly5734ugly75ugly330ugly716ugly570startup_seg_w1_164a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly5883ugly5789ugly5785ugly5966ugly6066ugly5256ugly135ugly669ugly528ugly749startup_seg_p107_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p107_0_76)
       (not_occupied seg_o1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c2b_0_60 ?a)
       (not (not_blocked seg_o1_c2b_0_60 ?a))))
 (:action
  ugly5884ugly5980ugly5878ugly5895ugly5505ugly5258ugly389ugly476ugly429ugly909startup_seg_p151_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p151_0_75)
       (not_occupied seg_w1_151b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151b_0_45 ?a)
       (not (not_blocked seg_w1_151b_0_45 ?a))))
 (:action
  ugly5885ugly5548ugly5496ugly5275ugly5656ugly5282ugly821ugly111ugly157ugly513startup_seg_m_a8b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8b_0_60)
       (not_occupied seg_n_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a))))
 (:action
  ugly5886ugly5829ugly5582ugly5419ugly5543ugly5997ugly426ugly284ugly713ugly948takeoff_seg_09l_0_80_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09l_0_80) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_09l_0_80)) (not_occupied seg_09l_0_80)
       (not (blocked seg_09l_0_80 ?a)) (not_blocked seg_09l_0_80 ?a)
       (not (at-segment ?a seg_09l_0_80)) (airborne ?a seg_09l_0_80)
       (not (is-moving ?a)) (not (blocked seg_08l_a9a10_0_1010 ?a))
       (not_blocked seg_08l_a9a10_0_1010 ?a)))
 (:action
  ugly5887ugly5930ugly5687ugly5998ugly5822ugly5968ugly648ugly501ugly13ugly840move_seg_o1_c1a_0_60_seg_p101_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_p101_0_76)
       (not_blocked seg_p101_0_76 airplane_cfbeg)
       (not_blocked seg_p101_0_76 airplane_daewh)
       (not_blocked seg_p101_0_76 airplane_daew3)
       (not_blocked seg_p101_0_76 airplane_daew7)
       (not_blocked seg_p101_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_c1a_0_60))
       (not_occupied seg_o1_c1a_0_60) (not (at-segment ?a seg_o1_c1a_0_60))
       (occupied seg_p101_0_76) (not (not_occupied seg_p101_0_76))
       (blocked seg_p101_0_76 ?a) (not (not_blocked seg_p101_0_76 ?a))
       (at-segment ?a seg_p101_0_76) (not (blocked seg_o1_c1b_0_34 ?a))
       (not_blocked seg_o1_c1b_0_34 ?a) (not (blocked seg_o1_c1c_0_80 ?a))
       (not_blocked seg_o1_c1c_0_80 ?a)))
 (:action
  ugly5888ugly5790ugly5269ugly6136ugly5600ugly6104ugly508ugly394ugly335ugly843park_seg_p152_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))))
 (:action
  ugly5889ugly5865ugly5395ugly5311ugly5625ugly5377ugly778ugly49ugly405ugly464park_seg_p141_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p141_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p141_0_75) (not (is-moving ?a))))
 (:action
  ugly5890ugly6085ugly5355ugly5693ugly5717ugly5761ugly13ugly840ugly180ugly529park_seg_p163_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p163_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p163_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_163b_0_45 ?a)) (not_blocked seg_w1_163b_0_45 ?a)))
 (:action
  ugly5891ugly5744ugly5781ugly6022ugly5584ugly5709ugly59ugly643ugly242ugly711park_seg_p119_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p119_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p119_0_76) (not (is-moving ?a))))
 (:action
  ugly5892ugly5556ugly6076ugly5594ugly6157ugly6151ugly52ugly509ugly809ugly372startup_seg_o1_c1c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1c_0_80)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly5893ugly5310ugly5352ugly5624ugly6008ugly6052ugly833ugly607ugly819ugly360move_seg_08l_a3a_0_80_seg_08l_a3a4_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a3a_0_80) (not_occupied seg_08l_a3a4_0_450)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a3a4_0_450 airplane_daewh)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew3)
       (not_blocked seg_08l_a3a4_0_450 airplane_daew7)
       (not_blocked seg_08l_a3a4_0_450 airplane_cfbe1)
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
  ugly5894ugly5843ugly5821ugly6148ugly5841ugly5931ugly956ugly407ugly6ugly185startup_seg_n_a8a9c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9c_0_75)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly5895ugly5505ugly5258ugly5638ugly5811ugly5448ugly397ugly102ugly905ugly94move_seg_o1_118b_0_60_seg_p118_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_p118_0_76)
       (not_blocked seg_p118_0_76 airplane_cfbeg)
       (not_blocked seg_p118_0_76 airplane_daewh)
       (not_blocked seg_p118_0_76 airplane_daew3)
       (not_blocked seg_p118_0_76 airplane_daew7)
       (not_blocked seg_p118_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_118b_0_60))
       (not_occupied seg_o1_118b_0_60) (not (at-segment ?a seg_o1_118b_0_60))
       (occupied seg_p118_0_76) (not (not_occupied seg_p118_0_76))
       (blocked seg_p118_0_76 ?a) (not (not_blocked seg_p118_0_76 ?a))
       (at-segment ?a seg_p118_0_76) (not (blocked seg_o1_118a_0_34 ?a))
       (not_blocked seg_o1_118a_0_34 ?a) (not (blocked seg_o1_118c_0_34 ?a))
       (not_blocked seg_o1_118c_0_34 ?a)))
 (:action
  ugly5896ugly5947ugly5973ugly6131ugly5443ugly5312ugly381ugly870ugly500ugly404startup_seg_w1_141b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly5897ugly5369ugly6077ugly5912ugly5941ugly5683ugly155ugly294ugly712ugly828move_seg_o1_108a_0_34_seg_o1_c2c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_c2c_0_34)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c2c_0_34 airplane_daewh)
       (not_blocked seg_o1_c2c_0_34 airplane_daew3)
       (not_blocked seg_o1_c2c_0_34 airplane_daew7)
       (not_blocked seg_o1_c2c_0_34 airplane_cfbe1))
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
  ugly5898ugly5778ugly5604ugly5705ugly5334ugly6127ugly364ugly481ugly141ugly461startup_seg_m_a6a8f_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8f_0_115)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly5899ugly5773ugly5732ugly5450ugly5798ugly5374ugly395ugly817ugly649ugly668park_seg_p108_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p108_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p108_0_76) (not (is-moving ?a))))
 (:action
  ugly5900ugly6010ugly5933ugly5568ugly6180ugly5519ugly919ugly302ugly885ugly145startup_seg_m_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7c_0_60)
       (not_occupied seg_n_a7a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a))))
 (:action
  ugly5901ugly5573ugly5515ugly6099ugly6132ugly5750ugly291ugly277ugly289ugly592startup_seg_w1_141c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141c_0_34)
       (not_occupied seg_w1_141a_0_34) (not_occupied seg_w1_141b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141a_0_34 ?a)
       (not (not_blocked seg_w1_141a_0_34 ?a)) (blocked seg_w1_141b_0_45 ?a)
       (not (not_blocked seg_w1_141b_0_45 ?a))))
 (:action
  ugly5902ugly5257ugly5716ugly5864ugly5250ugly5685ugly807ugly421ugly784ugly558startup_seg_n_a7a6a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6a_0_85)
       (not_occupied seg_n_a7a6b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6b_0_75 ?a)
       (not (not_blocked seg_n_a7a6b_0_75 ?a))))
 (:action
  ugly5903ugly6035ugly6137ugly5874ugly5297ugly5664ugly100ugly84ugly455ugly313startup_seg_a2_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a2_c_0_100)
       (not_occupied seg_a2_b_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_b_0_90 ?a)
       (not (not_blocked seg_a2_b_0_90 ?a))))
 (:action
  ugly5904ugly5436ugly6153ugly5339ugly5755ugly5699ugly500ugly404ugly339ugly508startup_seg_w1_153a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly5905ugly5696ugly5896ugly5947ugly5973ugly6131ugly194ugly444ugly754ugly710move_seg_o1_117a_0_34_seg_o1_117b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117b_0_60)
       (not_blocked seg_o1_117b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_117b_0_60 airplane_daewh)
       (not_blocked seg_o1_117b_0_60 airplane_daew3)
       (not_blocked seg_o1_117b_0_60 airplane_daew7)
       (not_blocked seg_o1_117b_0_60 airplane_cfbe1)
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
  ugly5906ugly5659ugly6047ugly5634ugly5608ugly6016ugly109ugly417ugly527ugly506park_seg_p103_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p103_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p103_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_103b_0_60 ?a)) (not_blocked seg_o1_103b_0_60 ?a)))
 (:action
  ugly5907ugly6133ugly5759ugly6179ugly5840ugly5539ugly639ugly661ugly466ugly637park_seg_p111_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p111_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p111_0_76) (not (is-moving ?a))))
 (:action
  ugly5908ugly5654ugly5337ugly6159ugly5417ugly5813ugly101ugly554ugly36ugly274startup_seg_08l_a4b_0_161_245_south_medium
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
  ugly5909ugly5522ugly5767ugly6025ugly5279ugly5756ugly606ugly894ugly593ugly57startup_seg_m_a9d_0_120_934_south_medium
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
  ugly5910ugly5979ugly5940ugly5802ugly5995ugly5938ugly753ugly299ugly502ugly387startup_seg_p153_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p153_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5911ugly5916ugly5922ugly5883ugly5789ugly5785ugly717ugly250ugly246ugly406startup_seg_o1_c2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2a_0_60)
       (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly5912ugly5941ugly5683ugly5404ugly6145ugly5714ugly68ugly24ugly210ugly115startup_seg_n_a3c_0_60_south_medium
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
  ugly5913ugly6088ugly5825ugly5392ugly5523ugly5882ugly204ugly701ugly666ugly629startup_seg_w1_162c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162c_0_34)
       (not_occupied seg_w1_163a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a))))
 (:action
  ugly5914ugly5824ugly5495ugly6158ugly5569ugly5564ugly262ugly301ugly847ugly298move_seg_o1_c1c_0_80_seg_o1_c1a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1c_0_80) (not_occupied seg_o1_c1a_0_60)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c1a_0_60 airplane_daewh)
       (not_blocked seg_o1_c1a_0_60 airplane_daew3)
       (not_blocked seg_o1_c1a_0_60 airplane_daew7)
       (not_blocked seg_o1_c1a_0_60 airplane_cfbe1)
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
  ugly5915ugly5551ugly5996ugly5521ugly6184ugly5422ugly533ugly447ugly143ugly690startup_seg_m_a7a6d_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a7a6c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6c_0_75 ?a)
       (not (not_blocked seg_m_a7a6c_0_75 ?a))))
 (:action
  ugly5916ugly5922ugly5883ugly5789ugly5785ugly5966ugly817ugly649ugly668ugly532move_seg_p143_0_75_seg_w1_143b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p143_0_75) (not_occupied seg_w1_143b_0_45)
       (not_blocked seg_w1_143b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_143b_0_45 airplane_daewh)
       (not_blocked seg_w1_143b_0_45 airplane_daew3)
       (not_blocked seg_w1_143b_0_45 airplane_daew7)
       (not_blocked seg_w1_143b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p143_0_75))
       (not_occupied seg_p143_0_75) (not (at-segment ?a seg_p143_0_75))
       (occupied seg_w1_143b_0_45) (not (not_occupied seg_w1_143b_0_45))
       (blocked seg_w1_143b_0_45 ?a) (not (not_blocked seg_w1_143b_0_45 ?a))
       (at-segment ?a seg_w1_143b_0_45)))
 (:action
  ugly5917ugly6107ugly5722ugly5970ugly5525ugly5467ugly596ugly485ugly764ugly401park_seg_p104_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p104_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p104_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_104b_0_60 ?a)) (not_blocked seg_o1_104b_0_60 ?a)))
 (:action
  ugly5918ugly5731ugly5820ugly5534ugly6125ugly5918ugly482ugly863ugly96ugly803move_seg_n_a7a6b_0_75_seg_n_a7a6a_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6b_0_75) (not_occupied seg_n_a7a6a_0_85)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbeg)
       (not_blocked seg_n_a7a6a_0_85 airplane_daewh)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew3)
       (not_blocked seg_n_a7a6a_0_85 airplane_daew7)
       (not_blocked seg_n_a7a6a_0_85 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6b_0_75))
       (not_occupied seg_n_a7a6b_0_75) (not (at-segment ?a seg_n_a7a6b_0_75))
       (occupied seg_n_a7a6a_0_85) (not (not_occupied seg_n_a7a6a_0_85))
       (blocked seg_n_a7a6a_0_85 ?a) (not (not_blocked seg_n_a7a6a_0_85 ?a))
       (at-segment ?a seg_n_a7a6a_0_85) (not (blocked seg_n_a7a6c_0_75 ?a))
       (not_blocked seg_n_a7a6c_0_75 ?a)))
 (:action
  ugly5919ugly5915ugly5551ugly5996ugly5521ugly6184ugly173ugly553ugly523ugly467startup_seg_o1_c2c_0_34_south_medium
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
  ugly5920ugly6036ugly5760ugly6094ugly6189ugly5492ugly31ugly634ugly279ugly108move_seg_n_a6a8a_0_115_seg_n_a6b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8a_0_115) (not_occupied seg_n_a6b_0_60)
       (not_blocked seg_n_a6b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a6b_0_60 airplane_daewh)
       (not_blocked seg_n_a6b_0_60 airplane_daew3)
       (not_blocked seg_n_a6b_0_60 airplane_daew7)
       (not_blocked seg_n_a6b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8a_0_115))
       (not_occupied seg_n_a6a8a_0_115) (not (at-segment ?a seg_n_a6a8a_0_115))
       (occupied seg_n_a6b_0_60) (not (not_occupied seg_n_a6b_0_60))
       (blocked seg_n_a6b_0_60 ?a) (not (not_blocked seg_n_a6b_0_60 ?a))
       (at-segment ?a seg_n_a6b_0_60) (not (blocked seg_n_a6a8b_0_75 ?a))
       (not_blocked seg_n_a6a8b_0_75 ?a)))
 (:action
  ugly5921ugly5327ugly6063ugly5964ugly5975ugly5870ugly205ugly641ugly191ugly735move_seg_o1_116c_0_34_seg_o1_117a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daew7)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1))
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
  ugly5922ugly5883ugly5789ugly5785ugly5966ugly6066ugly7ugly318ugly659ugly875startup_seg_p142_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p142_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly5923ugly5844ugly5514ugly5489ugly5851ugly6146ugly920ugly935ugly223ugly5move_seg_o1_c3c_0_48_seg_o1_c3a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3c_0_48) (not_occupied seg_o1_c3a_0_34)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c3a_0_34 airplane_daewh)
       (not_blocked seg_o1_c3a_0_34 airplane_daew3)
       (not_blocked seg_o1_c3a_0_34 airplane_daew7)
       (not_blocked seg_o1_c3a_0_34 airplane_cfbe1)
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
  ugly5924ugly6190ugly5919ugly5915ugly5551ugly5996ugly272ugly389ugly476ugly429startup_seg_n_a6a8a_0_115_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8a_0_115)
       (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly5925ugly6055ugly5999ugly5438ugly5807ugly5753ugly782ugly609ugly672ugly615startup_seg_n_a8b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8b_0_60)
       (not_occupied seg_n_a8a_0_60) (not_occupied seg_n_a8c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a_0_60 ?a)
       (not (not_blocked seg_n_a8a_0_60 ?a)) (blocked seg_n_a8c_0_60 ?a)
       (not (not_blocked seg_n_a8c_0_60 ?a))))
 (:action
  ugly5926ugly5561ugly5284ugly5697ugly5628ugly5509ugly167ugly326ugly849ugly697startup_seg_c3_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_a_0_80)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly5927ugly6195ugly6046ugly5667ugly5622ugly5580ugly690ugly755ugly460ugly30move_seg_n_n2a4d_0_75_seg_n_n2a4c_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n2a4d_0_75) (not_occupied seg_n_n2a4c_0_75)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4c_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4c_0_75 airplane_daew7)
       (not_blocked seg_n_n2a4c_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n2a4d_0_75))
       (not_occupied seg_n_n2a4d_0_75) (not (at-segment ?a seg_n_n2a4d_0_75))
       (occupied seg_n_n2a4c_0_75) (not (not_occupied seg_n_n2a4c_0_75))
       (blocked seg_n_n2a4c_0_75 ?a) (not (not_blocked seg_n_n2a4c_0_75 ?a))
       (at-segment ?a seg_n_n2a4c_0_75) (not (blocked seg_n_n2a4e_0_75 ?a))
       (not_blocked seg_n_n2a4e_0_75 ?a)))
 (:action
  ugly5928ugly5513ugly5686ugly5680ugly5306ugly5799ugly638ugly619ugly470ugly717move_seg_o1_110a_0_34_seg_o1_110d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_110a_0_34) (not_occupied seg_o1_110d_0_45)
       (not_blocked seg_o1_110d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_110d_0_45 airplane_daewh)
       (not_blocked seg_o1_110d_0_45 airplane_daew3)
       (not_blocked seg_o1_110d_0_45 airplane_daew7)
       (not_blocked seg_o1_110d_0_45 airplane_cfbe1)
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
  ugly5929ugly6204ugly5768ugly6172ugly5385ugly5421ugly43ugly388ugly213ugly565move_seg_n_a2b_0_60_seg_n_a2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2b_0_60) (not_occupied seg_n_a2a_0_60)
       (not_blocked seg_n_a2a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a2a_0_60 airplane_daewh)
       (not_blocked seg_n_a2a_0_60 airplane_daew3)
       (not_blocked seg_n_a2a_0_60 airplane_daew7)
       (not_blocked seg_n_a2a_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2b_0_60))
       (not_occupied seg_n_a2b_0_60) (not (at-segment ?a seg_n_a2b_0_60))
       (occupied seg_n_a2a_0_60) (not (not_occupied seg_n_a2a_0_60))
       (blocked seg_n_a2a_0_60 ?a) (not (not_blocked seg_n_a2a_0_60 ?a))
       (at-segment ?a seg_n_a2a_0_60) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n_a2a3a_0_75 ?a)) (not_blocked seg_n_a2a3a_0_75 ?a)))
 (:action
  ugly5930ugly5687ugly5998ugly5822ugly5968ugly5897ugly120ugly450ugly489ugly409startup_seg_c1_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2c_0_60)
       (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly5931ugly6205ugly5942ugly5354ugly5611ugly5946ugly837ugly396ugly846ugly79park_seg_p162_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p162_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p162_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_162b_0_45 ?a)) (not_blocked seg_w1_162b_0_45 ?a)))
 (:action
  ugly5932ugly6011ugly5866ugly6147ugly5694ugly5502ugly907ugly325ugly594ugly174move_seg_o1_117a_0_34_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117a_0_34) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daew7)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
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
  ugly5933ugly5568ugly6180ugly5519ugly6168ugly5381ugly588ugly781ugly4ugly165startup_seg_m_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10a_0_60)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly5934ugly6208ugly5552ugly6097ugly5783ugly5708ugly416ugly952ugly328ugly908startup_seg_m_a3c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3c_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly5935ugly6174ugly5474ugly6012ugly5541ugly5639ugly942ugly307ugly899ugly730startup_seg_n_a8a9b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9b_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly5936ugly5908ugly5654ugly5337ugly6159ugly5417ugly564ugly39ugly9ugly603move_seg_n_a2a_0_60_seg_a2_c_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a2a_0_60) (not_occupied seg_a2_c_0_100)
       (not_blocked seg_a2_c_0_100 airplane_cfbeg)
       (not_blocked seg_a2_c_0_100 airplane_daewh)
       (not_blocked seg_a2_c_0_100 airplane_daew3)
       (not_blocked seg_a2_c_0_100 airplane_daew7)
       (not_blocked seg_a2_c_0_100 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a_0_60))
       (not_occupied seg_n_a2a_0_60) (not (at-segment ?a seg_n_a2a_0_60))
       (occupied seg_a2_c_0_100) (not (not_occupied seg_a2_c_0_100))
       (blocked seg_a2_c_0_100 ?a) (not (not_blocked seg_a2_c_0_100 ?a))
       (at-segment ?a seg_a2_c_0_100) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_n_a2b_0_60 ?a)) (not_blocked seg_n_a2b_0_60 ?a)))
 (:action
  ugly5937ugly5984ugly5401ugly5994ugly5378ugly6163ugly675ugly275ugly838ugly496startup_seg_w1_153c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153c_0_34)
       (not_occupied seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153a_0_34 ?a)
       (not (not_blocked seg_w1_153a_0_34 ?a)) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a))))
 (:action
  ugly5938ugly6002ugly5921ugly5327ugly6063ugly5964ugly726ugly932ugly721ugly316startup_seg_o1_103a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_103b_0_60 ?a)
       (not (not_blocked seg_o1_103b_0_60 ?a)) (blocked seg_o1_103c_0_34 ?a)
       (not (not_blocked seg_o1_103c_0_34 ?a))))
 (:action
  ugly5939ugly5605ugly5698ugly6114ugly5875ugly5409ugly269ugly798ugly200ugly373startup_seg_o1_c4b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4b_0_60)
       (not_occupied seg_p119_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p119_0_76 ?a)
       (not (not_blocked seg_p119_0_76 ?a))))
 (:action
  ugly5940ugly5802ugly5995ugly5938ugly6002ugly5921ugly78ugly917ugly270ugly415move_seg_o1_104b_0_60_seg_o1_104c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_104b_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daew7)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1)
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
  ugly5941ugly5683ugly5404ugly6145ugly5714ugly5317ugly440ugly203ugly723ugly384startup_seg_m_a7a6a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6a_0_75)
       (not_occupied seg_m_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7b_0_60 ?a)
       (not (not_blocked seg_m_a7b_0_60 ?a))))
 (:action
  ugly5942ugly5354ugly5611ugly5946ugly6086ugly6188ugly464ugly342ugly536ugly319move_seg_w1_161c_0_34_seg_w1_161a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161c_0_34) (not_occupied seg_w1_161a_0_34)
       (not_blocked seg_w1_161a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161a_0_34 airplane_daewh)
       (not_blocked seg_w1_161a_0_34 airplane_daew3)
       (not_blocked seg_w1_161a_0_34 airplane_daew7)
       (not_blocked seg_w1_161a_0_34 airplane_cfbe1)
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
  ugly5943ugly5507ugly5700ugly5707ugly5658ugly5923ugly595ugly813ugly569ugly469move_seg_o1_117c_0_34_seg_o1_117a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117c_0_34) (not_occupied seg_o1_117a_0_34)
       (not_blocked seg_o1_117a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117a_0_34 airplane_daewh)
       (not_blocked seg_o1_117a_0_34 airplane_daew3)
       (not_blocked seg_o1_117a_0_34 airplane_daew7)
       (not_blocked seg_o1_117a_0_34 airplane_cfbe1)
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
  ugly5944ugly5901ugly5573ugly5515ugly6099ugly6132ugly501ugly13ugly840ugly180startup_seg_o1_108c_0_34_south_medium
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
  ugly5945ugly5927ugly6195ugly6046ugly5667ugly5622ugly331ugly890ugly538ugly446startup_seg_n_a4a7c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7c_0_75)
       (not_occupied seg_n_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7d_0_75 ?a)
       (not (not_blocked seg_n_a4a7d_0_75 ?a))))
 (:action
  ugly5946ugly6086ugly6188ugly5713ugly5478ugly5914ugly575ugly362ugly792ugly736startup_seg_o1_110d_0_45_south_medium
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
  ugly5947ugly5973ugly6131ugly5443ugly5312ugly5630ugly785ugly567ugly140ugly893startup_seg_p101_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p101_0_76)
       (not_occupied seg_o1_c1a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a))))
 (:action
  ugly5948ugly5754ugly5488ugly6045ugly5723ugly5376ugly82ugly23ugly867ugly73startup_seg_n_a2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_n_a2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2b_0_60 ?a)
       (not (not_blocked seg_n_a2b_0_60 ?a))))
 (:action
  ugly5949ugly5500ugly5795ugly5860ugly5342ugly6075ugly841ugly734ugly821ugly111move_seg_w1_163c_0_34_seg_w1_163a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163c_0_34) (not_occupied seg_w1_163a_0_34)
       (not_blocked seg_w1_163a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163a_0_34 airplane_daewh)
       (not_blocked seg_w1_163a_0_34 airplane_daew3)
       (not_blocked seg_w1_163a_0_34 airplane_daew7)
       (not_blocked seg_w1_163a_0_34 airplane_cfbe1)
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
  ugly5950ugly5793ugly5341ugly6178ugly5936ugly5908ugly405ugly464ugly342ugly536pushback_seg_o1_108d_0_45_seg_o1_108c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_o1_108d_0_45) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1))
  :effect
  (and (not (occupied seg_o1_108d_0_45)) (not_occupied seg_o1_108d_0_45)
       (not (blocked seg_o1_108d_0_45 ?a)) (not_blocked seg_o1_108d_0_45 ?a)
       (not (at-segment ?a seg_o1_108d_0_45)) (occupied seg_o1_108c_0_34)
       (not (not_occupied seg_o1_108c_0_34)) (blocked seg_o1_108c_0_34 ?a)
       (not (not_blocked seg_o1_108c_0_34 ?a)) (at-segment ?a seg_o1_108c_0_34)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly5951ugly5776ugly6170ugly6122ugly5640ugly6005ugly280ugly760ugly860ugly465startup_seg_o1_111b_0_60_south_medium
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
  ugly5952ugly5627ugly5993ugly5506ugly6096ugly5803ugly838ugly496ugly399ugly288startup_seg_w1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3c_0_48)
       (not_occupied seg_w1_161a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161a_0_34 ?a)
       (not (not_blocked seg_w1_161a_0_34 ?a))))
 (:action
  ugly5953ugly6121ugly5720ugly5520ugly5304ugly5962ugly77ugly835ugly552ugly309move_seg_w1_142a_0_34_seg_w1_142b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_142b_0_45)
       (not_blocked seg_w1_142b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_142b_0_45 airplane_daewh)
       (not_blocked seg_w1_142b_0_45 airplane_daew3)
       (not_blocked seg_w1_142b_0_45 airplane_daew7)
       (not_blocked seg_w1_142b_0_45 airplane_cfbe1)
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
  ugly5954ugly5537ugly5531ugly6095ugly5872ugly6019ugly388ugly213ugly565ugly18move_seg_o1_104a_0_34_seg_o1_103c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104a_0_34) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daew7)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1))
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
  ugly5955ugly5271ugly6186ugly5873ugly5261ugly5330ugly537ugly380ugly271ugly762startup_seg_n_a2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a_0_60)
       (not_occupied seg_a2_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_c_0_100 ?a)
       (not (not_blocked seg_a2_c_0_100 ?a))))
 (:action
  ugly5956ugly5348ugly5881ugly5545ugly5411ugly5367ugly800ugly296ugly153ugly117startup_seg_n_a7c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a7a_0_60) (not_occupied seg_n_a7b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a_0_60 ?a)
       (not (not_blocked seg_n_a7a_0_60 ?a)) (blocked seg_n_a7b_0_60 ?a)
       (not (not_blocked seg_n_a7b_0_60 ?a))))
 (:action
  ugly5957ugly5880ugly6091ugly5909ugly5522ugly5767ugly776ugly172ugly752ugly933startup_seg_o1_111a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111a_0_34)
       (not_occupied seg_o1_110c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110c_0_34 ?a)
       (not (not_blocked seg_o1_110c_0_34 ?a))))
 (:action
  ugly5958ugly5361ugly6192ugly5961ugly6194ugly5974ugly863ugly96ugly803ugly55park_seg_p118_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p118_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p118_0_76) (not (is-moving ?a))))
 (:action
  ugly5959ugly5458ugly5481ugly6143ugly6037ugly5990ugly769ugly706ugly495ugly770startup_seg_w1_162a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_162a_0_34)
       (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly5960ugly5375ugly6130ugly5949ugly5500ugly5795ugly611ugly209ugly924ugly109startup_seg_w1_c3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3b_0_60)
       (not_occupied seg_w1_c3a_0_34) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly5961ugly6194ugly5974ugly6112ugly5255ugly5742ugly51ugly524ugly128ugly138move_seg_o1_103a_0_34_seg_o1_103b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daew7)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1)
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
  ugly5962ugly5326ugly5669ugly5730ugly5447ugly5816ugly423ugly378ugly687ugly286startup_seg_w1_142a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142a_0_34)
       (not_occupied seg_w1_141c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_141c_0_34 ?a)
       (not (not_blocked seg_w1_141c_0_34 ?a))))
 (:action
  ugly5963ugly5852ugly5673ugly6198ugly5412ugly5490ugly182ugly197ugly74ugly20park_seg_p151_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_151b_0_45 ?a)) (not_blocked seg_w1_151b_0_45 ?a)))
 (:action
  ugly5964ugly5975ugly5870ugly5454ugly5965ugly6144ugly918ugly584ugly883ugly131startup_seg_n_a8a9d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a9c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9c_0_60 ?a)
       (not (not_blocked seg_n_a9c_0_60 ?a))))
 (:action
  ugly5965ugly6144ugly6167ugly5871ugly5491ugly6129ugly641ugly191ugly735ugly285move_seg_o1_103a_0_34_seg_o1_102c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103a_0_34) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daew7)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1))
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
  ugly5966ugly6066ugly5256ugly5384ugly5528ugly5800ugly637ugly580ugly25ugly680move_seg_o1_115b_0_60_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daew7)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
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
  ugly5967ugly5932ugly6011ugly5866ugly6147ugly5694ugly253ugly121ugly892ugly183startup_seg_o1_c3d_0_60_south_medium
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
  ugly5968ugly5897ugly5369ugly6077ugly5912ugly5941ugly434ugly877ugly774ugly944startup_seg_m_a8a9a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a8a9a_0_75)
       (not_occupied seg_m_a8a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8a_0_60 ?a)
       (not (not_blocked seg_m_a8a_0_60 ?a))))
 (:action
  ugly5969ugly5293ugly5346ugly5704ugly5729ugly5823ugly348ugly315ugly676ugly77startup_seg_n_a10a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly5970ugly5525ugly5467ugly5845ugly5983ugly5953ugly872ugly914ugly7ugly318startup_seg_08l_a2b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_08l_a2a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a2a_0_80 ?a)
       (not (not_blocked seg_08l_a2a_0_80 ?a))))
 (:action
  ugly5971ugly5277ugly5629ugly6054ugly6029ugly5393ugly600ugly673ugly317ugly101park_seg_p132_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))))
 (:action
  ugly5972ugly5651ugly6185ugly5828ugly5406ugly5721ugly470ugly717ugly250ugly246startup_seg_w1_154b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154b_0_45)
       (not_occupied seg_p154_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p154_0_75 ?a)
       (not (not_blocked seg_p154_0_75 ?a))))
 (:action
  ugly5973ugly6131ugly5443ugly5312ugly5630ugly6034ugly414ugly635ugly486ugly941startup_seg_a4_b_1_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_1_0_80_6226)
       (not_occupied seg_a4_a_0_157_785))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_a_0_157_785 ?a)
       (not (not_blocked seg_a4_a_0_157_785 ?a))))
 (:action
  ugly5974ugly6112ugly5255ugly5742ugly5300ugly5801ugly369ugly600ugly673ugly317move_seg_w1_151c_0_34_seg_w1_151a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151c_0_34) (not_occupied seg_w1_151a_0_34)
       (not_blocked seg_w1_151a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151a_0_34 airplane_daewh)
       (not_blocked seg_w1_151a_0_34 airplane_daew3)
       (not_blocked seg_w1_151a_0_34 airplane_daew7)
       (not_blocked seg_w1_151a_0_34 airplane_cfbe1)
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
  ugly5975ugly5870ugly5454ugly5965ugly6144ugly6167ugly622ugly37ugly403ugly498startup_seg_o1_115b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115b_0_60)
       (not_occupied seg_p115_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p115_0_76 ?a)
       (not (not_blocked seg_p115_0_76 ?a))))
 (:action
  ugly5976ugly5260ugly5390ugly6119ugly5758ugly6160ugly542ugly494ugly252ugly664move_seg_w1_153a_0_34_seg_w1_152c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_152c_0_34)
       (not_blocked seg_w1_152c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_152c_0_34 airplane_daewh)
       (not_blocked seg_w1_152c_0_34 airplane_daew3)
       (not_blocked seg_w1_152c_0_34 airplane_daew7)
       (not_blocked seg_w1_152c_0_34 airplane_cfbe1))
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
  ugly5977ugly5439ugly5363ugly6059ugly5452ugly5309ugly252ugly664ugly112ugly17startup_seg_w1_153a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_153a_0_34)
       (not_occupied seg_w1_153b_0_45) (not_occupied seg_w1_153c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_153b_0_45 ?a)
       (not (not_blocked seg_w1_153b_0_45 ?a)) (blocked seg_w1_153c_0_34 ?a)
       (not (not_blocked seg_w1_153c_0_34 ?a))))
 (:action
  ugly5978ugly5359ugly5468ugly5762ugly5907ugly6133ugly510ugly720ugly647ugly374startup_seg_p154_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p154_0_75)
       (not_occupied seg_w1_154b_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_154b_0_45 ?a)
       (not (not_blocked seg_w1_154b_0_45 ?a))))
 (:action
  ugly5979ugly5940ugly5802ugly5995ugly5938ugly6002ugly672ugly615ugly921ugly514startup_seg_n_a9a10a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10a_0_80)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly5980ugly5878ugly5895ugly5505ugly5258ugly5638ugly562ugly833ugly607ugly819startup_seg_w1_143c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_143c_0_60)
       (not_occupied seg_w1_c2a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a))))
 (:action
  ugly5981ugly5516ugly5578ugly6115ugly6128ugly5579ugly823ugly359ugly221ugly848startup_seg_o1_c2b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2b_0_60)
       (not_occupied seg_p107_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p107_0_76 ?a)
       (not (not_blocked seg_p107_0_76 ?a))))
 (:action
  ugly5982ugly5555ugly5368ugly5808ugly5877ugly6073ugly197ugly74ugly20ugly381startup_seg_n_n2a4c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4d_0_75 ?a)
       (not (not_blocked seg_n_n2a4d_0_75 ?a))))
 (:action
  ugly5983ugly5953ugly6121ugly5720ugly5520ugly5304ugly713ugly948ugly324ugly468move_seg_w1_163a_0_34_seg_w1_162c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163a_0_34) (not_occupied seg_w1_162c_0_34)
       (not_blocked seg_w1_162c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_162c_0_34 airplane_daewh)
       (not_blocked seg_w1_162c_0_34 airplane_daew3)
       (not_blocked seg_w1_162c_0_34 airplane_daew7)
       (not_blocked seg_w1_162c_0_34 airplane_cfbe1))
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
  ugly5984ugly5401ugly5994ugly5378ugly6163ugly5924ugly941ugly955ugly906ugly822startup_seg_o1_c4c_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_c4_s6a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6a_0_80 ?a)
       (not (not_blocked seg_c4_s6a_0_80 ?a))))
 (:action
  ugly5985ugly5879ugly5276ugly5403ugly5981ugly5516ugly329ugly257ugly802ugly878move_seg_o1_102b_0_60_seg_o1_102c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102b_0_60) (not_occupied seg_o1_102c_0_34)
       (not_blocked seg_o1_102c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102c_0_34 airplane_daewh)
       (not_blocked seg_o1_102c_0_34 airplane_daew3)
       (not_blocked seg_o1_102c_0_34 airplane_daew7)
       (not_blocked seg_o1_102c_0_34 airplane_cfbe1)
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
  ugly5986ugly6048ugly5648ugly5295ugly5620ugly5610ugly16ugly65ugly845ugly503move_seg_p116_0_76_seg_o1_116b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p116_0_76) (not_occupied seg_o1_116b_0_60)
       (not_blocked seg_o1_116b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_116b_0_60 airplane_daewh)
       (not_blocked seg_o1_116b_0_60 airplane_daew3)
       (not_blocked seg_o1_116b_0_60 airplane_daew7)
       (not_blocked seg_o1_116b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p116_0_76))
       (not_occupied seg_p116_0_76) (not (at-segment ?a seg_p116_0_76))
       (occupied seg_o1_116b_0_60) (not (not_occupied seg_o1_116b_0_60))
       (blocked seg_o1_116b_0_60 ?a) (not (not_blocked seg_o1_116b_0_60 ?a))
       (at-segment ?a seg_o1_116b_0_60)))
 (:action
  ugly5987ugly6020ugly5889ugly5865ugly5395ugly5311ugly376ugly815ugly714ugly116move_seg_w1_151b_0_45_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151b_0_45) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daew7)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
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
  ugly5988ugly6023ugly6041ugly5992ugly6203ugly5498ugly107ugly193ugly173ugly553startup_seg_o1_108a_0_34_south_medium
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
  ugly5989ugly6202ugly5485ugly5836ugly5752ugly6017ugly677ugly219ugly85ugly267startup_seg_n_a3c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3c_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly5990ugly6018ugly6113ugly5477ugly5853ugly6196ugly589ugly161ugly260ugly583move_seg_o1_c4b_0_60_seg_o1_c4c_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c4b_0_60) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew7)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1)
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
  ugly5991ugly6069ugly5766ugly5410ugly5827ugly6068ugly237ugly233ugly81ugly170startup_seg_o1_102a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102a_0_34)
       (not_occupied seg_o1_c1b_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1b_0_34 ?a)
       (not (not_blocked seg_o1_c1b_0_34 ?a))))
 (:action
  ugly5992ugly6203ugly5498ugly5356ugly6116ugly5632ugly411ugly788ugly591ugly331startup_seg_n_a4a7f_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7f_0_75)
       (not_occupied seg_n_a7c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7c_0_60 ?a)
       (not (not_blocked seg_n_a7c_0_60 ?a))))
 (:action
  ugly5993ugly5506ugly6096ugly5803ugly6087ugly5712ugly317ugly101ugly554ugly36move_seg_o1_115c_0_34_seg_o1_116a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_115c_0_34) (not_occupied seg_o1_116a_0_34)
       (not_blocked seg_o1_116a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116a_0_34 airplane_daewh)
       (not_blocked seg_o1_116a_0_34 airplane_daew3)
       (not_blocked seg_o1_116a_0_34 airplane_daew7)
       (not_blocked seg_o1_116a_0_34 airplane_cfbe1))
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
  ugly5994ugly5378ugly6163ugly5924ugly6190ugly5919ugly666ugly629ugly436ugly33startup_seg_o1_102b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_102b_0_60)
       (not_occupied seg_o1_102a_0_34) (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a)) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly5995ugly5938ugly6002ugly5921ugly5327ugly6063ugly715ugly266ugly827ugly353move_seg_o1_c3b_0_60_seg_o1_c3d_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3b_0_60) (not_occupied seg_o1_c3d_0_60)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3d_0_60 airplane_daewh)
       (not_blocked seg_o1_c3d_0_60 airplane_daew3)
       (not_blocked seg_o1_c3d_0_60 airplane_daew7)
       (not_blocked seg_o1_c3d_0_60 airplane_cfbe1)
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
  ugly5996ugly5521ugly6184ugly5422ugly5782ugly5745ugly213ugly565ugly18ugly192startup_seg_w1_142b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_w1_142a_0_34) (not_occupied seg_w1_142c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_142a_0_34 ?a)
       (not (not_blocked seg_w1_142a_0_34 ?a)) (blocked seg_w1_142c_0_34 ?a)
       (not (not_blocked seg_w1_142c_0_34 ?a))))
 (:action
  ugly5997ugly5675ugly5482ugly6051ugly5842ugly5867ugly368ugly280ugly760ugly860startup_seg_w1_c4b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4b_0_60)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly5998ugly5822ugly5968ugly5897ugly5369ugly6077ugly663ugly562ugly833ugly607startup_seg_m_a9a10d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10c_0_75 ?a)
       (not (not_blocked seg_m_a9a10c_0_75 ?a))))
 (:action
  ugly5999ugly5438ugly5807ugly5753ugly6031ugly5285ugly50ugly251ugly113ugly571startup_seg_a10_1_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a10_1_0_80)
       (not_occupied seg_a10_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a10_0_80 ?a)
       (not (not_blocked seg_a10_0_80 ?a))))
 (:action
  ugly6000ugly5944ugly5901ugly5573ugly5515ugly6099ugly883ugly131ugly930ugly829startup_seg_n_a8a9d_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9d_0_75)
       (not_occupied seg_n_a8a9c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9c_0_75 ?a)
       (not (not_blocked seg_n_a8a9c_0_75 ?a))))
 (:action
  ugly6001ugly5463ugly6201ugly5592ugly5854ugly5259ugly680ugly273ugly862ugly702move_seg_o1_c2a_0_60_seg_o1_c2b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_c2b_0_60)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2b_0_60 airplane_daewh)
       (not_blocked seg_o1_c2b_0_60 airplane_daew3)
       (not_blocked seg_o1_c2b_0_60 airplane_daew7)
       (not_blocked seg_o1_c2b_0_60 airplane_cfbe1)
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
  ugly6002ugly5921ugly5327ugly6063ugly5964ugly5975ugly621ugly241ugly517ugly694startup_seg_n_n2a4c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4c_0_75)
       (not_occupied seg_n_n2a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4b_0_75 ?a)
       (not (not_blocked seg_n_n2a4b_0_75 ?a))))
 (:action
  ugly6003ugly5583ugly5735ugly5281ugly5391ugly5493ugly951ugly163ugly134ugly656move_seg_w1_163b_0_45_seg_p163_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_p163_0_75)
       (not_blocked seg_p163_0_75 airplane_cfbeg)
       (not_blocked seg_p163_0_75 airplane_daewh)
       (not_blocked seg_p163_0_75 airplane_daew3)
       (not_blocked seg_p163_0_75 airplane_daew7)
       (not_blocked seg_p163_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_163b_0_45))
       (not_occupied seg_w1_163b_0_45) (not (at-segment ?a seg_w1_163b_0_45))
       (occupied seg_p163_0_75) (not (not_occupied seg_p163_0_75))
       (blocked seg_p163_0_75 ?a) (not (not_blocked seg_p163_0_75 ?a))
       (at-segment ?a seg_p163_0_75) (not (blocked seg_w1_163a_0_34 ?a))
       (not_blocked seg_w1_163a_0_34 ?a) (not (blocked seg_w1_163c_0_34 ?a))
       (not_blocked seg_w1_163c_0_34 ?a)))
 (:action
  ugly6004ugly5449ugly6173ugly6126ugly5487ugly5567ugly733ugly67ugly332ugly154park_seg_p101_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p101_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p101_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c1a_0_60 ?a)) (not_blocked seg_o1_c1a_0_60 ?a)))
 (:action
  ugly6005ugly5529ugly5460ugly5274ugly5884ugly5980ugly629ugly436ugly33ugly483startup_seg_m_a10c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a9a10g_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10g_0_80 ?a)
       (not (not_blocked seg_m_a9a10g_0_80 ?a))))
 (:action
  ugly6006ugly5861ugly5736ugly5533ugly5818ugly5517ugly235ugly582ugly47ugly753move_seg_p118_0_76_seg_o1_118b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p118_0_76) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daew7)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p118_0_76))
       (not_occupied seg_p118_0_76) (not (at-segment ?a seg_p118_0_76))
       (occupied seg_o1_118b_0_60) (not (not_occupied seg_o1_118b_0_60))
       (blocked seg_o1_118b_0_60 ?a) (not (not_blocked seg_o1_118b_0_60 ?a))
       (at-segment ?a seg_o1_118b_0_60)))
 (:action
  ugly6007ugly5913ugly6088ugly5825ugly5392ugly5523ugly633ugly642ugly726ugly932startup_seg_a4_b_0_79_7559_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_a4_b_1_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a4_b_1_0_80_6226 ?a)
       (not (not_blocked seg_a4_b_1_0_80_6226 ?a))))
 (:action
  ugly6008ugly6052ugly6082ugly5386ugly5679ugly5925ugly806ugly556ugly269ugly798move_seg_o1_c2a_0_60_seg_o1_104c_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_c2a_0_60) (not_occupied seg_o1_104c_0_60)
       (not_blocked seg_o1_104c_0_60 airplane_cfbeg)
       (not_blocked seg_o1_104c_0_60 airplane_daewh)
       (not_blocked seg_o1_104c_0_60 airplane_daew3)
       (not_blocked seg_o1_104c_0_60 airplane_daew7)
       (not_blocked seg_o1_104c_0_60 airplane_cfbe1))
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
  ugly6009ugly5456ugly5542ugly5303ugly5703ugly5681ugly830ugly239ugly35ugly543startup_seg_n_a8a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a_0_60)
       (not_occupied seg_m_a8b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8b_0_60 ?a)
       (not (not_blocked seg_m_a8b_0_60 ?a))))
 (:action
  ugly6010ugly5933ugly5568ugly6180ugly5519ugly6168ugly132ugly91ugly427ugly777startup_seg_w1_163b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_163b_0_45)
       (not_occupied seg_w1_163a_0_34) (not_occupied seg_w1_163c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_163a_0_34 ?a)
       (not (not_blocked seg_w1_163a_0_34 ?a)) (blocked seg_w1_163c_0_34 ?a)
       (not (not_blocked seg_w1_163c_0_34 ?a))))
 (:action
  ugly6011ugly5866ugly6147ugly5694ugly5502ugly6156ugly922ugly133ugly724ugly913startup_seg_c1_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_n2_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_0_108 ?a)
       (not (not_blocked seg_n2_0_108 ?a))))
 (:action
  ugly6012ugly5541ugly5639ugly6191ugly5666ugly5397ugly184ugly746ugly572ugly263startup_seg_m_a4a7a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7a_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly6013ugly5345ugly5978ugly5359ugly5468ugly5762ugly658ugly368ugly280ugly760startup_seg_n_n2c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2c_0_60)
       (not_occupied seg_n_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a3b_0_60 ?a)
       (not (not_blocked seg_n_a3b_0_60 ?a))))
 (:action
  ugly6014ugly6161ugly6033ugly5989ugly6202ugly5485ugly587ugly879ugly681ugly874startup_seg_w1_141b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_141b_0_45)
       (not_occupied seg_p141_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p141_0_75 ?a)
       (not (not_blocked seg_p141_0_75 ?a))))
 (:action
  ugly6015ugly6199ugly5596ugly6197ugly5642ugly5572ugly216ugly550ugly866ugly698startup_seg_p117_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p117_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6016ugly5358ugly5702ugly5831ugly5273ugly5969ugly44ugly686ugly224ugly804move_seg_n_a7c_0_60_seg_n_a4a7f_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a7c_0_60) (not_occupied seg_n_a4a7f_0_75)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbeg)
       (not_blocked seg_n_a4a7f_0_75 airplane_daewh)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew3)
       (not_blocked seg_n_a4a7f_0_75 airplane_daew7)
       (not_blocked seg_n_a4a7f_0_75 airplane_cfbe1))
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
  ugly6017ugly5926ugly5561ugly5284ugly5697ugly5628ugly260ugly583ugly308ugly136startup_seg_m_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10c_0_75)
       (not_occupied seg_m_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10d_0_75 ?a)
       (not (not_blocked seg_m_a9a10d_0_75 ?a))))
 (:action
  ugly6018ugly6113ugly5477ugly5853ugly6196ugly5838ugly195ugly258ugly801ugly350startup_seg_o1_111c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111c_0_34)
       (not_occupied seg_o1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3a_0_34 ?a)
       (not (not_blocked seg_o1_c3a_0_34 ?a))))
 (:action
  ugly6019ugly5637ugly5536ugly5950ugly5793ugly5341ugly929ugly426ugly284ugly713startup_seg_n_a9a10g_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10g_0_75)
       (not_occupied seg_n_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10b_0_60 ?a)
       (not (not_blocked seg_n_a10b_0_60 ?a))))
 (:action
  ugly6020ugly5889ugly5865ugly5395ugly5311ugly5625ugly128ugly138ugly195ugly258startup_seg_m_a9a_0_60_south_medium
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
  ugly6021ugly5560ugly5991ugly6069ugly5766ugly5410ugly578ugly29ugly650ugly589move_seg_p164_0_75_seg_w1_164b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p164_0_75) (not_occupied seg_w1_164b_0_45)
       (not_blocked seg_w1_164b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_164b_0_45 airplane_daewh)
       (not_blocked seg_w1_164b_0_45 airplane_daew3)
       (not_blocked seg_w1_164b_0_45 airplane_daew7)
       (not_blocked seg_w1_164b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p164_0_75))
       (not_occupied seg_p164_0_75) (not (at-segment ?a seg_p164_0_75))
       (occupied seg_w1_164b_0_45) (not (not_occupied seg_w1_164b_0_45))
       (blocked seg_w1_164b_0_45 ?a) (not (not_blocked seg_w1_164b_0_45 ?a))
       (at-segment ?a seg_w1_164b_0_45)))
 (:action
  ugly6022ugly5584ugly5709ugly5308ugly5684ugly6030ugly644ugly663ugly562ugly833startup_seg_o1_115c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_115a_0_34) (not_occupied seg_o1_115b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a)) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a))))
 (:action
  ugly6023ugly6041ugly5992ugly6203ugly5498ugly5356ugly867ugly73ugly837ugly396startup_seg_n_a2a3c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a2a3c_0_75)
       (not_occupied seg_n_a2a3d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a2a3d_0_75 ?a)
       (not (not_blocked seg_n_a2a3d_0_75 ?a))))
 (:action
  ugly6024ugly5792ugly5565ugly5609ugly5398ugly5549ugly861ugly440ugly203ugly723startup_seg_w1_152a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly6025ugly5279ugly5756ugly5855ugly5956ugly5348ugly632ugly168ugly393ugly261startup_seg_m_a3a4b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly6026ugly5544ugly6183ugly6193ugly5425ugly5254ugly358ugly564ugly39ugly9startup_seg_c3_b_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_c3_a_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_a_0_80 ?a)
       (not (not_blocked seg_c3_a_0_80 ?a))))
 (:action
  ugly6027ugly6105ugly5774ugly6067ugly6044ugly5472ugly171ugly685ugly611ugly209startup_seg_n_a8a9a_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a8a9a_0_85)
       (not_occupied seg_n_a8a9b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a8a9b_0_75 ?a)
       (not (not_blocked seg_n_a8a9b_0_75 ?a))))
 (:action
  ugly6028ugly5333ugly6026ugly5544ugly6183ugly6193ugly176ugly391ugly957ugly574startup_seg_n_n2b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2b_0_60)
       (not_occupied seg_n_n2a_0_60) (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a_0_60 ?a)
       (not (not_blocked seg_n_n2a_0_60 ?a)) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly6029ugly5393ugly5849ugly6071ugly5601ugly5336ugly425ugly577ugly953ugly410move_seg_p110_0_76_seg_o1_110b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p110_0_76) (not_occupied seg_o1_110b_0_60)
       (not_blocked seg_o1_110b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_110b_0_60 airplane_daewh)
       (not_blocked seg_o1_110b_0_60 airplane_daew3)
       (not_blocked seg_o1_110b_0_60 airplane_daew7)
       (not_blocked seg_o1_110b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p110_0_76))
       (not_occupied seg_p110_0_76) (not (at-segment ?a seg_p110_0_76))
       (occupied seg_o1_110b_0_60) (not (not_occupied seg_o1_110b_0_60))
       (blocked seg_o1_110b_0_60 ?a) (not (not_blocked seg_o1_110b_0_60 ?a))
       (at-segment ?a seg_o1_110b_0_60)))
 (:action
  ugly6030ugly5893ugly5310ugly5352ugly5624ugly6008ugly803ugly55ugly638ugly619startup_seg_o1_c1b_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_102a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102a_0_34 ?a)
       (not (not_blocked seg_o1_102a_0_34 ?a))))
 (:action
  ugly6031ugly5285ugly5299ugly5641ugly5920ugly6036ugly511ugly229ugly329ugly257startup_seg_m_a9b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9b_0_60)
       (not_occupied seg_n_a9a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a_0_60 ?a)
       (not (not_blocked seg_n_a9a_0_60 ?a))))
 (:action
  ugly6032ugly5986ugly6048ugly5648ugly5295ugly5620ugly361ugly237ugly233ugly81move_seg_o1_c1a_0_60_seg_o1_c1b_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c1a_0_60) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1)
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
  ugly6033ugly5989ugly6202ugly5485ugly5836ugly5752ugly768ugly66ugly212ugly943startup_seg_n_a6a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a_0_60)
       (not_occupied seg_n_a6b_0_60) (not_occupied seg_n_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a)) (blocked seg_n_a6c_0_60 ?a)
       (not (not_blocked seg_n_a6c_0_60 ?a))))
 (:action
  ugly6034ugly5663ugly5399ugly5287ugly5733ugly5353ugly609ugly672ugly615ugly921startup_seg_o1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c2c_0_34)
       (not_occupied seg_o1_108a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108a_0_34 ?a)
       (not (not_blocked seg_o1_108a_0_34 ?a))))
 (:action
  ugly6035ugly6137ugly5874ugly5297ugly5664ugly5349ugly657ugly118ugly282ugly471startup_seg_n_a6c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a6a_0_60) (not_occupied seg_n_a6b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a_0_60 ?a)
       (not (not_blocked seg_n_a6a_0_60 ?a)) (blocked seg_n_a6b_0_60 ?a)
       (not (not_blocked seg_n_a6b_0_60 ?a))))
 (:action
  ugly6036ugly5760ugly6094ugly6189ugly5492ugly5280ugly849ugly697ugly420ugly923move_seg_o1_111b_0_60_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111b_0_60) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daew7)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
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
  ugly6037ugly5990ugly6018ugly6113ugly5477ugly5853ugly947ugly516ugly206ugly626startup_seg_m_a3b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a_0_120_934) (not_occupied seg_m_a3c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a_0_120_934 ?a)
       (not (not_blocked seg_m_a3a_0_120_934 ?a)) (blocked seg_m_a3c_0_60 ?a)
       (not (not_blocked seg_m_a3c_0_60 ?a))))
 (:action
  ugly6038ugly5817ugly6009ugly5456ugly5542ugly5303ugly454ugly549ugly120ugly450startup_seg_p102_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p102_0_76)
       (not_occupied seg_o1_102b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102b_0_60 ?a)
       (not (not_blocked seg_o1_102b_0_60 ?a))))
 (:action
  ugly6039ugly5635ugly5657ugly6154ugly6101ugly5952ugly378ugly687ugly286ugly346move_seg_w1_141a_0_34_seg_w1_141c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_141a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daew7)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1)
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
  ugly6040ugly5499ugly6109ugly6014ugly6161ugly6033ugly740ugly291ugly277ugly289startup_seg_o1_c3c_0_48_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3c_0_48)
       (not_occupied seg_o1_115a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115a_0_34 ?a)
       (not (not_blocked seg_o1_115a_0_34 ?a))))
 (:action
  ugly6041ugly5992ugly6203ugly5498ugly5356ugly6116ugly383ugly674ugly617ugly463startup_seg_w1_161a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly6042ugly5366ugly5739ugly5928ugly5513ugly5686ugly431ugly249ugly434ugly877startup_seg_m_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8d_0_75)
       (not_occupied seg_m_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8e_0_75 ?a)
       (not (not_blocked seg_m_a6a8e_0_75 ?a))))
 (:action
  ugly6043ugly5780ugly6141ugly6032ugly5986ugly6048ugly399ugly288ugly418ugly93park_seg_p112_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_c3b_0_60 ?a)) (not_blocked seg_o1_c3b_0_60 ?a)))
 (:action
  ugly6044ugly5472ugly5420ugly5351ugly5298ugly5370ugly557ugly71ugly832ugly725park_seg_p143_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_143b_0_45 ?a)) (not_blocked seg_w1_143b_0_45 ?a)))
 (:action
  ugly6045ugly5723ugly5376ugly5331ugly5971ugly5277ugly380ugly271ugly762ugly836startup_seg_m_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7b_0_60)
       (not_occupied seg_m_a7a6a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a7a6a_0_75 ?a)
       (not (not_blocked seg_m_a7a6a_0_75 ?a))))
 (:action
  ugly6046ugly5667ugly5622ugly5580ugly5939ugly5605ugly449ugly881ugly534ugly293startup_seg_a3_a_0_158_647_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a3_a_0_158_647)
       (not_occupied seg_08l_a3b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a3b_0_161_245 ?a)
       (not (not_blocked seg_08l_a3b_0_161_245 ?a))))
 (:action
  ugly6047ugly5634ugly5608ugly6016ugly5358ugly5702ugly582ugly47ugly753ugly299startup_seg_o1_104b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_p104_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p104_0_76 ?a)
       (not (not_blocked seg_p104_0_76 ?a))))
 (:action
  ugly6048ugly5648ugly5295ugly5620ugly5610ugly5265ugly412ugly901ugly351ugly670startup_seg_w1_164a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164a_0_34)
       (not_occupied seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164b_0_45 ?a)
       (not (not_blocked seg_w1_164b_0_45 ?a)) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly6049ugly5530ugly5738ugly5805ugly5751ugly5797ugly382ugly950ugly937ugly520startup_seg_w1_164c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_164c_0_34)
       (not_occupied seg_w1_c4a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4a_0_34 ?a)
       (not (not_blocked seg_w1_c4a_0_34 ?a))))
 (:action
  ugly6050ugly5902ugly5257ugly5716ugly5864ugly5250ugly436ugly33ugly483ugly830move_seg_o1_109d_0_45_seg_p132_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_109d_0_45) (not_occupied seg_p132_0_75)
       (not_blocked seg_p132_0_75 airplane_cfbeg)
       (not_blocked seg_p132_0_75 airplane_daewh)
       (not_blocked seg_p132_0_75 airplane_daew3)
       (not_blocked seg_p132_0_75 airplane_daew7)
       (not_blocked seg_p132_0_75 airplane_cfbe1))
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
  ugly6051ugly5842ugly5867ugly5617ugly5904ugly5436ugly904ugly613ugly588ugly781move_seg_w1_142a_0_34_seg_w1_141c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142a_0_34) (not_occupied seg_w1_141c_0_34)
       (not_blocked seg_w1_141c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_141c_0_34 airplane_daewh)
       (not_blocked seg_w1_141c_0_34 airplane_daew3)
       (not_blocked seg_w1_141c_0_34 airplane_daew7)
       (not_blocked seg_w1_141c_0_34 airplane_cfbe1))
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
  ugly6052ugly6082ugly5386ugly5679ugly5925ugly6055ugly750ugly810ugly1ugly741startup_seg_o1_118a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_118a_0_34)
       (not_occupied seg_o1_117c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117c_0_34 ?a)
       (not (not_blocked seg_o1_117c_0_34 ?a))))
 (:action
  ugly6053ugly5538ugly6007ugly5913ugly6088ugly5825ugly143ugly690ugly755ugly460move_seg_08l_a4a_0_80_seg_08l_a6a7_0_450_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_08l_a4a_0_80) (not_occupied seg_08l_a6a7_0_450)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbeg)
       (not_blocked seg_08l_a6a7_0_450 airplane_daewh)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew3)
       (not_blocked seg_08l_a6a7_0_450 airplane_daew7)
       (not_blocked seg_08l_a6a7_0_450 airplane_cfbe1)
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
  ugly6054ugly6029ugly5393ugly5849ugly6071ugly5601ugly87ugly126ugly602ugly608move_seg_p151_0_75_seg_w1_151b_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p151_0_75) (not_occupied seg_w1_151b_0_45)
       (not_blocked seg_w1_151b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_151b_0_45 airplane_daewh)
       (not_blocked seg_w1_151b_0_45 airplane_daew3)
       (not_blocked seg_w1_151b_0_45 airplane_daew7)
       (not_blocked seg_w1_151b_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p151_0_75))
       (not_occupied seg_p151_0_75) (not (at-segment ?a seg_p151_0_75))
       (occupied seg_w1_151b_0_45) (not (not_occupied seg_w1_151b_0_45))
       (blocked seg_w1_151b_0_45 ?a) (not (not_blocked seg_w1_151b_0_45 ?a))
       (at-segment ?a seg_w1_151b_0_45)))
 (:action
  ugly6055ugly5999ugly5438ugly5807ugly5753ugly6031ugly36ugly274ugly667ugly757startup_seg_08l_a2b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a2b_0_80)
       (not_occupied seg_a2_a_0_90))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a2_a_0_90 ?a)
       (not (not_blocked seg_a2_a_0_90 ?a))))
 (:action
  ugly6056ugly5252ugly5598ugly5344ugly5508ugly6149ugly754ugly710ugly297ugly63startup_seg_n_a10a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10a_0_60)
       (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly6057ugly5571ugly6164ugly6166ugly5603ugly6089ugly583ugly308ugly136ugly816startup_seg_n_a4a7e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7e_0_75)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly6058ugly5959ugly5458ugly5481ugly6143ugly6037ugly741ugly632ugly168ugly393move_seg_o1_111d_0_45_seg_o1_111c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_111d_0_45) (not_occupied seg_o1_111c_0_34)
       (not_blocked seg_o1_111c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_111c_0_34 airplane_daewh)
       (not_blocked seg_o1_111c_0_34 airplane_daew3)
       (not_blocked seg_o1_111c_0_34 airplane_daew7)
       (not_blocked seg_o1_111c_0_34 airplane_cfbe1)
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
  ugly6059ugly5452ugly5309ugly5501ugly5856ugly5876ugly147ugly561ugly728ugly640move_seg_o1_118b_0_60_seg_o1_118c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118b_0_60) (not_occupied seg_o1_118c_0_34)
       (not_blocked seg_o1_118c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_118c_0_34 airplane_daewh)
       (not_blocked seg_o1_118c_0_34 airplane_daew3)
       (not_blocked seg_o1_118c_0_34 airplane_daew7)
       (not_blocked seg_o1_118c_0_34 airplane_cfbe1)
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
  ugly6060ugly5682ugly5796ugly6006ugly5861ugly5736ugly284ugly713ugly948ugly324startup_seg_o1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1a_0_60)
       (not_occupied seg_p101_0_76))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p101_0_76 ?a)
       (not (not_blocked seg_p101_0_76 ?a))))
 (:action
  ugly6061ugly5765ugly5718ugly5910ugly5979ugly5940ugly553ugly523ugly467ugly515startup_seg_m_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7b_0_75)
       (not_occupied seg_m_a4a7a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7a_0_75 ?a)
       (not (not_blocked seg_m_a4a7a_0_75 ?a))))
 (:action
  ugly6062ugly5554ugly5599ugly5532ugly6001ugly5463ugly952ugly328ugly908ugly695park_seg_p161_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p161_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p161_0_75) (not (is-moving ?a))))
 (:action
  ugly6063ugly5964ugly5975ugly5870ugly5454ugly5965ugly895ugly216ugly550ugly866startup_seg_m_a3a4a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3a4b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4b_0_75 ?a)
       (not (not_blocked seg_m_a3a4b_0_75 ?a))))
 (:action
  ugly6064ugly5503ugly5278ugly5784ugly5987ugly6020ugly640ugly300ugly482ugly863move_seg_w1_143b_0_45_seg_p143_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143b_0_45) (not_occupied seg_p143_0_75)
       (not_blocked seg_p143_0_75 airplane_cfbeg)
       (not_blocked seg_p143_0_75 airplane_daewh)
       (not_blocked seg_p143_0_75 airplane_daew3)
       (not_blocked seg_p143_0_75 airplane_daew7)
       (not_blocked seg_p143_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_143b_0_45))
       (not_occupied seg_w1_143b_0_45) (not (at-segment ?a seg_w1_143b_0_45))
       (occupied seg_p143_0_75) (not (not_occupied seg_p143_0_75))
       (blocked seg_p143_0_75 ?a) (not (not_blocked seg_p143_0_75 ?a))
       (at-segment ?a seg_p143_0_75) (not (blocked seg_w1_143a_0_34 ?a))
       (not_blocked seg_w1_143a_0_34 ?a) (not (blocked seg_w1_143c_0_60 ?a))
       (not_blocked seg_w1_143c_0_60 ?a)))
 (:action
  ugly6065ugly5691ugly5788ugly5869ugly5747ugly5957ugly631ugly448ugly645ugly880move_seg_w1_153a_0_34_seg_w1_153b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_153a_0_34) (not_occupied seg_w1_153b_0_45)
       (not_blocked seg_w1_153b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_153b_0_45 airplane_daewh)
       (not_blocked seg_w1_153b_0_45 airplane_daew3)
       (not_blocked seg_w1_153b_0_45 airplane_daew7)
       (not_blocked seg_w1_153b_0_45 airplane_cfbe1)
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
  ugly6066ugly5256ugly5384ugly5528ugly5800ugly5886ugly580ugly25ugly680ugly273startup_seg_n_n2a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a_0_60)
       (not_occupied seg_n_n2a4a_0_70))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4a_0_70 ?a)
       (not (not_blocked seg_n_n2a4a_0_70 ?a))))
 (:action
  ugly6067ugly6044ugly5472ugly5420ugly5351ugly5298ugly121ugly892ugly183ugly595startup_seg_a9_b_0_159_512_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a9_b_0_159_512)
       (not_occupied seg_a9_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a9_a_0_158_647 ?a)
       (not (not_blocked seg_a9_a_0_158_647 ?a))))
 (:action
  ugly6068ugly5486ugly5623ugly5445ugly5862ugly5615ugly130ugly775ugly531ugly167startup_seg_w1_c1a_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_n1_0_108))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_0_108 ?a)
       (not (not_blocked seg_n1_0_108 ?a))))
 (:action
  ugly6069ugly5766ugly5410ugly5827ugly6068ugly5486ugly374ugly413ugly869ugly831startup_seg_p143_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p143_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6070ugly5706ugly6162ugly5320ugly5737ugly5289ugly439ugly692ugly854ugly679move_seg_n_a2a3b_0_75_seg_n_a2a3a_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3b_0_75) (not_occupied seg_n_a2a3a_0_75)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3a_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3a_0_75 airplane_daew7)
       (not_blocked seg_n_a2a3a_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3b_0_75))
       (not_occupied seg_n_a2a3b_0_75) (not (at-segment ?a seg_n_a2a3b_0_75))
       (occupied seg_n_a2a3a_0_75) (not (not_occupied seg_n_a2a3a_0_75))
       (blocked seg_n_a2a3a_0_75 ?a) (not (not_blocked seg_n_a2a3a_0_75 ?a))
       (at-segment ?a seg_n_a2a3a_0_75) (not (blocked seg_n_a2a3c_0_75 ?a))
       (not_blocked seg_n_a2a3c_0_75 ?a)))
 (:action
  ugly6071ugly5601ugly5336ugly5674ugly5581ugly5988ugly774ugly944ugly789ugly505move_seg_n_a2a3c_0_75_seg_n_a2a3b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a2a3c_0_75) (not_occupied seg_n_a2a3b_0_75)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a2a3b_0_75 airplane_daewh)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew3)
       (not_blocked seg_n_a2a3b_0_75 airplane_daew7)
       (not_blocked seg_n_a2a3b_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a2a3c_0_75))
       (not_occupied seg_n_a2a3c_0_75) (not (at-segment ?a seg_n_a2a3c_0_75))
       (occupied seg_n_a2a3b_0_75) (not (not_occupied seg_n_a2a3b_0_75))
       (blocked seg_n_a2a3b_0_75 ?a) (not (not_blocked seg_n_a2a3b_0_75 ?a))
       (at-segment ?a seg_n_a2a3b_0_75) (not (blocked seg_n_a2a3d_0_75 ?a))
       (not_blocked seg_n_a2a3d_0_75 ?a)))
 (:action
  ugly6072ugly5526ugly6039ugly5635ugly5657ugly6154ugly852ugly264ugly370ugly425startup_seg_o1_111c_0_34_south_medium
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
  ugly6073ugly5446ugly5741ugly6083ugly5972ugly5651ugly936ugly732ugly791ugly305move_seg_n_a6a8c_0_75_seg_n_a6a8b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a6a8c_0_75) (not_occupied seg_n_a6a8b_0_75)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a6a8b_0_75 airplane_daewh)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew3)
       (not_blocked seg_n_a6a8b_0_75 airplane_daew7)
       (not_blocked seg_n_a6a8b_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a6a8c_0_75))
       (not_occupied seg_n_a6a8c_0_75) (not (at-segment ?a seg_n_a6a8c_0_75))
       (occupied seg_n_a6a8b_0_75) (not (not_occupied seg_n_a6a8b_0_75))
       (blocked seg_n_a6a8b_0_75 ?a) (not (not_blocked seg_n_a6a8b_0_75 ?a))
       (at-segment ?a seg_n_a6a8b_0_75) (not (blocked seg_n_a6a8d_0_75 ?a))
       (not_blocked seg_n_a6a8d_0_75 ?a)))
 (:action
  ugly6074ugly6187ugly5769ugly5850ugly5787ugly5321ugly210ugly115ugly857ugly151startup_seg_m_a4a7c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7c_0_75)
       (not_occupied seg_m_a4a7b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7b_0_75 ?a)
       (not (not_blocked seg_m_a4a7b_0_75 ?a))))
 (:action
  ugly6075ugly6090ugly5394ugly5364ugly6050ugly5902ugly8ugly178ugly621ugly241startup_seg_o1_c2d_0_60_south_medium
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
  ugly6076ugly5594ugly6157ugly6151ugly5301ugly5819ugly297ugly63ugly834ugly166startup_seg_08l_a3b_0_161_245_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_08l_a3b_0_161_245)
       (not_occupied seg_a3_a_0_158_647))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_a_0_158_647 ?a)
       (not (not_blocked seg_a3_a_0_158_647 ?a))))
 (:action
  ugly6077ugly5912ugly5941ugly5683ugly5404ugly6145ugly465ugly575ugly362ugly792startup_seg_m_a7a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a_0_120_934)
       (not_occupied seg_a7_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a7_b_0_80_6226 ?a)
       (not (not_blocked seg_a7_b_0_80_6226 ?a))))
 (:action
  ugly6078ugly5848ugly5475ugly5727ugly5305ugly5405ugly597ugly69ugly772ugly852move_seg_p112_0_76_seg_o1_c3b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p112_0_76) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew7)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p112_0_76))
       (not_occupied seg_p112_0_76) (not (at-segment ?a seg_p112_0_76))
       (occupied seg_o1_c3b_0_60) (not (not_occupied seg_o1_c3b_0_60))
       (blocked seg_o1_c3b_0_60 ?a) (not (not_blocked seg_o1_c3b_0_60 ?a))
       (at-segment ?a seg_o1_c3b_0_60)))
 (:action
  ugly6079ugly6013ugly5345ugly5978ugly5359ugly5468ugly513ugly782ugly609ugly672startup_seg_o1_116b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116b_0_60)
       (not_occupied seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a)) (blocked seg_o1_116c_0_34 ?a)
       (not (not_blocked seg_o1_116c_0_34 ?a))))
 (:action
  ugly6080ugly6124ugly5606ugly6100ugly5834ugly5777ugly443ugly337ugly186ugly636startup_seg_w1_161a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_161a_0_34)
       (not_occupied seg_w1_161b_0_45) (not_occupied seg_w1_161c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_161b_0_45 ?a)
       (not (not_blocked seg_w1_161b_0_45 ?a)) (blocked seg_w1_161c_0_34 ?a)
       (not (not_blocked seg_w1_161c_0_34 ?a))))
 (:action
  ugly6081ugly5885ugly5548ugly5496ugly5275ugly5656ugly33ugly483ugly830ugly239move_seg_08l_a9c_0_80_seg_09l_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a9c_0_80) (not_occupied seg_09l_0_80)
       (not_blocked seg_09l_0_80 airplane_cfbeg)
       (not_blocked seg_09l_0_80 airplane_daewh)
       (not_blocked seg_09l_0_80 airplane_daew3)
       (not_blocked seg_09l_0_80 airplane_daew7)
       (not_blocked seg_09l_0_80 airplane_cfbe1)
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
  ugly6082ugly5386ugly5679ugly5925ugly6055ugly5999ugly189ugly385ugly142ugly783pushback_seg_o1_108c_0_34_seg_o1_109a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_o1_108c_0_34) (not_occupied seg_o1_109a_0_34)
       (not_blocked seg_o1_109a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_109a_0_34 airplane_daewh)
       (not_blocked seg_o1_109a_0_34 airplane_daew3)
       (not_blocked seg_o1_109a_0_34 airplane_daew7)
       (not_blocked seg_o1_109a_0_34 airplane_cfbe1))
  :effect
  (and (not (occupied seg_o1_108c_0_34)) (not_occupied seg_o1_108c_0_34)
       (not (blocked seg_o1_108c_0_34 ?a)) (not_blocked seg_o1_108c_0_34 ?a)
       (not (at-segment ?a seg_o1_108c_0_34)) (occupied seg_o1_109a_0_34)
       (not (not_occupied seg_o1_109a_0_34)) (blocked seg_o1_109a_0_34 ?a)
       (not (not_blocked seg_o1_109a_0_34 ?a)) (at-segment ?a seg_o1_109a_0_34)
       (not (facing ?a north)) (facing ?a south)))
 (:action
  ugly6083ugly5972ugly5651ugly6185ugly5828ugly5406ugly472ugly678ugly744ugly132move_seg_w1_143c_0_60_seg_w1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143c_0_60) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_daew7)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1))
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
  ugly6084ugly5701ugly5602ugly5429ugly5357ugly6108ugly341ugly533ugly447ugly143startup_seg_m_a3a_0_120_934_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a_0_120_934)
       (not_occupied seg_a3_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a3_b_0_159_512 ?a)
       (not (not_blocked seg_a3_b_0_159_512 ?a))))
 (:action
  ugly6085ugly5355ugly5693ugly5717ugly5761ugly5262ugly169ugly433ugly64ugly235startup_seg_p111_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6086ugly6188ugly5713ugly5478ugly5914ugly5824ugly246ugly406ugly510ugly720startup_seg_o1_c4c_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c4c_0_80)
       (not_occupied seg_o1_c4a_0_34) (not_occupied seg_o1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c4a_0_34 ?a)
       (not (not_blocked seg_o1_c4a_0_34 ?a)) (blocked seg_o1_c4b_0_60 ?a)
       (not (not_blocked seg_o1_c4b_0_60 ?a))))
 (:action
  ugly6087ugly5712ugly5566ugly5626ugly6081ugly5885ugly299ugly502ugly387ugly402startup_seg_m_a6b_0_60_south_medium
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
  ugly6088ugly5825ugly5392ugly5523ugly5882ugly5453ugly308ugly136ugly816ugly888move_seg_a2_a_0_90_seg_08l_a2b_0_80_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a2_a_0_90) (not_occupied seg_08l_a2b_0_80)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbeg)
       (not_blocked seg_08l_a2b_0_80 airplane_daewh)
       (not_blocked seg_08l_a2b_0_80 airplane_daew3)
       (not_blocked seg_08l_a2b_0_80 airplane_daew7)
       (not_blocked seg_08l_a2b_0_80 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a2_a_0_90))
       (not_occupied seg_a2_a_0_90) (not (at-segment ?a seg_a2_a_0_90))
       (occupied seg_08l_a2b_0_80) (not (not_occupied seg_08l_a2b_0_80))
       (blocked seg_08l_a2b_0_80 ?a) (not (not_blocked seg_08l_a2b_0_80 ?a))
       (at-segment ?a seg_08l_a2b_0_80) (not (blocked seg_a2_b_0_90 ?a))
       (not_blocked seg_a2_b_0_90 ?a)))
 (:action
  ugly6089ugly5832ugly5976ugly5260ugly5390ugly6119ugly509ugly809ugly372ugly473move_seg_w1_142b_0_45_seg_w1_142c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_142b_0_45) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daew7)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1)
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
  ugly6090ugly5394ugly5364ugly6050ugly5902ugly5257ugly467ugly515ugly727ugly312startup_seg_w1_c1a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1a_0_60)
       (not_occupied seg_w1_c1b_0_60) (not_occupied seg_w1_c1c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a)) (blocked seg_w1_c1c_0_34 ?a)
       (not (not_blocked seg_w1_c1c_0_34 ?a))))
 (:action
  ugly6091ugly5909ugly5522ugly5767ugly6025ugly5279ugly507ugly797ugly787ugly547startup_seg_m_a9a10g_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10g_0_80)
       (not_occupied seg_m_a9a10f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10f_0_75 ?a)
       (not (not_blocked seg_m_a9a10f_0_75 ?a))))
 (:action
  ugly6092ugly5911ugly5916ugly5922ugly5883ugly5789ugly536ugly319ugly137ugly776move_seg_o1_102a_0_34_seg_o1_c1b_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_102a_0_34) (not_occupied seg_o1_c1b_0_34)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbeg)
       (not_blocked seg_o1_c1b_0_34 airplane_daewh)
       (not_blocked seg_o1_c1b_0_34 airplane_daew3)
       (not_blocked seg_o1_c1b_0_34 airplane_daew7)
       (not_blocked seg_o1_c1b_0_34 airplane_cfbe1))
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
  ugly6093ugly5442ugly6074ugly6187ugly5769ugly5850ugly538ugly446ugly884ugly945startup_seg_m_a7d_0_60_south_medium
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
  ugly6094ugly6189ugly5492ugly5280ugly6098ugly6038ugly568ugly898ugly492ugly677move_seg_o1_c2c_0_34_seg_o1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c2c_0_34) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew7)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1)
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
  ugly6095ugly5872ugly6019ugly5637ugly5536ugly5950ugly544ugly872ugly914ugly7pushback_seg_p131_0_75_seg_o1_108d_0_45_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_p131_0_75) (not_occupied seg_o1_108d_0_45)
       (not_blocked seg_o1_108d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_108d_0_45 airplane_daewh)
       (not_blocked seg_o1_108d_0_45 airplane_daew3)
       (not_blocked seg_o1_108d_0_45 airplane_daew7)
       (not_blocked seg_o1_108d_0_45 airplane_cfbe1))
  :effect
  (and (not (occupied seg_p131_0_75)) (not_occupied seg_p131_0_75)
       (not (blocked seg_p131_0_75 ?a)) (not_blocked seg_p131_0_75 ?a)
       (not (at-segment ?a seg_p131_0_75)) (occupied seg_o1_108d_0_45)
       (not (not_occupied seg_o1_108d_0_45)) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))
       (at-segment ?a seg_o1_108d_0_45)))
 (:action
  ugly6096ugly5803ugly6087ugly5712ugly5566ugly5626ugly832ugly725ugly363ugly472startup_seg_a8_a_0_157_785_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly6097ugly5783ugly5708ugly5665ugly6061ugly5765ugly469ugly295ugly54ugly535startup_seg_p133_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p133_0_75)
       (not_occupied seg_o1_110d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_110d_0_45 ?a)
       (not (not_blocked seg_o1_110d_0_45 ?a))))
 (:action
  ugly6098ugly6038ugly5817ugly6009ugly5456ugly5542ugly54ugly535ugly573ugly92startup_seg_m_a9a10d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a9a10d_0_75)
       (not_occupied seg_m_a9a10e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a9a10e_0_75 ?a)
       (not (not_blocked seg_m_a9a10e_0_75 ?a))))
 (:action
  ugly6099ugly6132ugly5750ugly5540ugly5288ugly6057ugly322ugly671ugly188ugly236startup_seg_m_a4a7e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4a7e_0_75)
       (not_occupied seg_m_a4a7d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a7d_0_75 ?a)
       (not (not_blocked seg_m_a4a7d_0_75 ?a))))
 (:action
  ugly6100ugly5834ugly5777ugly5692ugly6062ugly5554ugly350ugly576ugly245ugly745startup_seg_w1_c4a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_164c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_164c_0_34 ?a)
       (not (not_blocked seg_w1_164c_0_34 ?a))))
 (:action
  ugly6101ugly5952ugly5627ugly5993ugly5506ugly6096ugly554ugly36ugly274ugly667startup_seg_m_a6a_0_60_south_medium
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
  ugly6102ugly5322ugly5810ugly5451ugly5728ugly5476ugly957ugly574ugly865ugly684move_seg_o1_103b_0_60_seg_o1_103c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_103b_0_60) (not_occupied seg_o1_103c_0_34)
       (not_blocked seg_o1_103c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_103c_0_34 airplane_daewh)
       (not_blocked seg_o1_103c_0_34 airplane_daew3)
       (not_blocked seg_o1_103c_0_34 airplane_daew7)
       (not_blocked seg_o1_103c_0_34 airplane_cfbe1)
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
  ugly6103ugly5830ugly5547ugly5951ugly5776ugly6170ugly873ugly773ugly75ugly330startup_seg_m_a4c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a4c_0_60)
       (not_occupied seg_n_a4a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a_0_60 ?a)
       (not (not_blocked seg_n_a4a_0_60 ?a))))
 (:action
  ugly6104ugly5757ugly5563ugly6135ugly5612ugly5616ugly275ugly838ugly496ugly399move_seg_o1_115a_0_34_seg_o1_115c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_115a_0_34) (not_occupied seg_o1_115c_0_34)
       (not_blocked seg_o1_115c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_115c_0_34 airplane_daewh)
       (not_blocked seg_o1_115c_0_34 airplane_daew3)
       (not_blocked seg_o1_115c_0_34 airplane_daew7)
       (not_blocked seg_o1_115c_0_34 airplane_cfbe1)
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
  ugly6105ugly5774ugly6067ugly6044ugly5472ugly5420ugly102ugly905ugly94ugly306move_seg_m_a8b_0_60_seg_n_a8a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_m_a8b_0_60) (not_occupied seg_n_a8a_0_60)
       (not_blocked seg_n_a8a_0_60 airplane_cfbeg)
       (not_blocked seg_n_a8a_0_60 airplane_daewh)
       (not_blocked seg_n_a8a_0_60 airplane_daew3)
       (not_blocked seg_n_a8a_0_60 airplane_daew7)
       (not_blocked seg_n_a8a_0_60 airplane_cfbe1))
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
  ugly6106ugly5407ugly6060ugly5682ugly5796ugly6006ugly612ugly99ugly545ugly606startup_seg_n_a7c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7c_0_60)
       (not_occupied seg_n_a4a7f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7f_0_75 ?a)
       (not (not_blocked seg_n_a4a7f_0_75 ?a))))
 (:action
  ugly6107ugly5722ugly5970ugly5525ugly5467ugly5845ugly734ugly821ugly111ugly157startup_seg_o1_c2b_0_60_south_medium
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
  ugly6108ugly5590ugly5512ugly5402ugly5471ugly6103ugly581ugly691ugly70ugly590move_seg_w1_c2c_0_34_seg_w1_c2a_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_c2c_0_34) (not_occupied seg_w1_c2a_0_60)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_w1_c2a_0_60 airplane_daewh)
       (not_blocked seg_w1_c2a_0_60 airplane_daew3)
       (not_blocked seg_w1_c2a_0_60 airplane_daew7)
       (not_blocked seg_w1_c2a_0_60 airplane_cfbe1)
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
  ugly6109ugly6014ugly6161ugly6033ugly5989ugly6202ugly236ugly733ugly67ugly332move_seg_w1_163b_0_45_seg_w1_163c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_163b_0_45) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daew7)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1)
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
  ugly6110ugly5725ugly5290ugly5373ugly5650ugly5653ugly208ugly139ugly205ugly641move_seg_o1_103c_0_34_seg_o1_104a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_103c_0_34) (not_occupied seg_o1_104a_0_34)
       (not_blocked seg_o1_104a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_104a_0_34 airplane_daewh)
       (not_blocked seg_o1_104a_0_34 airplane_daew3)
       (not_blocked seg_o1_104a_0_34 airplane_daew7)
       (not_blocked seg_o1_104a_0_34 airplane_cfbe1))
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
  ugly6111ugly5414ugly6177ugly5967ugly5932ugly6011ugly617ugly463ugly422ugly248startup_seg_o1_115a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115a_0_34)
       (not_occupied seg_o1_115b_0_60) (not_occupied seg_o1_115c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_115b_0_60 ?a)
       (not (not_blocked seg_o1_115b_0_60 ?a)) (blocked seg_o1_115c_0_34 ?a)
       (not (not_blocked seg_o1_115c_0_34 ?a))))
 (:action
  ugly6112ugly5255ugly5742ugly5300ugly5801ugly5618ugly69ugly772ugly852ugly264startup_seg_w1_c2c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_151a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a))))
 (:action
  ugly6113ugly5477ugly5853ugly6196ugly5838ugly5444ugly577ugly953ugly410ugly240startup_seg_n_a9a10c_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10d_0_75 ?a)
       (not (not_blocked seg_n_a9a10d_0_75 ?a))))
 (:action
  ugly6114ugly5875ugly5409ugly5518ugly5772ugly6150ugly650ugly589ugly161ugly260startup_seg_p111_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p111_0_76)
       (not_occupied seg_o1_111b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111b_0_60 ?a)
       (not (not_blocked seg_o1_111b_0_60 ?a))))
 (:action
  ugly6115ugly6128ugly5579ugly6072ugly5526ugly6039ugly386ugly799ugly596ugly485startup_seg_m_a6a8a_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a6a8a_0_75)
       (not_occupied seg_m_a6a8b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6a8b_0_75 ?a)
       (not (not_blocked seg_m_a6a8b_0_75 ?a))))
 (:action
  ugly6116ugly5632ugly5660ugly5948ugly5754ugly5488ugly796ugly660ugly181ugly12startup_seg_o1_116c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_116c_0_34)
       (not_occupied seg_o1_117a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_117a_0_34 ?a)
       (not (not_blocked seg_o1_117a_0_34 ?a))))
 (:action
  ugly6117ugly5387ugly6080ugly6124ugly5606ugly6100ugly585ugly737ugly761ugly358park_seg_p110_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))))
 (:action
  ugly6118ugly5362ugly5294ugly6092ugly5911ugly5916ugly673ugly317ugly101ugly554move_seg_08l_a7d_0_80_seg_08l_a7b_0_161_245_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_08l_a7d_0_80) (not_occupied seg_08l_a7b_0_161_245)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbeg)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daewh)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew3)
       (not_blocked seg_08l_a7b_0_161_245 airplane_daew7)
       (not_blocked seg_08l_a7b_0_161_245 airplane_cfbe1)
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
  ugly6119ugly5758ugly6160ugly5791ugly5868ugly5315ugly224ugly804ugly58ugly187startup_seg_p115_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p115_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6120ugly5268ugly5428ugly6042ugly5366ugly5739ugly679ugly16ugly65ugly845startup_seg_o1_104b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_104b_0_60)
       (not_occupied seg_o1_104a_0_34) (not_occupied seg_o1_104c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_104a_0_34 ?a)
       (not (not_blocked seg_o1_104a_0_34 ?a)) (blocked seg_o1_104c_0_60 ?a)
       (not (not_blocked seg_o1_104c_0_60 ?a))))
 (:action
  ugly6121ugly5720ugly5520ugly5304ugly5962ugly5326ugly420ugly923ugly253ugly121startup_seg_n_a7b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7b_0_60)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly6122ugly5640ugly6005ugly5529ugly5460ugly5274ugly635ugly486ugly941ugly955startup_seg_n_a6c_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6c_0_60)
       (not_occupied seg_n_a7a6d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6d_0_75 ?a)
       (not (not_blocked seg_n_a7a6d_0_75 ?a))))
 (:action
  ugly6123ugly6142ugly5690ugly5588ugly5954ugly5537ugly282ugly471ugly907ugly325startup_seg_o1_c3d_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c3d_0_60)
       (not_occupied seg_c3_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_b_0_80 ?a)
       (not (not_blocked seg_c3_b_0_80 ?a))))
 (:action
  ugly6124ugly5606ugly6100ugly5834ugly5777ugly5692ugly813ugly569ugly469ugly295move_seg_n_a7a6c_0_75_seg_n_a7a6b_0_75_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a7a6c_0_75) (not_occupied seg_n_a7a6b_0_75)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6b_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6b_0_75 airplane_daew7)
       (not_blocked seg_n_a7a6b_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a7a6c_0_75))
       (not_occupied seg_n_a7a6c_0_75) (not (at-segment ?a seg_n_a7a6c_0_75))
       (occupied seg_n_a7a6b_0_75) (not (not_occupied seg_n_a7a6b_0_75))
       (blocked seg_n_a7a6b_0_75 ?a) (not (not_blocked seg_n_a7a6b_0_75 ?a))
       (at-segment ?a seg_n_a7a6b_0_75) (not (blocked seg_n_a7a6d_0_75 ?a))
       (not_blocked seg_n_a7a6d_0_75 ?a)))
 (:action
  ugly6125ugly5918ugly5731ugly5820ugly5534ugly6125ugly669ugly528ugly749ugly521startup_seg_o1_111d_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_111d_0_45)
       (not_occupied seg_p134_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p134_0_75 ?a)
       (not (not_blocked seg_p134_0_75 ?a))))
 (:action
  ugly6126ugly5487ugly5567ugly5982ugly5555ugly5368ugly559ugly119ugly230ugly14startup_seg_o1_103a_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_103a_0_34)
       (not_occupied seg_o1_102c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_102c_0_34 ?a)
       (not (not_blocked seg_o1_102c_0_34 ?a))))
 (:action
  ugly6127ugly5613ugly6078ugly5848ugly5475ugly5727ugly56ugly683ugly587ugly879startup_seg_a7_a_0_156_924_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a7_a_0_156_924)
       (not_occupied seg_08l_a7c_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7c_0_161_245 ?a)
       (not (not_blocked seg_08l_a7c_0_161_245 ?a))))
 (:action
  ugly6128ugly5579ugly6072ugly5526ugly6039ugly5635ugly408ugly709ugly226ugly886move_seg_w1_164a_0_34_seg_w1_163c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_164a_0_34) (not_occupied seg_w1_163c_0_34)
       (not_blocked seg_w1_163c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_163c_0_34 airplane_daewh)
       (not_blocked seg_w1_163c_0_34 airplane_daew3)
       (not_blocked seg_w1_163c_0_34 airplane_daew7)
       (not_blocked seg_w1_163c_0_34 airplane_cfbe1))
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
  ugly6129ugly5890ugly6085ugly5355ugly5693ugly5717ugly512ugly805ugly544ugly872startup_seg_n_a6a8d_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8d_0_75)
       (not_occupied seg_n_a6a8e_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8e_0_75 ?a)
       (not (not_blocked seg_n_a6a8e_0_75 ?a))))
 (:action
  ugly6130ugly5949ugly5500ugly5795ugly5860ugly5342ugly826ugly208ugly139ugly205startup_seg_p118_0_76_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p118_0_76)
       (not_occupied seg_o1_118b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_118b_0_60 ?a)
       (not (not_blocked seg_o1_118b_0_60 ?a))))
 (:action
  ugly6131ugly5443ugly5312ugly5630ugly6034ugly5663ugly150ugly459ugly386ugly799park_seg_p112_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p112_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p112_0_76) (not (is-moving ?a))))
 (:action
  ugly6132ugly5750ugly5540ugly5288ugly6057ugly5571ugly915ugly52ugly509ugly809startup_seg_c2_a_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_a_0_80)
       (not_occupied seg_c2_b_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_b_0_80 ?a)
       (not (not_blocked seg_c2_b_0_80 ?a))))
 (:action
  ugly6133ugly5759ugly6179ugly5840ugly5539ugly5888ugly541ugly43ugly388ugly213park_seg_p110_0_76_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p110_0_76) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p110_0_76) (not (is-moving ?a))
       (not (blocked seg_o1_110b_0_60 ?a)) (not_blocked seg_o1_110b_0_60 ?a)))
 (:action
  ugly6134ugly6117ugly5387ugly6080ugly6124ugly5606ugly851ugly618ugly918ugly584startup_seg_n_a4a7b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a4a7b_0_75)
       (not_occupied seg_n_a4a7a_0_115))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a4a7a_0_115 ?a)
       (not (not_blocked seg_n_a4a7a_0_115 ?a))))
 (:action
  ugly6135ugly5612ugly5616ugly5524ugly5559ugly5726ugly696ugly442ugly530ugly408startup_seg_m_a3a4e_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4e_0_75)
       (not_occupied seg_m_a3a4d_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4d_0_75 ?a)
       (not (not_blocked seg_m_a3a4d_0_75 ?a))))
 (:action
  ugly6136ugly5600ugly6104ugly5757ugly5563ugly6135ugly363ugly472ugly678ugly744move_seg_w1_154b_0_45_seg_p154_0_75_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_154b_0_45) (not_occupied seg_p154_0_75)
       (not_blocked seg_p154_0_75 airplane_cfbeg)
       (not_blocked seg_p154_0_75 airplane_daewh)
       (not_blocked seg_p154_0_75 airplane_daew3)
       (not_blocked seg_p154_0_75 airplane_daew7)
       (not_blocked seg_p154_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_w1_154b_0_45))
       (not_occupied seg_w1_154b_0_45) (not (at-segment ?a seg_w1_154b_0_45))
       (occupied seg_p154_0_75) (not (not_occupied seg_p154_0_75))
       (blocked seg_p154_0_75 ?a) (not (not_blocked seg_p154_0_75 ?a))
       (at-segment ?a seg_p154_0_75) (not (blocked seg_w1_154a_0_34 ?a))
       (not_blocked seg_w1_154a_0_34 ?a) (not (blocked seg_w1_154c_0_34 ?a))
       (not_blocked seg_w1_154c_0_34 ?a)))
 (:action
  ugly6137ugly5874ugly5297ugly5664ugly5349ugly5906ugly410ugly240ugly940ugly537park_seg_p151_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p151_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p151_0_75) (not (is-moving ?a))))
 (:action
  ugly6138ugly6053ugly5538ugly6007ugly5913ugly6088ugly576ugly245ugly745ugly462move_seg_w1_151a_0_34_seg_w1_151c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34)
       (not_blocked seg_w1_151c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_151c_0_34 airplane_daewh)
       (not_blocked seg_w1_151c_0_34 airplane_daew3)
       (not_blocked seg_w1_151c_0_34 airplane_daew7)
       (not_blocked seg_w1_151c_0_34 airplane_cfbe1)
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
  ugly6139ugly6120ugly5268ugly5428ugly6042ugly5366ugly490ugly162ugly824ugly864move_seg_o1_116b_0_60_seg_p116_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_116b_0_60) (not_occupied seg_p116_0_76)
       (not_blocked seg_p116_0_76 airplane_cfbeg)
       (not_blocked seg_p116_0_76 airplane_daewh)
       (not_blocked seg_p116_0_76 airplane_daew3)
       (not_blocked seg_p116_0_76 airplane_daew7)
       (not_blocked seg_p116_0_76 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_o1_116b_0_60))
       (not_occupied seg_o1_116b_0_60) (not (at-segment ?a seg_o1_116b_0_60))
       (occupied seg_p116_0_76) (not (not_occupied seg_p116_0_76))
       (blocked seg_p116_0_76 ?a) (not (not_blocked seg_p116_0_76 ?a))
       (at-segment ?a seg_p116_0_76) (not (blocked seg_o1_116a_0_34 ?a))
       (not_blocked seg_o1_116a_0_34 ?a) (not (blocked seg_o1_116c_0_34 ?a))
       (not_blocked seg_o1_116c_0_34 ?a)))
 (:action
  ugly6140ugly5835ugly5426ugly5479ugly5296ugly5614ugly565ugly18ugly192ugly349move_seg_p103_0_76_seg_o1_103b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p103_0_76) (not_occupied seg_o1_103b_0_60)
       (not_blocked seg_o1_103b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_103b_0_60 airplane_daewh)
       (not_blocked seg_o1_103b_0_60 airplane_daew3)
       (not_blocked seg_o1_103b_0_60 airplane_daew7)
       (not_blocked seg_o1_103b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p103_0_76))
       (not_occupied seg_p103_0_76) (not (at-segment ?a seg_p103_0_76))
       (occupied seg_o1_103b_0_60) (not (not_occupied seg_o1_103b_0_60))
       (blocked seg_o1_103b_0_60 ?a) (not (not_blocked seg_o1_103b_0_60 ?a))
       (at-segment ?a seg_o1_103b_0_60)))
 (:action
  ugly6141ugly6032ugly5986ugly6048ugly5648ugly5295ugly371ugly398ugly371ugly398startup_seg_w1_c2c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c2c_0_34)
       (not_occupied seg_w1_c2a_0_60) (not_occupied seg_w1_c2b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c2a_0_60 ?a)
       (not (not_blocked seg_w1_c2a_0_60 ?a)) (blocked seg_w1_c2b_0_60 ?a)
       (not (not_blocked seg_w1_c2b_0_60 ?a))))
 (:action
  ugly6142ugly5690ugly5588ugly5954ugly5537ugly5531ugly846ugly79ugly439ugly692startup_seg_n_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a3b_0_60)
       (not_occupied seg_n_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2c_0_60 ?a)
       (not (not_blocked seg_n_n2c_0_60 ?a))))
 (:action
  ugly6143ugly6037ugly5990ugly6018ugly6113ugly5477ugly604ugly756ugly920ugly935move_seg_o1_108b_0_60_seg_p108_0_76_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_108b_0_60) (not_occupied seg_p108_0_76)
       (not_blocked seg_p108_0_76 airplane_cfbeg)
       (not_blocked seg_p108_0_76 airplane_daewh)
       (not_blocked seg_p108_0_76 airplane_daew3)
       (not_blocked seg_p108_0_76 airplane_daew7)
       (not_blocked seg_p108_0_76 airplane_cfbe1))
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
  ugly6144ugly6167ugly5871ugly5491ugly6129ugly5890ugly836ugly738ugly766ugly215startup_seg_n_n2a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n2a4b_0_75)
       (not_occupied seg_n_n2a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n2a4c_0_75 ?a)
       (not (not_blocked seg_n_n2a4c_0_75 ?a))))
 (:action
  ugly6145ugly5714ugly5317ugly5689ugly5833ugly6118ugly113ugly571ugly688ugly379startup_seg_p131_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)
       (not_occupied seg_o1_108d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_108d_0_45 ?a)
       (not (not_blocked seg_o1_108d_0_45 ?a))))
 (:action
  ugly6146ugly6169ugly5678ugly5748ugly6064ugly5503ugly29ugly650ugly589ugly161move_seg_p134_0_75_seg_o1_111d_0_45_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_p134_0_75) (not_occupied seg_o1_111d_0_45)
       (not_blocked seg_o1_111d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_111d_0_45 airplane_daewh)
       (not_blocked seg_o1_111d_0_45 airplane_daew3)
       (not_blocked seg_o1_111d_0_45 airplane_daew7)
       (not_blocked seg_o1_111d_0_45 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_p134_0_75))
       (not_occupied seg_p134_0_75) (not (at-segment ?a seg_p134_0_75))
       (occupied seg_o1_111d_0_45) (not (not_occupied seg_o1_111d_0_45))
       (blocked seg_o1_111d_0_45 ?a) (not (not_blocked seg_o1_111d_0_45 ?a))
       (at-segment ?a seg_o1_111d_0_45)))
 (:action
  ugly6147ugly5694ugly5502ugly6156ugly6171ugly5695ugly86ugly21ugly194ugly444startup_seg_m_a7a6d_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a7a6d_0_85)
       (not_occupied seg_m_a6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a6c_0_60 ?a)
       (not (not_blocked seg_m_a6c_0_60 ?a))))
 (:action
  ugly6148ugly5841ugly5931ugly6205ugly5942ugly5354ugly362ugly792ugly736ugly563startup_seg_w1_151b_0_45_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_151b_0_45)
       (not_occupied seg_w1_151a_0_34) (not_occupied seg_w1_151c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_151a_0_34 ?a)
       (not (not_blocked seg_w1_151a_0_34 ?a)) (blocked seg_w1_151c_0_34 ?a)
       (not (not_blocked seg_w1_151c_0_34 ?a))))
 (:action
  ugly6149ugly6003ugly5583ugly5735ugly5281ugly5391ugly244ugly504ugly903ugly708move_seg_c1_n2b_0_80_seg_c1_n2c_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbeg)
       (not_blocked seg_c1_n2c_0_60 airplane_daewh)
       (not_blocked seg_c1_n2c_0_60 airplane_daew3)
       (not_blocked seg_c1_n2c_0_60 airplane_daew7)
       (not_blocked seg_c1_n2c_0_60 airplane_cfbe1)
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
  ugly6150ugly5899ugly5773ugly5732ugly5450ugly5798ugly125ugly438ugly707ugly566startup_seg_w1_142b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_142b_0_45)
       (not_occupied seg_p142_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p142_0_75 ?a)
       (not (not_blocked seg_p142_0_75 ?a))))
 (:action
  ugly6151ugly5301ugly5819ugly5546ugly5388ugly5267ugly714ugly116ugly98ugly46move_seg_o1_108a_0_34_seg_o1_108b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108b_0_60)
       (not_blocked seg_o1_108b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_108b_0_60 airplane_daewh)
       (not_blocked seg_o1_108b_0_60 airplane_daew3)
       (not_blocked seg_o1_108b_0_60 airplane_daew7)
       (not_blocked seg_o1_108b_0_60 airplane_cfbe1)
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
  ugly6152ugly5527ugly5894ugly5843ugly5821ugly6148ugly592ugly341ugly533ugly447move_seg_w1_161a_0_34_seg_w1_161b_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161b_0_45)
       (not_blocked seg_w1_161b_0_45 airplane_cfbeg)
       (not_blocked seg_w1_161b_0_45 airplane_daewh)
       (not_blocked seg_w1_161b_0_45 airplane_daew3)
       (not_blocked seg_w1_161b_0_45 airplane_daew7)
       (not_blocked seg_w1_161b_0_45 airplane_cfbe1)
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
  ugly6153ugly5339ugly5755ugly5699ugly5749ugly5771ugly58ugly187ugly610ugly850move_seg_w1_161a_0_34_seg_w1_161c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_161a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daew7)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1)
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
  ugly6154ugly6101ugly5952ugly5627ugly5993ugly5506ugly847ugly298ugly179ugly800move_seg_o1_116a_0_34_seg_o1_116c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_116a_0_34) (not_occupied seg_o1_116c_0_34)
       (not_blocked seg_o1_116c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_116c_0_34 airplane_daewh)
       (not_blocked seg_o1_116c_0_34 airplane_daew3)
       (not_blocked seg_o1_116c_0_34 airplane_daew7)
       (not_blocked seg_o1_116c_0_34 airplane_cfbe1)
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
  ugly6155ugly6021ugly5560ugly5991ugly6069ugly5766ugly161ugly260ugly583ugly308move_seg_w1_162a_0_34_seg_w1_161c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_162a_0_34) (not_occupied seg_w1_161c_0_34)
       (not_blocked seg_w1_161c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_161c_0_34 airplane_daewh)
       (not_blocked seg_w1_161c_0_34 airplane_daew3)
       (not_blocked seg_w1_161c_0_34 airplane_daew7)
       (not_blocked seg_w1_161c_0_34 airplane_cfbe1))
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
  ugly6156ugly6171ugly5695ugly5335ugly5434ugly6040ugly250ugly246ugly406ugly510startup_seg_a4_b_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a4_b_0_79_7559)
       (not_occupied seg_m_a4a_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a4a_0_120_934 ?a)
       (not (not_blocked seg_m_a4a_0_120_934 ?a))))
 (:action
  ugly6157ugly6151ugly5301ugly5819ugly5546ugly5388ugly18ugly192ugly349ugly189startup_seg_w1_152a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152a_0_34)
       (not_occupied seg_w1_152b_0_45) (not_occupied seg_w1_152c_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_152b_0_45 ?a)
       (not (not_blocked seg_w1_152b_0_45 ?a)) (blocked seg_w1_152c_0_34 ?a)
       (not (not_blocked seg_w1_152c_0_34 ?a))))
 (:action
  ugly6158ugly5569ugly5564ugly5511ugly5400ugly5323ugly327ugly78ugly917ugly270startup_seg_w1_c3a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c3a_0_34)
       (not_occupied seg_w1_c3b_0_60) (not_occupied seg_w1_c3c_0_48))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3b_0_60 ?a)
       (not (not_blocked seg_w1_c3b_0_60 ?a)) (blocked seg_w1_c3c_0_48 ?a)
       (not (not_blocked seg_w1_c3c_0_48 ?a))))
 (:action
  ugly6159ugly5417ugly5813ugly5350ugly5770ugly5955ugly22ugly414ugly635ugly486startup_seg_n_a9a10c_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a9a10c_0_75)
       (not_occupied seg_n_a9a10b_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a9a10b_0_75 ?a)
       (not (not_blocked seg_n_a9a10b_0_75 ?a))))
 (:action
  ugly6160ugly5791ugly5868ugly5315ugly5473ugly5619ugly396ugly846ugly79ugly439startup_seg_m_a3b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3b_0_60)
       (not_occupied seg_m_a3a4a_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4a_0_75 ?a)
       (not (not_blocked seg_m_a3a4a_0_75 ?a))))
 (:action
  ugly6161ugly6033ugly5989ugly6202ugly5485ugly5836ugly503ugly283ugly80ugly704startup_seg_n_a10b_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly6162ugly5320ugly5737ugly5289ugly5688ugly5371ugly419ugly411ugly788ugly591startup_seg_w1_c1c_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c1c_0_34)
       (not_occupied seg_w1_c1a_0_60) (not_occupied seg_w1_c1b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c1a_0_60 ?a)
       (not (not_blocked seg_w1_c1a_0_60 ?a)) (blocked seg_w1_c1b_0_60 ?a)
       (not (not_blocked seg_w1_c1b_0_60 ?a))))
 (:action
  ugly6163ugly5924ugly6190ugly5919ugly5915ugly5551ugly747ugly255ugly375ugly176park_seg_p152_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p152_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p152_0_75) (not (is-moving ?a))
       (not (blocked seg_w1_152b_0_45 ?a)) (not_blocked seg_w1_152b_0_45 ?a)))
 (:action
  ugly6164ugly6166ugly5603ugly6089ugly5832ugly5976ugly11ugly612ugly99ugly545startup_seg_o1_115c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_115c_0_34)
       (not_occupied seg_o1_116a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_116a_0_34 ?a)
       (not (not_blocked seg_o1_116a_0_34 ?a))))
 (:action
  ugly6165ugly5432ugly5510ugly5809ugly5892ugly5556ugly827ugly353ugly265ugly303startup_seg_c4_s6a_0_80_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_s6a_0_80)
       (not_occupied seg_c4_s6c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_s6c_0_60 ?a)
       (not (not_blocked seg_c4_s6c_0_60 ?a))))
 (:action
  ugly6166ugly5603ugly6089ugly5832ugly5976ugly5260ugly141ugly461ugly779ugly794park_seg_p132_0_75_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p132_0_75) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p132_0_75) (not (is-moving ?a))
       (not (blocked seg_o1_109d_0_45 ?a)) (not_blocked seg_o1_109d_0_45 ?a)))
 (:action
  ugly6167ugly5871ugly5491ugly6129ugly5890ugly6085ugly106ugly939ugly177ugly853park_seg_p107_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p107_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p107_0_76) (not (is-moving ?a))))
 (:action
  ugly6168ugly5381ugly5837ugly5591ugly5291ugly5779ugly15ugly412ugly901ugly351startup_seg_a6_a_0_158_647_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a6_a_0_158_647)
       (not_occupied seg_a6_b_0_159_512))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a6_b_0_159_512 ?a)
       (not (not_blocked seg_a6_b_0_159_512 ?a))))
 (:action
  ugly6169ugly5678ugly5748ugly6064ugly5503ugly5278ugly535ugly573ugly92ugly818startup_seg_p131_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p131_0_75)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6170ugly6122ugly5640ugly6005ugly5529ugly5460ugly25ugly680ugly273ugly862startup_seg_m_a3a4b_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4b_0_75)
       (not_occupied seg_m_a3a4c_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3a4c_0_75 ?a)
       (not (not_blocked seg_m_a3a4c_0_75 ?a))))
 (:action
  ugly6171ugly5695ugly5335ugly5434ugly6040ugly5499ugly860ugly465ugly575ugly362startup_seg_a8_b_0_80_6226_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_m_a8d_0_120_934))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a8d_0_120_934 ?a)
       (not (not_blocked seg_m_a8d_0_120_934 ?a))))
 (:action
  ugly6172ugly5385ugly5421ugly5292ugly5905ugly5696ugly647ugly374ugly413ugly869startup_seg_m_a10c_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10c_0_60)
       (not_occupied seg_m_a10a_0_60) (not_occupied seg_m_a10b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a10a_0_60 ?a)
       (not (not_blocked seg_m_a10a_0_60 ?a)) (blocked seg_m_a10b_0_60 ?a)
       (not (not_blocked seg_m_a10b_0_60 ?a))))
 (:action
  ugly6173ugly6126ugly5487ugly5567ugly5982ugly5555ugly119ugly230ugly14ugly490move_seg_w1_164b_0_45_seg_w1_164c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_w1_164b_0_45) (not_occupied seg_w1_164c_0_34)
       (not_blocked seg_w1_164c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_164c_0_34 airplane_daewh)
       (not_blocked seg_w1_164c_0_34 airplane_daew3)
       (not_blocked seg_w1_164c_0_34 airplane_daew7)
       (not_blocked seg_w1_164c_0_34 airplane_cfbe1)
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
  ugly6174ugly5474ugly6012ugly5541ugly5639ugly6191ugly417ugly527ugly506ugly497startup_seg_m_a4b_0_60_south_medium
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
  ugly6175ugly5743ugly5710ugly5917ugly6107ugly5722ugly721ugly316ugly491ugly314move_seg_w1_142c_0_34_seg_w1_143a_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_142c_0_34) (not_occupied seg_w1_143a_0_34)
       (not_blocked seg_w1_143a_0_34 airplane_cfbeg)
       (not_blocked seg_w1_143a_0_34 airplane_daewh)
       (not_blocked seg_w1_143a_0_34 airplane_daew3)
       (not_blocked seg_w1_143a_0_34 airplane_daew7)
       (not_blocked seg_w1_143a_0_34 airplane_cfbe1))
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
  ugly6176ugly5595ugly5253ugly5535ugly5935ugly6174ugly225ugly625ugly31ugly634move_seg_o1_c3a_0_34_seg_o1_c3c_0_48_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3c_0_48)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbeg)
       (not_blocked seg_o1_c3c_0_48 airplane_daewh)
       (not_blocked seg_o1_c3c_0_48 airplane_daew3)
       (not_blocked seg_o1_c3c_0_48 airplane_daew7)
       (not_blocked seg_o1_c3c_0_48 airplane_cfbe1)
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
  ugly6177ugly5967ugly5932ugly6011ugly5866ugly6147ugly445ugly910ugly361ugly237move_seg_o1_108a_0_34_seg_o1_108c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_108a_0_34) (not_occupied seg_o1_108c_0_34)
       (not_blocked seg_o1_108c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_108c_0_34 airplane_daewh)
       (not_blocked seg_o1_108c_0_34 airplane_daew3)
       (not_blocked seg_o1_108c_0_34 airplane_daew7)
       (not_blocked seg_o1_108c_0_34 airplane_cfbe1)
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
  ugly6178ugly5936ugly5908ugly5654ugly5337ugly6159ugly168ugly393ugly261ugly703startup_seg_a8_b_0_80_6226_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_0_80_6226)
       (not_occupied seg_a8_b_1_0_79_7559))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_1_0_79_7559 ?a)
       (not (not_blocked seg_a8_b_1_0_79_7559 ?a))))
 (:action
  ugly6179ugly5840ugly5539ugly5888ugly5790ugly5269ugly887ugly122ugly340ugly812move_seg_o1_104c_0_60_seg_o1_c2a_0_60_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_o1_104c_0_60) (not_occupied seg_o1_c2a_0_60)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c2a_0_60 airplane_daewh)
       (not_blocked seg_o1_c2a_0_60 airplane_daew3)
       (not_blocked seg_o1_c2a_0_60 airplane_daew7)
       (not_blocked seg_o1_c2a_0_60 airplane_cfbe1))
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
  ugly6180ugly5519ugly6168ugly5381ugly5837ugly5591ugly42ugly488ugly355ugly100move_seg_w1_143a_0_34_seg_w1_142c_0_34_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_w1_143a_0_34) (not_occupied seg_w1_142c_0_34)
       (not_blocked seg_w1_142c_0_34 airplane_cfbeg)
       (not_blocked seg_w1_142c_0_34 airplane_daewh)
       (not_blocked seg_w1_142c_0_34 airplane_daew3)
       (not_blocked seg_w1_142c_0_34 airplane_daew7)
       (not_blocked seg_w1_142c_0_34 airplane_cfbe1))
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
  ugly6181ugly5480ugly6093ugly5442ugly6074ugly6187ugly520ugly456ugly474ugly202move_seg_c4_s6a_0_80_seg_o1_c4c_0_80_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_s6a_0_80) (not_occupied seg_o1_c4c_0_80)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbeg)
       (not_blocked seg_o1_c4c_0_80 airplane_daewh)
       (not_blocked seg_o1_c4c_0_80 airplane_daew3)
       (not_blocked seg_o1_c4c_0_80 airplane_daew7)
       (not_blocked seg_o1_c4c_0_80 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_s6a_0_80))
       (not_occupied seg_c4_s6a_0_80) (not (at-segment ?a seg_c4_s6a_0_80))
       (occupied seg_o1_c4c_0_80) (not (not_occupied seg_o1_c4c_0_80))
       (blocked seg_o1_c4c_0_80 ?a) (not (not_blocked seg_o1_c4c_0_80 ?a))
       (at-segment ?a seg_o1_c4c_0_80) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_c4_s6c_0_60 ?a))
       (not_blocked seg_c4_s6c_0_60 ?a)))
 (:action
  ugly6182ugly5652ugly6155ugly6021ugly5560ugly5991ugly820ugly876ugly106ugly939move_seg_c1_n2a_0_60_seg_c1_n2b_0_80_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c1_n2a_0_60) (not_occupied seg_c1_n2b_0_80)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbeg)
       (not_blocked seg_c1_n2b_0_80 airplane_daewh)
       (not_blocked seg_c1_n2b_0_80 airplane_daew3)
       (not_blocked seg_c1_n2b_0_80 airplane_daew7)
       (not_blocked seg_c1_n2b_0_80 airplane_cfbe1)
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
  ugly6183ugly6193ugly5425ugly5254ugly5607ugly5724ugly79ugly439ugly692ugly854startup_seg_a8_a_0_157_785_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_a_0_157_785)
       (not_occupied seg_08l_a7b_0_161_245))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_08l_a7b_0_161_245 ?a)
       (not (not_blocked seg_08l_a7b_0_161_245 ?a))))
 (:action
  ugly6184ugly5422ugly5782ugly5745ugly5462ugly5314ugly526ugly238ugly169ugly433move_seg_n_a4a7a_0_115_seg_n_a4b_0_60_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_a4a7a_0_115) (not_occupied seg_n_a4b_0_60)
       (not_blocked seg_n_a4b_0_60 airplane_cfbeg)
       (not_blocked seg_n_a4b_0_60 airplane_daewh)
       (not_blocked seg_n_a4b_0_60 airplane_daew3)
       (not_blocked seg_n_a4b_0_60 airplane_daew7)
       (not_blocked seg_n_a4b_0_60 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4a7a_0_115))
       (not_occupied seg_n_a4a7a_0_115) (not (at-segment ?a seg_n_a4a7a_0_115))
       (occupied seg_n_a4b_0_60) (not (not_occupied seg_n_a4b_0_60))
       (blocked seg_n_a4b_0_60 ?a) (not (not_blocked seg_n_a4b_0_60 ?a))
       (at-segment ?a seg_n_a4b_0_60) (not (blocked seg_n_a4a7b_0_75 ?a))
       (not_blocked seg_n_a4a7b_0_75 ?a)))
 (:action
  ugly6185ugly5828ugly5406ugly5721ugly5719ugly5839ugly133ugly724ugly913ugly654park_seg_p109_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p109_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p109_0_76) (not (is-moving ?a))))
 (:action
  ugly6186ugly5873ugly5261ugly5330ugly5786ugly5319ugly514ugly936ugly732ugly791move_seg_o1_118a_0_34_seg_o1_118b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_118a_0_34) (not_occupied seg_o1_118b_0_60)
       (not_blocked seg_o1_118b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_118b_0_60 airplane_daewh)
       (not_blocked seg_o1_118b_0_60 airplane_daew3)
       (not_blocked seg_o1_118b_0_60 airplane_daew7)
       (not_blocked seg_o1_118b_0_60 airplane_cfbe1)
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
  ugly6187ugly5769ugly5850ugly5787ugly5321ugly5459ugly766ugly215ugly868ugly526move_seg_o1_109a_0_34_seg_o1_109d_0_45_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_109a_0_34) (not_occupied seg_o1_109d_0_45)
       (not_blocked seg_o1_109d_0_45 airplane_cfbeg)
       (not_blocked seg_o1_109d_0_45 airplane_daewh)
       (not_blocked seg_o1_109d_0_45 airplane_daew3)
       (not_blocked seg_o1_109d_0_45 airplane_daew7)
       (not_blocked seg_o1_109d_0_45 airplane_cfbe1)
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
  ugly6188ugly5713ugly5478ugly5914ugly5824ugly5495ugly909ugly383ugly674ugly617startup_seg_w1_c4a_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_c4a_0_34)
       (not_occupied seg_w1_c4b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c4b_0_60 ?a)
       (not (not_blocked seg_w1_c4b_0_60 ?a))))
 (:action
  ugly6189ugly5492ugly5280ugly6098ugly6038ugly5817ugly760ugly860ugly465ugly575park_seg_p143_0_75_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p143_0_75) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p143_0_75) (not (is-moving ?a))))
 (:action
  ugly6190ugly5919ugly5915ugly5551ugly5996ugly5521ugly935ugly223ugly5ugly278startup_seg_p116_0_76_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p116_0_76)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly6191ugly5666ugly5397ugly5433ugly5903ugly6035ugly888ugly22ugly414ugly635park_seg_p102_0_76_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_p102_0_76) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_p102_0_76) (not (is-moving ?a))))
 (:action
  ugly6192ugly5961ugly6194ugly5974ugly6112ugly5255ugly493ugly155ugly294ugly712startup_seg_m_a10b_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a10b_0_60)
       (not_occupied seg_n_a10a_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a10a_0_60 ?a)
       (not (not_blocked seg_n_a10a_0_60 ?a))))
 (:action
  ugly6193ugly5425ugly5254ugly5607ugly5724ugly5328ugly212ugly943ugly767ugly915move_seg_n_a6c_0_60_seg_n_a7a6d_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a6c_0_60) (not_occupied seg_n_a7a6d_0_75)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbeg)
       (not_blocked seg_n_a7a6d_0_75 airplane_daewh)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew3)
       (not_blocked seg_n_a7a6d_0_75 airplane_daew7)
       (not_blocked seg_n_a7a6d_0_75 airplane_cfbe1))
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
  ugly6194ugly5974ugly6112ugly5255ugly5742ugly5300ugly552ugly309ugly87ugly126startup_seg_c3_b_0_80_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_b_0_80)
       (not_occupied seg_o1_c3d_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c3d_0_60 ?a)
       (not (not_blocked seg_o1_c3d_0_60 ?a))))
 (:action
  ugly6195ugly6046ugly5667ugly5622ugly5580ugly5939ugly356ugly956ugly407ugly6move_seg_o1_102c_0_34_seg_o1_102a_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_102c_0_34) (not_occupied seg_o1_102a_0_34)
       (not_blocked seg_o1_102a_0_34 airplane_cfbeg)
       (not_blocked seg_o1_102a_0_34 airplane_daewh)
       (not_blocked seg_o1_102a_0_34 airplane_daew3)
       (not_blocked seg_o1_102a_0_34 airplane_daew7)
       (not_blocked seg_o1_102a_0_34 airplane_cfbe1)
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
  ugly6196ugly5838ugly5444ugly5826ugly5815ugly5338ugly651ugly605ugly882ugly124startup_seg_08l_a7b_0_161_245_south_medium
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
  ugly6197ugly5642ugly5572ugly5465ugly5469ugly5372ugly608ugly97ugly40ugly435startup_seg_a8_b_1_0_79_7559_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a8_b_1_0_79_7559)
       (not_occupied seg_a8_b_0_80_6226))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a8_b_0_80_6226 ?a)
       (not (not_blocked seg_a8_b_0_80_6226 ?a))))
 (:action
  ugly6198ugly5412ugly5490ugly5431ugly5302ugly5325ugly610ugly850ugly150ugly459startup_seg_w1_152b_0_45_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_152b_0_45)
       (not_occupied seg_p152_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_p152_0_75 ?a)
       (not (not_blocked seg_p152_0_75 ?a))))
 (:action
  ugly6199ugly5596ugly6197ugly5642ugly5572ugly5465ugly220ugly696ugly442ugly530startup_seg_w1_154c_0_34_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_w1_154c_0_34)
       (not_occupied seg_w1_c3a_0_34))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_w1_c3a_0_34 ?a)
       (not (not_blocked seg_w1_c3a_0_34 ?a))))
 (:action
  ugly6200ugly5593ugly5985ugly5879ugly5276ugly5403ugly732ugly791ugly305ugly48startup_seg_n_a6a8e_0_75_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a6a8e_0_75)
       (not_occupied seg_n_a6a8f_0_75))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a6a8f_0_75 ?a)
       (not (not_blocked seg_n_a6a8f_0_75 ?a))))
 (:action
  ugly6201ugly5592ugly5854ugly5259ugly5929ugly6204ugly519ugly811ugly56ugly683startup_seg_p134_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_p134_0_75)
       (not_occupied seg_o1_111d_0_45))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_111d_0_45 ?a)
       (not (not_blocked seg_o1_111d_0_45 ?a))))
 (:action
  ugly6202ugly5485ugly5836ugly5752ugly6017ugly5926ugly312ugly327ugly78ugly917move_seg_o1_c3a_0_34_seg_o1_c3b_0_60_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_c3a_0_34) (not_occupied seg_o1_c3b_0_60)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbeg)
       (not_blocked seg_o1_c3b_0_60 airplane_daewh)
       (not_blocked seg_o1_c3b_0_60 airplane_daew3)
       (not_blocked seg_o1_c3b_0_60 airplane_daew7)
       (not_blocked seg_o1_c3b_0_60 airplane_cfbe1)
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
  ugly6203ugly5498ugly5356ugly6116ugly5632ugly5660ugly699ugly699ugly699ugly699startup_seg_m_a3a4a_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_m_a3a4a_0_75)
       (not_occupied seg_m_a3b_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_m_a3b_0_60 ?a)
       (not (not_blocked seg_m_a3b_0_60 ?a))))
 (:action
  ugly6204ugly5768ugly6172ugly5385ugly5421ugly5292ugly656ugly160ugly942ugly307startup_seg_n_a7a6b_0_75_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_a7a6b_0_75)
       (not_occupied seg_n_a7a6a_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_a7a6a_0_85 ?a)
       (not (not_blocked seg_n_a7a6a_0_85 ?a))))
 (:action
  ugly6205ugly5942ugly5354ugly5611ugly5946ugly6086ugly939ugly177ugly853ugly518startup_seg_c1_n2a_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c1_n2a_0_60)
       (not_occupied seg_c1_n2b_0_80) (not_occupied seg_c1_n2c_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c1_n2b_0_80 ?a)
       (not (not_blocked seg_c1_n2b_0_80 ?a)) (blocked seg_c1_n2c_0_60 ?a)
       (not (not_blocked seg_c1_n2c_0_60 ?a))))
 (:action
  ugly6206ugly5677ugly6152ugly5527ugly5894ugly5843ugly572ugly263ugly722ugly62move_seg_o1_117b_0_60_seg_o1_117c_0_34_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_o1_117b_0_60) (not_occupied seg_o1_117c_0_34)
       (not_blocked seg_o1_117c_0_34 airplane_cfbeg)
       (not_blocked seg_o1_117c_0_34 airplane_daewh)
       (not_blocked seg_o1_117c_0_34 airplane_daew3)
       (not_blocked seg_o1_117c_0_34 airplane_daew7)
       (not_blocked seg_o1_117c_0_34 airplane_cfbe1)
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
  ugly6207ugly6176ugly5595ugly5253ugly5535ugly5935ugly925ugly657ugly118ugly282startup_seg_o1_c1b_0_34_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_o1_c1b_0_34)
       (not_occupied seg_o1_c1a_0_60) (not_occupied seg_o1_c1c_0_80))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_o1_c1a_0_60 ?a)
       (not (not_blocked seg_o1_c1a_0_60 ?a)) (blocked seg_o1_c1c_0_80 ?a)
       (not (not_blocked seg_o1_c1c_0_80 ?a))))
 (:action
  ugly6208ugly5552ugly6097ugly5783ugly5708ugly5665ugly812ugly199ugly900ugly768move_seg_n_a4c_0_60_seg_n_n2a4e_0_75_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_a4c_0_60) (not_occupied seg_n_n2a4e_0_75)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbeg)
       (not_blocked seg_n_n2a4e_0_75 airplane_daewh)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew3)
       (not_blocked seg_n_n2a4e_0_75 airplane_daew7)
       (not_blocked seg_n_n2a4e_0_75 airplane_cfbe1))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_a4c_0_60))
       (not_occupied seg_n_a4c_0_60) (not (at-segment ?a seg_n_a4c_0_60))
       (occupied seg_n_n2a4e_0_75) (not (not_occupied seg_n_n2a4e_0_75))
       (blocked seg_n_n2a4e_0_75 ?a) (not (not_blocked seg_n_n2a4e_0_75 ?a))
       (at-segment ?a seg_n_n2a4e_0_75) (not (facing ?a south))
       (facing ?a north) (not (blocked seg_n_a4a_0_60 ?a))
       (not_blocked seg_n_a4a_0_60 ?a) (not (blocked seg_n_a4b_0_60 ?a))
       (not_blocked seg_n_a4b_0_60 ?a)))) 