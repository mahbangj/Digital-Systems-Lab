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
static const char *ng0 = "D:/university/az manteghi/jalase9/RAM/RAM_example.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2045698577_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3637629259_3212880686_p_0(char *t0)
{
    char t8[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 4216);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 4280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 6936U);
    t4 = ieee_p_1242562249_sub_2045698577_1035706684(IEEE_P_1242562249, t8, t3, t1, 10);
    t5 = (t8 + 12U);
    t9 = *((unsigned int *)t5);
    t9 = (t9 * 1U);
    t2 = (10U != t9);
    if (t2 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 4344);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 10U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 4408);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 6936U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t8, t3, t1, 1);
    t5 = (t8 + 12U);
    t9 = *((unsigned int *)t5);
    t13 = (1U * t9);
    t2 = (8U != t13);
    if (t2 == 1)
        goto LAB7;

LAB8:    t6 = (t0 + 4472);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_size_not_matching(10U, t9, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(8U, t13, 0);
    goto LAB8;

}

static void work_a_3637629259_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4536);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4136);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3637629259_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3637629259_3212880686_p_0,(void *)work_a_3637629259_3212880686_p_1};
	xsi_register_didat("work_a_3637629259_3212880686", "isim/RAM_tb_isim_beh.exe.sim/work/a_3637629259_3212880686.didat");
	xsi_register_executes(pe);
}
