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
static const char *ng0 = "D:/university/az manteghi/jalase3/with select/MUX_withselsect/MUX_withselsect.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_0058674832_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 3152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5695);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 5697);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 5699);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 5701);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3552);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(29, ng0);

LAB17:    t2 = (t0 + 3472);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(30, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t15 = (t0 + 1832U);
    t18 = *((char **)t15);
    t19 = *((unsigned char *)t18);
    t20 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t17, t19);
    t15 = (t0 + 3552);
    t21 = (t15 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = t20;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB4;

LAB6:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t17 = *((unsigned char *)t3);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t19 = *((unsigned char *)t4);
    t20 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t17, t19);
    t2 = (t0 + 3552);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t20;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t17 = *((unsigned char *)t3);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t19 = *((unsigned char *)t4);
    t20 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t17, t19);
    t2 = (t0 + 3552);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t20;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB8:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t17 = *((unsigned char *)t3);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t19 = *((unsigned char *)t4);
    t20 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t17, t19);
    t2 = (t0 + 3552);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t20;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 3472);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}


extern void work_a_0058674832_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0058674832_3212880686_p_0};
	xsi_register_didat("work_a_0058674832_3212880686", "isim/MUX_withselect_tb_isim_beh.exe.sim/work/a_0058674832_3212880686.didat");
	xsi_register_executes(pe);
}
