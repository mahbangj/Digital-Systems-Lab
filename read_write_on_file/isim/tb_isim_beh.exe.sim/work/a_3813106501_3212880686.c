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
static const char *ng0 = "D:/university/az manteghi/jalase10/read_write_on_file/RAM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3813106501_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 6388U);
    t9 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t10 = (t9 - 0);
    t11 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t9);
    t12 = (10U * t11);
    t13 = (0 + t12);
    t7 = (t3 + t13);
    t8 = (t0 + 3856);
    t14 = (t8 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 10U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1032U);
    t7 = *((char **)t3);
    t3 = (t0 + 1352U);
    t8 = *((char **)t3);
    t3 = (t0 + 6372U);
    t9 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t8, t3);
    t10 = (t9 - 0);
    t11 = (t10 * 1);
    t12 = (10U * t11);
    t13 = (0U + t12);
    t14 = (t0 + 3792);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 10U);
    xsi_driver_first_trans_delta(t14, t13, 10U, 0LL);
    goto LAB6;

}


extern void work_a_3813106501_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3813106501_3212880686_p_0};
	xsi_register_didat("work_a_3813106501_3212880686", "isim/tb_isim_beh.exe.sim/work/a_3813106501_3212880686.didat");
	xsi_register_executes(pe);
}
