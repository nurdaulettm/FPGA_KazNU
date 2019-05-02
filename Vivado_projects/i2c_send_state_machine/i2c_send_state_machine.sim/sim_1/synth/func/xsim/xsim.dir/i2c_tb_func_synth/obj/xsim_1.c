/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_979(char*, char *);
extern void execute_980(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_931(char*, char *);
extern void execute_937(char*, char *);
extern void execute_944(char*, char *);
extern void execute_950(char*, char *);
extern void execute_956(char*, char *);
extern void execute_961(char*, char *);
extern void execute_962(char*, char *);
extern void execute_966(char*, char *);
extern void execute_972(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_43(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_566(char*, char *);
extern void execute_562(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_567(char*, char *);
extern void execute_568(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_583(char*, char *);
extern void execute_584(char*, char *);
extern void execute_585(char*, char *);
extern void execute_62(char*, char *);
extern void execute_586(char*, char *);
extern void execute_146(char*, char *);
extern void execute_614(char*, char *);
extern void execute_615(char*, char *);
extern void execute_613(char*, char *);
extern void execute_702(char*, char *);
extern void execute_703(char*, char *);
extern void execute_704(char*, char *);
extern void execute_707(char*, char *);
extern void execute_708(char*, char *);
extern void execute_709(char*, char *);
extern void execute_710(char*, char *);
extern void execute_507(char*, char *);
extern void execute_888(char*, char *);
extern void execute_889(char*, char *);
extern void execute_890(char*, char *);
extern void execute_516(char*, char *);
extern void execute_517(char*, char *);
extern void execute_518(char*, char *);
extern void execute_897(char*, char *);
extern void execute_898(char*, char *);
extern void execute_899(char*, char *);
extern void execute_520(char*, char *);
extern void execute_900(char*, char *);
extern void execute_901(char*, char *);
extern void execute_902(char*, char *);
extern void execute_903(char*, char *);
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_524(char*, char *);
extern void execute_904(char*, char *);
extern void execute_905(char*, char *);
extern void execute_906(char*, char *);
extern void execute_907(char*, char *);
extern void execute_527(char*, char *);
extern void execute_909(char*, char *);
extern void execute_910(char*, char *);
extern void execute_911(char*, char *);
extern void execute_912(char*, char *);
extern void execute_913(char*, char *);
extern void execute_914(char*, char *);
extern void execute_915(char*, char *);
extern void execute_916(char*, char *);
extern void execute_908(char*, char *);
extern void execute_547(char*, char *);
extern void execute_548(char*, char *);
extern void execute_549(char*, char *);
extern void execute_921(char*, char *);
extern void execute_922(char*, char *);
extern void execute_923(char*, char *);
extern void execute_924(char*, char *);
extern void execute_551(char*, char *);
extern void execute_552(char*, char *);
extern void execute_553(char*, char *);
extern void execute_981(char*, char *);
extern void execute_982(char*, char *);
extern void execute_983(char*, char *);
extern void execute_984(char*, char *);
extern void execute_985(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_253(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_282(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_375(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_380(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_385(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_405(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_410(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_729(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_734(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_739(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_744(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_757(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_777(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_790(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_795(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_800(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_805(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_818(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_823(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_828(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_833(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_846(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_851(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_856(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_869(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_874(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_887(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_892(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_897(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_902(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_915(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_928(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_943(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_950(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_990(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[206] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_979, (funcp)execute_980, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_931, (funcp)execute_937, (funcp)execute_944, (funcp)execute_950, (funcp)execute_956, (funcp)execute_961, (funcp)execute_962, (funcp)execute_966, (funcp)execute_972, (funcp)execute_8, (funcp)execute_9, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_22, (funcp)execute_23, (funcp)execute_26, (funcp)execute_27, (funcp)execute_43, (funcp)execute_563, (funcp)execute_564, (funcp)execute_565, (funcp)execute_566, (funcp)execute_562, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_567, (funcp)execute_568, (funcp)execute_569, (funcp)execute_570, (funcp)execute_583, (funcp)execute_584, (funcp)execute_585, (funcp)execute_62, (funcp)execute_586, (funcp)execute_146, (funcp)execute_614, (funcp)execute_615, (funcp)execute_613, (funcp)execute_702, (funcp)execute_703, (funcp)execute_704, (funcp)execute_707, (funcp)execute_708, (funcp)execute_709, (funcp)execute_710, (funcp)execute_507, (funcp)execute_888, (funcp)execute_889, (funcp)execute_890, (funcp)execute_516, (funcp)execute_517, (funcp)execute_518, (funcp)execute_897, (funcp)execute_898, (funcp)execute_899, (funcp)execute_520, (funcp)execute_900, (funcp)execute_901, (funcp)execute_902, (funcp)execute_903, (funcp)execute_522, (funcp)execute_523, (funcp)execute_524, (funcp)execute_904, (funcp)execute_905, (funcp)execute_906, (funcp)execute_907, (funcp)execute_527, (funcp)execute_909, (funcp)execute_910, (funcp)execute_911, (funcp)execute_912, (funcp)execute_913, (funcp)execute_914, (funcp)execute_915, (funcp)execute_916, (funcp)execute_908, (funcp)execute_547, (funcp)execute_548, (funcp)execute_549, (funcp)execute_921, (funcp)execute_922, (funcp)execute_923, (funcp)execute_924, (funcp)execute_551, (funcp)execute_552, (funcp)execute_553, (funcp)execute_981, (funcp)execute_982, (funcp)execute_983, (funcp)execute_984, (funcp)execute_985, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_17, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_88, (funcp)transaction_89, (funcp)transaction_90, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_96, (funcp)transaction_98, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_102, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_121, (funcp)transaction_122, (funcp)transaction_238, (funcp)transaction_243, (funcp)transaction_248, (funcp)transaction_253, (funcp)transaction_282, (funcp)transaction_375, (funcp)transaction_380, (funcp)transaction_385, (funcp)transaction_390, (funcp)transaction_395, (funcp)transaction_400, (funcp)transaction_405, (funcp)transaction_410, (funcp)transaction_701, (funcp)transaction_706, (funcp)transaction_711, (funcp)transaction_716, (funcp)transaction_729, (funcp)transaction_734, (funcp)transaction_739, (funcp)transaction_744, (funcp)transaction_757, (funcp)transaction_762, (funcp)transaction_767, (funcp)transaction_772, (funcp)transaction_777, (funcp)transaction_790, (funcp)transaction_795, (funcp)transaction_800, (funcp)transaction_805, (funcp)transaction_818, (funcp)transaction_823, (funcp)transaction_828, (funcp)transaction_833, (funcp)transaction_846, (funcp)transaction_851, (funcp)transaction_856, (funcp)transaction_869, (funcp)transaction_874, (funcp)transaction_887, (funcp)transaction_892, (funcp)transaction_897, (funcp)transaction_902, (funcp)transaction_915, (funcp)transaction_928, (funcp)transaction_943, (funcp)transaction_950, (funcp)transaction_990};
const int NumRelocateId= 206;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/i2c_tb_func_synth/xsim.reloc",  (void **)funcTab, 206);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/i2c_tb_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/i2c_tb_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/i2c_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/i2c_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/i2c_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
