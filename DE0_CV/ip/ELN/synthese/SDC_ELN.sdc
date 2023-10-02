create_clock -name clk -period 40.000 [get_ports {Clk}]
create_clock -name sub_clock -period 80.000 [get_nets {sub_Clk}]
derive_clock_uncertainty