`timescale 1ns / 1ps

module cc_cell(
input a,b,
output s0, c0, s1, c1);
assign s0=a^b;
assign c0=a&b;
assign s1=~s0;
assign c1=a|b;
endmodule


module csa_16bit(
    input [15:0] a, b,
    output [15:0] sum,
    output cout,
    wire s00, c00, s10, c10,
    s01, c01, s11, c11,
    s02, c02, s12, c12,
    s03, c03, s13, c13, s04, c04, s14, c14, s05, c05, s15, c15,
    s06, c06, s16, c16, s07, c07, s17, c17, s08, c08, s18, c18,
    s09, c09, s19, c19, s010, c010, s110, c110, s011, c011, s111, c111,
    s012, c012, s112, c112, s013, c013, s113, c113, s014, c014, s114, c114,
    s015, c015, s115, c115, c023, s033, c033, s133, c133, c047, s055, s155,
    c055, c155, s077, s177, c077, c177, s066, s166, s0773, s1773, c0773, c1773,
    c0815, s099, s199, c099, c199, s0111, s1111, c0111, c1111, s01313, s11313,
    c01313, c11313, s01515, s11515, c01515, c11515, s0102, s0112, c0112, s1102,
    s1112, c1112, s0142, s0152, c0152, s1142, s1152, c1152, s0123, s0133, s0143,
    s0153, c0153, s1123, s1133, s1143, s1153, c1153
);

cc_cell cc0 (a[0], b[0], s00, c00, s10, c10);
cc_cell cc1 (a[1], b[1], s01, c01, s11, c11);
cc_cell cc2 (a[2], b[2], s02, c02, s12, c12);
cc_cell cc3 (a[3], b[3], s03, c03, s13, c13);
cc_cell cc4 (a[4], b[4], s04, c04, s14, c14);
cc_cell cc5 (a[5], b[5], s05, c05, s15, c15);
cc_cell cc6 (a[6], b[6], s06, c06, s16, c16);
cc_cell cc7 (a[7], b[7], s07, c07, s17, c17);
cc_cell cc8 (a[8], b[8], s08, c08, s18, c18);
cc_cell cc9 (a[9], b[9], s09, c09, s19, c19);
cc_cell cc10 (a[10], b[10], s010, c010, s110, c110);
cc_cell cc11 (a[11], b[11], s011, c011, s111, c111);
cc_cell cc12 (a[12], b[12], s012, c012, s112, c112);
cc_cell cc13 (a[13], b[13], s013, c013, s113, c113);
cc_cell cc14 (a[14], b[14], s014, c014, s114, c114);
cc_cell cc15 (a[15], b[15], s015, c015, s115, c115);

assign sum[0] = s00;

assign sum[1] = (c00) ? s11 : s01;
assign c023 = c00 ? c11 : c01;

assign s033 = c02 ? s13 : s03;
assign c033 = c02 ? c13 : c03;
assign s133 = c12 ? s13 : s03;
assign c133 = c12 ? c13 : c03;

assign s055 = c04 ? s15 : s05;
assign s155 = c14 ? s15 : s05;
assign c055 = c04 ? c15 : c05;
assign c155 = c14 ? c15 : c05;

assign s077 = c06 ? s17 : s07;
assign s177 = c16 ? s17 : s07;
assign c077 = c06 ? c17 : c07;
assign c177 = c16 ? c17 : c07;

assign s099 = c08 ? s19 : s09;
assign s199 = c18 ? s19 : s09;
assign c099 = c08 ? c19 : c09;
assign c199 = c18 ? c19 : c09;

assign s0111 = c010 ? s111 : s011;
assign s1111 = c110 ? s111 : s011;
assign c0111 = c010 ? c111 : c011;
assign c1111 = c110 ? c111 : c011;

assign s01313 = c012 ? s113 : s013;
assign s11313 = c112 ? s113 : s013;
assign c01313 = c012 ? c113 : c013;
assign c11313 = c112 ? c113 : c013;

assign s01515 = c014 ? s115 : s015;
assign s11515 = c114 ? s115 : s015;
assign c01515 = c014 ? c115 : c015;
assign c11515 = c114 ? c115 : c015;

assign sum[2] = c023 ? s12 : s02;
assign sum[3] = c023 ? s133 : s033;
assign c047 = c023 ? c133 : c033;

assign s066 = c055 ? s16 : s06;
assign s166 = c155 ? s16 : s06;
assign s0773 = c055 ? s177 : s077;
assign s1773 = c155 ? s177 : s077;
assign c0773 = c055 ? c177 : c077;
assign c1773 = c155 ? c177 : c077;

assign s0102 = c099 ? s110 : s010;
assign s0112 = c099 ? s111 : s011;
assign c0112 = c099 ? c111 : c011;

assign s1102 = c199 ? s110 : s010;
assign s1112 = c199 ? s111 : s011;
assign c1112 = c199 ? c111 : c011;

assign s0142 = c01313 ? s114 : s014;
assign s0152 = c01313 ? s11515 : s01515;
assign c0152 = c01313 ? c11515 : c01515;

assign s1142 = c11313 ? s110 : s010;
assign s1152 = c11313 ? s111 : s011;
assign c1152 = c11313 ? c111 : c011;

assign sum[4] = c047 ? s14 : s04;
assign sum[5] = c047 ? s155 : s055;
assign sum[6] = c047 ? s166 : s066;
assign sum[7] = c047 ? s1773 : s0773;
assign c0815 = c047 ? c1773 : c0773;

assign s0123 = c0112 ? s112 : s012;
assign s0133 = c0112 ? s11313 : s01313;
assign s0143 = c0112 ? s1142 : s0142;
assign s0153 = c0112 ? s1152 : s0152;
assign c0153 = c0112 ? c1152 : c0152;

assign s1123 = c1112 ? s112 : s012;
assign s1133 = c1112 ? s11313 : s01313;
assign s1143 = c1112 ? s1142 : s0142;
assign s1153 = c1112 ? s1152 : s0152;
assign c1153 = c1112 ? c1152 : c0152;

assign sum[8] = c0815 ? s18 : s08;
assign sum[9] = c0815 ? s199 : s099;
assign sum[10] = c0815 ? s1102 : s0102;
assign sum[11] = c0815 ? s1112 : s0112;
assign sum[12] = c0815 ? s1123 : s0123;
assign sum[13] = c0815 ? s1133 : s0133;
assign sum[14] = c0815 ? s1143 : s0143;
assign sum[15] = c0815 ? s1153 : s0153;
assign cout = c0815 ? c1153 : c0153;

endmodule
