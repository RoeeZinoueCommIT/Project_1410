library verilog;
use verilog.vl_types.all;
entity data_transition_pll_240 is
    port(
        clk             : in     vl_logic;
        clk_120         : in     vl_logic;
        rst             : in     vl_logic;
        data            : in     vl_logic;
        clock           : in     vl_logic;
        frequency_set   : in     vl_logic_vector(31 downto 0);
        test_en         : in     vl_logic;
        CLK_SRC         : in     vl_logic;
        DAT_SRC         : in     vl_logic;
        sym_phase_of    : out    vl_logic;
        NCO             : out    vl_logic_vector(31 downto 0);
        steady_state    : out    vl_logic;
        state           : out    vl_logic_vector(4 downto 0);
        frequency       : out    vl_logic_vector(31 downto 0);
        dividend        : out    vl_logic_vector(21 downto 0);
        divisor         : out    vl_logic_vector(21 downto 0);
        quotient        : out    vl_logic_vector(31 downto 0);
        freq_correction : out    vl_logic_vector(31 downto 0);
        result_A        : out    vl_logic_vector(31 downto 0);
        result_B        : out    vl_logic_vector(31 downto 0);
        phase_err       : out    vl_logic_vector(7 downto 0);
        scaled_phase    : out    vl_logic_vector(31 downto 0);
        outside_freq_range: out    vl_logic;
        bit_cnt         : out    vl_logic_vector(8 downto 0);
        timer           : out    vl_logic_vector(20 downto 0);
        timer_d         : out    vl_logic_vector(20 downto 0);
        transition      : out    vl_logic;
        transition_d    : out    vl_logic;
        transition_i    : out    vl_logic;
        activity_count  : out    vl_logic_vector(23 downto 0);
        activity        : out    vl_logic;
        clock_d         : out    vl_logic;
        data_d          : out    vl_logic;
        IIR             : out    vl_logic_vector(15 downto 0);
        quotient_1      : out    vl_logic_vector(31 downto 0);
        testa           : out    vl_logic;
        data_trans_cnt  : out    vl_logic_vector(8 downto 0);
        data_dd         : out    vl_logic;
        timer_not_of    : out    vl_logic;
        lock            : out    vl_logic;
        abs_phase_err   : out    vl_logic_vector(7 downto 0)
    );
end data_transition_pll_240;
