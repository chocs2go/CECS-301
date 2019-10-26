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
static const char *ng0 = "C:/Users/drpma/OneDrive/Desktop/school/cecs 301/hw1/adder_4_b_vtf.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {412U, 0U};
static unsigned int ng3[] = {131U, 0U};
static unsigned int ng4[] = {431U, 0U};
static unsigned int ng5[] = {398U, 0U};
static unsigned int ng6[] = {45U, 0U};
static unsigned int ng7[] = {500U, 0U};
static unsigned int ng8[] = {59U, 0U};
static unsigned int ng9[] = {22U, 0U};



static void Initial_45_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 4, 0, 4);
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t2, 8, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2656);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    goto LAB1;

}


extern void work_m_00000000003578193614_1411086498_init()
{
	static char *pe[] = {(void *)Initial_45_0};
	xsi_register_didat("work_m_00000000003578193614_1411086498", "isim/adder_4_b_vtf_isim_beh.exe.sim/work/m_00000000003578193614_1411086498.didat");
	xsi_register_executes(pe);
}
