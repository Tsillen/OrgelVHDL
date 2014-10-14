// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.3.0.109
// Netlist written on Tue Oct 14 20:52:02 2014
//
// Verilog Description of module top_layer
//

module top_layer (clk, reset, kbclock, kbdata, audio_r, audio_l);   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(32[8:17])
    input clk;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(33[12:15])
    input reset;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(34[12:17])
    input kbclock;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(35[12:19])
    input kbdata;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(36[12:18])
    output audio_r;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(37[6:13])
    output audio_l;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(38[6:13])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(33[12:15])
    wire reset_c;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(34[12:17])
    wire kbclock_c;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(35[12:19])
    wire kbdata_c;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(36[12:18])
    wire audio_l_c;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(37[6:13])
    wire [12:0]pulselenght;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(43[8:19])
    wire GND_net;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(36[5:17])
    wire flag;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(43[8:12])
    wire n3602;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire [3:0]n46;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire [7:0]scancode_sync;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(46[8:21])
    wire n4020;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3611;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3886;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3614;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4019;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3619;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n1848;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3879;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3876;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4002;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4018;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n57_adj_27;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n12;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3874;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3818;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n68;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n3812;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n830;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4015;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4014;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4013;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4274 /* synthesis nomerge= */ ;
    wire n4010;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    
    wire VCC_net, n333, n57, n48, n4022, n4021, n396, n56, n44, 
        n76, n1905, n3624, n1824, n3878, n63, n3877, n67, n53, 
        n52, n62, n64, n74, n55, n4016, n3811, n1822, n642, 
        n649, n3608, n1893, n4033, n3638, n4032, n4012, n4026, 
        n4025, n4024, n3668, n4023;
    
    VHI i3554 (.Z(VCC_net));
    GSR GSR_INST (.GSR(reset_c));
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(33[12:15])
    OB audio_l_pad (.I(audio_l_c), .O(audio_l));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(38[6:13])
    OB audio_r_pad (.I(audio_l_c), .O(audio_r));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(37[6:13])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(34[12:17])
    IB kbclock_pad (.I(kbclock), .O(kbclock_c));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(35[12:19])
    IB kbdata_pad (.I(kbdata), .O(kbdata_c));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(36[12:18])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n4274)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    VLO i1 (.Z(GND_net));
    readkey Read_key (.kbdata_c(kbdata_c), .GND_net(GND_net), .reset_c(reset_c), 
            .kbclock_c(kbclock_c), .scancode_sync({scancode_sync}), .n49(n46[1]), 
            .n4025(n4025), .n4024(n4024), .n3608(n3608), .clk_c(clk_c), 
            .n50(n46[0]), .n4013(n4013), .n649(n649), .n3602(n3602), 
            .n57(n57), .\pulselenght[3] (pulselenght[3]), .n74(n74), .\pulselenght[5] (pulselenght[5]), 
            .n62(n62), .\pulselenght[6] (pulselenght[6]), .n76(n76), .\pulselenght[2] (pulselenght[2]), 
            .n3668(n3668), .n64(n64), .\pulselenght[12] (pulselenght[12]), 
            .n52(n52), .\pulselenght[7] (pulselenght[7]), .n53(n53), .\pulselenght[8] (pulselenght[8]), 
            .n67(n67), .\pulselenght[9] (pulselenght[9]), .n63(n63), .\pulselenght[10] (pulselenght[10]), 
            .n4023(n4023), .flag(flag), .n396(n396), .n1893(n1893), 
            .n1848(n1848), .n642(n642), .n4021(n4021), .n333(n333), 
            .n57_adj_4(n57_adj_27), .n3886(n3886), .n3811(n3811), .n3812(n3812), 
            .n1824(n1824), .n12(n12), .n4018(n4018), .n4010(n4010), 
            .n4014(n4014), .n3818(n3818), .n4016(n4016), .n4026(n4026), 
            .n3614(n3614), .n68(n68), .n48(n48), .n4012(n4012), .n1905(n1905), 
            .n3876(n3876), .n3624(n3624), .n3638(n3638), .n4032(n4032), 
            .n4020(n4020), .n55(n55), .n4022(n4022), .\pulselenght[4] (pulselenght[4]), 
            .n56(n56), .n4002(n4002), .n4019(n4019), .n3877(n3877), 
            .n3878(n3878), .n3879(n3879), .n4033(n4033), .n3874(n3874), 
            .n44(n44), .\pulselenght[1] (pulselenght[1]), .n3619(n3619), 
            .n1822(n1822), .n830(n830), .n3611(n3611), .n4015(n4015));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(55[15:34])
    Tone_Generator Tone_Gen (.n4024(n4024), .n4032(n4032), .n3818(n3818), 
            .n4021(n4021), .n4033(n4033), .n4023(n4023), .n1848(n1848), 
            .n4026(n4026), .n74(n74), .n3602(n3602), .n4020(n4020), 
            .n3624(n3624), .n3812(n3812), .n68(n68), .n1822(n1822), 
            .scancode_sync({scancode_sync}), .n49(n46[1]), .n50(n46[0]), 
            .n3611(n3611), .n76(n76), .n4016(n4016), .n4014(n4014), 
            .n52(n52), .n4025(n4025), .n4013(n4013), .n4015(n4015), 
            .n44(n44), .n48(n48), .n4018(n4018), .n55(n55), .n3886(n3886), 
            .n3879(n3879), .n3874(n3874), .n62(n62), .n3876(n3876), 
            .n3877(n3877), .n64(n64), .n63(n63), .n67(n67), .n4012(n4012), 
            .n1905(n1905), .n3638(n3638), .n56(n56), .n4022(n4022), 
            .n12(n12), .n57(n57_adj_27), .n1824(n1824), .n649(n649), 
            .n4010(n4010), .n3878(n3878), .n3811(n3811), .n642(n642), 
            .n53(n53), .n3668(n3668), .n3619(n3619), .n830(n830), .n3608(n3608), 
            .n1893(n1893), .n57_adj_2(n57), .n3614(n3614), .flag(flag), 
            .clk_c(clk_c), .n333(n333), .n4274(n4274), .n396(n396), 
            .reset_c(reset_c), .GND_net(GND_net), .audio_l_c(audio_l_c), 
            .\pulselenght[10] (pulselenght[10]), .\pulselenght[9] (pulselenght[9]), 
            .\pulselenght[8] (pulselenght[8]), .\pulselenght[7] (pulselenght[7]), 
            .\pulselenght[12] (pulselenght[12]), .\pulselenght[2] (pulselenght[2]), 
            .\pulselenght[1] (pulselenght[1]), .n4019(n4019), .\pulselenght[6] (pulselenght[6]), 
            .\pulselenght[5] (pulselenght[5]), .\pulselenght[4] (pulselenght[4]), 
            .\pulselenght[3] (pulselenght[3]), .n4002(n4002));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(48[12:38])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module readkey
//

module readkey (kbdata_c, GND_net, reset_c, kbclock_c, scancode_sync, 
            n49, n4025, n4024, n3608, clk_c, n50, n4013, n649, 
            n3602, n57, \pulselenght[3] , n74, \pulselenght[5] , n62, 
            \pulselenght[6] , n76, \pulselenght[2] , n3668, n64, \pulselenght[12] , 
            n52, \pulselenght[7] , n53, \pulselenght[8] , n67, \pulselenght[9] , 
            n63, \pulselenght[10] , n4023, flag, n396, n1893, n1848, 
            n642, n4021, n333, n57_adj_4, n3886, n3811, n3812, 
            n1824, n12, n4018, n4010, n4014, n3818, n4016, n4026, 
            n3614, n68, n48, n4012, n1905, n3876, n3624, n3638, 
            n4032, n4020, n55, n4022, \pulselenght[4] , n56, n4002, 
            n4019, n3877, n3878, n3879, n4033, n3874, n44, \pulselenght[1] , 
            n3619, n1822, n830, n3611, n4015);
    input kbdata_c;
    input GND_net;
    input reset_c;
    input kbclock_c;
    output [7:0]scancode_sync;
    output n49;
    output n4025;
    output n4024;
    output n3608;
    input clk_c;
    output n50;
    output n4013;
    input n649;
    output n3602;
    input n57;
    output \pulselenght[3] ;
    input n74;
    output \pulselenght[5] ;
    input n62;
    output \pulselenght[6] ;
    input n76;
    output \pulselenght[2] ;
    input n3668;
    input n64;
    output \pulselenght[12] ;
    input n52;
    output \pulselenght[7] ;
    input n53;
    output \pulselenght[8] ;
    input n67;
    output \pulselenght[9] ;
    input n63;
    output \pulselenght[10] ;
    output n4023;
    input flag;
    output n396;
    input n1893;
    output n1848;
    input n642;
    output n4021;
    output n333;
    output n57_adj_4;
    output n3886;
    input n3811;
    output n3812;
    output n1824;
    output n12;
    output n4018;
    output n4010;
    output n4014;
    output n3818;
    output n4016;
    output n4026;
    output n3614;
    output n68;
    output n48;
    output n4012;
    output n1905;
    output n3876;
    input n3624;
    output n3638;
    output n4032;
    output n4020;
    input n55;
    output n4022;
    output \pulselenght[4] ;
    input n56;
    output n4002;
    output n4019;
    input n3877;
    input n3878;
    output n3879;
    output n4033;
    output n3874;
    input n44;
    output \pulselenght[1] ;
    output n3619;
    input n1822;
    output n830;
    output n3611;
    output n4015;
    
    wire [7:0]C_scancode;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/readkey.vhd(30[11:21])
    wire C_byte_read;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/readkey.vhd(31[11:22])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(33[12:15])
    
    showkey L_Showkey (.kbdata_c(kbdata_c), .C_scancode({C_scancode}), .C_byte_read(C_byte_read), 
            .GND_net(GND_net), .reset_c(reset_c), .kbclock_c(kbclock_c));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/readkey.vhd(35[12:31])
    Const_Key L_Constantkey (.scancode_sync({scancode_sync}), .n49(n49), 
            .n4025(n4025), .n4024(n4024), .n3608(n3608), .clk_c(clk_c), 
            .n50(n50), .C_byte_read(C_byte_read), .C_scancode({C_scancode}), 
            .n4013(n4013), .n649(n649), .n3602(n3602), .n57(n57), .\pulselenght[3] (\pulselenght[3] ), 
            .n74(n74), .\pulselenght[5] (\pulselenght[5] ), .n62(n62), 
            .\pulselenght[6] (\pulselenght[6] ), .n76(n76), .\pulselenght[2] (\pulselenght[2] ), 
            .n3668(n3668), .n64(n64), .\pulselenght[12] (\pulselenght[12] ), 
            .n52(n52), .\pulselenght[7] (\pulselenght[7] ), .n53(n53), 
            .\pulselenght[8] (\pulselenght[8] ), .n67(n67), .\pulselenght[9] (\pulselenght[9] ), 
            .n63(n63), .\pulselenght[10] (\pulselenght[10] ), .n4023(n4023), 
            .flag(flag), .n396(n396), .n1893(n1893), .n1848(n1848), 
            .n642(n642), .n4021(n4021), .n333(n333), .n57_adj_3(n57_adj_4), 
            .n3886(n3886), .n3811(n3811), .n3812(n3812), .n1824(n1824), 
            .n12(n12), .n4018(n4018), .n4010(n4010), .n4014(n4014), 
            .n3818(n3818), .n4016(n4016), .n4026(n4026), .n3614(n3614), 
            .n68(n68), .n48(n48), .n4012(n4012), .n1905(n1905), .n3876(n3876), 
            .n3624(n3624), .n3638(n3638), .n4032(n4032), .n4020(n4020), 
            .n55(n55), .n4022(n4022), .\pulselenght[4] (\pulselenght[4] ), 
            .n56(n56), .n4002(n4002), .n4019(n4019), .n3877(n3877), 
            .n3878(n3878), .n3879(n3879), .n4033(n4033), .n3874(n3874), 
            .n44(n44), .\pulselenght[1] (\pulselenght[1] ), .n3619(n3619), 
            .n1822(n1822), .n830(n830), .n3611(n3611), .n4015(n4015));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/readkey.vhd(43[16:37])
    
endmodule
//
// Verilog Description of module showkey
//

module showkey (kbdata_c, C_scancode, C_byte_read, GND_net, reset_c, 
            kbclock_c);
    input kbdata_c;
    output [7:0]C_scancode;
    output C_byte_read;
    input GND_net;
    input reset_c;
    input kbclock_c;
    
    wire [31:0]cnt;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(44[8:11])
    wire [7:0]dig1store;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(45[8:17])
    wire [31:0]n1;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n43;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n56;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n52;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n44;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n35;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n54;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n48;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n36;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n46;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n32;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n50;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n40;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    wire n3095;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3096;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3107;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3106;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3105;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3104;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3092;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3093;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3103;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3097;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3098;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3102;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3094;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3101;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3100;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    wire n3099;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    
    wire n3588, n3590, n7, n3599, n134, n3634, n3674, n1831, 
        n3621, n3598, n862, n793, n3589, n3632, n4005, n368, 
        n1809, n3635, n4003;
    wire [31:0]n168;
    
    wire n3131, n3130, n4004, n3129, n1888, n3128, n3127, n3126, 
        n3125, n3124, n3123, n1801, n3122, n3121, n3120, n3119, 
        n3118, n3117;
    
    LUT4 i1_2_lut (.A(n3588), .B(cnt[2]), .Z(n3590)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    FD1P3AX dig1store_i0_i6 (.D(kbdata_c), .SP(n3599), .CK(n7), .Q(dig1store[6])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i6.GSR = "ENABLED";
    FD1P3AX scancode_i0_i0 (.D(dig1store[0]), .SP(n134), .CK(n7), .Q(C_scancode[0])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i0.GSR = "DISABLED";
    FD1P3AX dig1store_i0_i5 (.D(kbdata_c), .SP(n3634), .CK(n7), .Q(dig1store[5])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i5.GSR = "ENABLED";
    FD1P3AX byte_read_54 (.D(n1831), .SP(n3674), .CK(n7), .Q(C_byte_read)) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam byte_read_54.GSR = "ENABLED";
    FD1P3AX dig1store_i0_i0 (.D(kbdata_c), .SP(n3621), .CK(n7), .Q(dig1store[0])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i0.GSR = "ENABLED";
    FD1P3AX dig1store_i0_i4 (.D(kbdata_c), .SP(n3598), .CK(n7), .Q(dig1store[4])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_40 (.A(cnt[0]), .B(n862), .Z(n793)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i1_2_lut_adj_40.init = 16'heeee;
    FD1P3AX dig1store_i0_i3 (.D(kbdata_c), .SP(n3589), .CK(n7), .Q(dig1store[3])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i3.GSR = "ENABLED";
    FD1P3AX dig1store_i0_i2 (.D(kbdata_c), .SP(n3632), .CK(n7), .Q(dig1store[2])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i2.GSR = "ENABLED";
    LUT4 i1477_2_lut_4_lut (.A(n4005), .B(cnt[3]), .C(cnt[0]), .D(n368), 
         .Z(n1809)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(68[11:18])
    defparam i1477_2_lut_4_lut.init = 16'hbf00;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[0]), .B(n368), .C(cnt[1]), .D(cnt[2]), 
         .Z(n3598)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    FD1P3AX dig1store_i0_i1 (.D(kbdata_c), .SP(n3635), .CK(n7), .Q(dig1store[1])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i1.GSR = "ENABLED";
    FD1S3IX cnt_230__i31 (.D(n1[31]), .CK(n7), .CD(n4003), .Q(cnt[31]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i31.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_87 (.A(cnt[1]), .B(n862), .Z(n4005)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i1_2_lut_rep_87.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(cnt[0]), .B(n368), .C(cnt[1]), 
         .D(cnt[2]), .Z(n3599)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h2000;
    LUT4 i3325_3_lut_rep_85_4_lut (.A(cnt[1]), .B(n862), .C(cnt[3]), .D(cnt[0]), 
         .Z(n4003)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i3325_3_lut_rep_85_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut (.A(cnt[0]), .B(n368), .C(cnt[2]), .D(cnt[1]), 
         .Z(n3621)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0002;
    FD1S3AX cnt_230__i0 (.D(n168[0]), .CK(n7), .Q(cnt[0]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i0.GSR = "ENABLED";
    FD1S3IX cnt_230__i30 (.D(n1[30]), .CK(n7), .CD(n4003), .Q(cnt[30]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i30.GSR = "ENABLED";
    FD1S3IX cnt_230__i29 (.D(n1[29]), .CK(n7), .CD(n4003), .Q(cnt[29]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i29.GSR = "ENABLED";
    FD1S3IX cnt_230__i28 (.D(n1[28]), .CK(n7), .CD(n4003), .Q(cnt[28]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i28.GSR = "ENABLED";
    FD1S3IX cnt_230__i27 (.D(n1[27]), .CK(n7), .CD(n4003), .Q(cnt[27]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i27.GSR = "ENABLED";
    FD1S3IX cnt_230__i26 (.D(n1[26]), .CK(n7), .CD(n4003), .Q(cnt[26]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i26.GSR = "ENABLED";
    FD1S3IX cnt_230__i25 (.D(n1[25]), .CK(n7), .CD(n4003), .Q(cnt[25]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i25.GSR = "ENABLED";
    FD1S3IX cnt_230__i24 (.D(n1[24]), .CK(n7), .CD(n4003), .Q(cnt[24]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i24.GSR = "ENABLED";
    FD1S3IX cnt_230__i23 (.D(n1[23]), .CK(n7), .CD(n4003), .Q(cnt[23]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i23.GSR = "ENABLED";
    FD1S3IX cnt_230__i22 (.D(n1[22]), .CK(n7), .CD(n4003), .Q(cnt[22]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i22.GSR = "ENABLED";
    FD1S3IX cnt_230__i21 (.D(n1[21]), .CK(n7), .CD(n4003), .Q(cnt[21]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i21.GSR = "ENABLED";
    FD1S3IX cnt_230__i20 (.D(n1[20]), .CK(n7), .CD(n4003), .Q(cnt[20]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i20.GSR = "ENABLED";
    FD1S3IX cnt_230__i19 (.D(n1[19]), .CK(n7), .CD(n4003), .Q(cnt[19]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i19.GSR = "ENABLED";
    FD1S3IX cnt_230__i18 (.D(n1[18]), .CK(n7), .CD(n4003), .Q(cnt[18]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i18.GSR = "ENABLED";
    FD1S3IX cnt_230__i17 (.D(n1[17]), .CK(n7), .CD(n4003), .Q(cnt[17]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i17.GSR = "ENABLED";
    FD1S3IX cnt_230__i16 (.D(n1[16]), .CK(n7), .CD(n4003), .Q(cnt[16]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i16.GSR = "ENABLED";
    FD1S3IX cnt_230__i15 (.D(n1[15]), .CK(n7), .CD(n4003), .Q(cnt[15]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i15.GSR = "ENABLED";
    FD1S3IX cnt_230__i14 (.D(n1[14]), .CK(n7), .CD(n4003), .Q(cnt[14]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i14.GSR = "ENABLED";
    FD1S3IX cnt_230__i13 (.D(n1[13]), .CK(n7), .CD(n4003), .Q(cnt[13]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i13.GSR = "ENABLED";
    FD1S3IX cnt_230__i12 (.D(n1[12]), .CK(n7), .CD(n4003), .Q(cnt[12]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i12.GSR = "ENABLED";
    FD1S3IX cnt_230__i11 (.D(n1[11]), .CK(n7), .CD(n4003), .Q(cnt[11]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i11.GSR = "ENABLED";
    FD1S3IX cnt_230__i10 (.D(n1[10]), .CK(n7), .CD(n4003), .Q(cnt[10]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i10.GSR = "ENABLED";
    FD1S3IX cnt_230__i9 (.D(n1[9]), .CK(n7), .CD(n4003), .Q(cnt[9]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i9.GSR = "ENABLED";
    FD1S3IX cnt_230__i8 (.D(n1[8]), .CK(n7), .CD(n4003), .Q(cnt[8]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i8.GSR = "ENABLED";
    FD1S3IX cnt_230__i7 (.D(n1[7]), .CK(n7), .CD(n4003), .Q(cnt[7]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i7.GSR = "ENABLED";
    FD1S3IX cnt_230__i6 (.D(n1[6]), .CK(n7), .CD(n4003), .Q(cnt[6]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i6.GSR = "ENABLED";
    FD1S3IX cnt_230__i5 (.D(n1[5]), .CK(n7), .CD(n4003), .Q(cnt[5]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i5.GSR = "ENABLED";
    FD1S3IX cnt_230__i4 (.D(n1[4]), .CK(n7), .CD(n4003), .Q(cnt[4]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i4.GSR = "ENABLED";
    FD1S3IX cnt_230__i3 (.D(n1[3]), .CK(n7), .CD(n4003), .Q(cnt[3]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i3.GSR = "ENABLED";
    FD1S3IX cnt_230__i2 (.D(n1[2]), .CK(n7), .CD(n4003), .Q(cnt[2]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i2.GSR = "ENABLED";
    FD1S3IX cnt_230__i1 (.D(n1[1]), .CK(n7), .CD(n4003), .Q(cnt[1]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230__i1.GSR = "ENABLED";
    CCU2D add_2672_32 (.A0(cnt[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3131), 
          .S1(n368));
    defparam add_2672_32.INIT0 = 16'hf555;
    defparam add_2672_32.INIT1 = 16'h0000;
    defparam add_2672_32.INJECT1_0 = "NO";
    defparam add_2672_32.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_42 (.A(n368), .B(cnt[0]), .C(cnt[1]), .D(cnt[2]), 
         .Z(n3634)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_42.init = 16'h1000;
    CCU2D add_2672_30 (.A0(cnt[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3130), 
          .COUT(n3131));
    defparam add_2672_30.INIT0 = 16'h5555;
    defparam add_2672_30.INIT1 = 16'h5555;
    defparam add_2672_30.INJECT1_0 = "NO";
    defparam add_2672_30.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(n4004), .B(reset_c), .C(n4003), .D(n368), .Z(n134)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i28_4_lut (.A(n43), .B(n56), .C(n52), .D(n44), .Z(n862)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 i14_2_lut (.A(cnt[21]), .B(cnt[10]), .Z(n43)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i14_2_lut.init = 16'heeee;
    LUT4 i27_4_lut (.A(n35), .B(n54), .C(n48), .D(n36), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i27_4_lut.init = 16'hfffe;
    LUT4 i23_4_lut (.A(cnt[8]), .B(n46), .C(n32), .D(cnt[31]), .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i23_4_lut.init = 16'hfffe;
    LUT4 i15_3_lut (.A(cnt[27]), .B(cnt[23]), .C(cnt[9]), .Z(n44)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i15_3_lut.init = 16'hfefe;
    LUT4 i6_2_lut (.A(cnt[24]), .B(cnt[4]), .Z(n35)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i25_4_lut (.A(cnt[28]), .B(n50), .C(n40), .D(cnt[12]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i19_4_lut (.A(cnt[13]), .B(cnt[22]), .C(cnt[14]), .D(cnt[25]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(cnt[2]), .B(cnt[7]), .Z(n36)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i21_4_lut (.A(cnt[16]), .B(cnt[30]), .C(cnt[29]), .D(cnt[11]), 
         .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i11_2_lut (.A(cnt[17]), .B(cnt[20]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i11_2_lut.init = 16'heeee;
    FD1P3AX scancode_i0_i7 (.D(dig1store[7]), .SP(n134), .CK(n7), .Q(C_scancode[7])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i7.GSR = "DISABLED";
    FD1P3AX scancode_i0_i6 (.D(dig1store[6]), .SP(n134), .CK(n7), .Q(C_scancode[6])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i6.GSR = "DISABLED";
    FD1P3AX scancode_i0_i5 (.D(dig1store[5]), .SP(n134), .CK(n7), .Q(C_scancode[5])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i5.GSR = "DISABLED";
    FD1P3AX scancode_i0_i4 (.D(dig1store[4]), .SP(n134), .CK(n7), .Q(C_scancode[4])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i4.GSR = "DISABLED";
    FD1P3AX scancode_i0_i3 (.D(dig1store[3]), .SP(n134), .CK(n7), .Q(C_scancode[3])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i3.GSR = "DISABLED";
    FD1P3AX scancode_i0_i2 (.D(dig1store[2]), .SP(n134), .CK(n7), .Q(C_scancode[2])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i2.GSR = "DISABLED";
    FD1P3AX scancode_i0_i1 (.D(dig1store[1]), .SP(n134), .CK(n7), .Q(C_scancode[1])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam scancode_i0_i1.GSR = "DISABLED";
    FD1P3AX dig1store_i0_i7 (.D(kbdata_c), .SP(n3590), .CK(n7), .Q(dig1store[7])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=12, LSE_RCOL=31, LSE_LLINE=35, LSE_RLINE=35 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(51[1] 76[8])
    defparam dig1store_i0_i7.GSR = "ENABLED";
    CCU2D add_2672_28 (.A0(cnt[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3129), 
          .COUT(n3130));
    defparam add_2672_28.INIT0 = 16'h5555;
    defparam add_2672_28.INIT1 = 16'h5555;
    defparam add_2672_28.INJECT1_0 = "NO";
    defparam add_2672_28.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(cnt[26]), .B(cnt[6]), .C(cnt[5]), .D(cnt[18]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i17_4_lut.init = 16'hfffe;
    CCU2D cnt_230_add_4_9 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[7]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[8]), .CIN(n3095), 
          .COUT(n3096), .S0(n1[7]), .S1(n1[8]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_9.INIT0 = 16'hf700;
    defparam cnt_230_add_4_9.INIT1 = 16'hf700;
    defparam cnt_230_add_4_9.INJECT1_0 = "NO";
    defparam cnt_230_add_4_9.INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(cnt[15]), .B(cnt[19]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D add_2672_26 (.A0(cnt[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3128), 
          .COUT(n3129));
    defparam add_2672_26.INIT0 = 16'h5555;
    defparam add_2672_26.INIT1 = 16'h5555;
    defparam add_2672_26.INJECT1_0 = "NO";
    defparam add_2672_26.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_33 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[31]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3107), 
          .S0(n1[31]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_33.INIT0 = 16'hf700;
    defparam cnt_230_add_4_33.INIT1 = 16'h0000;
    defparam cnt_230_add_4_33.INJECT1_0 = "NO";
    defparam cnt_230_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_31 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[29]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[30]), .CIN(n3106), 
          .COUT(n3107), .S0(n1[29]), .S1(n1[30]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_31.INIT0 = 16'hf700;
    defparam cnt_230_add_4_31.INIT1 = 16'hf700;
    defparam cnt_230_add_4_31.INJECT1_0 = "NO";
    defparam cnt_230_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_29 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[27]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[28]), .CIN(n3105), 
          .COUT(n3106), .S0(n1[27]), .S1(n1[28]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_29.INIT0 = 16'hf700;
    defparam cnt_230_add_4_29.INIT1 = 16'hf700;
    defparam cnt_230_add_4_29.INJECT1_0 = "NO";
    defparam cnt_230_add_4_29.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_86_4_lut (.A(cnt[1]), .B(n862), .C(cnt[0]), .D(cnt[3]), 
         .Z(n4004)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[6:13])
    defparam i2_3_lut_rep_86_4_lut.init = 16'hefff;
    CCU2D add_2672_24 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3127), 
          .COUT(n3128));
    defparam add_2672_24.INIT0 = 16'h5555;
    defparam add_2672_24.INIT1 = 16'h5555;
    defparam add_2672_24.INJECT1_0 = "NO";
    defparam add_2672_24.INJECT1_1 = "NO";
    CCU2D add_2672_22 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3126), 
          .COUT(n3127));
    defparam add_2672_22.INIT0 = 16'h5555;
    defparam add_2672_22.INIT1 = 16'h5555;
    defparam add_2672_22.INJECT1_0 = "NO";
    defparam add_2672_22.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_27 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[25]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[26]), .CIN(n3104), 
          .COUT(n3105), .S0(n1[25]), .S1(n1[26]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_27.INIT0 = 16'hf700;
    defparam cnt_230_add_4_27.INIT1 = 16'hf700;
    defparam cnt_230_add_4_27.INJECT1_0 = "NO";
    defparam cnt_230_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_3 (.A0(cnt[3]), .B0(n1809), .C0(n793), .D0(cnt[1]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[2]), .CIN(n3092), 
          .COUT(n3093), .S0(n1[1]), .S1(n1[2]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_3.INIT0 = 16'hf700;
    defparam cnt_230_add_4_3.INIT1 = 16'hf700;
    defparam cnt_230_add_4_3.INJECT1_0 = "NO";
    defparam cnt_230_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_25 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[23]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[24]), .CIN(n3103), 
          .COUT(n3104), .S0(n1[23]), .S1(n1[24]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_25.INIT0 = 16'hf700;
    defparam cnt_230_add_4_25.INIT1 = 16'hf700;
    defparam cnt_230_add_4_25.INJECT1_0 = "NO";
    defparam cnt_230_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_13 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[11]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[12]), .CIN(n3097), 
          .COUT(n3098), .S0(n1[11]), .S1(n1[12]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_13.INIT0 = 16'hf700;
    defparam cnt_230_add_4_13.INIT1 = 16'hf700;
    defparam cnt_230_add_4_13.INJECT1_0 = "NO";
    defparam cnt_230_add_4_13.INJECT1_1 = "NO";
    CCU2D add_2672_20 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3125), 
          .COUT(n3126));
    defparam add_2672_20.INIT0 = 16'h5555;
    defparam add_2672_20.INIT1 = 16'h5555;
    defparam add_2672_20.INJECT1_0 = "NO";
    defparam add_2672_20.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_23 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[21]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[22]), .CIN(n3102), 
          .COUT(n3103), .S0(n1[21]), .S1(n1[22]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_23.INIT0 = 16'hf700;
    defparam cnt_230_add_4_23.INIT1 = 16'hf700;
    defparam cnt_230_add_4_23.INJECT1_0 = "NO";
    defparam cnt_230_add_4_23.INJECT1_1 = "NO";
    CCU2D add_2672_18 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3124), 
          .COUT(n3125));
    defparam add_2672_18.INIT0 = 16'h5555;
    defparam add_2672_18.INIT1 = 16'h5555;
    defparam add_2672_18.INJECT1_0 = "NO";
    defparam add_2672_18.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_7 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[5]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[6]), .CIN(n3094), 
          .COUT(n3095), .S0(n1[5]), .S1(n1[6]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_7.INIT0 = 16'hf700;
    defparam cnt_230_add_4_7.INIT1 = 16'hf700;
    defparam cnt_230_add_4_7.INJECT1_0 = "NO";
    defparam cnt_230_add_4_7.INJECT1_1 = "NO";
    LUT4 i3317_4_lut (.A(cnt[0]), .B(n1831), .C(n862), .D(n1888), .Z(n3674)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i3317_4_lut.init = 16'h3733;
    CCU2D cnt_230_add_4_21 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[19]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[20]), .CIN(n3101), 
          .COUT(n3102), .S0(n1[19]), .S1(n1[20]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_21.INIT0 = 16'hf700;
    defparam cnt_230_add_4_21.INIT1 = 16'hf700;
    defparam cnt_230_add_4_21.INJECT1_0 = "NO";
    defparam cnt_230_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_19 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[17]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[18]), .CIN(n3100), 
          .COUT(n3101), .S0(n1[17]), .S1(n1[18]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_19.INIT0 = 16'hf700;
    defparam cnt_230_add_4_19.INIT1 = 16'hf700;
    defparam cnt_230_add_4_19.INJECT1_0 = "NO";
    defparam cnt_230_add_4_19.INJECT1_1 = "NO";
    LUT4 i1555_2_lut (.A(cnt[1]), .B(cnt[3]), .Z(n1888)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1555_2_lut.init = 16'h8888;
    CCU2D cnt_230_add_4_17 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[15]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[16]), .CIN(n3099), 
          .COUT(n3100), .S0(n1[15]), .S1(n1[16]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_17.INIT0 = 16'hf700;
    defparam cnt_230_add_4_17.INIT1 = 16'hf700;
    defparam cnt_230_add_4_17.INJECT1_0 = "NO";
    defparam cnt_230_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_11 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[9]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[10]), .CIN(n3096), 
          .COUT(n3097), .S0(n1[9]), .S1(n1[10]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_11.INIT0 = 16'hf700;
    defparam cnt_230_add_4_11.INIT1 = 16'hf700;
    defparam cnt_230_add_4_11.INJECT1_0 = "NO";
    defparam cnt_230_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_15 (.A0(n1888), .B0(n1809), .C0(n793), .D0(cnt[13]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[14]), .CIN(n3098), 
          .COUT(n3099), .S0(n1[13]), .S1(n1[14]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_15.INIT0 = 16'hf700;
    defparam cnt_230_add_4_15.INIT1 = 16'hf700;
    defparam cnt_230_add_4_15.INJECT1_0 = "NO";
    defparam cnt_230_add_4_15.INJECT1_1 = "NO";
    CCU2D add_2672_16 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3123), 
          .COUT(n3124));
    defparam add_2672_16.INIT0 = 16'h5555;
    defparam add_2672_16.INIT1 = 16'h5555;
    defparam add_2672_16.INJECT1_0 = "NO";
    defparam add_2672_16.INJECT1_1 = "NO";
    CCU2D cnt_230_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4004), .B1(n368), .C1(cnt[0]), .D1(n1801), .COUT(n3092), 
          .S1(n1[0]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_1.INIT0 = 16'hF000;
    defparam cnt_230_add_4_1.INIT1 = 16'h8777;
    defparam cnt_230_add_4_1.INJECT1_0 = "NO";
    defparam cnt_230_add_4_1.INJECT1_1 = "NO";
    CCU2D add_2672_14 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3122), 
          .COUT(n3123));
    defparam add_2672_14.INIT0 = 16'h5555;
    defparam add_2672_14.INIT1 = 16'h5555;
    defparam add_2672_14.INJECT1_0 = "NO";
    defparam add_2672_14.INJECT1_1 = "NO";
    CCU2D add_2672_12 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3121), 
          .COUT(n3122));
    defparam add_2672_12.INIT0 = 16'h5555;
    defparam add_2672_12.INIT1 = 16'h5555;
    defparam add_2672_12.INJECT1_0 = "NO";
    defparam add_2672_12.INJECT1_1 = "NO";
    CCU2D add_2672_10 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3120), 
          .COUT(n3121));
    defparam add_2672_10.INIT0 = 16'h5555;
    defparam add_2672_10.INIT1 = 16'h5555;
    defparam add_2672_10.INJECT1_0 = "NO";
    defparam add_2672_10.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_43 (.A(cnt[2]), .B(n3588), .Z(n3589)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_43.init = 16'h8888;
    CCU2D cnt_230_add_4_5 (.A0(cnt[1]), .B0(n1809), .C0(n793), .D0(cnt[3]), 
          .A1(n1888), .B1(n1809), .C1(n793), .D1(cnt[4]), .CIN(n3093), 
          .COUT(n3094), .S0(n1[3]), .S1(n1[4]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam cnt_230_add_4_5.INIT0 = 16'hf700;
    defparam cnt_230_add_4_5.INIT1 = 16'hf700;
    defparam cnt_230_add_4_5.INJECT1_0 = "NO";
    defparam cnt_230_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n368), .B(cnt[0]), .C(n4003), .D(cnt[1]), .Z(n3588)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/showkey.vhd(58[2] 75[12])
    defparam i2_4_lut.init = 16'h0001;
    LUT4 i5_1_lut (.A(kbclock_c), .Z(n7)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.3_x64/ispfpga/vhdl_packages/std_1164.vhd(1013[30:45])
    defparam i5_1_lut.init = 16'h5555;
    CCU2D add_2672_8 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3119), 
          .COUT(n3120));
    defparam add_2672_8.INIT0 = 16'h5555;
    defparam add_2672_8.INIT1 = 16'h5555;
    defparam add_2672_8.INJECT1_0 = "NO";
    defparam add_2672_8.INJECT1_1 = "NO";
    CCU2D add_2672_6 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3118), 
          .COUT(n3119));
    defparam add_2672_6.INIT0 = 16'h5555;
    defparam add_2672_6.INIT1 = 16'h5555;
    defparam add_2672_6.INJECT1_0 = "NO";
    defparam add_2672_6.INJECT1_1 = "NO";
    CCU2D add_2672_4 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3117), 
          .COUT(n3118));
    defparam add_2672_4.INIT0 = 16'h5aaa;
    defparam add_2672_4.INIT1 = 16'h5555;
    defparam add_2672_4.INJECT1_0 = "NO";
    defparam add_2672_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_44 (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .D(n368), .Z(n3635)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_44.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_45 (.A(cnt[1]), .B(cnt[2]), .C(n368), 
         .D(cnt[0]), .Z(n3632)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_45.init = 16'h0200;
    CCU2D add_2672_2 (.A0(cnt[1]), .B0(cnt[0]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3117));
    defparam add_2672_2.INIT0 = 16'h1000;
    defparam add_2672_2.INIT1 = 16'h5555;
    defparam add_2672_2.INJECT1_0 = "NO";
    defparam add_2672_2.INJECT1_1 = "NO";
    LUT4 i1469_4_lut (.A(n862), .B(n1809), .C(cnt[0]), .D(n1888), .Z(n1801)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1469_4_lut.init = 16'hfbff;
    LUT4 i1499_2_lut_2_lut_4_lut (.A(n4005), .B(cnt[0]), .C(cnt[3]), .D(n368), 
         .Z(n1831)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1499_2_lut_2_lut_4_lut.init = 16'hfe00;
    LUT4 i1524_2_lut_4_lut (.A(n4005), .B(cnt[0]), .C(cnt[3]), .D(n1[0]), 
         .Z(n168[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1524_2_lut_4_lut.init = 16'hff01;
    
endmodule
//
// Verilog Description of module Const_Key
//

module Const_Key (scancode_sync, n49, n4025, n4024, n3608, clk_c, 
            n50, C_byte_read, C_scancode, n4013, n649, n3602, n57, 
            \pulselenght[3] , n74, \pulselenght[5] , n62, \pulselenght[6] , 
            n76, \pulselenght[2] , n3668, n64, \pulselenght[12] , 
            n52, \pulselenght[7] , n53, \pulselenght[8] , n67, \pulselenght[9] , 
            n63, \pulselenght[10] , n4023, flag, n396, n1893, n1848, 
            n642, n4021, n333, n57_adj_3, n3886, n3811, n3812, 
            n1824, n12, n4018, n4010, n4014, n3818, n4016, n4026, 
            n3614, n68, n48, n4012, n1905, n3876, n3624, n3638, 
            n4032, n4020, n55, n4022, \pulselenght[4] , n56, n4002, 
            n4019, n3877, n3878, n3879, n4033, n3874, n44, \pulselenght[1] , 
            n3619, n1822, n830, n3611, n4015);
    output [7:0]scancode_sync;
    output n49;
    output n4025;
    output n4024;
    output n3608;
    input clk_c;
    output n50;
    input C_byte_read;
    input [7:0]C_scancode;
    output n4013;
    input n649;
    output n3602;
    input n57;
    output \pulselenght[3] ;
    input n74;
    output \pulselenght[5] ;
    input n62;
    output \pulselenght[6] ;
    input n76;
    output \pulselenght[2] ;
    input n3668;
    input n64;
    output \pulselenght[12] ;
    input n52;
    output \pulselenght[7] ;
    input n53;
    output \pulselenght[8] ;
    input n67;
    output \pulselenght[9] ;
    input n63;
    output \pulselenght[10] ;
    output n4023;
    input flag;
    output n396;
    input n1893;
    output n1848;
    input n642;
    output n4021;
    output n333;
    output n57_adj_3;
    output n3886;
    input n3811;
    output n3812;
    output n1824;
    output n12;
    output n4018;
    output n4010;
    output n4014;
    output n3818;
    output n4016;
    output n4026;
    output n3614;
    output n68;
    output n48;
    output n4012;
    output n1905;
    output n3876;
    input n3624;
    output n3638;
    output n4032;
    output n4020;
    input n55;
    output n4022;
    output \pulselenght[4] ;
    input n56;
    output n4002;
    output n4019;
    input n3877;
    input n3878;
    output n3879;
    output n4033;
    output n3874;
    input n44;
    output \pulselenght[1] ;
    output n3619;
    input n1822;
    output n830;
    output n3611;
    output n4015;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(33[12:15])
    wire n639;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire byteread_sync2;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(45[24:38])
    wire byteread_sync1;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(45[8:22])
    wire n637;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4041;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n4040;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire n38;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    wire [3:0]n46;
    
    wire n7, n622, n4027, n3659, n4042;
    
    LUT4 i1_2_lut_3_lut_4_lut (.A(scancode_sync[0]), .B(n49), .C(n4025), 
         .D(n4024), .Z(n3608)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0070;
    FD1S3AX current_s_FSM_i3 (.D(n639), .CK(clk_c), .Q(n46[2]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam current_s_FSM_i3.GSR = "ENABLED";
    FD1S3AX byteread_sync2_31 (.D(byteread_sync1), .CK(n7), .Q(byteread_sync2)) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam byteread_sync2_31.GSR = "ENABLED";
    FD1S3AX current_s_FSM_i2 (.D(n637), .CK(clk_c), .Q(n49));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam current_s_FSM_i2.GSR = "ENABLED";
    FD1S3AY current_s_FSM_i1 (.D(n622), .CK(clk_c), .Q(n50));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam current_s_FSM_i1.GSR = "ENABLED";
    FD1S3AX byteread_sync1_30 (.D(C_byte_read), .CK(n7), .Q(byteread_sync1)) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam byteread_sync1_30.GSR = "ENABLED";
    FD1P3AX scancode_sync_i0_i0 (.D(C_scancode[0]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[0])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_95_3_lut (.A(scancode_sync[0]), .B(n49), .C(scancode_sync[1]), 
         .Z(n4013)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_rep_95_3_lut.init = 16'h8080;
    LUT4 i84_3_lut_4_lut_then_4_lut (.A(n49), .B(n4025), .C(scancode_sync[1]), 
         .D(scancode_sync[3]), .Z(n4041)) /* synthesis lut_function=(!(A (C+(D))+!A (B))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i84_3_lut_4_lut_then_4_lut.init = 16'h111b;
    LUT4 i84_3_lut_4_lut_else_4_lut (.A(n49), .B(n4025), .C(scancode_sync[1]), 
         .D(scancode_sync[3]), .Z(n4040)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i84_3_lut_4_lut_else_4_lut.init = 16'h9333;
    LUT4 i2_3_lut_4_lut (.A(scancode_sync[3]), .B(n49), .C(scancode_sync[0]), 
         .D(n649), .Z(n3602)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut (.A(n50), .B(scancode_sync[7]), .C(n49), .D(n57), 
         .Z(\pulselenght[3] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut.init = 16'h3a00;
    LUT4 i1_2_lut_4_lut_adj_26 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n74), .Z(\pulselenght[5] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_26.init = 16'h3a00;
    FD1P3AX scancode_sync_i0_i7 (.D(C_scancode[7]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[7])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i7.GSR = "ENABLED";
    FD1P3AX scancode_sync_i0_i6 (.D(C_scancode[6]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[6])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i6.GSR = "ENABLED";
    FD1P3AX scancode_sync_i0_i5 (.D(C_scancode[5]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[5])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i5.GSR = "ENABLED";
    FD1P3AX scancode_sync_i0_i4 (.D(C_scancode[4]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[4])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i4.GSR = "ENABLED";
    FD1P3AX scancode_sync_i0_i3 (.D(C_scancode[3]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[3])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i3.GSR = "ENABLED";
    FD1P3AX scancode_sync_i0_i2 (.D(C_scancode[2]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[2])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i2.GSR = "ENABLED";
    FD1P3AX scancode_sync_i0_i1 (.D(C_scancode[1]), .SP(byteread_sync2), 
            .CK(n7), .Q(scancode_sync[1])) /* synthesis LSE_LINE_FILE_ID=24, LSE_LCOL=16, LSE_RCOL=37, LSE_LLINE=43, LSE_RLINE=43 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(52[2] 63[9])
    defparam scancode_sync_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_27 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n62), .Z(\pulselenght[6] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_27.init = 16'h3a00;
    LUT4 i1_2_lut_4_lut_adj_28 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n76), .Z(\pulselenght[2] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_28.init = 16'h3a00;
    LUT4 i330_4_lut (.A(n46[2]), .B(n38), .C(byteread_sync2), .D(n49), 
         .Z(n639)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i330_4_lut.init = 16'hb3a0;
    LUT4 i4_4_lut (.A(scancode_sync[0]), .B(n3668), .C(scancode_sync[2]), 
         .D(n4027), .Z(n38)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_4_lut_adj_29 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n64), .Z(\pulselenght[12] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_29.init = 16'h3a00;
    LUT4 i1_2_lut_4_lut_adj_30 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n52), .Z(\pulselenght[7] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_30.init = 16'h3a00;
    LUT4 i1_2_lut_4_lut_adj_31 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n53), .Z(\pulselenght[8] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_31.init = 16'h3a00;
    LUT4 i1_2_lut_4_lut_adj_32 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n67), .Z(\pulselenght[9] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_32.init = 16'h3a00;
    LUT4 i5_1_lut (.A(clk_c), .Z(n7)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.3_x64/ispfpga/vhdl_packages/std_1164.vhd(1013[30:45])
    defparam i5_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_adj_33 (.A(n50), .B(scancode_sync[7]), .C(n49), 
         .D(n63), .Z(\pulselenght[10] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_4_lut_adj_33.init = 16'h3a00;
    LUT4 i328_4_lut (.A(n49), .B(byteread_sync2), .C(n38), .D(n50), 
         .Z(n637)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i328_4_lut.init = 16'heca0;
    LUT4 i314_3_lut (.A(byteread_sync2), .B(n50), .C(n46[2]), .Z(n622)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i314_3_lut.init = 16'h5454;
    LUT4 i1480_2_lut_rep_105 (.A(scancode_sync[1]), .B(n49), .Z(n4023)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1480_2_lut_rep_105.init = 16'h8888;
    LUT4 i198_2_lut_3_lut (.A(scancode_sync[1]), .B(n49), .C(flag), .Z(n396)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i198_2_lut_3_lut.init = 16'h0808;
    LUT4 i3331_4_lut_4_lut (.A(scancode_sync[1]), .B(n49), .C(n1893), 
         .D(n50), .Z(n1848)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C)+!B !(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i3331_4_lut_4_lut.init = 16'h3704;
    LUT4 i4_4_lut_adj_34 (.A(n642), .B(n3608), .C(n4021), .D(n3659), 
         .Z(n333)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i4_4_lut_adj_34.init = 16'h0080;
    LUT4 i77_3_lut_3_lut_4_lut_4_lut (.A(scancode_sync[1]), .B(n49), .C(n4024), 
         .D(scancode_sync[3]), .Z(n57_adj_3)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i77_3_lut_3_lut_4_lut_4_lut.init = 16'hc008;
    LUT4 n90_bdd_3_lut_3412_4_lut_4_lut (.A(scancode_sync[1]), .B(n49), 
         .C(scancode_sync[2]), .D(scancode_sync[3]), .Z(n3886)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam n90_bdd_3_lut_3412_4_lut_4_lut.init = 16'h4000;
    LUT4 i3251_4_lut (.A(n50), .B(scancode_sync[6]), .C(n49), .D(scancode_sync[7]), 
         .Z(n3659)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i3251_4_lut.init = 16'hf5c5;
    LUT4 i51_3_lut_rep_106 (.A(n50), .B(scancode_sync[5]), .C(n49), .Z(n4024)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i51_3_lut_rep_106.init = 16'hc5c5;
    LUT4 n1_bdd_2_lut_3360_4_lut (.A(n50), .B(scancode_sync[5]), .C(n49), 
         .D(n3811), .Z(n3812)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam n1_bdd_2_lut_3360_4_lut.init = 16'hc500;
    LUT4 i1492_2_lut_3_lut_4_lut (.A(n50), .B(scancode_sync[5]), .C(n49), 
         .D(scancode_sync[1]), .Z(n1824)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1492_2_lut_3_lut_4_lut.init = 16'hf5c5;
    LUT4 i1_2_lut_3_lut_4_lut_adj_35 (.A(n50), .B(scancode_sync[5]), .C(n49), 
         .D(scancode_sync[1]), .Z(n12)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_4_lut_adj_35.init = 16'h05c5;
    LUT4 i49_3_lut_rep_107 (.A(n50), .B(scancode_sync[4]), .C(n49), .Z(n4025)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i49_3_lut_rep_107.init = 16'hc5c5;
    LUT4 i1_2_lut_rep_100_4_lut_3_lut (.A(scancode_sync[4]), .B(n49), .C(scancode_sync[5]), 
         .Z(n4018)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_rep_100_4_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_92_3_lut_3_lut (.A(scancode_sync[4]), .B(n49), .C(scancode_sync[1]), 
         .Z(n4010)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_rep_92_3_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_96_3_lut_3_lut (.A(scancode_sync[0]), .B(n49), .C(scancode_sync[3]), 
         .Z(n4014)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_rep_96_3_lut_3_lut.init = 16'h0808;
    LUT4 n81_bdd_2_lut_3352_3_lut_3_lut (.A(scancode_sync[0]), .B(n49), 
         .C(scancode_sync[1]), .Z(n3818)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam n81_bdd_2_lut_3352_3_lut_3_lut.init = 16'h0808;
    LUT4 i98_2_lut_rep_98_3_lut_4_lut (.A(n50), .B(scancode_sync[4]), .C(n49), 
         .D(scancode_sync[3]), .Z(n4016)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i98_2_lut_rep_98_3_lut_4_lut.init = 16'h35c5;
    LUT4 i1479_2_lut_rep_108 (.A(scancode_sync[0]), .B(n49), .Z(n4026)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1479_2_lut_rep_108.init = 16'h8888;
    LUT4 i1482_2_lut_rep_103 (.A(scancode_sync[3]), .B(n49), .Z(n4021)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1482_2_lut_rep_103.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_3_lut (.A(scancode_sync[4]), .B(n49), .C(scancode_sync[1]), 
         .Z(n3614)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 i100_3_lut_4_lut_4_lut_4_lut (.A(scancode_sync[0]), .B(n49), .C(scancode_sync[3]), 
         .D(scancode_sync[1]), .Z(n68)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C (D)+!C !(D))+!B))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i100_3_lut_4_lut_4_lut_4_lut.init = 16'h733f;
    LUT4 i1_2_lut_rep_109 (.A(scancode_sync[1]), .B(scancode_sync[3]), .Z(n4027)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_109.init = 16'heeee;
    LUT4 i77_3_lut_4_lut_4_lut_4_lut (.A(scancode_sync[1]), .B(scancode_sync[3]), 
         .C(n4025), .D(n49), .Z(n48)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C+(D))+!B (C))) */ ;
    defparam i77_3_lut_4_lut_4_lut_4_lut.init = 16'ha10f;
    LUT4 i1563_2_lut_rep_94_3_lut (.A(scancode_sync[1]), .B(scancode_sync[3]), 
         .C(n49), .Z(n4012)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1563_2_lut_rep_94_3_lut.init = 16'he0e0;
    LUT4 i1521_2_lut_3_lut (.A(scancode_sync[1]), .B(scancode_sync[3]), 
         .C(scancode_sync[0]), .Z(n1905)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1521_2_lut_3_lut.init = 16'hfefe;
    LUT4 n81_bdd_3_lut_3381_4_lut_4_lut_4_lut (.A(scancode_sync[0]), .B(n49), 
         .C(scancode_sync[3]), .D(scancode_sync[1]), .Z(n3876)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam n81_bdd_3_lut_3381_4_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i3_4_lut (.A(n4021), .B(n3624), .C(n642), .D(n4026), .Z(n3638)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i3_4_lut.init = 16'h4000;
    LUT4 i1481_2_lut_rep_114 (.A(scancode_sync[2]), .B(n49), .Z(n4032)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1481_2_lut_rep_114.init = 16'h8888;
    LUT4 i1_2_lut_rep_102_3_lut_3_lut (.A(scancode_sync[2]), .B(n49), .C(scancode_sync[1]), 
         .Z(n4020)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_rep_102_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_36 (.A(scancode_sync[2]), .B(n49), .C(n55), 
         .D(n4022), .Z(\pulselenght[4] )) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_4_lut_adj_36.init = 16'h0080;
    LUT4 i1_3_lut_rep_84_4_lut (.A(scancode_sync[2]), .B(n49), .C(n56), 
         .D(n3638), .Z(n4002)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_3_lut_rep_84_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_rep_101_4_lut_3_lut (.A(scancode_sync[2]), .B(n49), .C(scancode_sync[7]), 
         .Z(n4019)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_rep_101_4_lut_3_lut.init = 16'h0808;
    LUT4 n3878_bdd_3_lut_4_lut (.A(scancode_sync[2]), .B(n49), .C(n3877), 
         .D(n3878), .Z(n3879)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam n3878_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n88_bdd_3_lut_4_lut (.A(scancode_sync[2]), .B(n49), .C(n4042), 
         .D(n4033), .Z(n3874)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam n88_bdd_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(scancode_sync[2]), .B(n49), .C(n44), 
         .D(n4022), .Z(\pulselenght[1] )) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(scancode_sync[2]), .B(n49), .C(n4025), 
         .D(scancode_sync[1]), .Z(n3619)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_38 (.A(scancode_sync[2]), .B(n49), 
         .C(n1822), .D(scancode_sync[1]), .Z(n830)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_38.init = 16'h0400;
    LUT4 i53_3_lut_rep_115 (.A(n50), .B(scancode_sync[6]), .C(n49), .Z(n4033)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i53_3_lut_rep_115.init = 16'hc5c5;
    LUT4 i1_2_lut_3_lut_3_lut_adj_39 (.A(scancode_sync[6]), .B(n49), .C(scancode_sync[2]), 
         .Z(n3611)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_3_lut_3_lut_adj_39.init = 16'h4040;
    LUT4 i1_2_lut_rep_97_4_lut_3_lut (.A(scancode_sync[6]), .B(n49), .C(scancode_sync[5]), 
         .Z(n4015)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i1_2_lut_rep_97_4_lut_3_lut.init = 16'h0808;
    PFUMX i3438 (.BLUT(n4040), .ALUT(n4041), .C0(scancode_sync[0]), .Z(n4042));
    LUT4 i55_3_lut_rep_104 (.A(n50), .B(scancode_sync[7]), .C(n49), .Z(n4022)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/const_key.vhd(69[2] 88[12])
    defparam i55_3_lut_rep_104.init = 16'hc5c5;
    
endmodule
//
// Verilog Description of module Tone_Generator
//

module Tone_Generator (n4024, n4032, n3818, n4021, n4033, n4023, 
            n1848, n4026, n74, n3602, n4020, n3624, n3812, n68, 
            n1822, scancode_sync, n49, n50, n3611, n76, n4016, 
            n4014, n52, n4025, n4013, n4015, n44, n48, n4018, 
            n55, n3886, n3879, n3874, n62, n3876, n3877, n64, 
            n63, n67, n4012, n1905, n3638, n56, n4022, n12, 
            n57, n1824, n649, n4010, n3878, n3811, n642, n53, 
            n3668, n3619, n830, n3608, n1893, n57_adj_2, n3614, 
            flag, clk_c, n333, n4274, n396, reset_c, GND_net, 
            audio_l_c, \pulselenght[10] , \pulselenght[9] , \pulselenght[8] , 
            \pulselenght[7] , \pulselenght[12] , \pulselenght[2] , \pulselenght[1] , 
            n4019, \pulselenght[6] , \pulselenght[5] , \pulselenght[4] , 
            \pulselenght[3] , n4002);
    input n4024;
    input n4032;
    input n3818;
    input n4021;
    input n4033;
    input n4023;
    input n1848;
    input n4026;
    output n74;
    input n3602;
    input n4020;
    output n3624;
    input n3812;
    input n68;
    output n1822;
    input [7:0]scancode_sync;
    input n49;
    input n50;
    input n3611;
    output n76;
    input n4016;
    input n4014;
    output n52;
    input n4025;
    input n4013;
    input n4015;
    output n44;
    input n48;
    input n4018;
    output n55;
    input n3886;
    input n3879;
    input n3874;
    output n62;
    input n3876;
    output n3877;
    output n64;
    output n63;
    output n67;
    input n4012;
    input n1905;
    input n3638;
    output n56;
    input n4022;
    input n12;
    input n57;
    input n1824;
    output n649;
    input n4010;
    output n3878;
    output n3811;
    output n642;
    output n53;
    output n3668;
    input n3619;
    input n830;
    input n3608;
    output n1893;
    output n57_adj_2;
    input n3614;
    output flag;
    input clk_c;
    input n333;
    input n4274;
    input n396;
    input reset_c;
    input GND_net;
    output audio_l_c;
    input \pulselenght[10] ;
    input \pulselenght[9] ;
    input \pulselenght[8] ;
    input \pulselenght[7] ;
    input \pulselenght[12] ;
    input \pulselenght[2] ;
    input \pulselenght[1] ;
    input n4019;
    input \pulselenght[6] ;
    input \pulselenght[5] ;
    input \pulselenght[4] ;
    input \pulselenght[3] ;
    input n4002;
    
    wire [12:0]pulselenght;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(43[8:19])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(33[12:15])
    wire n4274 /* synthesis nomerge= */ ;
    wire clk_divider /* synthesis SET_AS_NETWORK=\Tone_Gen/clk_divider */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(42[8:19])
    
    Key2_Pulselenght Pulse_Length (.n4024(n4024), .n4032(n4032), .n3818(n3818), 
            .n4021(n4021), .n4033(n4033), .n4023(n4023), .n1848(n1848), 
            .n4026(n4026), .n74(n74), .n3602(n3602), .n4020(n4020), 
            .n3624(n3624), .n3812(n3812), .n68(n68), .n1822(n1822), 
            .scancode_sync({scancode_sync}), .n49(n49), .n50(n50), .n3611(n3611), 
            .n76(n76), .n4016(n4016), .n4014(n4014), .n52(n52), .n4025(n4025), 
            .n4013(n4013), .n4015(n4015), .n44(n44), .n48(n48), .n4018(n4018), 
            .n55(n55), .n3886(n3886), .n3879(n3879), .n3874(n3874), 
            .n62(n62), .n3876(n3876), .n3877(n3877), .n64(n64), .n63(n63), 
            .n67(n67), .n4012(n4012), .n1905(n1905), .n3638(n3638), 
            .n56(n56), .n4022(n4022), .\pulselenght[11] (pulselenght[11]), 
            .n12(n12), .n57(n57), .n1824(n1824), .n649(n649), .n4010(n4010), 
            .n3878(n3878), .n3811(n3811), .n642(n642), .n53(n53), .n3668(n3668), 
            .n3619(n3619), .n830(n830), .n3608(n3608), .n1893(n1893), 
            .n57_adj_1(n57_adj_2), .n3614(n3614));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(55[16:44])
    Clock_Generator Clock_Generator (.flag(flag), .clk_c(clk_c), .n333(n333), 
            .n4274(n4274), .clk_divider(clk_divider), .n396(n396), .reset_c(reset_c));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(47[18:45])
    Pulselenght2_Audio Audio_Pulse (.GND_net(GND_net), .audio_l_c(audio_l_c), 
            .clk_divider(clk_divider), .\pulselenght[10] (\pulselenght[10] ), 
            .\pulselenght[9] (\pulselenght[9] ), .\pulselenght[8] (\pulselenght[8] ), 
            .\pulselenght[7] (\pulselenght[7] ), .\pulselenght[12] (\pulselenght[12] ), 
            .\pulselenght[11] (pulselenght[11]), .\pulselenght[2] (\pulselenght[2] ), 
            .\pulselenght[1] (\pulselenght[1] ), .n4019(n4019), .n44(n44), 
            .n55(n55), .\pulselenght[6] (\pulselenght[6] ), .\pulselenght[5] (\pulselenght[5] ), 
            .\pulselenght[4] (\pulselenght[4] ), .\pulselenght[3] (\pulselenght[3] ), 
            .n4022(n4022), .n74(n74), .n76(n76), .n67(n67), .n52(n52), 
            .n62(n62), .n53(n53), .n64(n64), .n63(n63), .n57(n57_adj_2), 
            .n4002(n4002));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(62[15:45])
    
endmodule
//
// Verilog Description of module Key2_Pulselenght
//

module Key2_Pulselenght (n4024, n4032, n3818, n4021, n4033, n4023, 
            n1848, n4026, n74, n3602, n4020, n3624, n3812, n68, 
            n1822, scancode_sync, n49, n50, n3611, n76, n4016, 
            n4014, n52, n4025, n4013, n4015, n44, n48, n4018, 
            n55, n3886, n3879, n3874, n62, n3876, n3877, n64, 
            n63, n67, n4012, n1905, n3638, n56, n4022, \pulselenght[11] , 
            n12, n57, n1824, n649, n4010, n3878, n3811, n642, 
            n53, n3668, n3619, n830, n3608, n1893, n57_adj_1, 
            n3614);
    input n4024;
    input n4032;
    input n3818;
    input n4021;
    input n4033;
    input n4023;
    input n1848;
    input n4026;
    output n74;
    input n3602;
    input n4020;
    output n3624;
    input n3812;
    input n68;
    output n1822;
    input [7:0]scancode_sync;
    input n49;
    input n50;
    input n3611;
    output n76;
    input n4016;
    input n4014;
    output n52;
    input n4025;
    input n4013;
    input n4015;
    output n44;
    input n48;
    input n4018;
    output n55;
    input n3886;
    input n3879;
    input n3874;
    output n62;
    input n3876;
    output n3877;
    output n64;
    output n63;
    output n67;
    input n4012;
    input n1905;
    input n3638;
    output n56;
    input n4022;
    output \pulselenght[11] ;
    input n12;
    input n57;
    input n1824;
    output n649;
    input n4010;
    output n3878;
    output n3811;
    output n642;
    output n53;
    output n3668;
    input n3619;
    input n830;
    input n3608;
    output n1893;
    output n57_adj_1;
    input n3614;
    
    
    wire n32, n60, n55_c, n3819, n3820, n3140, n67_c, n73, n44_c, 
        n1852, n54, n60_adj_3, n3146, n71, n48_c, n79, n65, 
        n76_c, n36, n46, n3810, n3813, n68_c, n62_c, n50_adj_4, 
        n4038, n4037, n3864, n4, n46_adj_7, n66, n3209, n105, 
        n3628, n4036, n3607, n3953, n50_adj_11, n3888, n59, n3885, 
        n3887, n4034, n4007, n3875, n62_adj_13, n47, n60_adj_14, 
        n62_adj_15, n65_adj_16, n95, n55_adj_18, n56_c, n53_c, n3618, 
        n3821, n4039, n4035, n3817, n50_adj_21, n3924, n3615;
    
    LUT4 i1_4_lut (.A(n4024), .B(n32), .C(n60), .D(n4032), .Z(n55_c)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h5044;
    PFUMX i3347 (.BLUT(n3819), .ALUT(n3818), .C0(n4021), .Z(n3820));
    PFUMX i101 (.BLUT(n3140), .ALUT(n67_c), .C0(n4032), .Z(n73));
    PFUMX i74 (.BLUT(n44_c), .ALUT(n1852), .C0(n4033), .Z(n54));
    PFUMX i101_adj_1 (.BLUT(n60_adj_3), .ALUT(n3146), .C0(n4023), .Z(n71));
    PFUMX i104 (.BLUT(n48_c), .ALUT(n1848), .C0(n4032), .Z(n79));
    LUT4 i1_4_lut_adj_2 (.A(n4026), .B(n4032), .C(n65), .D(n76_c), .Z(n74)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_2.init = 16'heca0;
    PFUMX i59 (.BLUT(n3602), .ALUT(n36), .C0(n4024), .Z(n46));
    LUT4 i103_4_lut (.A(n4020), .B(n79), .C(n4021), .D(n3624), .Z(n65)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i103_4_lut.init = 16'hcac0;
    PFUMX i3341 (.BLUT(n3812), .ALUT(n3810), .C0(n4033), .Z(n3813));
    PFUMX i86 (.BLUT(n68_c), .ALUT(n62_c), .C0(n4021), .Z(n50_adj_4));
    LUT4 i102_4_lut (.A(n71), .B(n68), .C(n4033), .D(n1822), .Z(n76_c)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i102_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_then_4_lut (.A(scancode_sync[5]), .B(scancode_sync[0]), 
         .C(scancode_sync[3]), .D(n49), .Z(n4038)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_else_4_lut (.A(scancode_sync[5]), .B(scancode_sync[0]), 
         .C(scancode_sync[4]), .D(n49), .Z(n4037)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0200;
    LUT4 n83_bdd_4_lut_3402 (.A(scancode_sync[4]), .B(n50), .C(scancode_sync[6]), 
         .D(n49), .Z(n3864)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam n83_bdd_4_lut_3402.init = 16'ha033;
    LUT4 i1_4_lut_adj_3 (.A(n3611), .B(n4024), .C(n4), .D(n73), .Z(n76)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_3.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_4 (.A(n4023), .B(n4024), .C(n4016), .D(n4026), 
         .Z(n4)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_4.init = 16'h5004;
    LUT4 i1_4_lut_adj_5 (.A(n46_adj_7), .B(n4032), .C(n4014), .D(n54), 
         .Z(n52)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_5.init = 16'heca0;
    LUT4 i1_4_lut_4_lut (.A(n4023), .B(n4026), .C(n4025), .D(n4024), 
         .Z(n68_c)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h4300;
    PFUMX i90 (.BLUT(n66), .ALUT(n3209), .C0(n4026), .Z(n105));
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4025), .B(n4021), .C(n4013), .D(n4015), 
         .Z(n3628)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_6 (.A(n4026), .B(n4023), .C(n4036), .D(n46), .Z(n44)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_6.init = 16'h7350;
    LUT4 i2_3_lut_4_lut (.A(n4024), .B(n4026), .C(n48), .D(n4032), .Z(n3607)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_7 (.A(n4021), .B(n3813), .C(n3953), .D(n4018), 
         .Z(n55)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_7.init = 16'hdccc;
    LUT4 i1_4_lut_adj_8 (.A(n4032), .B(n4024), .C(n50_adj_11), .D(n3888), 
         .Z(n59)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_8.init = 16'ha8a0;
    PFUMX i3377 (.BLUT(n3886), .ALUT(n3885), .C0(n4033), .Z(n3887));
    LUT4 i3397_else_4_lut (.A(n49), .B(scancode_sync[5]), .C(scancode_sync[4]), 
         .D(scancode_sync[3]), .Z(n4034)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3397_else_4_lut.init = 16'h8000;
    PFUMX i3375 (.BLUT(n3879), .ALUT(n3874), .C0(n4024), .Z(n62));
    LUT4 i1_2_lut_rep_89_3_lut_4_lut (.A(n4033), .B(n4024), .C(n4026), 
         .D(scancode_sync[1]), .Z(n4007)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_89_3_lut_4_lut.init = 16'h2000;
    LUT4 i3_2_lut_3_lut_4_lut (.A(scancode_sync[1]), .B(n4026), .C(n4021), 
         .D(n4025), .Z(n32)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX i3372 (.BLUT(n3876), .ALUT(n3875), .C0(n4025), .Z(n3877));
    PFUMX i84 (.BLUT(n59), .ALUT(n62_adj_13), .C0(n4033), .Z(n64));
    LUT4 n81_bdd_4_lut_3371 (.A(n4026), .B(n4025), .C(n4021), .D(n4023), 
         .Z(n47)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C+!(D))+!B))) */ ;
    defparam n81_bdd_4_lut_3371.init = 16'h04a0;
    PFUMX i92 (.BLUT(n3628), .ALUT(n60_adj_14), .C0(n4032), .Z(n63));
    PFUMX i88 (.BLUT(n62_adj_15), .ALUT(n65_adj_16), .C0(n4033), .Z(n67));
    PFUMX i81 (.BLUT(n3607), .ALUT(n55_c), .C0(n4033), .Z(n95));
    LUT4 i2_4_lut_4_lut (.A(n4025), .B(n4026), .C(n4024), .D(n4012), 
         .Z(n55_adj_18)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!C))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h0058;
    LUT4 i3_4_lut (.A(n4033), .B(n4026), .C(n4023), .D(n4016), .Z(n3140)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0080;
    LUT4 i99_4_lut (.A(n47), .B(n49), .C(n4033), .D(n1905), .Z(n67_c)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i99_4_lut.init = 16'h3afa;
    LUT4 i1_4_lut_4_lut_adj_9 (.A(n4025), .B(n4026), .C(n4021), .D(n4023), 
         .Z(n56_c)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_9.init = 16'h0083;
    LUT4 i1_2_lut_4_lut (.A(n3638), .B(n4032), .C(n56), .D(n4022), .Z(\pulselenght[11] )) /* synthesis lut_function=(!(A (D)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h00ea;
    LUT4 i1_4_lut_adj_10 (.A(n4026), .B(n12), .C(n57), .D(n4025), .Z(n44_c)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_10.init = 16'h5044;
    LUT4 i3337_4_lut (.A(scancode_sync[0]), .B(n1824), .C(n49), .D(scancode_sync[3]), 
         .Z(n1852)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C (D))))) */ ;
    defparam i3337_4_lut.init = 16'h2313;
    LUT4 i1_4_lut_adj_11 (.A(n4024), .B(n4021), .C(n4026), .D(n4025), 
         .Z(n60_adj_3)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_11.init = 16'ha88a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(n4025), .B(n4026), .C(n4023), 
         .D(n4021), .Z(n60)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'h0807;
    LUT4 i1_3_lut_4_lut (.A(n4025), .B(n4026), .C(n4024), .D(n4023), 
         .Z(n62_c)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0078;
    LUT4 i1_4_lut_4_lut_adj_13 (.A(n4021), .B(n4026), .C(n4025), .D(n4033), 
         .Z(n36)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_13.init = 16'h0043;
    LUT4 i338_4_lut (.A(n50), .B(scancode_sync[6]), .C(n49), .D(scancode_sync[4]), 
         .Z(n649)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i338_4_lut.init = 16'hf5c5;
    LUT4 i1_2_lut_3_lut (.A(n4033), .B(n4024), .C(n4025), .Z(n3624)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 n81_bdd_4_lut_3374 (.A(n4026), .B(n4033), .C(n4021), .D(n4023), 
         .Z(n3875)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+!(D))))) */ ;
    defparam n81_bdd_4_lut_3374.init = 16'h0120;
    LUT4 i1_4_lut_adj_14 (.A(n4021), .B(n4010), .C(n1824), .D(n4033), 
         .Z(n66)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_14.init = 16'h0544;
    LUT4 i2_4_lut (.A(n4023), .B(n4033), .C(n1822), .D(n4021), .Z(n3209)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0504;
    LUT4 n1822_bdd_4_lut_3345 (.A(n1822), .B(n4026), .C(n4021), .D(n4023), 
         .Z(n3810)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam n1822_bdd_4_lut_3345.init = 16'h0040;
    LUT4 n81_bdd_4_lut_3349 (.A(n4026), .B(n4023), .C(n4025), .D(n4024), 
         .Z(n3819)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !(C+!(D))))) */ ;
    defparam n81_bdd_4_lut_3349.init = 16'h6160;
    LUT4 i2_3_lut_4_lut_adj_15 (.A(n4024), .B(n4021), .C(n4026), .D(n4025), 
         .Z(n3146)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_15.init = 16'h0b00;
    LUT4 i1_4_lut_adj_16 (.A(n4024), .B(n53_c), .C(n56_c), .D(n4032), 
         .Z(n62_adj_13)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h5044;
    LUT4 n81_bdd_4_lut_3379 (.A(n4026), .B(n4021), .C(n4023), .D(n3864), 
         .Z(n3878)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n81_bdd_4_lut_3379.init = 16'h8000;
    LUT4 i3_2_lut_3_lut_4_lut_adj_17 (.A(n4033), .B(n4024), .C(n4023), 
         .D(n4025), .Z(n48_c)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_2_lut_3_lut_4_lut_adj_17.init = 16'h2000;
    LUT4 n81_bdd_4_lut_3346 (.A(n4026), .B(n4021), .C(n4023), .D(n4025), 
         .Z(n3811)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (D)+!B !((D)+!C)))) */ ;
    defparam n81_bdd_4_lut_3346.init = 16'h4c18;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(n4024), .B(n4021), .C(n4023), 
         .D(n4025), .Z(n3618)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'h0b00;
    LUT4 i333_2_lut (.A(scancode_sync[1]), .B(scancode_sync[2]), .Z(n642)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i333_2_lut.init = 16'h6666;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n4021), .B(n4025), .C(n4026), .D(n4023), 
         .Z(n50_adj_11)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 n90_bdd_4_lut_3425 (.A(n4021), .B(n4023), .C(n4032), .D(n4024), 
         .Z(n3885)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam n90_bdd_4_lut_3425.init = 16'h0004;
    LUT4 i72_4_lut (.A(n4016), .B(n3821), .C(n4032), .D(n4007), .Z(n53)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i72_4_lut.init = 16'hc5c0;
    LUT4 n81_bdd_4_lut_3380 (.A(n4026), .B(n4025), .C(n4021), .D(n4023), 
         .Z(n3888)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+!(D))))) */ ;
    defparam n81_bdd_4_lut_3380.init = 16'h01a0;
    LUT4 i2_2_lut_3_lut_4_lut_adj_19 (.A(n4021), .B(n4025), .C(n4026), 
         .D(scancode_sync[1]), .Z(n53_c)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_19.init = 16'h9000;
    LUT4 i1_4_lut_adj_20 (.A(n4033), .B(n105), .C(n55_adj_18), .D(n4039), 
         .Z(n60_adj_14)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_20.init = 16'hdddc;
    LUT4 i3260_3_lut_4_lut (.A(scancode_sync[5]), .B(scancode_sync[4]), 
         .C(scancode_sync[7]), .D(scancode_sync[6]), .Z(n3668)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3260_3_lut_4_lut.init = 16'h8000;
    LUT4 i3397_then_4_lut (.A(scancode_sync[1]), .B(n49), .C(scancode_sync[5]), 
         .D(scancode_sync[3]), .Z(n4035)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3397_then_4_lut.init = 16'h0004;
    PFUMX i76 (.BLUT(n3619), .ALUT(n830), .C0(n4033), .Z(n46_adj_7));
    LUT4 i83_4_lut (.A(n50_adj_4), .B(n4012), .C(n4033), .D(n3608), 
         .Z(n56)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i83_4_lut.init = 16'h3a0a;
    LUT4 n3820_bdd_3_lut (.A(n3820), .B(n3817), .C(n4033), .Z(n3821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3820_bdd_3_lut.init = 16'hcaca;
    LUT4 i1559_3_lut_4_lut (.A(scancode_sync[5]), .B(scancode_sync[4]), 
         .C(n49), .D(n50), .Z(n1822)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i1559_3_lut_4_lut.init = 16'he0ef;
    LUT4 i1560_2_lut_3_lut (.A(scancode_sync[5]), .B(scancode_sync[4]), 
         .C(scancode_sync[6]), .Z(n1893)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1560_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_adj_21 (.A(n4032), .B(n50_adj_21), .C(n3618), .D(n4026), 
         .Z(n62_adj_15)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_21.init = 16'ha088;
    LUT4 i1_4_lut_adj_22 (.A(n4024), .B(n4023), .C(n4021), .D(n4025), 
         .Z(n50_adj_21)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'ha022;
    LUT4 i1_4_lut_adj_23 (.A(n4025), .B(n95), .C(n3887), .D(n4026), 
         .Z(n57_adj_1)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_23.init = 16'hdccc;
    LUT4 n82_bdd_4_lut_3411 (.A(n4023), .B(n4032), .C(n4025), .D(n4021), 
         .Z(n3924)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B ((D)+!C)))) */ ;
    defparam n82_bdd_4_lut_3411.init = 16'h6404;
    LUT4 n1822_bdd_4_lut_3406 (.A(n1822), .B(n4026), .C(n4023), .D(n4021), 
         .Z(n3817)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n1822_bdd_4_lut_3406.init = 16'h0400;
    LUT4 i1_4_lut_adj_24 (.A(n4024), .B(n3615), .C(n4026), .D(n3924), 
         .Z(n65_adj_16)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h5444;
    LUT4 i1_4_lut_adj_25 (.A(n4032), .B(n3614), .C(n4021), .D(n4026), 
         .Z(n3615)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_25.init = 16'h0480;
    PFUMX i3436 (.BLUT(n4037), .ALUT(n4038), .C0(scancode_sync[1]), .Z(n4039));
    LUT4 scancode_sync_1__bdd_4_lut_3457 (.A(scancode_sync[1]), .B(scancode_sync[0]), 
         .C(n4033), .D(n49), .Z(n3953)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam scancode_sync_1__bdd_4_lut_3457.init = 16'h16f0;
    PFUMX i3434 (.BLUT(n4034), .ALUT(n4035), .C0(scancode_sync[6]), .Z(n4036));
    
endmodule
//
// Verilog Description of module Clock_Generator
//

module Clock_Generator (flag, clk_c, n333, n4274, clk_divider, n396, 
            reset_c);
    output flag;
    input clk_c;
    input n333;
    input n4274;
    output clk_divider;
    input n396;
    input reset_c;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/top_layer.vhd(33[12:15])
    wire [2:0]freqentie;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(47[8:17])
    wire n880;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(110[1] 162[8])
    wire n879;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(110[1] 162[8])
    wire [6:0]counter;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(44[8:15])
    wire n878;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(110[1] 162[8])
    wire n4274 /* synthesis nomerge= */ ;
    wire clk_divider /* synthesis SET_AS_NETWORK=\Tone_Gen/clk_divider */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(42[8:19])
    wire n102;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(81[5] 98[14])
    wire n3583;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(59[5] 76[14])
    wire n398;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(56[2] 103[11])
    wire n696;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(116[2] 161[11])
    
    wire n3587, n1836, n1839, n872, n3921, n3212, n160, n1917, 
        n5, n883;
    wire [6:0]n34;
    
    wire n4017, n3585, n4006, n4029, n5_adj_2, n399, n681, n6, 
        n4009, n720, n3594, n3660, n4008, n4030, n712;
    
    FD1S3AX flag_63 (.D(n333), .CK(clk_c), .Q(flag)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=45, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(53[1] 104[8])
    defparam flag_63.GSR = "ENABLED";
    PFUMX i51 (.BLUT(n3587), .ALUT(n1836), .C0(freqentie[2]), .Z(n1839));
    FD1P3AX freqentie_i0_i0 (.D(n3921), .SP(n872), .CK(clk_c), .Q(freqentie[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=45, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(53[1] 104[8])
    defparam freqentie_i0_i0.GSR = "DISABLED";
    FD1S3DX temp_clk_69_542_543_reset (.D(n160), .CK(clk_c), .CD(n3212), 
            .Q(n880)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=45, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(110[1] 162[8])
    defparam temp_clk_69_542_543_reset.GSR = "DISABLED";
    FD1S3BX temp_clk_69_542_543_set (.D(n160), .CK(clk_c), .PD(n1917), 
            .Q(n879)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=45, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(110[1] 162[8])
    defparam temp_clk_69_542_543_set.GSR = "DISABLED";
    FD1P3IX counter_228__i1 (.D(n34[1]), .SP(n5), .CD(n883), .CK(clk_c), 
            .Q(counter[1]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(159[16:23])
    defparam counter_228__i1.GSR = "ENABLED";
    FD1P3IX counter_228__i2 (.D(n34[2]), .SP(n5), .CD(n883), .CK(clk_c), 
            .Q(counter[2]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(159[16:23])
    defparam counter_228__i2.GSR = "ENABLED";
    FD1P3IX counter_228__i3 (.D(n34[3]), .SP(n5), .CD(n883), .CK(clk_c), 
            .Q(counter[3]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(159[16:23])
    defparam counter_228__i3.GSR = "ENABLED";
    FD1P3IX counter_228__i4 (.D(n34[4]), .SP(n5), .CD(n883), .CK(clk_c), 
            .Q(counter[4]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(159[16:23])
    defparam counter_228__i4.GSR = "ENABLED";
    FD1S1D i541 (.D(n4274), .CK(n1917), .CD(n3212), .Q(n878));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(110[1] 162[8])
    defparam i541.GSR = "DISABLED";
    FD1P3IX counter_228__i5 (.D(n34[5]), .SP(n5), .CD(n883), .CK(clk_c), 
            .Q(counter[5]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(159[16:23])
    defparam counter_228__i5.GSR = "ENABLED";
    FD1P3IX counter_228__i6 (.D(n34[6]), .SP(n5), .CD(n883), .CK(clk_c), 
            .Q(counter[6]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(159[16:23])
    defparam counter_228__i6.GSR = "ENABLED";
    FD1P3IX counter_228__i0 (.D(n34[0]), .SP(n5), .CD(n883), .CK(clk_c), 
            .Q(counter[0]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(159[16:23])
    defparam counter_228__i0.GSR = "ENABLED";
    LUT4 i2711_2_lut_3_lut_4_lut (.A(n4017), .B(counter[3]), .C(counter[5]), 
         .D(counter[4]), .Z(n34[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i2711_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3311_4_lut_4_lut (.A(counter[0]), .B(counter[1]), .C(n3585), 
         .D(freqentie[0]), .Z(n3587)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i3311_4_lut_4_lut.init = 16'h0701;
    LUT4 i1557_3_lut_4_lut (.A(n4006), .B(n4029), .C(freqentie[0]), .D(clk_divider), 
         .Z(n5_adj_2)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C+!(D))))) */ ;
    defparam i1557_3_lut_4_lut.init = 16'h010e;
    LUT4 i1_3_lut (.A(freqentie[2]), .B(freqentie[0]), .C(freqentie[1]), 
         .Z(n102)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(81[5] 98[14])
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i15_3_lut (.A(freqentie[0]), .B(freqentie[2]), .C(freqentie[1]), 
         .Z(n3583)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(59[5] 76[14])
    defparam i15_3_lut.init = 16'h6c6c;
    FD1P3AX freqentie_i0_i2 (.D(n399), .SP(n872), .CK(clk_c), .Q(freqentie[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=45, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(53[1] 104[8])
    defparam freqentie_i0_i2.GSR = "DISABLED";
    FD1P3AX freqentie_i0_i1 (.D(n398), .SP(n872), .CK(clk_c), .Q(freqentie[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=45, LSE_LLINE=47, LSE_RLINE=47 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(53[1] 104[8])
    defparam freqentie_i0_i1.GSR = "DISABLED";
    PFUMX mux_198_i3 (.BLUT(n102), .ALUT(n3583), .C0(n396), .Z(n399));
    LUT4 i3319_3_lut (.A(n333), .B(reset_c), .C(flag), .Z(n872)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i3319_3_lut.init = 16'h0808;
    PFUMX Mux_56_i6 (.BLUT(n681), .ALUT(n5_adj_2), .C0(freqentie[1]), 
          .Z(n6)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=18, LSE_RCOL=45, LSE_LLINE=47, LSE_RLINE=47 */ ;
    LUT4 i3308_2_lut_3_lut_4_lut (.A(counter[4]), .B(n4009), .C(freqentie[0]), 
         .D(n4029), .Z(n1836)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i3308_2_lut_3_lut_4_lut.init = 16'h0007;
    LUT4 i2718_3_lut_4_lut (.A(counter[4]), .B(n4009), .C(counter[5]), 
         .D(counter[6]), .Z(n34[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i2718_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3305_3_lut (.A(reset_c), .B(n5), .C(clk_divider), .Z(n3212)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i3305_3_lut.init = 16'h2020;
    LUT4 Mux_56_i7_4_lut (.A(clk_divider), .B(n6), .C(freqentie[2]), .D(n696), 
         .Z(n160)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(116[2] 161[11])
    defparam Mux_56_i7_4_lut.init = 16'hc5ca;
    LUT4 Mux_56_i3_4_lut (.A(freqentie[0]), .B(n720), .C(freqentie[1]), 
         .D(n3585), .Z(n696)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(116[2] 161[11])
    defparam Mux_56_i3_4_lut.init = 16'hfaca;
    LUT4 i2_3_lut (.A(freqentie[1]), .B(freqentie[2]), .C(freqentie[0]), 
         .Z(n5)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(113[8:21])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i3303_3_lut (.A(reset_c), .B(n5), .C(clk_divider), .Z(n1917)) /* synthesis lut_function=(!(A (B+(C)))) */ ;
    defparam i3303_3_lut.init = 16'h5757;
    LUT4 i547_4_lut (.A(n5), .B(n3594), .C(n1839), .D(freqentie[1]), 
         .Z(n883)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam i547_4_lut.init = 16'h0a22;
    LUT4 i1_4_lut (.A(freqentie[2]), .B(counter[6]), .C(n3660), .D(counter[4]), 
         .Z(n3594)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0002;
    LUT4 i3252_4_lut (.A(counter[5]), .B(n4008), .C(n4009), .D(freqentie[0]), 
         .Z(n3660)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i3252_4_lut.init = 16'hfaee;
    LUT4 i2683_2_lut (.A(counter[1]), .B(counter[0]), .Z(n34[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2683_2_lut.init = 16'h6666;
    LUT4 i2681_1_lut (.A(counter[0]), .Z(n34[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i2681_1_lut.init = 16'h5555;
    LUT4 mux_198_i2_4_lut (.A(freqentie[1]), .B(n396), .C(freqentie[0]), 
         .D(freqentie[2]), .Z(n398)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A !(B (C)+!B !(C+!(D))))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(56[2] 103[11])
    defparam mux_198_i2_4_lut.init = 16'h4968;
    LUT4 i544_3_lut (.A(n880), .B(n879), .C(n878), .Z(clk_divider)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/clock_generator.vhd(110[1] 162[8])
    defparam i544_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_111 (.A(counter[5]), .B(counter[6]), .Z(n4029)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_111.init = 16'heeee;
    LUT4 i297_2_lut_rep_112 (.A(counter[0]), .B(counter[1]), .Z(n4030)) /* synthesis lut_function=(A (B)) */ ;
    defparam i297_2_lut_rep_112.init = 16'h8888;
    LUT4 i298_2_lut_rep_91_3_lut_4_lut (.A(counter[0]), .B(counter[1]), 
         .C(counter[3]), .D(counter[2]), .Z(n4009)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i298_2_lut_rep_91_3_lut_4_lut.init = 16'h8000;
    LUT4 i299_2_lut_rep_99_3_lut (.A(counter[0]), .B(counter[1]), .C(counter[2]), 
         .Z(n4017)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i299_2_lut_rep_99_3_lut.init = 16'h8080;
    LUT4 i294_2_lut_rep_90_3_lut_4_lut (.A(counter[0]), .B(counter[1]), 
         .C(counter[3]), .D(counter[2]), .Z(n4008)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i294_2_lut_rep_90_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i2690_2_lut_3_lut (.A(counter[0]), .B(counter[1]), .C(counter[2]), 
         .Z(n34[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i2690_2_lut_3_lut.init = 16'h7878;
    LUT4 i2697_2_lut_3_lut_4_lut (.A(counter[0]), .B(counter[1]), .C(counter[3]), 
         .D(counter[2]), .Z(n34[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i2697_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 Mux_56_i2_3_lut_4_lut_3_lut (.A(counter[0]), .B(counter[1]), .C(freqentie[0]), 
         .Z(n720)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam Mux_56_i2_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i2707_2_lut_rep_88_3_lut_4_lut (.A(n4030), .B(counter[2]), .C(counter[4]), 
         .D(counter[3]), .Z(n4006)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2707_2_lut_rep_88_3_lut_4_lut.init = 16'h8000;
    LUT4 i2704_2_lut_3_lut_4_lut (.A(n4030), .B(counter[2]), .C(counter[4]), 
         .D(counter[3]), .Z(n34[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i2704_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 Mux_56_i4_3_lut_4_lut_3_lut_4_lut (.A(n4030), .B(counter[2]), .C(freqentie[0]), 
         .D(counter[3]), .Z(n712)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam Mux_56_i4_3_lut_4_lut_3_lut_4_lut.init = 16'h8f08;
    LUT4 i2_3_lut_4_lut (.A(counter[4]), .B(n4029), .C(counter[3]), .D(counter[2]), 
         .Z(n3585)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i365_3_lut_4_lut (.A(counter[4]), .B(n4029), .C(n712), .D(clk_divider), 
         .Z(n681)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i365_3_lut_4_lut.init = 16'h01fe;
    LUT4 freqentie_0__bdd_4_lut (.A(freqentie[0]), .B(freqentie[2]), .C(freqentie[1]), 
         .D(n396), .Z(n3921)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C+(D))))) */ ;
    defparam freqentie_0__bdd_4_lut.init = 16'h1554;
    
endmodule
//
// Verilog Description of module Pulselenght2_Audio
//

module Pulselenght2_Audio (GND_net, audio_l_c, clk_divider, \pulselenght[10] , 
            \pulselenght[9] , \pulselenght[8] , \pulselenght[7] , \pulselenght[12] , 
            \pulselenght[11] , \pulselenght[2] , \pulselenght[1] , n4019, 
            n44, n55, \pulselenght[6] , \pulselenght[5] , \pulselenght[4] , 
            \pulselenght[3] , n4022, n74, n76, n67, n52, n62, 
            n53, n64, n63, n57, n4002);
    input GND_net;
    output audio_l_c;
    input clk_divider;
    input \pulselenght[10] ;
    input \pulselenght[9] ;
    input \pulselenght[8] ;
    input \pulselenght[7] ;
    input \pulselenght[12] ;
    input \pulselenght[11] ;
    input \pulselenght[2] ;
    input \pulselenght[1] ;
    input n4019;
    input n44;
    input n55;
    input \pulselenght[6] ;
    input \pulselenght[5] ;
    input \pulselenght[4] ;
    input \pulselenght[3] ;
    input n4022;
    input n74;
    input n76;
    input n67;
    input n52;
    input n62;
    input n53;
    input n64;
    input n63;
    input n57;
    input n4002;
    
    wire n3115;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire [16:0]cnt;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(44[8:11])
    wire [16:0]n1;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire n3114;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire n3113;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire n3112;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire n3111;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire clk_divider /* synthesis SET_AS_NETWORK=\Tone_Gen/clk_divider */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/tone_generator.vhd(42[8:19])
    wire n66;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[2] 63[9])
    wire n3110;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire n3109;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire n3006;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(58[8:26])
    wire n3108;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    wire n13;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[5:21])
    wire n3194;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[5:21])
    wire n14;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[5:21])
    
    wire n805, n118, n3007, n3008, n3009, n9, n3716;
    
    CCU2D cnt_229_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3115), .S0(n1[15]), .S1(n1[16]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_17.INJECT1_0 = "NO";
    defparam cnt_229_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_229_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3114), .COUT(n3115), .S0(n1[13]), .S1(n1[14]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_15.INJECT1_0 = "NO";
    defparam cnt_229_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_229_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3113), .COUT(n3114), .S0(n1[11]), .S1(n1[12]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_13.INJECT1_0 = "NO";
    defparam cnt_229_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_229_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3112), 
          .COUT(n3113), .S0(n1[9]), .S1(n1[10]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_11.INJECT1_0 = "NO";
    defparam cnt_229_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_229_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3111), 
          .COUT(n3112), .S0(n1[7]), .S1(n1[8]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_9.INJECT1_0 = "NO";
    defparam cnt_229_add_4_9.INJECT1_1 = "NO";
    FD1S3IX audio_tmp_19 (.D(n66), .CK(clk_divider), .CD(n805), .Q(audio_l_c)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=15, LSE_RCOL=45, LSE_LLINE=62, LSE_RLINE=62 */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(51[1] 64[8])
    defparam audio_tmp_19.GSR = "ENABLED";
    CCU2D cnt_229_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3110), 
          .COUT(n3111), .S0(n1[5]), .S1(n1[6]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_7.INJECT1_0 = "NO";
    defparam cnt_229_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cnt_229__i16 (.D(n1[16]), .CK(clk_divider), .CD(n118), .Q(cnt[16]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i16.GSR = "ENABLED";
    FD1S3IX cnt_229__i15 (.D(n1[15]), .CK(clk_divider), .CD(n118), .Q(cnt[15]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i15.GSR = "ENABLED";
    FD1S3IX cnt_229__i14 (.D(n1[14]), .CK(clk_divider), .CD(n118), .Q(cnt[14]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i14.GSR = "ENABLED";
    FD1S3IX cnt_229__i13 (.D(n1[13]), .CK(clk_divider), .CD(n118), .Q(cnt[13]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i13.GSR = "ENABLED";
    FD1S3IX cnt_229__i12 (.D(n1[12]), .CK(clk_divider), .CD(n118), .Q(cnt[12]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i12.GSR = "ENABLED";
    FD1S3IX cnt_229__i11 (.D(n1[11]), .CK(clk_divider), .CD(n118), .Q(cnt[11]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i11.GSR = "ENABLED";
    FD1S3IX cnt_229__i10 (.D(n1[10]), .CK(clk_divider), .CD(n118), .Q(cnt[10]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i10.GSR = "ENABLED";
    FD1S3IX cnt_229__i9 (.D(n1[9]), .CK(clk_divider), .CD(n118), .Q(cnt[9]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i9.GSR = "ENABLED";
    FD1S3IX cnt_229__i8 (.D(n1[8]), .CK(clk_divider), .CD(n118), .Q(cnt[8]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i8.GSR = "ENABLED";
    FD1S3IX cnt_229__i7 (.D(n1[7]), .CK(clk_divider), .CD(n118), .Q(cnt[7]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i7.GSR = "ENABLED";
    FD1S3IX cnt_229__i6 (.D(n1[6]), .CK(clk_divider), .CD(n118), .Q(cnt[6]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i6.GSR = "ENABLED";
    FD1S3IX cnt_229__i5 (.D(n1[5]), .CK(clk_divider), .CD(n118), .Q(cnt[5]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i5.GSR = "ENABLED";
    FD1S3IX cnt_229__i4 (.D(n1[4]), .CK(clk_divider), .CD(n118), .Q(cnt[4]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i4.GSR = "ENABLED";
    FD1S3IX cnt_229__i3 (.D(n1[3]), .CK(clk_divider), .CD(n118), .Q(cnt[3]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i3.GSR = "ENABLED";
    FD1S3IX cnt_229__i2 (.D(n1[2]), .CK(clk_divider), .CD(n118), .Q(cnt[2]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i2.GSR = "ENABLED";
    FD1S3IX cnt_229__i1 (.D(n1[1]), .CK(clk_divider), .CD(n118), .Q(cnt[1]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i1.GSR = "ENABLED";
    CCU2D equal_8_14 (.A0(\pulselenght[10] ), .B0(cnt[10]), .C0(\pulselenght[9] ), 
          .D0(cnt[9]), .A1(\pulselenght[8] ), .B1(cnt[8]), .C1(\pulselenght[7] ), 
          .D1(cnt[7]), .CIN(n3007), .COUT(n3008));
    defparam equal_8_14.INIT0 = 16'h9009;
    defparam equal_8_14.INIT1 = 16'h9009;
    defparam equal_8_14.INJECT1_0 = "YES";
    defparam equal_8_14.INJECT1_1 = "YES";
    CCU2D cnt_229_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3109), 
          .COUT(n3110), .S0(n1[3]), .S1(n1[4]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_5.INJECT1_0 = "NO";
    defparam cnt_229_add_4_5.INJECT1_1 = "NO";
    CCU2D equal_8_12 (.A0(cnt[15]), .B0(cnt[14]), .C0(cnt[13]), .D0(cnt[0]), 
          .A1(\pulselenght[12] ), .B1(cnt[12]), .C1(\pulselenght[11] ), 
          .D1(cnt[11]), .CIN(n3006), .COUT(n3007));
    defparam equal_8_12.INIT0 = 16'h0001;
    defparam equal_8_12.INIT1 = 16'h9009;
    defparam equal_8_12.INJECT1_0 = "YES";
    defparam equal_8_12.INJECT1_1 = "YES";
    FD1S3IX cnt_229__i0 (.D(n1[0]), .CK(clk_divider), .CD(n118), .Q(cnt[0]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229__i0.GSR = "ENABLED";
    CCU2D cnt_229_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3108), 
          .COUT(n3109), .S0(n1[1]), .S1(n1[2]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_229_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_229_add_4_3.INJECT1_0 = "NO";
    defparam cnt_229_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_229_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3108), 
          .S1(n1[0]));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(62[10:13])
    defparam cnt_229_add_4_1.INIT0 = 16'hF000;
    defparam cnt_229_add_4_1.INIT1 = 16'h0555;
    defparam cnt_229_add_4_1.INJECT1_0 = "NO";
    defparam cnt_229_add_4_1.INJECT1_1 = "NO";
    CCU2D equal_8_17 (.A0(\pulselenght[2] ), .B0(cnt[2]), .C0(\pulselenght[1] ), 
          .D0(cnt[1]), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3009), .S1(n9));
    defparam equal_8_17.INIT0 = 16'h9009;
    defparam equal_8_17.INIT1 = 16'hFFFF;
    defparam equal_8_17.INJECT1_0 = "YES";
    defparam equal_8_17.INJECT1_1 = "NO";
    LUT4 i81_2_lut (.A(n9), .B(n805), .Z(n118)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i81_2_lut.init = 16'heeee;
    CCU2D equal_8_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3006));   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(58[8:26])
    defparam equal_8_0.INIT0 = 16'hF000;
    defparam equal_8_0.INIT1 = 16'h5555;
    defparam equal_8_0.INJECT1_0 = "NO";
    defparam equal_8_0.INJECT1_1 = "YES";
    LUT4 i3334_4_lut (.A(n3716), .B(n4019), .C(n44), .D(n55), .Z(n805)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i3334_4_lut.init = 16'h222a;
    CCU2D equal_8_16 (.A0(\pulselenght[6] ), .B0(cnt[6]), .C0(\pulselenght[5] ), 
          .D0(cnt[5]), .A1(\pulselenght[4] ), .B1(cnt[4]), .C1(\pulselenght[3] ), 
          .D1(cnt[3]), .CIN(n3008), .COUT(n3009));
    defparam equal_8_16.INIT0 = 16'h9009;
    defparam equal_8_16.INIT1 = 16'h9009;
    defparam equal_8_16.INJECT1_0 = "YES";
    defparam equal_8_16.INJECT1_1 = "YES";
    LUT4 i3332_4_lut (.A(n4022), .B(n13), .C(n3194), .D(n14), .Z(n3716)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i3332_4_lut.init = 16'haaab;
    LUT4 i5_4_lut (.A(n74), .B(n76), .C(n67), .D(n52), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[5:21])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(n62), .B(n53), .Z(n3194)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[5:21])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i6_4_lut (.A(n64), .B(n63), .C(n57), .D(n4002), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[5:21])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i20_2_lut (.A(audio_l_c), .B(n9), .Z(n66)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/spikee/desktop/kakmetperen/orgel/impl1/source/pulselenght2_audio.vhd(55[2] 63[9])
    defparam i20_2_lut.init = 16'h6666;
    
endmodule
