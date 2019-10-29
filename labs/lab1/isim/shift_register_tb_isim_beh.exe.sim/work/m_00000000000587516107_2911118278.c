/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/drpma/OneDrive/Desktop/school/cecs 301/lab1/shift_register_tb.v";
static int ng1[] = {9, 0};
static int ng2[] = {1, 0};
static const char *ng3 = " ns";
static int ng4[] = {6, 0};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {255U, 127U};
static unsigned int ng7[] = {127U, 127U};
static unsigned int ng8[] = {57U, 1U};
static unsigned int ng9[] = {31U, 31U};
static unsigned int ng10[] = {126U, 30U};
static unsigned int ng11[] = {127U, 30U};
static unsigned int ng12[] = {95U, 31U};



static void Always_38_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1448);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1448);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_43_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);

LAB4:    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    memset(t3, 0, 8);
    xsi_vlog_signed_unary_minus(t3, 32, t2, 32);
    t4 = ((char*)((ng2)));
    t5 = ((char*)((ng4)));
    xsi_vlog_setTimeFormat(*((unsigned int *)t3), *((unsigned int *)t4), ng3, 0, *((unsigned int *)t5));
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 2);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3576);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(53, ng0);
    t5 = ((char*)((ng6)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3592);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(55, ng0);
    t5 = ((char*)((ng7)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3608);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(59, ng0);
    t5 = ((char*)((ng8)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3624);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(62, ng0);
    t5 = ((char*)((ng9)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3640);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(65, ng0);
    t5 = ((char*)((ng10)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3656);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(68, ng0);
    t5 = ((char*)((ng11)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3672);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(71, ng0);
    t5 = ((char*)((ng9)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3688);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(74, ng0);
    t5 = ((char*)((ng12)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3704);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(77, ng0);
    t5 = ((char*)((ng12)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3720);
    *((int *)t2) = 1;
    t4 = (t0 + 3288);
    *((char **)t4) = t2;
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(80, ng0);
    t5 = ((char*)((ng9)));
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    t7 = (t0 + 2088);
    xsi_vlogvar_assign_value(t7, t5, 1, 0, 4);
    t8 = (t0 + 1928);
    xsi_vlogvar_assign_value(t8, t5, 5, 0, 2);
    t9 = (t0 + 1608);
    xsi_vlogvar_assign_value(t9, t5, 7, 0, 1);
    xsi_set_current_line(81, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}


extern void work_m_00000000000587516107_2911118278_init()
{
	static char *pe[] = {(void *)Always_38_0,(void *)Initial_43_1};
	xsi_register_didat("work_m_00000000000587516107_2911118278", "isim/shift_register_tb_isim_beh.exe.sim/work/m_00000000000587516107_2911118278.didat");
	xsi_register_executes(pe);
}
