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
static const char *ng0 = "D:/university/az manteghi/HW/clock_divider/clock_divider/clock_divider.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0968957248_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t12;
    char *t13;
    int t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3720);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 6272);
    t6 = xsi_mem_cmp(t3, t4, 5U);
    if (t6 == 1)
        goto LAB6;

LAB11:    t7 = (t0 + 6277);
    t9 = xsi_mem_cmp(t7, t4, 5U);
    if (t9 == 1)
        goto LAB7;

LAB12:    t10 = (t0 + 6282);
    t12 = xsi_mem_cmp(t10, t4, 5U);
    if (t12 == 1)
        goto LAB8;

LAB13:    t13 = (t0 + 6287);
    t15 = xsi_mem_cmp(t13, t4, 5U);
    if (t15 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(35, ng0);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(27, ng0);
    t16 = (t0 + 1512U);
    t17 = *((char **)t16);
    t18 = (0 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t0 + 3816);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t22;
    xsi_driver_first_trans_fast_port(t23);
    goto LAB5;

LAB7:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t6 = (1 - 3);
    t19 = (t6 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t1 = (t3 + t21);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3816);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB8:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t6 = (2 - 3);
    t19 = (t6 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t1 = (t3 + t21);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3816);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB9:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t6 = (3 - 3);
    t19 = (t6 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t1 = (t3 + t21);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3816);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB15:;
}

static void work_a_0968957248_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3736);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1808U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 1808U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = t6;
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 + 1);
    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t6;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 + 1);
    t1 = (t0 + 2048U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t6;
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2168U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 + 1);
    t1 = (t0 + 2168U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t6;
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1808U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 13);
    if (t2 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1808U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 26);
    if (t2 != 0)
        goto LAB8;

LAB9:
LAB6:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 14);
    if (t2 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 28);
    if (t2 != 0)
        goto LAB13;

LAB14:
LAB11:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 18);
    if (t2 != 0)
        goto LAB15;

LAB17:    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 36);
    if (t2 != 0)
        goto LAB18;

LAB19:
LAB16:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2168U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 25);
    if (t2 != 0)
        goto LAB20;

LAB22:    t1 = (t0 + 2168U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 50);
    if (t2 != 0)
        goto LAB23;

LAB24:
LAB21:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1808U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB6;

LAB10:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB11;

LAB13:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB11;

LAB15:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    goto LAB16;

LAB18:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB16;

LAB20:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB21;

LAB23:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2168U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB21;

}


extern void work_a_0968957248_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0968957248_3212880686_p_0,(void *)work_a_0968957248_3212880686_p_1};
	xsi_register_didat("work_a_0968957248_3212880686", "isim/tb_isim_beh.exe.sim/work/a_0968957248_3212880686.didat");
	xsi_register_executes(pe);
}
