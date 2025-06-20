
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
	
	

///////*0x06080000 CAN TX DATA*)/////////////////////////////////////

	CharMD0.TxFunCode		:= 10; 
	CharMD0.TxRegNum		:= 16#1010;
	// Real (Float Data) 
	CharMD0.TxfloatVal		:= 700.0;
	// Real(Float Data) -> DINT Transform
	memcpy(ADR(CharMD0.TxData_Set), ADR(CharMD0.TxfloatVal), SIZEOF(CharMD0.TxfloatVal));
		
//	CharMD0.TxByte0 := DINT_TO_BYTE(SHR(CharMD0.TxData_Set,0) AND 16#FF);
//	CharMD0.TxByte1 := DINT_TO_BYTE(SHR(CharMD0.TxlongVa,8) AND 16#FF);
//	CharMD0.TxByte2 := DINT_TO_BYTE(SHR(CharMD0.TxlongVa,16) AND 16#FF);	
//	CharMD0.TxByte3 := DINT_TO_BYTE(SHR(CharMD0.TxlongVa,24) AND 16#FF);
	


	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

