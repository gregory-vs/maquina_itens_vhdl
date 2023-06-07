library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_myfunc10 is
end entity;

architecture arch_myfunc10 of tb_myfunc10 is

component myfunc10 is
  port (A, B, C: in std_logic;
        F : out std_logic);
end component;

signal signal_a: std_logic;
signal signal_b: std_logic;
signal signal_c:  std_logic;
signal signal_f: std_logic;

begin
instancia_myfunc: myfunc10 port map(A=>signal_a,B=>signal_b,C=>signal_c,F=>signal_f);
signal_a <= '0' after 0 ns, '0' after 5 ns, '0' after 10 ns, '0' after 15 ns, '1' after 20 ns, '1' after 25 ns, '1' after 30 ns, '1' after 35 ns;
signal_b <= '0' after 0 ns, '0' after 5 ns, '1' after 10 ns, '1' after 15 ns, '0' after 20 ns, '0' after 25 ns, '1' after 30 ns, '1' after 35 ns;
signal_c <= '0' after 0 ns, '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns;


end arch_myfunc10;



signal_a <= '0' after 0 ns, '0' after 5 ns, '0' after 10 ns, '0' after 15 ns, '1' after 20 ns, '1' after 25 ns, '1' after 30 ns, '1' after 35 ns, '1' after 40 ns;
signal_b <= '0' after 0 ns, '0' after 5 ns, '1' after 10 ns, '1' after 15 ns, '0' after 20 ns, '0' after 25 ns, '1' after 30 ns, '1' after 35 ns, '1' after 40 ns;
signal_c <= '0' after 0 ns, '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '1' after 40 ns;