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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/gjehle/Development/shackspace/hgg/hardware/flutter/flutter0/sipo.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1946893960_3212880686_p_0(char *t0)
{
    char t18[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 2264);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2176);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 2228);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2264);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 1144U);
    t6 = *((char **)t5);
    t13 = (4 - 2);
    t14 = (3 - t13);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t5 = (t6 + t16);
    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t17 = *((unsigned char *)t8);
    t9 = ((IEEE_P_2592010699) + 2312);
    t10 = (t19 + 0U);
    t20 = (t10 + 0U);
    *((int *)t20) = 2;
    t20 = (t10 + 4U);
    *((int *)t20) = 0;
    t20 = (t10 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 2);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t10 + 12U);
    *((unsigned int *)t20) = t22;
    t7 = xsi_base_array_concat(t7, t18, t9, (char)97, t5, t19, (char)99, t17, (char)101);
    t22 = (3U + 1U);
    t23 = (4U != t22);
    if (t23 == 1)
        goto LAB11;

LAB12:    t20 = (t0 + 2228);
    t24 = (t20 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 32U);
    t27 = *((char **)t26);
    memcpy(t27, t7, 4U);
    xsi_driver_first_trans_fast(t20);
    goto LAB6;

LAB8:    t1 = (t0 + 844U);
    t12 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    t3 = t12;
    goto LAB10;

LAB11:    xsi_size_not_matching(4U, t22, 0);
    goto LAB12;

}

static void work_a_1946893960_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 2300);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2184);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1946893960_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1946893960_3212880686_p_0,(void *)work_a_1946893960_3212880686_p_1};
	xsi_register_didat("work_a_1946893960_3212880686", "isim/timesrc_test_isim_beh.exe.sim/work/a_1946893960_3212880686.didat");
	xsi_register_executes(pe);
}
