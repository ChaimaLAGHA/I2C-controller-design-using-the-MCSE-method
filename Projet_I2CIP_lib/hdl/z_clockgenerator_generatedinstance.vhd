-- VHDL Entity Projet_I2CIP_lib.Z_ClockGenerator.generatedInstance
--
-- Created:
--          by - CHAIMA.UNKNOWN (LAPTOP-I71U7FVH)
--          at - 22:46:40 18/11/2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2018.2 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
LIBRARY Projet_I2CIP_lib;
USE Projet_I2CIP_lib.I2C_Package.ALL;

ENTITY Z_ClockGenerator IS
   PORT( 
      Clk               : IN     DefBit;
      nRst              : IN     DefBit;
      SCK_intern        : OUT    DefBit;
      Transfert_Request : IN     DefBit
   );

END Z_ClockGenerator ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF Z_ClockGenerator IS 
BEGIN


END generatedInstance;
