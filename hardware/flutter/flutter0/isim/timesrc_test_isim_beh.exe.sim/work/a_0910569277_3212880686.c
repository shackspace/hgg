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

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0910569277_3212880686_p_0(char *t0)
{
    char t17[16];
    char t18[16];
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
    int t11;
    unsigned char t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;
    int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 844U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 844U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB23;

LAB25:
LAB24:
LAB3:    t1 = (t0 + 2476);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 2520);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2556);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2592);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2628);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t12 = (t11 == 0);
    if (t12 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 936U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 936U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB15;

LAB17:
LAB16:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2664);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2556);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2628);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2592);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1328U);
    t5 = *((char **)t2);
    t11 = (0 - 7);
    t13 = (t11 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t2 = (t5 + t15);
    t4 = *((unsigned char *)t2);
    t6 = (t0 + 2628);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t4;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t11 = (4 + 4);
    t16 = (t11 - 1);
    t13 = (7 - t16);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t6 = ((IEEE_P_2592010699) + 2312);
    t7 = (t18 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t19 = (1 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t20;
    t5 = xsi_base_array_concat(t5, t17, t6, (char)99, (unsigned char)2, (char)97, t1, t18, (char)101);
    t20 = (1U + 7U);
    t3 = (8U != t20);
    if (t3 == 1)
        goto LAB13;

LAB14:    t8 = (t0 + 2520);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t21 = (t10 + 32U);
    t22 = *((char **)t21);
    memcpy(t22, t5, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2556);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t16 = (t11 - 1);
    t1 = (t0 + 2700);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_size_not_matching(8U, t20, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2556);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB16;

LAB18:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t2 = (t0 + 684U);
    t6 = *((char **)t2);
    t7 = ((IEEE_P_2592010699) + 2312);
    t8 = (t0 + 5092U);
    t9 = (t0 + 5108U);
    t2 = xsi_base_array_concat(t2, t17, t7, (char)97, t5, t8, (char)97, t6, t9, (char)101);
    t13 = (4U + 4U);
    t4 = (8U != t13);
    if (t4 == 1)
        goto LAB21;

LAB22:    t10 = (t0 + 2520);
    t21 = (t10 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    memcpy(t24, t2, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB19;

LAB21:    xsi_size_not_matching(8U, t13, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(97, ng0);
    t11 = (4 + 4);
    t16 = (t11 + 1);
    t2 = (t0 + 2700);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2664);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2556);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2628);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2592);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB24;

}


extern void work_a_0910569277_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0910569277_3212880686_p_0};
	xsi_register_didat("work_a_0910569277_3212880686", "isim/timesrc_test_isim_beh.exe.sim/work/a_0910569277_3212880686.didat");
	xsi_register_executes(pe);
}
