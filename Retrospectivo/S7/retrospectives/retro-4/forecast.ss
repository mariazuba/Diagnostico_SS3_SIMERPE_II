#C forecast file written by R function SS_writeforecast
#C rerun model to get more complete formatting in forecast.ss_new
#C should work with SS version: 3.3
#C file write time: 2023-10-10 11:26:20
#
1 #_benchmarks
2 #_MSY
0.6 #_SPRtarget
0.55 #_Btarget
#_Bmark_years: beg_bio, end_bio, beg_selex, end_selex, beg_relF, end_relF,  beg_recr_dist, end_recr_dist, beg_SRparm, end_SRparm (enter actual year, or values of 0 or -integer to be rel. endyr)
0 0 0 0 0 0 0 0 0 0
1 #_Bmark_relF_Basis
2 #_Forecast
1 #_Nforecastyrs
1 #_F_scalar
#_Fcast_years:  beg_selex, end_selex, beg_relF, end_relF, beg_recruits, end_recruits (enter actual year, or values of 0 or -integer to be rel. endyr)
-5 0 -5 0 -999 0
0 #_Fcast_selex
1 #_ControlRuleMethod
0.6 #_BforconstantF
0.55 #_BfornoF
1 #_Flimitfraction
2 #_N_forecast_loops
3 #_First_forecast_loop_with_stochastic_recruitment
-1 #_fcast_rec_option
0 #_fcast_rec_val
0 #_Fcast_MGparm_averaging
2022 #_FirstYear_for_caps_and_allocations
0 #_stddev_of_log_catch_ratio
0 #_Do_West_Coast_gfish_rebuilder_output
1989 #_Ydecl
2019 #_Yinit
1 #_fleet_relative_F
# Note that fleet allocation is used directly as average F if Do_Forecast=4 
2 #_basis_for_fcast_catch_tuning
# enter list of fleet number and max for fleets with max annual catch; terminate with fleet=-9999
-9999 -1
# enter list of area ID and max annual catch; terminate with area=-9999
-9999 -1
# enter list of fleet number and allocation group assignment, if any; terminate with fleet=-9999
 #_Fleet Group
       1     1
-9999 -1
 #_Year Group 1
   2022       1
-9999 -1
2 #_InputBasis
-9999 0 0 0
#
999 # verify end of input 
