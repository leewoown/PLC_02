
PROGRAM _INIT
	HMI;
END_PROGRAM

PROGRAM _CYCLIC
	
	TON_0();
	IF TON_0.Q THEN
		HMIBinding.Step := LOADINGERROR;
	END_IF;
	
	(* HMI.System *)
	PMS.Tx[0]	:= HMI.System[0] ;
	PMS.Tx[1]	:= HMI.System[1] ;
	
	HMI.System[2]  := PMS.Rx[0] ;
	HMI.System[3]  := PMS.Rx[1] ;
	HMI.System[4]  := PMS.Rx[2] ;
	HMI.System[5]  := PMS.Rx[3] ;
	HMI.System[6]  := PMS.Rx[4] ;
	HMI.System[7]  := PMS.Rx[5] ;
	HMI.System[8]  := PMS.Rx[6] ;
	HMI.System[9]  := PMS.Rx[7] ;
	HMI.System[10] := PMS.Rx[8] ;
	HMI.System[11] := PMS.Rx[9] ;
	HMI.System[12] := PMS.Rx[10] ;
	HMI.System[13] := PMS.Rx[11] ;
	HMI.System[14] := PMS.Rx[12] ;
	HMI.System[15] := PMS.Rx[13] ;
	HMI.System[16] := PMS.Rx[14] ;
	HMI.System[17] := PMS.Rx[15] ;
	HMI.System[18] := PMS.Rx[16] ;
	HMI.System[19] := PMS.Rx[17] ;
	HMI.System[20] := PMS.Rx[18] ;
	HMI.System[21] := HMI.System[21] OR (SHL(HMI.Rack1[0] AND 16#7, 0)); 
	HMI.System[21] := HMI.System[21] OR (SHL(HMI.Rack2[0] AND 16#7, 3)); 
	HMI.System[21] := HMI.System[21] OR (SHL(HMI.Rack3[0] AND 16#7, 6));  
	HMI.System[21] := HMI.System[21] OR (SHL(HMI.Rack4[0] AND 16#7, 9)); 
	HMI.System[21] := HMI.System[21] OR (SHL(HMI.Rack5[0] AND 16#7, 12));  
	HMI.System[22] := HMI.System[22] OR (SHL(HMI.Rack6[0] AND 16#7, 0)); 
	HMI.System[22] := HMI.System[22] OR (SHL(HMI.Rack7[0] AND 16#7, 3)); 
	HMI.System[22] := HMI.System[22] OR (SHL(HMI.Rack8[0] AND 16#7, 6));  
	HMI.System[22] := HMI.System[22] OR (SHL(HMI.Rack9[0] AND 16#7, 9)); 
	HMI.System[22] := HMI.System[22] OR (SHL(HMI.Rack10[0] AND 16#7, 12)); 
	HMI.System[23] := HMI.Rack1[1] ;
	HMI.System[24] := HMI.Rack1[2] ;
	HMI.System[25] := HMI.Rack2[1] ;
	HMI.System[26] := HMI.Rack2[2] ;
	HMI.System[27] := HMI.Rack3[1] ;
	HMI.System[28] := HMI.Rack3[2] ;
	HMI.System[29] := HMI.Rack4[1] ;
	HMI.System[30] := HMI.Rack4[2] ;
	HMI.System[31] := HMI.Rack5[1] ;
	HMI.System[32] := HMI.Rack5[2] ;
	HMI.System[33] := HMI.Rack6[1] ;
	HMI.System[34] := HMI.Rack6[2] ;
	HMI.System[35] := HMI.Rack7[1] ;
	HMI.System[36] := HMI.Rack7[2] ;
	HMI.System[37] := HMI.Rack8[1] ;
	HMI.System[38] := HMI.Rack8[2] ;
	HMI.System[39] := HMI.Rack9[1] ;
	HMI.System[40] := HMI.Rack9[2] ;
	HMI.System[41] := HMI.Rack10[1] ;
	HMI.System[42] := HMI.Rack10[2] ;
	HMI.System[43] := PMS.Rx[19] ;
	HMI.System[44] := PMS.Rx[20] ;
	HMI.System[45] := PMS.Rx[21] ;
	HMI.System[46] := PMS.Rx[22] ;
	HMI.System[47] := PMS.Rx[23] ;
	HMI.System[48] := PMS.Rx[24] ;
	
	(* HMI.Rack *)
	
	CASE PMS.Rx[25] OF
		1:  
			HMI.Rack1[1] := PMS.Rx[26];
			HMI.Rack1[2] := PMS.Rx[27];
			HMI.Rack1[3] := PMS.Rx[28];
		2:  
			HMI.Rack2[1] := PMS.Rx[26];
			HMI.Rack2[2] := PMS.Rx[27];
			HMI.Rack2[3] := PMS.Rx[28];
		3: 
			HMI.Rack3[1] := PMS.Rx[26];
			HMI.Rack3[2] := PMS.Rx[27];
			HMI.Rack3[3] := PMS.Rx[28];
		4:  
			HMI.Rack4[1] := PMS.Rx[26];
			HMI.Rack4[2] := PMS.Rx[27];
			HMI.Rack4[3] := PMS.Rx[28];
		5:  
			HMI.Rack5[1] := PMS.Rx[26];
			HMI.Rack5[2] := PMS.Rx[27];
			HMI.Rack5[3] := PMS.Rx[28];
		6:  
			HMI.Rack6[1] := PMS.Rx[26];
			HMI.Rack6[2] := PMS.Rx[27];
			HMI.Rack6[3] := PMS.Rx[28];
		7:  
			HMI.Rack7[1] := PMS.Rx[26];
			HMI.Rack7[2] := PMS.Rx[27];
			HMI.Rack7[3] := PMS.Rx[28];
		8:  
			HMI.Rack8[1] := PMS.Rx[26];
			HMI.Rack8[2] := PMS.Rx[27];
			HMI.Rack8[3] := PMS.Rx[28];
		9:  
			HMI.Rack9[1] := PMS.Rx[26];
			HMI.Rack9[2] := PMS.Rx[27];
			HMI.Rack9[3] := PMS.Rx[28];
		10: 
			HMI.Rack10[1]:= PMS.Rx[26];
			HMI.Rack10[2]:= PMS.Rx[27];
			HMI.Rack10[3]:= PMS.Rx[28];
	END_CASE;
	CASE PMS.Rx[29] OF
		1:  
			HMI.Rack1[4] := PMS.Rx[30];
		2:  
			HMI.Rack2[4] := PMS.Rx[30];
		3: 
			HMI.Rack3[4] := PMS.Rx[30];
		4:  
			HMI.Rack4[4] := PMS.Rx[30];
		5:  
			HMI.Rack5[4] := PMS.Rx[30];
		6:  
			HMI.Rack6[4] := PMS.Rx[30];
		7:  
			HMI.Rack7[4] := PMS.Rx[30];
		8:  
			HMI.Rack8[4] := PMS.Rx[30];
		9:  
			HMI.Rack9[4] := PMS.Rx[30];
		10: 
			HMI.Rack10[4]:= PMS.Rx[30];
	END_CASE;
	CASE PMS.Rx[31] OF
		1:  
			HMI.Rack1[5] := PMS.Rx[32];
			HMI.Rack1[6] := PMS.Rx[33];
			HMI.Rack1[7] := PMS.Rx[34];
		2:  
			HMI.Rack2[5] := PMS.Rx[32];
			HMI.Rack2[6] := PMS.Rx[33];
			HMI.Rack2[7] := PMS.Rx[34];
		3:
			HMI.Rack3[5] := PMS.Rx[32];
			HMI.Rack3[6] := PMS.Rx[33];
			HMI.Rack3[7] := PMS.Rx[34];
		4:  
			HMI.Rack4[5] := PMS.Rx[32];
			HMI.Rack4[6] := PMS.Rx[33];
			HMI.Rack4[7] := PMS.Rx[34];
		5:  
			HMI.Rack5[5] := PMS.Rx[32];
			HMI.Rack5[6] := PMS.Rx[33];
			HMI.Rack5[7] := PMS.Rx[34];
		6:  
			HMI.Rack6[5] := PMS.Rx[32];
			HMI.Rack6[6] := PMS.Rx[33];
			HMI.Rack6[7] := PMS.Rx[34];
		7:  
			HMI.Rack7[5] := PMS.Rx[32];
			HMI.Rack7[6] := PMS.Rx[33];
			HMI.Rack7[7] := PMS.Rx[34];
		8:
			HMI.Rack8[5] := PMS.Rx[32];
			HMI.Rack8[6] := PMS.Rx[33];
			HMI.Rack8[7] := PMS.Rx[34];
		9:  
			HMI.Rack9[5] := PMS.Rx[32];
			HMI.Rack9[6] := PMS.Rx[33];
			HMI.Rack9[7] := PMS.Rx[34];
		10: 
			HMI.Rack10[5]:= PMS.Rx[32];
			HMI.Rack10[6]:= PMS.Rx[33];
			HMI.Rack10[7]:= PMS.Rx[34];
	END_CASE;
	CASE PMS.Rx[35] OF
		1:  
			HMI.Rack1[8] := PMS.Rx[36];
			HMI.Rack1[9] := PMS.Rx[37];
			HMI.Rack1[10] := PMS.Rx[38];
		2:  
			HMI.Rack2[8] := PMS.Rx[36];
			HMI.Rack2[9] := PMS.Rx[37];
			HMI.Rack2[10] := PMS.Rx[38];
		3:
			HMI.Rack3[8] := PMS.Rx[36];
			HMI.Rack3[9] := PMS.Rx[37];
			HMI.Rack3[10] := PMS.Rx[38];
		4:  
			HMI.Rack4[8] := PMS.Rx[36];
			HMI.Rack4[9] := PMS.Rx[37];
			HMI.Rack4[10] := PMS.Rx[38];
		5:  
			HMI.Rack5[8] := PMS.Rx[36];
			HMI.Rack5[9] := PMS.Rx[37];
			HMI.Rack5[10] := PMS.Rx[38];
		6:  
			HMI.Rack6[8] := PMS.Rx[36];
			HMI.Rack6[9] := PMS.Rx[37];
			HMI.Rack6[10] := PMS.Rx[38];
		7:  
			HMI.Rack7[8] := PMS.Rx[36];
			HMI.Rack7[9] := PMS.Rx[37];
			HMI.Rack7[10] := PMS.Rx[38];
		8:
			HMI.Rack8[8] := PMS.Rx[36];
			HMI.Rack8[9] := PMS.Rx[37];
			HMI.Rack8[10] := PMS.Rx[38];
		9:  
			HMI.Rack9[8] := PMS.Rx[36];
			HMI.Rack9[9] := PMS.Rx[37];
			HMI.Rack9[10] := PMS.Rx[38];
		10: 
			HMI.Rack10[8]:= PMS.Rx[36];
			HMI.Rack10[9]:= PMS.Rx[37];
			HMI.Rack10[10]:= PMS.Rx[38];
	END_CASE;
	CASE PMS.Rx[40] OF
		1:  
			HMI.Rack1[11] := PMS.Rx[40];
			HMI.Rack1[12] := PMS.Rx[41];
		2:  
			HMI.Rack2[11] := PMS.Rx[40];
			HMI.Rack2[12] := PMS.Rx[41];
		3:
			HMI.Rack3[11] := PMS.Rx[40];
			HMI.Rack3[12] := PMS.Rx[41];
		4:  
			HMI.Rack4[11] := PMS.Rx[40];
			HMI.Rack4[12] := PMS.Rx[41];
		5:  
			HMI.Rack5[11] := PMS.Rx[40];
			HMI.Rack5[12] := PMS.Rx[41];
		6:  
			HMI.Rack6[11] := PMS.Rx[40];
			HMI.Rack6[12] := PMS.Rx[41];
		7:  
			HMI.Rack7[11] := PMS.Rx[40];
			HMI.Rack7[12] := PMS.Rx[41];
		8:
			HMI.Rack8[11] := PMS.Rx[40];
			HMI.Rack8[12] := PMS.Rx[41];
		9:  
			HMI.Rack9[11] := PMS.Rx[40];
			HMI.Rack9[12] := PMS.Rx[41];
		10: 
			HMI.Rack10[11]:= PMS.Rx[40];
			HMI.Rack10[12]:= PMS.Rx[41];
	END_CASE;
	CASE PMS.Rx[42] OF
		1:  
			HMI.Rack1[13] := PMS.Rx[43];
			HMI.Rack1[14] := PMS.Rx[44];
		2:  
			HMI.Rack2[13] := PMS.Rx[43];
			HMI.Rack2[14] := PMS.Rx[44];
		3:
			HMI.Rack3[13] := PMS.Rx[43];
			HMI.Rack3[14] := PMS.Rx[44];
		4:  
			HMI.Rack4[13] := PMS.Rx[43];
			HMI.Rack4[14] := PMS.Rx[44];
		5:  
			HMI.Rack5[13] := PMS.Rx[43];
			HMI.Rack5[14] := PMS.Rx[44];
		6:  
			HMI.Rack6[13] := PMS.Rx[43];
			HMI.Rack6[14] := PMS.Rx[44];
		7:  
			HMI.Rack7[13] := PMS.Rx[43];
			HMI.Rack7[14] := PMS.Rx[44];
		8:
			HMI.Rack8[13] := PMS.Rx[43];
			HMI.Rack8[14] := PMS.Rx[44];
		9:  
			HMI.Rack9[13] := PMS.Rx[43];
			HMI.Rack9[14] := PMS.Rx[44];
		10: 
			HMI.Rack10[13]:= PMS.Rx[43];
			HMI.Rack10[14]:= PMS.Rx[44];
	END_CASE;
	CASE PMS.Rx[45] OF
		1:  
			HMI.Rack1[15] := PMS.Rx[46];
			HMI.Rack1[16] := PMS.Rx[47];
		2:  
			HMI.Rack2[15] := PMS.Rx[46];
			HMI.Rack2[16] := PMS.Rx[47];
		3:
			HMI.Rack3[15] := PMS.Rx[46];
			HMI.Rack3[16] := PMS.Rx[47];
		4:  
			HMI.Rack4[15] := PMS.Rx[46];
			HMI.Rack4[16] := PMS.Rx[47];
		5:  
			HMI.Rack5[15] := PMS.Rx[46];
			HMI.Rack5[16] := PMS.Rx[47];
		6:  
			HMI.Rack6[15] := PMS.Rx[46];
			HMI.Rack6[16] := PMS.Rx[47];
		7:  
			HMI.Rack7[15] := PMS.Rx[46];
			HMI.Rack7[16] := PMS.Rx[47];
		8:
			HMI.Rack8[15] := PMS.Rx[46];
			HMI.Rack8[16] := PMS.Rx[47];
		9:  
			HMI.Rack9[15] := PMS.Rx[46];
			HMI.Rack9[16] := PMS.Rx[47];
		10: 
			HMI.Rack10[15]:= PMS.Rx[46];
			HMI.Rack10[16]:= PMS.Rx[47];
	END_CASE;
	CASE PMS.Rx[48] OF
		1:  
			HMI.Rack1[17] := PMS.Rx[49];
			HMI.Rack1[18] := PMS.Rx[50];
		2:  
			HMI.Rack2[17] := PMS.Rx[49];
			HMI.Rack2[18] := PMS.Rx[50];
		3:
			HMI.Rack3[17] := PMS.Rx[49];
			HMI.Rack3[18] := PMS.Rx[50];
		4:  
			HMI.Rack4[17] := PMS.Rx[49];
			HMI.Rack4[18] := PMS.Rx[50];
		5:  
			HMI.Rack5[17] := PMS.Rx[49];
			HMI.Rack5[18] := PMS.Rx[50];
		6:  
			HMI.Rack6[17] := PMS.Rx[49];
			HMI.Rack6[18] := PMS.Rx[50];
		7:  
			HMI.Rack7[17] := PMS.Rx[49];
			HMI.Rack7[18] := PMS.Rx[50];
		8:
			HMI.Rack8[17] := PMS.Rx[49];
			HMI.Rack8[18] := PMS.Rx[50];
		9:  
			HMI.Rack9[17] := PMS.Rx[49];
			HMI.Rack9[18] := PMS.Rx[50];
		10: 
			HMI.Rack10[17]:= PMS.Rx[49];
			HMI.Rack10[18]:= PMS.Rx[50];
	END_CASE;
	CASE PMS.Rx[51] OF
		1:  
			HMI.Rack1[19] := PMS.Rx[52];
			HMI.Rack1[20] := PMS.Rx[53];
			HMI.Rack1[21] := PMS.Rx[54];
		2:  
			HMI.Rack2[19] := PMS.Rx[52];
			HMI.Rack2[20] := PMS.Rx[53];
			HMI.Rack2[21] := PMS.Rx[54];
		3:
			HMI.Rack3[19] := PMS.Rx[52];
			HMI.Rack3[20] := PMS.Rx[53];
			HMI.Rack3[21] := PMS.Rx[54];
		4:  
			HMI.Rack4[19] := PMS.Rx[52];
			HMI.Rack4[20] := PMS.Rx[53];
			HMI.Rack4[21] := PMS.Rx[54];
		5:  
			HMI.Rack5[19] := PMS.Rx[52];
			HMI.Rack5[20] := PMS.Rx[53];
			HMI.Rack5[21] := PMS.Rx[54];
		6:  
			HMI.Rack6[19] := PMS.Rx[52];
			HMI.Rack6[20] := PMS.Rx[53];
			HMI.Rack6[21] := PMS.Rx[54];
		7:  
			HMI.Rack7[19] := PMS.Rx[52];
			HMI.Rack7[20] := PMS.Rx[53];
			HMI.Rack7[21] := PMS.Rx[54];
		8:
			HMI.Rack8[19] := PMS.Rx[52];
			HMI.Rack8[20] := PMS.Rx[53];
			HMI.Rack8[21] := PMS.Rx[54];
		9:  
			HMI.Rack9[19] := PMS.Rx[52];
			HMI.Rack9[20] := PMS.Rx[53];
			HMI.Rack9[21] := PMS.Rx[54];
		10: 
			HMI.Rack10[19]:= PMS.Rx[52];
			HMI.Rack10[20]:= PMS.Rx[53];
			HMI.Rack10[21] := PMS.Rx[54];
	END_CASE;
	
	ActLOGIN;
	
	FOR uLoop_0 := 0 TO 9 DO
		HMIBinding.CommonUI.bBool[uLoop_0]	:= FALSE;
	END_FOR;
	FOR uLoop_0 := 1 TO HMI.System[2] / 16#0100 DO
		HMIBinding.CommonUI.bBool[uLoop_0-1]	:= TRUE;
	END_FOR;	
	
	HMIBinding.AdminUI.SysVoltage := UINT_TO_REAL(HMI.System[5])*0.1;
	HMIBinding.AdminUI.SysCurrent := INT_TO_REAL(UINT_TO_INT(HMI.System[6]))*0.1;
	
	CASE HMIBinding.Step OF
		
		INITIAL:
			HMIBinding.Step := BOOTING;
		BOOTING:
			
			TON_0.IN := TRUE;
			TON_0.PT := T#20s;
			
			IF gComm.CAN1.bActive THEN
				HMIBinding.DeviceLoading.0 := TRUE;
			END_IF;
			IF gComm.CAN2.bActive THEN
				HMIBinding.DeviceLoading.1 := TRUE;
			END_IF;
			IF gComm.CAN1.bActive THEN
				HMIBinding.DeviceLoading.3 := TRUE;
			END_IF;
			IF gComm.CAN1.bActive THEN
				HMIBinding.DeviceLoading.4 := TRUE;
			END_IF;
			IF gComm.CAN1.bActive THEN
				HMIBinding.DeviceLoading.5 := TRUE;
			END_IF;
			IF gComm.CAN1.bActive THEN
				HMIBinding.DeviceLoading.6 := TRUE;
			END_IF;
			IF gComm.CAN1.bActive THEN
				HMIBinding.DeviceLoading.7 := TRUE;
			END_IF;
			
			IF HMIBinding.DeviceLoading = 2#11111111 THEN
				HMIBinding.Step := SYSTEM;
				TON_0.IN := FALSE;
			END_IF;
		SYSTEM: AtSystemUI;
		RACK1:	AtRack1UI;
		RACK2:	AtRack2UI;
		RACK3:	AtRack3UI;
		RACK4:	AtRack4UI;
		RACK5:	AtRack5UI;
		RACK6:	AtRack6UI;
		RACK7:	AtRack7UI;
		RACK8:	AtRack8UI;
		RACK9:	AtRack9UI;
		RACK10:	AtRack10UI;
		ADMINISTRATOR: 	AtSystemUI;
		ALARMHISTORY:	AtSystemUI;
						ActHMI_ALARM;
		LOADINGERROR:
			
			TON_0.IN := FALSE;
			
		PROTECTERROR:
		USERTEST:
		
	END_CASE;

END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
END_PROGRAM

