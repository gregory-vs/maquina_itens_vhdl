library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_coin_converter is
    port(
        entrada_moeda: in std_logic_vector(1 downto 0);
        saida_visor: out std_logic(6 downto 0)
    );
end my_coin_converter;

architecture behavioral of my_coin_converter is

    signal a <= std_logic_vector(1 downto 0)

    begin
        conversor_visor: process(a)
        begin
            case a is
                when "00" => saida_visor <= "0110000"; 
                when "01" => saida_visor <= "1101101";
                when "10" => saida_visor <= "1011011";
                when "11" => saida_visor <= "1110111";
                when others => saida_visor <= "XX";
            end case;
        end process conversor_visor;
end behavioral;