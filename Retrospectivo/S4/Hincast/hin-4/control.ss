#V3.30
#C Octubre 2023 Anchoveta Cadiz data file MODELO TRIMESTRAL
#
0 # 0 means do not read wtatage.ss; 1 means read and usewtatage.ss and also read and use growth parameters
1 #_N_Growth_Patterns
1 #_N_platoons_Within_GrowthPattern
2 # recr_dist_method for parameters
1 # not yet implemented; Future usage:Spawner-Recruitment; 1=global; 2=by area
1 # number of recruitment settlement assignments 
0 # unused option
# for each settlement assignment:
#_GPattern	month	area	age
1	2	1	0	#_recr_dist_pattern1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
1 #_Nblock_Patterns
1 #_blocks_per_pattern
#_begin and end years of blocks
1989 1989
#
# controls for all timevary parameters 
1 #_env/block/dev_adjust_method for all time-vary parms (1=warn relative to base parm bounds; 3=no bound check)
#
# AUTOGEN
0 0 0 0 0 # autogen: 1st element for biology, 2nd for SR, 3rd for Q, 4th reserved, 5th for selex
# where: 0 = autogen all time-varying parms; 1 = read each time-varying parm line; 2 = read then autogen if parm min==-12345
#
# setup for M, growth, maturity, fecundity, recruitment distibution, movement
#
3 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate;_5=Maunder_M;_6=Age-range_Lorenzen
#_ #_Age_natmort_by sex x growthpattern
#_Age_0	Age_1	Age_2	Age_3	Age_4
2.21	1.3	1.3	1.3	1.3	#_natM1
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_specific_K_incr; 4=age_specific_K_decr;5=age_specific_K_each; 6=NA; 7=NA; 8=growth cessation
0 #_Age(post-settlement)_for_L1;linear growth below this
4 #_Growth_Age_for_L2 (999 to use as Linf)
-999 #_exponential decay for growth above maxage (value should approx initial Z; -999 replicates 3.24; -998 to not allow growth above maxage)
0 #_placeholder for future growth feature
#
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=disabled; 6=read length-maturity
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=female-to-male age-specific fxn; -1=male-to-female age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
#
#_growth_parms
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env_var&link	dev_link	dev_minyr	dev_maxyr	dev_PH	Block	Block_Fxn
    0	      10	      5	      5	 99	0	 -5	0	0	0	0	0	0	0	#_L_at_Amin_Fem_GP_1 
    5	      22	     19	     50	 99	0	 -5	0	0	0	0	0	0	0	#_L_at_Amax_Fem_GP_1 
  0.1	       2	   0.89	    0.9	 99	0	 -3	0	0	0	0	0	0	0	#_VonBert_K_Fem_GP_1 
 0.05	    0.25	    0.1	    0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_CV_young_Fem_GP_1  
 0.05	    0.25	    0.1	    0.1	0.8	0	 -3	0	0	0	0	0	0	0	#_CV_old_Fem_GP_1    
   -3	       3	0.00313	0.00313	 99	0	-50	0	0	0	0	0	0	0	#_Wtlen_1_Fem_GP_1   
   -3	       3	  3.278	  3.278	 99	0	-50	0	0	0	0	0	0	0	#_Wtlen_2_Fem_GP_1   
   -3	      15	     12	      0	 99	0	-50	0	0	0	0	0	0	0	#_Mat50%_Fem_GP_1    
   -3	       3	  -0.45	  -0.45	 99	0	-50	0	0	0	0	0	0	0	#_Mat_slope_Fem_GP_1 
   -3	       3	      1	      1	 99	0	-50	0	0	0	0	0	0	0	#_Eggs_alpha_Fem_GP_1
   -3	       3	      0	      0	 99	0	-50	0	0	0	0	0	0	0	#_Eggs_beta_Fem_GP_1 
    0	       2	      1	      1	 99	0	-50	0	0	0	0	0	0	0	#_RecrDist_GP_1      
    0	       2	      1	      1	 99	0	-50	0	0	0	0	0	0	0	#_RecrDist_Area_1    
    0	       2	      1	      1	 99	0	-50	0	0	0	0	0	0	0	#_RecrDist_month_1   
    1	       1	      1	      1	  1	0	 -1	0	0	0	0	0	0	0	#_CohortGrowDev      
1e-06	0.999999	    0.5	    0.5	0.5	0	-99	0	0	0	0	0	0	0	#_FracFemale_GP_1    
#_no timevary MG parameters
#
#_seasonal_effects_on_biology_parms
0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_ LO HI INIT PRIOR PR_SD PR_type PHASE
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
4 #_Spawner-Recruitment; 2=Ricker; 3=std_B-H; 4=SCAA;5=Hockey; 6=B-H_flattop; 7=survival_3Parm;8=Shepard_3Parm
0 # 0/1 to use steepness in initial equ recruitment calculation
0 # future feature: 0/1 to make realized sigmaR a function of SR curvature
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn # parm_name
  5	 15	   9	    0	    0	0	  1	0	0	0	0	0	0	0	#_SR_LN(R0)   
0.2	  1	0.88	0.777	0.113	2	 -4	0	0	0	0	0	0	0	#_SR_SCAA_null
0.3	1.6	 0.6	  1.1	   99	0	 -6	0	0	0	0	0	0	0	#_SR_sigmaR   
 -5	  5	   0	    0	   99	0	-50	0	0	0	0	0	0	0	#_SR_regime   
  0	  2	   0	    1	   99	0	-50	0	0	0	0	0	0	0	#_SR_autocorr 
#_no timevary SR parameters
1 #do_recdev:  0=none; 1=devvector (R=F(SSB)+dev); 2=deviations (R=F(SSB)+dev); 3=deviations (R=R0*dev; dev2=R-f(SSB)); 4=like 3 with sum(dev2) adding penalty
1989 # first year of main recr_devs; early devs can preceed this era
2021 # last year of main recr_devs; forecast devs start in following year
1 #_recdev phase
0 # (0/1) to read 13 advanced options
#
#Fishing Mortality info
0.1 # F ballpark
-1989 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
3 # N iterations for tuning F in hybrid method (recommend 3 to 7)
#
#_initial_F_parms; count = 0
#
#_Q_setup for fleets with cpue or survey data
#_fleet	link	link_info	extra_se	biasadj	float  #  fleetname
    2	1	0	0	0	0	#_PELAGO     
    3	1	0	0	0	0	#_ECOCADIZ   
    4	1	0	0	0	0	#_ECORECLUTAS
-9999	0	0	0	0	0	#_terminator 
#_Q_parms(if_any);Qunits_are_ln(q)
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-30	15	0.08918	0	1	0	1	0	0	0	0	0	0	0	#_LnQ_base_PELAGO(2)     
-30	15	0.08918	0	1	0	1	0	0	0	0	0	0	0	#_LnQ_base_ECOCADIZ(3)   
-30	15	0.08918	0	1	0	1	0	0	0	0	0	0	0	#_LnQ_base_ECORECLUTAS(4)
#_no timevary Q parameters
#
#_size_selex_patterns
#_Pattern	Discard	Male	Special
1	0	0	0	#_1 FLOTA      
1	0	0	0	#_2 PELAGO     
1	0	0	0	#_3 ECOCADIZ   
1	0	0	0	#_4 ECORECLUTAS
#
#_age_selex_patterns
#_Pattern	Discard	Male	Special
12	0	0	0	#_1 FLOTA      
12	0	0	0	#_2 PELAGO     
12	0	0	0	#_3 ECOCADIZ   
12	0	0	0	#_4 ECORECLUTAS
#
#_SizeSelex
#_LO	HI	INIT	PRIOR	PR_SD	PR_type	PHASE	env-var	use_dev	dev_mnyr	dev_mxyr	dev_PH	Block	Blk_Fxn  #  parm_name
-1	10	 8	0	0	0	2	0	0	0	0	0.5	0	0	#_SizeSel_P_1_FLOTA(1)      
-1	20	10	0	0	0	2	0	0	0	0	0.5	0	0	#_SizeSel_P_2_FLOTA(1)      
-3	15	10	0	0	0	3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_PELAGO(2)     
-3	20	12	0	0	0	3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_PELAGO(2)     
-1	15	10	0	0	0	3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_ECOCADIZ(3)   
-1	20	12	0	0	0	3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_ECOCADIZ(3)   
-1	10	 8	0	0	0	3	0	0	0	0	0.5	0	0	#_SizeSel_P_1_ECORECLUTAS(4)
-1	20	10	0	0	0	3	0	0	0	0	0.5	0	0	#_SizeSel_P_2_ECORECLUTAS(4)
#_AgeSelex
-2	5.5	0.1	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_1_FLOTA(1)      
-1	5.5	  5	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_2_FLOTA(1)      
-2	5.5	0.1	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_1_PELAGO(2)     
-1	5.5	  5	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_2_PELAGO(2)     
-2	5.5	0.1	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_1_ECOCADIZ(3)   
-1	5.5	  5	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_2_ECOCADIZ(3)   
-2	5.5	0.1	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_1_ECORECLUTAS(4)
-1	5.5	  5	0	0.01	0	-1	0	0	0	0	0.5	0	0	#_AgeSel_P_2_ECORECLUTAS(4)
#_no timevary selex parameters
#
0 #  use 2D_AR1 selectivity(0/1):  experimental feature
#_no 2D_AR1 selex offset used
# Tag loss and Tag reporting parameters go next
0 # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
# Input variance adjustments factors: 
#_Data_type	Fleet	Value
    4	1	 0.72024	#_Variance_adjustment_list1
    4	2	 0.44258	#_Variance_adjustment_list2
    4	3	0.537844	#_Variance_adjustment_list3
    4	4	 1.06645	#_Variance_adjustment_list4
-9999	0	       0	#_terminator               
#
1 #_maxlambdaphase
1 #_sd_offset; must be 1 if any growthCV, sigmaR, or survey extraSD is an estimated parameter
# read 0 changes to default Lambdas (default value is 1.0)
-9999 0 0 0 0 # terminator
#
0 # 0/1 read specs for more stddev reporting
#
999
