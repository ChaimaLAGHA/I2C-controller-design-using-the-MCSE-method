-- VHDL Entity Projet_I2CIP_lib.Interface.interface
--
-- Created:
--          by - E21C396C.UNKNOWN (irc107-04)
--          at - 14:27:42 17/11/2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.1 Built on 21 Jan 2022 at 13:00:30
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
LIBRARY Projet_I2CIP_lib;
USE Projet_I2CIP_lib.I2C_Package.ALL;

ENTITY Interface IS
   PORT( 
      Addr              : IN     DefAddr;
      Clk               : IN     DefBit;
      DataReceived      : IN     DefData;
      RnW               : IN     DefBit;
      Status            : IN     DefStatus;
      nAS               : IN     DefBit;
      nBE0              : IN     DefBit;
      nBE1              : IN     DefBit;
      nRst              : IN     DefBit;
      nWait             : IN     DefBit;
      Config            : OUT    DefConfig;
      DataToSend        : OUT    DefData;
      Transfert_Request : OUT    DefBit;
      Dbus              : INOUT  DefDbus
   );

-- Declarations

END Interface ;

--
-- VHDL Architecture Projet_I2CIP_lib.Interface.struct
--
-- Created:
--          by - E21C396C.UNKNOWN (irc107-04)
--          at - 14:33:53 17/11/2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2022.1 Built on 21 Jan 2022 at 13:00:30
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
LIBRARY Projet_I2CIP_lib;
USE Projet_I2CIP_lib.I2C_Package.ALL;


ARCHITECTURE struct OF Interface IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT Read
   PORT (
      Addr         : IN     DefAddr ;
      DataReceived : IN     DefData ;
      RnW          : IN     DefBit ;
      Status       : IN     DefStatus ;
      nAS          : IN     DefBit ;
      nBE0         : IN     DefBit ;
      nBE1         : IN     DefBit ;
      nRst         : IN     DefBit ;
      Dbus         : OUT    DefDbus 
   );
   END COMPONENT;
   COMPONENT Write
   PORT (
      Addr              : IN     DefAddr ;
      Clk               : IN     DefBit ;
      Dbus              : IN     DefDbus ;
      RnW               : IN     DefBit ;
      nAS               : IN     DefBit ;
      nBE0              : IN     DefBit ;
      nBE1              : IN     DefBit ;
      nRst              : IN     DefBit ;
      nWait             : IN     DefBit ;
      Config            : OUT    DefConfig ;
      DataToSend        : OUT    DefData ;
      Transfert_Request : OUT    DefBit 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : Read USE ENTITY Projet_I2CIP_lib.Read;
   FOR ALL : Write USE ENTITY Projet_I2CIP_lib.Write;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : Read
      PORT MAP (
         Addr         => Addr,
         DataReceived => DataReceived,
         RnW          => RnW,
         Status       => Status,
         nAS          => nAS,
         nBE0         => nBE0,
         nBE1         => nBE1,
         nRst         => nRst,
         Dbus         => Dbus
      );
   U_0 : Write
      PORT MAP (
         Addr              => Addr,
         Clk               => Clk,
         Dbus              => Dbus,
         RnW               => RnW,
         nAS               => nAS,
         nBE0              => nBE0,
         nBE1              => nBE1,
         nRst              => nRst,
         nWait             => nWait,
         Config            => Config,
         DataToSend        => DataToSend,
         Transfert_Request => Transfert_Request
      );

END struct;