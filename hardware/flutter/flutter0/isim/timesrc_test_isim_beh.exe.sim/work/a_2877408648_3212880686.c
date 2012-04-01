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
static const char *ng0 = "/home/gjehle/Development/shackspace/hgg/hardware/flutter/flutter0/output_combinator.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2877408648_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6048);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6176);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 6240);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 6304);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t9 = (20 * 1000LL);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 6176);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = t4;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t11 = (t0 + 6176);
    xsi_driver_intertial_reject(t11, t9, t9);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_2877408648_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7};

LAB0:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6064);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 2792U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t4 = (t0 + 3112U);
    t7 = *((char **)t4);
    t8 = *((unsigned char *)t7);
    t9 = (t6 == t8);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 6368);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB9:    goto LAB2;

LAB4:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 6368);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t3 = (t14 == 0);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 6368);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB2;

LAB6:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 6368);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 6368);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(81, ng0);
    t4 = (t0 + 6368);
    t10 = (t4 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

LAB11:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 6368);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

}

static void work_a_2877408648_3212880686_p_2(char *t0)
{
    char t14[16];
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    int t13;
    int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    static char *nl0[] = {&&LAB7, &&LAB3, &&LAB4, &&LAB5, &&LAB6};

LAB0:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6080);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 6432);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 6496);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 6560);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 6624);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 72U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(105, ng0);
    t9 = (40 + 32);
    t1 = (t0 + 6688);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = t9;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t9 = (0 - 71);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t3 = *((unsigned char *)t1);
    t4 = (t0 + 6432);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t9 = (40 + 32);
    t13 = (t9 - 1);
    t10 = (71 - t13);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t5 = ((IEEE_P_2592010699) + 4000);
    t6 = (t15 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 71;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t16 = (1 - 71);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t17;
    t4 = xsi_base_array_concat(t4, t14, t5, (char)99, (unsigned char)2, (char)97, t1, t15, (char)101);
    t17 = (1U + 71U);
    t3 = (72U != t17);
    if (t3 == 1)
        goto LAB8;

LAB9:    t7 = (t0 + 6624);
    t8 = (t7 + 56U);
    t18 = *((char **)t8);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t4, 72U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 6560);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 6560);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t13 = (t9 - 1);
    t1 = (t0 + 6688);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t13;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 6432);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 6496);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 6560);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 6688);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 6432);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 6496);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 6560);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB8:    xsi_size_not_matching(72U, t17, 0);
    goto LAB9;

}

static void work_a_2877408648_3212880686_p_3(char *t0)
{
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

LAB0:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 6096);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(130, ng0);
    t1 = xsi_get_transient_memory(40U);
    memset(t1, 0, 40U);
    t5 = t1;
    memset(t5, (unsigned char)2, 40U);
    t6 = (t0 + 6752);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 40U);
    xsi_driver_first_trans_delta(t6, 0U, 40U, 0LL);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6816);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t2 = (t0 + 6752);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 40U);
    xsi_driver_first_trans_delta(t2, 0U, 40U, 0LL);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6752);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_delta(t1, 40U, 32U, 0LL);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 6816);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}


extern void work_a_2877408648_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2877408648_3212880686_p_0,(void *)work_a_2877408648_3212880686_p_1,(void *)work_a_2877408648_3212880686_p_2,(void *)work_a_2877408648_3212880686_p_3};
	xsi_register_didat("work_a_2877408648_3212880686", "isim/timesrc_test_isim_beh.exe.sim/work/a_2877408648_3212880686.didat");
	xsi_register_executes(pe);
}
