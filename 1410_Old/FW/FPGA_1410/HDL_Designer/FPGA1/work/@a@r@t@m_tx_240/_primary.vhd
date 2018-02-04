library verilog;
use verilog.vl_types.all;
entity ARTM_tx_240 is
    port(
        inclk0          : in     vl_logic;
        data_in         : in     vl_logic;
        data_clock      : in     vl_logic;
        mode            : in     vl_logic_vector(3 downto 0);
        phase_offset    : in     vl_logic_vector(7 downto 0);
        bit_rate        : in     vl_logic_vector(31 downto 0);
        rst_n           : in     vl_logic;
        rst_in          : in     vl_logic;
        PB_nBB          : in     vl_logic;
        CLK_POL         : in     vl_logic;
        RAND            : in     vl_logic;
        CLK_SRC         : in     vl_logic;
        DAT_SRC         : in     vl_logic;
        DAT_POL         : in     vl_logic;
        internal_data   : in     vl_logic;
        Diff_en         : in     vl_logic;
        clk             : out    vl_logic;
        rst             : out    vl_logic;
        DAC_clk         : out    vl_logic;
        DAC_clk_n       : out    vl_logic;
        sine            : out    vl_logic_vector(13 downto 0);
        cosine          : out    vl_logic_vector(13 downto 0);
        bit_clock       : out    vl_logic;
        FB_RATE         : out    vl_logic_vector(31 downto 0);
        tx_sig          : out    vl_logic_vector(13 downto 0);
        scram_data      : out    vl_logic;
        sym_phase_of    : out    vl_logic;
        steady_state    : out    vl_logic;
        bit_0_a_ddd     : out    vl_logic;
        bit_0_b_ddd     : out    vl_logic;
        pll_state       : out    vl_logic_vector(4 downto 0);
        three_cnt_a     : out    vl_logic_vector(1 downto 0);
        odd_ev          : out    vl_logic;
        bit_0           : out    vl_logic;
        bit_1           : out    vl_logic;
        sym_phase       : out    vl_logic_vector(31 downto 0);
        true_random     : out    vl_logic;
        phase_modulation: out    vl_logic_vector(13 downto 0);
        transition_d    : out    vl_logic;
        transition_i    : out    vl_logic;
        data_d          : out    vl_logic;
        clock_d         : out    vl_logic;
        outside_freq_range: out    vl_logic;
        IIR             : out    vl_logic_vector(15 downto 0);
        clk_120         : out    vl_logic;
        roll_total_ddd  : out    vl_logic_vector(13 downto 0);
        phase_test      : out    vl_logic_vector(13 downto 0);
        phase_0         : out    vl_logic_vector(13 downto 0);
        phase_1         : out    vl_logic_vector(13 downto 0);
        phase_2         : out    vl_logic_vector(13 downto 0);
        phase_3         : out    vl_logic_vector(13 downto 0);
        phase_4         : out    vl_logic_vector(13 downto 0);
        phase_5         : out    vl_logic_vector(13 downto 0);
        phase_6         : out    vl_logic_vector(13 downto 0);
        phase_7         : out    vl_logic_vector(13 downto 0);
        lookup_rslt_4   : out    vl_logic_vector(13 downto 0);
        SOQPSK_lookup_4 : out    vl_logic_vector(13 downto 0);
        sym_count_dd    : out    vl_logic_vector(2 downto 0);
        sym_phase_of_d  : out    vl_logic;
        sym_phase_of_dd : out    vl_logic;
        ph_roll_0       : out    vl_logic_vector(13 downto 0);
        ph_roll_1       : out    vl_logic_vector(13 downto 0);
        ph_roll_2       : out    vl_logic_vector(13 downto 0);
        ph_roll_3       : out    vl_logic_vector(13 downto 0);
        ph_roll_4       : out    vl_logic_vector(13 downto 0);
        ph_roll_5       : out    vl_logic_vector(13 downto 0);
        ph_roll_6       : out    vl_logic_vector(13 downto 0);
        ph_roll_7       : out    vl_logic_vector(13 downto 0);
        phase_total_d1  : out    vl_logic_vector(14 downto 0);
        phase_total_d2  : out    vl_logic_vector(14 downto 0);
        flip_ddd        : out    vl_logic;
        phase_fm_0      : out    vl_logic_vector(13 downto 0);
        phase_fm_1      : out    vl_logic_vector(13 downto 0);
        fm_phase_of     : out    vl_logic_vector(13 downto 0);
        fm_phase_lu_0   : out    vl_logic_vector(13 downto 0);
        alpha_fm_0_dd   : out    vl_logic;
        phase_fm_rr     : out    vl_logic_vector(13 downto 0);
        phase_fm_r      : out    vl_logic_vector(13 downto 0);
        FM_lookup_addr_0: out    vl_logic_vector(10 downto 0);
        FM_lookup_addr_1: out    vl_logic_vector(10 downto 0);
        quotient        : out    vl_logic_vector(31 downto 0);
        quotient_1      : out    vl_logic_vector(31 downto 0);
        testa           : out    vl_logic;
        phase_err       : out    vl_logic_vector(7 downto 0);
        data_trans_cnt  : out    vl_logic_vector(8 downto 0)
    );
end ARTM_tx_240;
