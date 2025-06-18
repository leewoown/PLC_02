
PROGRAM _INIT
	(* Insert code here *)
	 WakeUpSig := 0;
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	StateRack1 := 	RackSyS[0].BSADiviceStatus;
	IF StateRack1 = 4 THEN
		WakeUpSig := 1;
	END_IF;
	
	IF StateRack1 = 3  THEN
		WakeUpSig := 0;	  
	END_IF;
	
	Sys.WakeUpSig := WakeUpSig;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

