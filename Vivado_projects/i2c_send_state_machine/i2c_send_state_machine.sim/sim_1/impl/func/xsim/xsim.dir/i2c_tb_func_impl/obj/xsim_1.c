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
extern void execute_947(char*, char *);
extern void execute_948(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_899(char*, char *);
extern void execute_905(char*, char *);
extern void execute_912(char*, char *);
extern void execute_918(char*, char *);
extern void execute_924(char*, char *);
extern void execute_929(char*, char *);
extern void execute_930(char*, char *);
extern void execute_934(char*, char *);
extern void execute_940(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_525(char*, char *);
extern void execute_526(char*, char *);
extern void execute_527(char*, char *);
extern void execute_528(char*, char *);
extern void execute_541(char*, char *);
extern void execute_542(char*, char *);
extern void execute_543(char*, char *);
extern void execute_64(char*, char *);
extern void execute_544(char*, char *);
extern void execute_128(char*, char *);
extern void execute_562(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_561(char*, char *);
extern void execute_135(char*, char *);
extern void execute_568(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void execute_573(char*, char *);
extern void execute_574(char*, char *);
extern void execute_575(char*, char *);
extern void execute_567(char*, char *);
extern void execute_170(char*, char *);
extern void execute_609(char*, char *);
extern void execute_610(char*, char *);
extern void execute_608(char*, char *);
extern void execute_665(char*, char *);
extern void execute_666(char*, char *);
extern void execute_667(char*, char *);
extern void execute_670(char*, char *);
extern void execute_671(char*, char *);
extern void execute_672(char*, char *);
extern void execute_673(char*, char *);
extern void execute_468(char*, char *);
extern void execute_851(char*, char *);
extern void execute_852(char*, char *);
extern void execute_853(char*, char *);
extern void execute_477(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_860(char*, char *);
extern void execute_861(char*, char *);
extern void execute_862(char*, char *);
extern void execute_481(char*, char *);
extern void execute_863(char*, char *);
extern void execute_864(char*, char *);
extern void execute_865(char*, char *);
extern void execute_866(char*, char *);
extern void execute_483(char*, char *);
extern void execute_484(char*, char *);
extern void execute_485(char*, char *);
extern void execute_867(char*, char *);
extern void execute_868(char*, char *);
extern void execute_869(char*, char *);
extern void execute_870(char*, char *);
extern void execute_509(char*, char *);
extern void execute_510(char*, char *);
extern void execute_511(char*, char *);
extern void execute_889(char*, char *);
extern void execute_890(char*, char *);
extern void execute_891(char*, char *);
extern void execute_892(char*, char *);
extern void execute_513(char*, char *);
extern void execute_514(char*, char *);
extern void execute_515(char*, char *);
extern void execute_949(char*, char *);
extern void execute_950(char*, char *);
extern void execute_951(char*, char *);
extern void execute_952(char*, char *);
extern void execute_953(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
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
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_224(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_229(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_234(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_239(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_361(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_366(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_376(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_386(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_391(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_595(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_600(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_605(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_610(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_623(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_628(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_633(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_638(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_651(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_661(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_666(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_671(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_689(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_694(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_712(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_722(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_727(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_740(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_745(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_750(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_780(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_785(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_790(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_795(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_808(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_818(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_833(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_840(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_879(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[190] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_947, (funcp)execute_948, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_899, (funcp)execute_905, (funcp)execute_912, (funcp)execute_918, (funcp)execute_924, (funcp)execute_929, (funcp)execute_930, (funcp)execute_934, (funcp)execute_940, (funcp)execute_8, (funcp)execute_9, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_22, (funcp)execute_23, (funcp)execute_26, (funcp)execute_27, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_525, (funcp)execute_526, (funcp)execute_527, (funcp)execute_528, (funcp)execute_541, (funcp)execute_542, (funcp)execute_543, (funcp)execute_64, (funcp)execute_544, (funcp)execute_128, (funcp)execute_562, (funcp)execute_563, (funcp)execute_564, (funcp)execute_565, (funcp)execute_561, (funcp)execute_135, (funcp)execute_568, (funcp)execute_569, (funcp)execute_570, (funcp)execute_571, (funcp)execute_572, (funcp)execute_573, (funcp)execute_574, (funcp)execute_575, (funcp)execute_567, (funcp)execute_170, (funcp)execute_609, (funcp)execute_610, (funcp)execute_608, (funcp)execute_665, (funcp)execute_666, (funcp)execute_667, (funcp)execute_670, (funcp)execute_671, (funcp)execute_672, (funcp)execute_673, (funcp)execute_468, (funcp)execute_851, (funcp)execute_852, (funcp)execute_853, (funcp)execute_477, (funcp)execute_478, (funcp)execute_479, (funcp)execute_860, (funcp)execute_861, (funcp)execute_862, (funcp)execute_481, (funcp)execute_863, (funcp)execute_864, (funcp)execute_865, (funcp)execute_866, (funcp)execute_483, (funcp)execute_484, (funcp)execute_485, (funcp)execute_867, (funcp)execute_868, (funcp)execute_869, (funcp)execute_870, (funcp)execute_509, (funcp)execute_510, (funcp)execute_511, (funcp)execute_889, (funcp)execute_890, (funcp)execute_891, (funcp)execute_892, (funcp)execute_513, (funcp)execute_514, (funcp)execute_515, (funcp)execute_949, (funcp)execute_950, (funcp)execute_951, (funcp)execute_952, (funcp)execute_953, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_17, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_73, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_99, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_224, (funcp)transaction_229, (funcp)transaction_234, (funcp)transaction_239, (funcp)transaction_250, (funcp)transaction_356, (funcp)transaction_361, (funcp)transaction_366, (funcp)transaction_371, (funcp)transaction_376, (funcp)transaction_381, (funcp)transaction_386, (funcp)transaction_391, (funcp)transaction_595, (funcp)transaction_600, (funcp)transaction_605, (funcp)transaction_610, (funcp)transaction_623, (funcp)transaction_628, (funcp)transaction_633, (funcp)transaction_638, (funcp)transaction_651, (funcp)transaction_656, (funcp)transaction_661, (funcp)transaction_666, (funcp)transaction_671, (funcp)transaction_684, (funcp)transaction_689, (funcp)transaction_694, (funcp)transaction_699, (funcp)transaction_712, (funcp)transaction_717, (funcp)transaction_722, (funcp)transaction_727, (funcp)transaction_740, (funcp)transaction_745, (funcp)transaction_750, (funcp)transaction_762, (funcp)transaction_767, (funcp)transaction_780, (funcp)transaction_785, (funcp)transaction_790, (funcp)transaction_795, (funcp)transaction_808, (funcp)transaction_818, (funcp)transaction_833, (funcp)transaction_840, (funcp)transaction_879};
const int NumRelocateId= 190;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/i2c_tb_func_impl/xsim.reloc",  (void **)funcTab, 190);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/i2c_tb_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/i2c_tb_func_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/i2c_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/i2c_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/i2c_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
