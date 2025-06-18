
// CAN_CH_A

PROGRAM _INIT
	RackSyS;
	ActArCanReceiver;
	ArCanReceiver.enable				:= TRUE;
	ArCanReceiver.receiverDeviceName 	:= 'IF7';       (* for X20CP0482 CPU *)
	ArCanReceiver.id					:= 0; 
	ArCanReceiver.idMask				:= arCAN_RECEIVE_ALL;  // or configure IDMask
	ArCanReceiver.format				:= arCAN_29BIT;  // or arCAN_29BIT
	ArCanReceiver.queueSize				:= 128;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0 := 16#03;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1 := 16#1C;
	
	(**********************	 CAN Baud rate Register Value	*************************)
	(********************************************************************************)
	(* 	  1 000 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#14	*)
	(* 		800 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#16	*)
	(* 		500 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#1C	*)
	(* 		250 000 bit/s    >>		Register0 = 16#01	||		Register1 = 16#1C	*)
	(* 		125 000 bit/s    >>		Register0 = 16#03	||		Register1 = 16#1C	*)
	(* 		100 000 bit/s    >>		Register0 = 16#04	||		Register1 = 16#1C	*)
	(* 		050 000 bit/s    >>		Register0 = 16#09	||		Register1 = 16#1C	*)
	(* 		020 000 bit/s    >>		Register0 = 16#18	||		Register1 = 16#1C	*)
	(* 		010 000 bit/s    >>		Register0 = 16#31	||		Register1 = 16#1C	*)
	(********************************************************************************)
	(********************************************************************************)
	

END_PROGRAM

PROGRAM _CYCLIC	
//	RackSyS[0].RackIro
	(* Action for ArCanReceiver *)
	// test;
	ActArCanReceiver;
	(***********************************************************)
	(* Customize the received data *)
	// ArCanReceiver.ArCanReceiver_0.ReceivedFrame; //Data received
	IF (ArCanReceiver.ArCanReceiver_0.NewDataValid) THEN

		CASE ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID OF
			16#06080000..16#06080008:
			Can[0].Count := Can[0].Count +1;
			IF  Can[0].Count	>=3600 THEN
				Can[0].Count :=0;				
			END_IF;
			
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#06080000 THEN
				CharMD0.RXInfroArray[0] 	:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]);	
				CharMD0.RXInfroArray[1] 	:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]);
				CharMD0.RXInfroArray[2]  	:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]);
				CharMD0.RXInfroArray[3] 	:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#06080008 THEN
				CharMD1.RXInfroArray[0]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]);	
				CharMD1.RXInfroArray[1] 	:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]);
				CharMD1.RXInfroArray[2] 	:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]);
				CharMD1.RXInfroArray[3]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]);
			END_IF;	
			
		
			//			16#06080000..16#06080008:
			//			RackSyS[1].RackCanCount := RackSyS[1].RackCanCount +1;
			//			16#620..16#62E:
			//			RackSyS[2].RackCanCount := RackSyS[2].RackCanCount +1;
			//			16#630..16#63E:
			//			RackSyS[3].RackCanCount := RackSyS[3].RackCanCount +1;
			//Can_DB_Key.Header	:=  UDINT_TO_USINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID - 16#600)/16;
			//Can_DB_Key.Body		:= 	UDINT_TO_USINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID - 16#600)-Can_DB_Key.Header*16;
			// memcpy(ADR(Can_Data[Can_DB_Key.Header].r6N[Can_DB_Key.Body]),ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data),8);			
		END_CASE;
		
	END_IF
		
	
	//	IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#CanID THEN
	//		memcpy(ADR(TargetVariable), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.DataLength));
	//	ELSIF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#CanID THEN
	//		memcpy(ADR(TargetVariable), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.DataLength));
	//	END_IF
	
	
	
	
	(***********************************************************)
	(* CAN Communication Status *)
	(***********************************************************)
	
	IF ArCanReceiver.ArCanReceiver_0.Error THEN
		gComm.CAN1.bError	:= TRUE;
		gComm.CAN1.bActive	:= FALSE;
		gComm.CAN1.bTransmitting	:= FALSE;
	ELSIF ArCanReceiver.ArCanReceiver_0.Active AND ArCanReceiver.ArCanReceiver_0.Busy THEN
		gComm.CAN1.bError	:= FALSE;
		gComm.CAN1.bActive	:= TRUE;
	
		IF (countCANSuccessOld <> ArCanReceiver.successCount) THEN
			countCANSuccessOld	:= ArCanReceiver.successCount;
			gComm.CAN1.bTransmitting	:= TRUE;
			countTime	:= 0;
		ELSE
			countTime	:= countTime + 1;
			IF (countTime > 50) THEN
				gComm.CAN1.bTransmitting	:= FALSE;
				countTime	:= 0;
			END_IF
		END_IF
	ELSE
		gComm.CAN1.bError	:= FALSE;
		gComm.CAN1.bActive	:= FALSE;
		gComm.CAN1.bTransmitting	:= FALSE;
	END_IF
	(***********************************************************)
	
	
END_PROGRAM





PROGRAM _EXIT
	
	(* Deinitialization of the receiver *)
	ArCanReceiver.ArCanReceiver_0.Enable	:= FALSE;
	ArCanReceiver.ArCanReceiver_0();
	
END_PROGRAM
