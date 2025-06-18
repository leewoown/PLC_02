
PROGRAM _INIT
	(* Insert code here *)
	 // ««ø§ææ ∞¯¿Â √ ±‚»≠ « ø‰ 
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
	
	(*0x06080000 CAN DATA*)
	CharMD0.RxFunCode		:= CharMD0.RXInfroArray[0];
	CharMD0.RxRegNum		:= CharMD0.RXInfroArray[1];
	CharMD0.RxData_Set		:= SHL(UINT_TO_UDINT(CharMD0.RXInfroArray[2]),16) OR (UINT_TO_UDINT(CharMD0.RXInfroArray[3]));
	

END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

