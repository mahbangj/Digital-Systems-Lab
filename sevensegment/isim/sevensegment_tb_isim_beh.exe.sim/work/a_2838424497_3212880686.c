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
static const char *ng0 = "D:/university/az manteghi/jalase6/sevensegment/sevensegment.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2838424497_3212880686_p_0(char *t0)
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
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 4689);
    t6 = xsi_mem_cmp(t3, t4, 4U);
    if (t6 == 1)
        goto LAB6;

LAB17:    t7 = (t0 + 4693);
    t9 = xsi_mem_cmp(t7, t4, 4U);
    if (t9 == 1)
        goto LAB7;

LAB18:    t10 = (t0 + 4697);
    t12 = xsi_mem_cmp(t10, t4, 4U);
    if (t12 == 1)
        goto LAB8;

LAB19:    t13 = (t0 + 4701);
    t15 = xsi_mem_cmp(t13, t4, 4U);
    if (t15 == 1)
        goto LAB9;

LAB20:    t16 = (t0 + 4705);
    t18 = xsi_mem_cmp(t16, t4, 4U);
    if (t18 == 1)
        goto LAB10;

LAB21:    t19 = (t0 + 4709);
    t21 = xsi_mem_cmp(t19, t4, 4U);
    if (t21 == 1)
        goto LAB11;

LAB22:    t22 = (t0 + 4713);
    t24 = xsi_mem_cmp(t22, t4, 4U);
    if (t24 == 1)
        goto LAB12;

LAB23:    t25 = (t0 + 4717);
    t27 = xsi_mem_cmp(t25, t4, 4U);
    if (t27 == 1)
        goto LAB13;

LAB24:    t28 = (t0 + 4721);
    t30 = xsi_mem_cmp(t28, t4, 4U);
    if (t30 == 1)
        goto LAB14;

LAB25:    t31 = (t0 + 4725);
    t33 = xsi_mem_cmp(t31, t4, 4U);
    if (t33 == 1)
        goto LAB15;

LAB26:
LAB16:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4809);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(29, ng0);
    t34 = (t0 + 4729);
    t36 = (t0 + 2912);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t34, 8U);
    xsi_driver_first_trans_fast_port(t36);
    goto LAB5;

LAB7:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 4737);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB8:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 4745);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB9:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 4753);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB10:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4761);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB11:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 4769);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB12:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4777);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB13:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4785);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB14:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 4793);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB15:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4801);
    t4 = (t0 + 2912);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB5;

LAB27:;
}


extern void work_a_2838424497_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2838424497_3212880686_p_0};
	xsi_register_didat("work_a_2838424497_3212880686", "isim/sevensegment_tb_isim_beh.exe.sim/work/a_2838424497_3212880686.didat");
	xsi_register_executes(pe);
}
