//
// Module Haim.ARTM_tx_240.struct
//
// Created:
//          by - user.UNKNOWN (USER-PC)
//          at - 10:08:51 16/06/14
//
// Generated by Mentor Graphics' HDL Designer(TM) 2010.2a (Build 7)
//

`resetall
`timescale 1ns/10ps
module ARTM_tx_240( 
   // Port Declarations
   input   wire            CLK_POL, 
   input   wire            CLK_SRC, 
   input   wire            DAT_POL, 
   input   wire            DAT_SRC, 
   input   reg             Diff_en, 
   input   wire            PB_nBB, 
   input   wire            RAND, 
   input   wire    [31:0]  bit_rate, 
   input   wire            data_clock, 
   input   wire            data_in, 
   input   wire            internal_data, 
   input   wire    [3:0]   mode, 
   input   wire    [7:0]   phase_offset, 
   input   wire            rst_in_FOR_SIMULATION_ONLY, 
   input   wire            rst_n, 
   output  wire    [31:0]  FB_RATE, 
   output  wire    [10:0]  FM_lookup_addr_0, 
   output  wire    [10:0]  FM_lookup_addr_1, 
   output  wire    [15:0]  IIR, 
   output  reg             alpha_fm_0_dd, 
   output  wire            bit_0, 
   output  wire            bit_1, 
   output  wire            bit_clock, 
   output  wire            clk, 
   output  wire            clk_120, 
   output  wire            clock_d, 
   output  wire    [13:0]  cosine, 
   output  wire            data_d, 
   output  wire    [8:0]   data_trans_cnt, 
   output  wire    [13:0]  fm_phase_lu_0, 
   output  reg     [13:0]  fm_phase_of, 
   output  wire            outside_freq_range, 
   output  reg     [13:0]  phase_fm_0, 
   output  reg     [13:0]  phase_fm_1, 
   output  reg     [13:0]  phase_fm_r, 
   output  reg     [13:0]  phase_fm_rr, 
   output  wire    [13:0]  phase_modulation, 
   output  wire    [13:0]  phase_test, 
   output  reg     [14:0]  phase_total_d1, 
   output  reg     [14:0]  phase_total_d2, 
   output  wire    [4:0]   pll_state, 
   output  wire    [31:0]  quotient, 
   output  wire    [31:0]  quotient_1, 
   output  reg     [13:0]  roll_total_ddd, 
   output  wire            rst, 
   output  wire    [13:0]  sine, 
   output  reg     [2:0]   sym_count_dd, 
   output  wire            testa, 
   output  wire            transition_d, 
   output  wire            transition_i, 
   output  reg     [13:0]  tx_sig
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire         DAC_clk;
wire         DAC_clk_n;
reg          I_0;
wire         I_1;
reg          I_2;
reg          Q_0;
wire         Q_1;
reg          Q_2;
wire  [13:0] SOQPSK_lookup_0;
wire  [13:0] SOQPSK_lookup_1;
wire  [13:0] SOQPSK_lookup_2;
wire  [13:0] SOQPSK_lookup_3;
wire  [13:0] SOQPSK_lookup_4;
wire  [13:0] SOQPSK_lookup_5;
wire  [13:0] SOQPSK_lookup_6;
wire  [13:0] SOQPSK_lookup_7;
reg   [1:0]  alpha;
reg   [1:0]  alpha_0;
reg   [1:0]  alpha_0_d;
reg   [1:0]  alpha_1;
reg   [1:0]  alpha_1_d;
reg   [1:0]  alpha_2;
reg   [1:0]  alpha_2_d;
reg   [1:0]  alpha_3;
reg   [1:0]  alpha_3_d;
reg   [1:0]  alpha_4;
reg   [1:0]  alpha_4_d;
reg   [1:0]  alpha_5;
reg   [1:0]  alpha_5_d;
reg   [1:0]  alpha_6;
reg   [1:0]  alpha_6_d;
reg   [1:0]  alpha_7;
reg   [1:0]  alpha_7_d;
reg          alpha_fm_0;
reg          alpha_fm_0_d;
reg          alpha_fm_0_ddd;
reg          alpha_fm_1;
reg          alpha_fm_1_d;
reg          alpha_fm_1_dd;
reg          alpha_fm_1_ddd;
reg   [3:0]  bit_cnt;
reg   [31:0] bit_rate_r;
reg          bit_rate_rs;
wire  [31:0] car_freq;
wire         clk1;
wire         clk1_n;
wire  [13:0] constant;
wire  [13:0] cosine_O;
reg          cosine_O_d;
reg          cosine_O_dd;
reg          cosine_O_ddd;
wire  [13:0] cosine_O_ddd_x;
wire  [31:0] d1879048192;
wire         data_clock_sel;
reg          data_in_d;
wire         data_samp;
wire  [11:0] datab;
reg          flip;
reg          flip_d;
reg          flip_dd;
reg          flip_ddd;
wire  [13:0] fm_phase_lu_1;
reg   [13:0] fm_phase_of_d;
wire         gnd1;
wire  [31:0] gnd32;
wire         inclk0;
wire         locked;
reg   [13:0] lookup_rslt_0;
reg   [13:0] lookup_rslt_1;
reg   [13:0] lookup_rslt_2;
reg   [13:0] lookup_rslt_3;
reg   [13:0] lookup_rslt_4;
reg   [13:0] lookup_rslt_5;
reg   [13:0] lookup_rslt_6;
reg   [13:0] lookup_rslt_7;
wire         one;
reg   [13:0] ph_roll_0;
reg   [13:0] ph_roll_1;
reg   [13:0] ph_roll_2;
reg   [13:0] ph_roll_3;
reg   [13:0] ph_roll_4;
reg   [13:0] ph_roll_5;
reg   [13:0] ph_roll_6;
reg   [13:0] ph_roll_7;
reg   [13:0] phase_0;
reg   [13:0] phase_1;
reg   [13:0] phase_2;
reg   [13:0] phase_3;
wire         phase_31_d;
reg   [13:0] phase_4;
reg   [13:0] phase_5;
reg   [13:0] phase_6;
reg   [13:0] phase_7;
wire  [7:0]  phase_err;
wire  [12:0] phase_fm;
reg   [13:0] phase_fm_1_d;
reg   [14:0] phase_testx;
reg   [14:0] phase_total_1;
reg   [14:0] phase_total_2;
reg   [14:0] phase_total_3;
reg   [14:0] phase_total_4;
reg   [13:0] phase_total_d;
wire  [25:0] product;
reg   [13:0] roll_total_1;
reg   [13:0] roll_total_2;
reg   [13:0] roll_total_d;
reg   [13:0] roll_total_dd;
wire         rst1;
reg          rst_d;
reg          rst_dd;
reg          rst_ddd;
wire         scram_data;
reg   [2:0]  select_0;
reg   [2:0]  select_1;
reg   [2:0]  select_2;
reg   [2:0]  select_3;
reg   [2:0]  select_4;
reg   [2:0]  select_5;
reg   [2:0]  select_6;
reg   [2:0]  select_7;
wire         simulation;
wire  [13:0] sine_O;
reg          sine_O_d;
reg          sine_O_dd;
reg          sine_O_ddd;
wire         steady_state;
reg   [2:0]  sym_count;
reg   [2:0]  sym_count_d;
reg   [2:0]  sym_count_ddd;
reg   [31:0] sym_phase;
reg          sym_phase_ms10_d;
reg          sym_phase_of;
reg          sym_phase_of_d;
reg          sym_phase_of_dd;
reg          sym_phase_of_ddd;
reg          sym_phase_of_dddd;
reg          sym_phase_of_ddddd;
wire         sym_phase_of_p;
wire  [31:0] sym_phase_p;
wire         tag1;
wire         tag2;
wire         tag3;
wire         tag4;
wire         true_random;
reg   [13:0] tx_sig_p;
wire         vcc1;


// Instances 
FM FM_PCM_phase_0( 
   .address (FM_lookup_addr_0), 
   .clock   (clk), 
   .q       (fm_phase_lu_0)
); 

FM FM_PCM_phase_1( 
   .address (FM_lookup_addr_1), 
   .clock   (clk), 
   .q       (fm_phase_lu_1)
); 

PLL_10_240 phase_locked_loop( 
   .inclk0 (inclk0), 
   .c0     (clk), 
   .c1     (clk1), 
   .c2     (clk1_n), 
   .c3     (clk_120), 
   .locked (locked)
); 

RNRZ_L scrambler( 
   .clk         (clk), 
   .rst         (rst), 
   .data_in     (data_d), 
   .data_clk    (sym_phase[31]), 
   .mode_15_n11 (vcc1), 
   .TX_nRX      (vcc1), 
   .BER_test    (gnd1), 
   .data_out    (scram_data)
); 

SOQPSK_LU0 soqpsk_lu0( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_0)
); 

SOQPSK_LU1 soqpsk_lu1( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_1)
); 

SOQPSK_LU2 soqpsk_lu2( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_2)
); 

SOQPSK_LU3 soqpsk_lu3( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_3)
); 

SOQPSK_LU4 soqpsk_lu4( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_4)
); 

SOQPSK_LU5 soqpsk_lu5( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_5)
); 

SOQPSK_LU6 soqpsk_lu6( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_6)
); 

SOQPSK_LU7 soqpsk_lu7( 
   .address (sym_phase[31:23]), 
   .clock   (clk), 
   .q       (SOQPSK_lookup_7)
); 

data_transition_pll_240 detect_bit_rate( 
   .clk                (clk), 
   .clk_120            (clk_120), 
   .rst                (rst1), 
   .data               (data_in), 
   .clock              (data_clock_sel), 
   .frequency_set      (bit_rate), 
   .test_en            (gnd1), 
   .CLK_SRC            (CLK_SRC), 
   .DAT_SRC            (DAT_SRC), 
   .sym_phase_of       (sym_phase_of_p), 
   .NCO                (sym_phase_p), 
   .steady_state       (steady_state), 
   .state              (pll_state), 
   .frequency          (FB_RATE), 
   .dividend           (), 
   .divisor            (), 
   .quotient           (quotient), 
   .freq_correction    (), 
   .result_A           (), 
   .result_B           (), 
   .phase_err          (phase_err), 
   .scaled_phase       (), 
   .outside_freq_range (outside_freq_range), 
   .bit_cnt            (), 
   .timer              (), 
   .timer_d            (), 
   .transition         (), 
   .transition_d       (transition_d), 
   .transition_i       (transition_i), 
   .activity_count     (), 
   .activity           (), 
   .clock_d            (clock_d), 
   .data_d             (data_d), 
   .IIR                (IIR), 
   .quotient_1         (quotient_1), 
   .testa              (testa), 
   .data_trans_cnt     (data_trans_cnt), 
   .data_dd            (), 
   .timer_not_of       (), 
   .lock               (), 
   .abs_phase_err      ()
); 

frequency_translate_cyclone_2 produce_carrier( 
   .clk           (clk), 
   .rst           (rst), 
   .real_in       (constant), 
   .imag_in       (constant), 
   .frequency_mod (phase_modulation), 
   .frequency     (car_freq), 
   .frequency_en  (one), 
   .real_rslt     (tx_sig_p), 
   .sine          (sine_O), 
   .cosine        (cosine_O)
); 

multiplier_14_12 scale( 
   .clock  (clk), 
   .dataa  (sine_O), 
   .datab  (datab), 
   .result (product)
); 

// HDL Embedded Text Block 1 FF0
always @ (posedge clk)
   begin
   rst_d<= rst;
   rst_dd<= rst_d;
   rst_ddd<=rst_dd;
   end
                                     
// HDL Embedded Text Block 2 FF1
always @ (posedge clk)
   if(rst_n==1'd0)
      begin
      bit_rate_r<=32'd0;
      bit_rate_rs<=1'd0;
      end
   else   
      begin
      bit_rate_r<=bit_rate;
      bit_rate_rs<=(bit_rate_r!=bit_rate);
      end
// HDL Embedded Text Block 3 M0
assign data_clock_sel=(CLK_POL==1'd0)?data_clock:!data_clock;
// HDL Embedded Text Block 4 M1
assign rst1 = rst|rst_d|rst_dd;

// HDL Embedded Text Block 5 FF2
always @ (posedge clk)
      if (rst==1'd1)
         begin
         sym_phase_of<=1'd0;
         sym_phase<=32'd0;
         end
      else
         begin
         sym_phase_of<=sym_phase_of_p;
         sym_phase<=sym_phase_p;
         end
// HDL Embedded Text Block 6 M2
assign data_clock_sel=(CLK_POL==1'd0)?data_clock:!data_clock;
// HDL Embedded Text Block 7 c0
assign gnd32 = 32'd0;
assign d1879048192 = 32'd1879048192;
// HDL Embedded Text Block 8 E1
always @ (posedge clk)
   tx_sig<={!tx_sig_p[13],tx_sig_p[12:0]};
// HDL Embedded Text Block 9 c1
assign simulation =1'd0;
// HDL Embedded Text Block 10 g1
assign gnd1 = 1'b0;
assign vcc1 = 1'b1;
// HDL Embedded Text Block 11 E2
��ways @ (posedge clk)
      rst <=(rst_n==1'd0);
// HDL Embedded Text Block 12 FF3
always @ (posedge clk)
   if(rst==1'd1)
      phase_31_d<=1'd0;
   else
      phase_31_d<=sym_phase[31];
// HDL Embedded Text Block 13 FF4
always @ (posedge clk)
   if(rst==1'd1)
      data_samp<=1'd0;
   else if ((sym_phase[31]==1'd1)&(phase_31_d==1'd0))
      data_samp<=data_d;
// HDL Embedded Text Block 14 M3
always @ (scram_data or RAND or data_in_d or DAT_SRC or DAT_POL or internal_data)
   case( {DAT_SRC, DAT_POL, RAND} )
   (3'd0):   true_random=data_samp;
   (3'd1):  true_random=scram_data;
   (3'd2):   true_random=!data_samp;
   (3'd3):  true_random=!scram_data;
   (3'd4):  true_random=internal_data;
   (3'd5):  true_random=internal_data;
   (3'd6):  true_random=!internal_data;
   (3'd7):  true_random=!internal_data;
   endcase
// HDL Embedded Text Block 15 FF5
always @ (posedge clk)
   if (rst==1'd1)
      begin
      bit_cnt<=4'd2;
      flip<=1'd0;
      end
   else if (sym_phase_of==1'd1)
      begin
      bit_cnt<=bit_cnt+4'd1;
      flip<=!flip;
      end
// HDL Embedded Text Block 16 b0
assign DAC_clk=clk1;
// HDL Embedded Text Block 17 b1
assign DAC_clk_n=clk1_n;
// HDL Embedded Text Block 18 FF6
// generate pipeline delay signals
always @ (posedge clk)
   if (rst==1'd1)
      begin
      sym_count<=3'd0;
      sym_count_d<=3'd0; 
      sym_count_dd<=3'd0;
      sym_count_ddd<=3'd0;
      sym_phase_of_d<=1'd0;
      sym_phase_of_dd<=1'd0;
      sym_phase_of_ddd<=1'd0;
      sym_phase_of_dddd<=1'd0;
      sym_phase_of_ddddd<=1'd0;
      flip_d<=1'd0;
      flip_dd<=1'd0;
      flip_ddd<=1'd0;
      data_in_d<=1'd0;
      sym_phase_ms10_d<=10'd0;
      end
   else
      begin   
      sym_count<= sym_count+((sym_phase_of==1'd1)? 3'd1:3'd0);
      sym_count_d<=sym_count; 
      sym_count_dd<=sym_count_d;
      sym_count_ddd<=sym_count_dd;
      sym_phase_of_d<=sym_phase_of;
      sym_phase_of_dd<=sym_phase_of_d;
      sym_phase_of_ddd<=sym_phase_of_dd;   
      sym_phase_of_dddd<=sym_phase_of_ddd;
      sym_phase_of_ddddd<=sym_phase_of_dddd;      
      flip_d<=flip;
      flip_dd<=flip_d;
      flip_ddd<=flip_dd;   
      data_in_d<=data_in;   
      sym_phase_ms10_d<=sym_phase[31:22];
      end
// HDL Embedded Text Block 19 eb1
assign FM_lookup_addr_0 = {sym_count_d[0],sym_phase_ms10_d} ;
assign FM_lookup_addr_1 = {!sym_count_d[0],sym_phase_ms10_d} ;                                    
// HDL Embedded Text Block 20 FF7
always @ (posedge clk)
   if (rst==1'd1)
      begin
      alpha_fm_0<=1'd0; 
      alpha_fm_1<=1'd0; 
      end
   else if (sym_phase_of==1'd1)
      begin
      alpha_fm_0<=(flip==1'd1)?bit_0:alpha_fm_0; 
      alpha_fm_1<=(flip==1'd0)?bit_0:alpha_fm_1;
      end
// HDL Embedded Text Block 21 FF8
always @ (posedge clk)
   if (rst==1'd1)
      begin
      phase_fm_0<=14'd0;
      phase_fm_1<=14'd0;
      end
   else   
      begin
      phase_fm_0<=(alpha_fm_0_ddd==1'd1)?fm_phase_lu_0:(-fm_phase_lu_0);
      phase_fm_1<=(alpha_fm_1_ddd==1'd1)?fm_phase_lu_1:(-fm_phase_lu_1);
      end
// HDL Embedded Text Block 22 FF9
always @ (posedge clk)
   if (rst==1'd1)      
      fm_phase_of   <=14'd0;
   else if ((sym_phase_of_ddd==1'd1)&&(flip_ddd==1'd1))   
      fm_phase_of   <=fm_phase_of+((phase_fm_0[13]==1'd0)?14'h1666:14'h299a);
   else if ((sym_phase_of_ddd==1'd1)&&(flip_ddd==1'd0))   
      fm_phase_of   <=fm_phase_of+((phase_fm_1[13]==1'd0)?14'h1666:14'h299a);
// HDL Embedded Text Block 23 FF10
assign phase_fm= phase_fm_rr[13:1];   
always @ (posedge clk)
   if (rst==1'd1)
      begin   
      fm_phase_of_d <=14'd0;
      phase_fm_r   <= 14'd0;
      phase_fm_rr  <= 14'd0;
      phase_fm_1_d <= 14'd0;
      end
   else
      begin
      fm_phase_of_d <=fm_phase_of;
      phase_fm_r   <= phase_fm_0 + fm_phase_of_d;
      phase_fm_1_d <= phase_fm_1;
      phase_fm_rr  <= phase_fm_r + phase_fm_1_d;
      end
// HDL Embedded Text Block 24 b2
assign bit_clock=sym_phase[31];
// HDL Embedded Text Block 25 FF11
always @ (posedge clk)
   if (rst==1'd1)
      begin
      bit_0<=1'd1;
      bit_1<=1'd1;
      end
   else if (sym_phase_of==1'd1)   
      begin
      bit_0<=true_random;
      bit_1<=bit_0;
      end
// HDL Embedded Text Block 26 FF12
always @ (posedge clk)
   if (rst==1'd1)
      begin
      I_1<=1'd1;
      Q_1<=1'd1;
      I_2<=1'd1;
      Q_2<=1'd1;
      end
   else if (sym_phase_of==1'd1)   
      begin
      I_1<=I_0;
      Q_1<=Q_0;
      I_2<=I_1;
      Q_2<=Q_1;
      end
// HDL Embedded Text Block 27 FF13
always @ (posedge clk)
   if (rst==1'd1)
      begin
      I_0<=1'd0;
      Q_0<=1'd0;
      end
   else if (sym_phase_of==1'd1)
   case (flip)   
   1'b0:     begin
            I_0<=(Diff_en==1'd1)?(bit_0^(!Q_0)):bit_0;
            end
   1'b1:     begin
            Q_0<=(Diff_en==1'd1)?(bit_0^(I_0)):bit_0;
            end
   endcase                                                                        
// HDL Embedded Text Block 28 w0
assign tag1= Q_0==Q_2;
assign tag2= Q_0^I_1;
assign tag3= I_0==I_2;
assign tag4= I_0^Q_1;
// HDL Embedded Text Block 29 FF14
always @ (posedge clk)
   if (rst==1'd1)
      begin
      alpha<=2'd0;
      end
   else if (sym_phase_of==1'd1)
   casex ({flip, tag1, tag2, tag3, tag4})
      (5'b000xx): alpha<=2'd1 ;
      (5'b001xx): alpha<=2'd3 ;
      (5'b1xx01): alpha<=2'd1 ;
      (5'b1xx00): alpha<=2'd3 ;
      default  alpha<=2'd0 ;
   endcase
// HDL Embedded Text Block 30 FF15
always @ (posedge clk)
   if (rst==1'd1)
      alpha_0<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd0))
      alpha_0<=alpha;
      
always @ (posedge clk)
   if (rst==1'd1)
      alpha_1<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd1))
      alpha_1<=alpha;
      
always @ (posedge clk)
   if (rst==1'd1)
      alpha_2<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd2))
      alpha_2<=alpha;
      
always @ (posedge clk)
   if (rst==1'd1)
      alpha_3<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd3))
      alpha_3<=alpha;         
      
always @ (posedge clk)
   if (rst==1'd1)
      alpha_4<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd4))
      alpha_4<=alpha;
      
always @ (posedge clk)
   if (rst==1'd1)
      alpha_5<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd5))
      alpha_5<=alpha;
      
always @ (posedge clk)
   if (rst==1'd1)
      alpha_6<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd6))
      alpha_6<=alpha;
      
always @ (posedge clk)
   if (rst==1'd1)
      alpha_7<=2'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count==3'd7))
      alpha_7<=alpha;         
// HDL Embedded Text Block 31 FF16
always @ (posedge clk)
if (rst==1'd1)
   begin
   alpha_d<=2'd0; 
   alpha_0_d<=2'd0;  
   alpha_1_d<=2'd0;  
   alpha_2_d<=2'd0;  
   alpha_3_d<=2'd0; 
   alpha_4_d<=2'd0;  
   alpha_5_d<=2'd0;  
   alpha_6_d<=2'd0;  
   alpha_7_d<=2'd0; 
   end
else
   begin
   alpha_d<=alpha; 
   alpha_0_d<=alpha_0;  
   alpha_1_d<=alpha_1;  
   alpha_2_d<=alpha_2;  
   alpha_3_d<=alpha_3; 
   alpha_4_d<=alpha_4;  
   alpha_5_d<=alpha_5;  
   alpha_6_d<=alpha_6;  
   alpha_7_d<=alpha_7; 
   end
// HDL Embedded Text Block 32 FF17
always @ (posedge clk)
   if (rst==1'd1)
      begin
      select_0<=3'd0; 
      select_1<=3'd0; 
      select_2<=3'd0; 
      select_3<=3'd0;  
      select_4<=3'd0; 
      select_5<=3'd0;  
      select_6<=3'd0;  
      select_7<=3'd0; 
      end
   else
      begin
      select_0<=sym_count_d; 
      select_1<=sym_count_d-3'd1; 
      select_2<=sym_count_d-3'd2; 
      select_3<=sym_count_d-3'd3;  
      select_4<=sym_count_d-3'd4; 
      select_5<=sym_count_d-3'd5; 
      select_6<=sym_count_d-3'd6;   
      select_7<=sym_count_d-3'd7; 
      end
// HDL Embedded Text Block 33 FF18
always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_0<=14'd0;
   else
      case (select_0) //(sym_count_dd)
      (3'd0):   lookup_rslt_0<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_0<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_0<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_0<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_0<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_0<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_0<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_0<=SOQPSK_lookup_7;
      endcase

always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_1<=14'd0;
   else
      case (select_1) //(sym_count_dd-3'd1)
      (3'd0):   lookup_rslt_1<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_1<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_1<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_1<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_1<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_1<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_1<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_1<=SOQPSK_lookup_7;
      endcase

always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_2<=14'd0;
   else
      case (select_2) //(sym_count_dd-3'd2)
      (3'd0):   lookup_rslt_2<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_2<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_2<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_2<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_2<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_2<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_2<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_2<=SOQPSK_lookup_7;
      endcase

always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_3<=14'd0;
   else
      case (select_3) //(sym_count_dd-3'd3)
      (3'd0):   lookup_rslt_3<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_3<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_3<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_3<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_3<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_3<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_3<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_3<=SOQPSK_lookup_7;
      endcase

always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_4<=14'd0;
   else
      case (select_4) //(sym_count_dd-3'd4)
      (3'd0):   lookup_rslt_4<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_4<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_4<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_4<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_4<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_4<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_4<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_4<=SOQPSK_lookup_7;
      endcase

always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_5<=14'd0;
   else
      case (select_5) //(sym_count_dd-3'd5)
      (3'd0):   lookup_rslt_5<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_5<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_5<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_5<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_5<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_5<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_5<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_5<=SOQPSK_lookup_7;
      endcase
   
always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_6<=14'd0;
   else
      case (select_6) //(sym_count_dd-3'd6)
      (3'd0):   lookup_rslt_6<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_6<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_6<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_6<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_6<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_6<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_6<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_6<=SOQPSK_lookup_7;
      endcase   
   
always @ (posedge clk)
   if (rst==1'd1)
      lookup_rslt_7<=14'd0;
   else
      case (select_7) //(sym_count_dd-3'd7)
      (3'd0):   lookup_rslt_7<=SOQPSK_lookup_0;
      (3'd1):   lookup_rslt_7<=SOQPSK_lookup_1;
      (3'd2):   lookup_rslt_7<=SOQPSK_lookup_2;
      (3'd3):   lookup_rslt_7<=SOQPSK_lookup_3;
      (3'd4):   lookup_rslt_7<=SOQPSK_lookup_4;
      (3'd5):   lookup_rslt_7<=SOQPSK_lookup_5;
      (3'd6):   lookup_rslt_7<=SOQPSK_lookup_6;
      (3'd7):   lookup_rslt_7<=SOQPSK_lookup_7;
      endcase   
// HDL Embedded Text Block 34 FF19
always @ (posedge clk)
   if (rst==1'd1)
      begin
      phase_0<=14'd0;
      phase_1<=14'd0;
      phase_2<=14'd0;
      phase_3<=14'd0;
      phase_4<=14'd0;
      phase_5<=14'd0;
      phase_6<=14'd0;
      phase_7<=14'd0;
      end
   else 
begin
      case (alpha_0_d)
         2'd0: phase_0<=  14'd0;
         2'd1: phase_0<=  lookup_rslt_0;
         2'd2: phase_0<= -lookup_rslt_0;
         2'd3: phase_0<= -lookup_rslt_0;
      endcase
      case (alpha_1_d)
         2'd0: phase_1<=   14'd0;
         2'd1: phase_1<=  lookup_rslt_1;
         2'd2: phase_1<= -lookup_rslt_1;
         2'd3: phase_1<= -lookup_rslt_1;
      endcase
      case (alpha_2_d)
         2'd0: phase_2<=  14'd0;
         2'd1: phase_2<=  lookup_rslt_2;
         2'd2: phase_2<= -lookup_rslt_2;
         2'd3: phase_2<= -lookup_rslt_2;
      endcase
      case (alpha_3_d)
         2'd0: phase_3<=  14'd0;
         2'd1: phase_3<=  lookup_rslt_3;
         2'd2: phase_3<= -lookup_rslt_3;
         2'd3: phase_3<= -lookup_rslt_3;
      endcase
      case (alpha_4_d)
         2'd0: phase_4<=  14'd0;
         2'd1: phase_4<=  lookup_rslt_4;
         2'd2: phase_4<= -lookup_rslt_4;
         2'd3: phase_4<= -lookup_rslt_4;
      endcase
      case (alpha_5_d)
         2'd0: phase_5<=  14'd0;
         2'd1: phase_5<=  lookup_rslt_5;
         2'd2: phase_5<= -lookup_rslt_5;
         2'd3: phase_5<= -lookup_rslt_5;
      endcase
      case (alpha_6_d)
         2'd0: phase_6<=  14'd0;
         2'd1: phase_6<=  lookup_rslt_6;
         2'd2: phase_6<= -lookup_rslt_6;
         2'd3: phase_6<= -lookup_rslt_6;
      endcase
      case (alpha_7_d)
         2'd0: phase_7<=  14'd0;
         2'd1: phase_7<=  lookup_rslt_7;
         2'd2: phase_7<= -lookup_rslt_7;
         2'd3: phase_7<= -lookup_rslt_7;
      endcase
end
// At the end of each phase transition time, the total phase contribution needs to
// identified and saved before the next waveform can begin.  The total phase is kept 
// modulo 2pi
// HDL Embedded Text Block 35 FF20
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_0<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd7))   
      ph_roll_0<=ph_roll_0+((phase_0[13]==1'd1)?14'h3000:
                       (phase_0[12:9]!=4'd0)?14'h1000:14'h0000);
      
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_1<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd0))   
      ph_roll_1<=ph_roll_1+((phase_1[13]==1'd1)?14'h3000:
                       (phase_1[12:9]!=4'd0)?14'h1000:14'h0000);
      
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_2<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd1))   
      ph_roll_2<=ph_roll_2+((phase_2[13]==1'd1)?14'h3000:
                       (phase_2[12:9]!=4'd0)?14'h1000:14'h0000);
      
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_3<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd2))   
      ph_roll_3<=ph_roll_3+((phase_3[13]==1'd1)?14'h3000:
                       (phase_3[12:9]!=4'd0)?14'h1000:14'h0000);
      
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_4<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd3))   
      ph_roll_4<=ph_roll_4+((phase_4[13]==1'd1)?14'h3000:
                       (phase_4[12:9]!=4'd0)?14'h1000:14'h0000);
      
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_5<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd4))   
      ph_roll_5<=ph_roll_5+((phase_5[13]==1'd1)?14'h3000:
                       (phase_5[12:9]!=4'd0)?14'h1000:14'h0000);
      
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_6<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd5))   
      ph_roll_6<=ph_roll_6+((phase_6[13]==1'd1)?14'h3000:
                       (phase_6[12:9]!=4'd0)?14'h1000:14'h0000);
      
always @ (posedge clk)
   if (rst==1'd1)
      ph_roll_7<=14'd0;
   else if ((sym_phase_of_dd==1'd1)&(sym_count_dd==3'd6))   
      ph_roll_7<=ph_roll_7+((phase_7[13]==1'd1)?14'h3000:
                       (phase_7[12:9]!=4'd0)?14'h1000:14'h0000);               
// HDL Embedded Text Block 36 FF21
always @ (posedge clk)
   if (rst==1'd1)
      begin   
      
      roll_total_1<=14'd0;
      roll_total_2<=14'd0;
      roll_total_d<=14'd0;
      roll_total_dd<=14'd0;
      roll_total_ddd<=14'd0;
      phase_testx <= 15'd0;
      
      phase_total_1<=15'd0; 
      phase_total_2<=15'd0; 
      phase_total_3<=15'd0; 
      phase_total_4<=15'd0; 
      phase_total_d<=14'd0; 
      phase_total_d1<=15'd0; 
      phase_total_d2<=15'd0;
      
      end
   else   
      begin      
      roll_total_1 <= ph_roll_0 + ph_roll_1 + ph_roll_2 + ph_roll_3;
      roll_total_2 <= ph_roll_4 + ph_roll_5 + ph_roll_6 + ph_roll_7;
      roll_total_d <= roll_total_1 + roll_total_2;
      roll_total_dd <= roll_total_d;
      roll_total_ddd <= roll_total_dd;
      
      phase_total_1 <= {1'd0, phase_0} + {1'd0, phase_1}; 
      phase_total_2 <= {1'd0, phase_2} + {1'd0, phase_3};
      phase_total_3 <= {1'd0, phase_4} + {1'd0, phase_5} ; 
      phase_total_4 <= {1'd0, phase_6} + {1'd0, phase_7} ;
      
      phase_total_d1<={1'd0,phase_total_1[13:0]}+ {1'd0, phase_total_2[13:0]};
      phase_total_d2<={1'd0,phase_total_3[13:0]}+ {1'd0, phase_total_4[13:0]};
      
      phase_total_d <= roll_total_ddd + phase_total_d1[13:0] + phase_total_d2[13:0];
      phase_testx <= phase_total_1 + phase_total_2 + phase_total_3 + phase_total_4;
      end
assign phase_test=phase_testx[13:0];
// phase_total_d is the phase modulation signal for SOQPSK mode
// HDL Embedded Text Block 37 eb2
assign phase_modulation= (mode==4'd0)? {phase_fm,1'd0}:
                   (mode==4'd1)? phase_total_d://SOQPSK
                   (mode==4'd2)? 14'd0: 
                   (mode==4'd3)? sym_phase[31:18]:
                   14'd0         ;
// HDL Embedded Text Block 38 eb3
assign constant=14'd5500;
assign one=1'd1;
// HDL Embedded Text Block 39 FF22
assign sine   = sine_O_ddd;
assign cosine = cosine_O_ddd;


always @ (posedge clk)
   if (rst==1'd1)
      begin
      cosine_O_d  <=14'd0;
      cosine_O_dd <=14'd0;
      cosine_O_ddd<=14'd0;
      sine_O_d    <=14'd0;
      sine_O_dd   <=14'd0;
      sine_O_ddd  <=14'd0;
      end
   else
      begin
      cosine_O_d<=cosine_O;
      cosine_O_dd<=cosine_O_d;
      cosine_O_ddd<=(cosine_O_ddd_x[14]==cosine_O_ddd_x[13])? cosine_O_ddd_x[13:0]  :
                  (cosine_O_ddd_x[14]==1'd0)?14'h1fff  :14'h2000  ;
                  
      sine_O_d<=sine_O;
      sine_O_dd<=sine_O_d;
      sine_O_ddd<=sine_O_dd;
      end
// HDL Embedded Text Block 40 eb4
.datab ({ {1{phase_offset[7]}} ,  phase_offset, 3'd0 }),                     // 12 bits
// HDL Embedded Text Block 41 eb5
assign cosine_O_ddd_x= {cosine_O_dd[13],cosine_O_dd}+{product[25],product[25:12]};                  

endmodule // ARTM_tx_240

