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

unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0725791676_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1312U);
    t3 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB13;

LAB15:
LAB14:
LAB3:    t1 = (t0 + 4400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(40U);
    memset(t1, 0, 40U);
    t5 = t1;
    memset(t5, (unsigned char)2, 40U);
    t6 = (t0 + 4512);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 40U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(40U);
    memset(t1, 0, 40U);
    t2 = t1;
    memset(t2, (unsigned char)2, 40U);
    t5 = (t0 + 4576);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 40U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4640);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(56, ng0);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t13 = (40 - 2);
    t14 = (39 - t13);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t5 = (t6 + t16);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t17 = *((unsigned char *)t8);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t19 + 0U);
    t20 = (t10 + 0U);
    *((int *)t20) = 38;
    t20 = (t10 + 4U);
    *((int *)t20) = 0;
    t20 = (t10 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 38);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t10 + 12U);
    *((unsigned int *)t20) = t22;
    t7 = xsi_base_array_concat(t7, t18, t9, (char)97, t5, t19, (char)99, t17, (char)101);
    t22 = (39U + 1U);
    t23 = (40U != t22);
    if (t23 == 1)
        goto LAB11;

LAB12:    t20 = (t0 + 4512);
    t24 = (t20 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t7, 40U);
    xsi_driver_first_trans_fast(t20);
    goto LAB6;

LAB8:    t1 = (t0 + 1472U);
    t12 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    t3 = t12;
    goto LAB10;

LAB11:    xsi_size_not_matching(40U, t22, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t2 = (t0 + 4576);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 40U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4640);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

}

static void work_a_0725791676_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4704);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4416);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0725791676_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4768);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 40U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4432);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0725791676_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0725791676_3212880686_p_0,(void *)work_a_0725791676_3212880686_p_1,(void *)work_a_0725791676_3212880686_p_2};
	xsi_register_didat("work_a_0725791676_3212880686", "isim/timesrc_test_isim_beh.exe.sim/work/a_0725791676_3212880686.didat");
	xsi_register_executes(pe);
}
