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
--              Four-bits divider 
--=============================================================================
library IEEE;
use IEEE.std_logic_1164.all;

entity Divider_4Bits is
    port ( divisor   : in  std_logic_vector(3 downto 0);   -- divisor
           dividend  : in  std_logic_vector(6 downto 0);   -- dividend
           remainder : out std_logic_vector(3 downto 0);   -- remainder
           quotient  : out std_logic_vector(3 downto 0);   -- quotient
         );
end entity ;

---------------------- Architecture Section ----------------------------------

architecture Stractural of Divider_4Bits is
--------------- Signal Declarations for instantiate
signal c00,c01,c02,c03,c11,c12,c13,c14,c22,c23,c24,c25,c33,c34,c35,c36  : std_logic ;
signal r00,r01,r02,r03,r11,r12,r13,r14,r22,r23,r24,r25,r33,r34,r35,r36  : std_logic ;
signal Not_r14 , Not_r25 , Not_r36 : std_logic ;

begin

  quotient  <=  (not r36) & (not r25) & (not r14) & (not r03) ;
  remainder <=  r03 & r02 & r01 & r00 ;
  Not_r14   <=  not r14 ;
  Not_r25   <=  not r25 ;
  Not_r36   <=  not r36 ;

CAS_00:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(0)   ,
                  reminder_in   => dividend(0)  ,
                  T             => Not_r14      ,
                  cin           => Not_r14      ,
                  reminder_out  => r00          ,
                  cout          => c00         );

CAS_01:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(1)   ,
                  reminder_in   => r11          ,
                  T             => Not_r14      ,
                  cin           => c00          ,
                  reminder_out  => r01          ,
                  cout          => c01         );

CAS_02:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(2)   ,
                  reminder_in   => r12          ,
                  T             => Not_r14      ,
                  cin           => c01          ,
                  reminder_out  => r02          ,
                  cout          => c02         );

CAS_03:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(3)   ,
                  reminder_in   => r13          ,
                  T             => Not_r14      ,
                  cin           => c02          ,
                  reminder_out  => r03          ,
                  cout          => c03         );


CAS_11:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(0)   ,
                  reminder_in   => dividend(1)  ,
                  T             => Not_r25      ,
                  cin           => Not_r25      ,
                  reminder_out  => r11          ,
                  cout          => c11         );

CAS_12:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(1)   ,
                  reminder_in   => r22          ,
                  T             => Not_r25      ,
                  cin           => c11          ,
                  reminder_out  => r12          ,
                  cout          => c12         );

CAS_13:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(2)   ,
                  reminder_in   => r23          ,
                  T             => Not_r25      ,
                  cin           => c12          ,
                  reminder_out  => r13          ,
                  cout          => c13         );

CAS_14:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(3)   ,
                  reminder_in   => r24          ,
                  T             => Not_r25      ,
                  cin           => c13          ,
                  reminder_out  => r14          ,
                  cout          => c14         );

CAS_22:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(0)   ,
                  reminder_in   => dividend(2)  ,
                  T             => Not_r36      ,
                  cin           => Not_r36      ,
                  reminder_out  => r22          ,
                  cout          => c22         );

CAS_23:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(1)   ,
                  reminder_in   => r33          ,
                  T             => Not_r36      ,
                  cin           => c22          ,
                  reminder_out  => r23          ,
                  cout          => c23         );

CAS_24:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(2)   ,
                  reminder_in   => r34          ,
                  T             => Not_r36      ,
                  cin           => c23          ,
                  reminder_out  => r24          ,
                  cout          => c24         );

CAS_25:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(3)   ,
                  reminder_in   => r35          ,
                  T             => Not_r36      ,
                  cin           => c24          ,
                  reminder_out  => r25          ,
                  cout          => c25         );

CAS_33:entity work.CAS(ADD_SUB)
       port map ( divisor       => divisor(0)   ,
                  reminder_in   => dividend(3)  ,
                  T             => '1'          ,
                  cin           => '1'          ,
                  reminder_out  => r33          ,
                  cout          => c33         );

CAS_34:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(1)   ,
                  reminder_in   => dividend(4)  ,
                  T             => '1'          ,
                  cin           => c33          ,
                  reminder_out  => r34          ,
                  cout          => c34         );

CAS_35:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(2)   ,
                  reminder_in   => dividend(5)  ,
                  T             => '1'          ,
                  cin           => c34          ,
                  reminder_out  => r35          ,
                  cout          => c35         );

CAS_36:entity work.CAS(ADD_SUB) 
       port map ( divisor       => divisor(3)   ,
                  reminder_in   => dividend(6)  ,
                  T             => '1'          ,
                  cin           => c35          ,
                  reminder_out  => r36          ,
                  cout          => c36         );

end Stractural ;
