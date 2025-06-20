
PROGRAM _INIT
	(* Insert code here *)
	 // ÇÇ¿¤¾¾ °øÀå ÃÊ±âÈ­ ÇÊ¿ä 		
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	(*0x610 CAN DATA*)
//	RackSyS[0].ProductSWVer      := RackSyS[0].RackIfroArry[BRAPrdInfr] AND 16#00FF;
//	RackSyS[0].Producttype	  	 := SHR(RackSyS[0].RackIfroArry[BRAPrdInfr], 8);

//	RackSyS[0].BatconfigS 	     := RackSyS[0].RackIfroArry[BRABatconfig] AND 16#00FF;
//	RackSyS[0].BatconfigP 		 := SHR(RackSyS[0].RackIfroArry[BRABatconfig], 8);
	
//	RackSyS[0].ProductNorVoltage := RackSyS[0].RackIfroArry[BRANorVoltage];
//	RackSyS[0].ProductCapacity   := RackSyS[0].RackIfroArry[BRACapacity];	
	
	(*0x611 CAN DATA*)
//	RackSyS[0].BSAVoltTotal := RackSyS[0].RackIfroArry[BRAPT];
//	RackSyS[0].BSACurrTotal := RackSyS[0].RackIfroArry[BRACT];	
//	RackSyS[0].BSASOC	    := RackSyS[0].RackIfroArry[BRASOC];		
//	RackSyS[0].BSASOH	    := RackSyS[0].RackIfroArry[BRASOH];		
	
	(*0x612 CAN DATA*)	
//	RackSyS[0].BSADiviceStatus := RackSyS[0].RackIfroArry[8] AND 16#00FF;
//	RackSyS[0].BSAProtectSatus := SHR(RackSyS[0].RackIfroArry[8], 8);
	
	

///////*0x06080000 CAN DATA*)/////////////////////////////////////
		
	CharMD0.RxFunCode		:= CharMD0.RXInfroArray[0]; 
	CharMD0.RxRegNum		:= SHL(BYTE_TO_UINT(CharMD0.RXInfroArray[2]),8) OR (BYTE_TO_UINT(CharMD0.RXInfroArray[3]));
	
	// long -> float Transform Step 1
	
	CharMD0.RxByteArray[0]  := CharMD0.RXInfroArray[7]; 
	CharMD0.RxByteArray[1]  := CharMD0.RXInfroArray[6];
	CharMD0.RxByteArray[2]  := CharMD0.RXInfroArray[5];
	CharMD0.RxByteArray[3]  := CharMD0.RXInfroArray[4];
	
	// long -> float Transform Step2 : Byte -> DINT (LSB -> MSB)
	CharMD0.RxlongVal := SHL(BYTE_TO_DINT(CharMD0.RxByteArray[3]), 24) OR SHL(BYTE_TO_DINT(CharMD0.RxByteArray[2]), 16) OR SHL(BYTE_TO_DINT(CharMD0.RxByteArray[1]), 8) OR (BYTE_TO_DINT(CharMD0.RxByteArray[0]));

	// long -> float Transform Step3 : DINT -> REAL Copy(IEEE-754) 
	memcpy(ADR(CharMD0.RxData_Set), ADR(CharMD0.RxlongVal), SIZEOF(CharMD0.RxlongVal));
	


	
//	memcpy(ADR(CharMD0.longVal), ADR(CharMD0.floatVal), SIZEOF(CharMD0.floatVal));
	
//	CharMD0.Byte0 := DINT_TO_BYTE(SHR(CharMD0.longVal,0) AND 16#FF);
//	CharMD0.Byte1 := DINT_TO_BYTE(SHR(CharMD0.longVal,8) AND 16#FF);
//	CharMD0.Byte2 := DINT_TO_BYTE(SHR(CharMD0.longVal,16) AND 16#FF);	
//	CharMD0.Byte3 := DINT_TO_BYTE(SHR(CharMD0.longVal,24) AND 16#FF);
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

