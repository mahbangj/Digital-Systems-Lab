-- Single-bit controlled add/subtract
library IEEE;
use IEEE.std_logic_1164.all;

entity CAS is
    port ( divisor      : in std_logic;   
           reminder_in  : in std_logic;   
           T            : in std_logic;  
           cin          : in std_logic;   
           reminder_out : out std_logic; 
           cout         : out std_logic   
    );
end entity ;

architecture ADD_SUB of CAS is
signal sig : std_logic ;
begin
    sig          <= T xor divisor ;
    reminder_out <= sig xor reminder_in xor cin;
    cout         <= (sig and reminder_in) or (cin and sig) or (cin and reminder_in);
end ADD_SUB;
--=============================================================================
--           n bits Divider  
--=============================================================================
-- n-bits divider
library IEEE;
use IEEE.std_logic_1164.all;

entity Divider_nBits is
    generic(N : integer :=16);
    port ( divisor   : in  std_logic_vector(N-1 downto 0);     -- divisor
           dividend  : in  std_logic_vector(2*N-2 downto 0);   -- dividend
           remainder : out std_logic_vector(N-1 downto 0);     -- remainder
           quotient  : out std_logic_vector(N-1 downto 0)      -- quotient
         );
end entity ;

---------------------- Architecture Section ----------------------------------
architecture Stractural of Divider_nBits is

--------------- Signal Declarations for instantiate
type   c_array   is array (0 to N-1)  of std_logic_vector(N downto 0) ;
type   r_array   is array (0 to N-1)  of std_logic_vector(N-1 downto 0);

signal sig_r : r_array ;
signal sig_c : c_array ;


begin

sig_c(N-1)(0) <= '1';

process(sig_r)
   begin
      for i in 0 to N-1 loop
         remainder(i) <=  sig_r(0)(i);
         quotient(i)  <=  not sig_r(i)(N-1) ;
      end loop;
   end process;
  
-- Instantiate N single-bit controlled add/subtract
    LGEN: for i in 0 to N-1 generate
     LGEN2:     for j in 0 to N-1 generate
      First_column:if j=0 and i/=N-1 generate	
       CAS_i0:entity work.CAS(ADD_SUB)           -- First Column
       port map ( divisor       => divisor(j)           ,
                  reminder_in   => dividend(i)          ,
                  T             => not sig_r(i+1)(N-1)  , 
                  cin           => not sig_r(i+1)(N-1)  ,
                  reminder_out  => sig_r(i)(j)          ,
                  cout          => sig_c(i)(j+1)       );
       end generate;
      Last_stage: if i=N-1  generate             -- Last row 
       CAS_Nj:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(j)      ,
                  reminder_in   => dividend(j+N-1) ,
                  T             => '1'             ,
                  cin           => sig_c(i)(j)     ,
                  reminder_out  => sig_r(i)(j)     ,
                  cout          => sig_c(i)(j+1)  );
       end generate;
      other_stage: if i/=N-1 and j/=0 generate	 -- others
       CAS_i2:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(j)          ,
                  reminder_in   => sig_r(i+1)(j-1)     ,
                  T             => not sig_r(i+1)(N-1) ,
                  cin           => sig_c(i)(j)         ,
                  reminder_out  => sig_r(i)(j)         ,
                  cout          => sig_c(i)(j+1)      );
       end generate;
  
     end generate;           
    end generate;


end ;

