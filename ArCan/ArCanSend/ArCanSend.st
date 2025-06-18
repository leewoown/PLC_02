
// CAN_CH_A

PROGRAM _INIT
	
	ArCanSender.enable				:= TRUE;
	
	(* CAN parameter configuration *)
	ArCanSender.senderDeviceName 	:= 'IF7';       (* for X20CP0482 CPU *)
//	ArCanSender.senderDeviceName 	:= 'IF1.ST2.IF1.ST2.IF1';		(* for C50 Touch Panel + X20CS2770 *)
	ArCanSender.Baudrate			:= 125000;		(* Set to 500 000 bit/s *)		
	
	ArCanSender.Format				:= arCAN_29BIT; // or arCAN_29BIT

	(**********	 CAN Baud rate Baudrate Value	************)
	(*******************************************************)
	(* 	  1 000 000 bit/s    >>		Baudrate = 1000000	   *)
	(* 		800 000 bit/s    >>		Baudrate =  800000	   *)
	(* 		500 000 bit/s    >>		Baudrate =  500000	   *)
	(* 		250 000 bit/s    >>		Baudrate =  250000	   *)
	(* 		125 000 bit/s    >>		Baudrate =  125000	   *)
	(* 		100 000 bit/s    >>		Baudrate =  100000	   *)
	(* 		050 000 bit/s    >>		Baudrate =  50000	   *)
	(* 		020 000 bit/s    >>		Baudrate =  20000	   *)
	(* 		010 000 bit/s    >>		Baudrate =  10000	   *)
	(*******************************************************)
	(*******************************************************)
	
END_PROGRAM
	

PROGRAM _CYCLIC	
    

	timerCount				:= timerCount + 1;
	IF timerCount >= 2 THEN     // ( cycle time x 5 ) = time for step change (2ms x 5 = 10ms)
		timerCount	:= 0;
		step				:= step + 1;
		IF step > 9 THEN        // after the last step 9, go back to 0 step
			step	:= 0;
		END_IF
		IF ArCanSender.step = STEP_WAIT_CMD THEN
			ArCanSender.step	:= STEP_INIT_SEND_FRAME;
		END_IF
	END_IF
	
	(***********************************************************)
	(* Customize the sending data *)

	CASE step OF
		0:
			ArCanSender.ID							:= 16#06080000;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= CharMD0.TxFunCode;
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= 0;
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(SHR(CharMD0.TxRegNum, 8));
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(CharMD0.TxRegNum AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= UDINT_TO_BYTE(SHR(CharMD0.TxData_Set, 24));
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= UDINT_TO_BYTE(SHR(CharMD0.TxData_Set, 16));			
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UDINT_TO_BYTE(SHR(CharMD0.TxData_Set, 8));
		    ArCanSender.ArCanSend_0.Frame.Data[7]	:= UDINT_TO_BYTE(CharMD0.TxData_Set AND 16#000000FF);		
		
		1:
			ArCanSender.ID							:= 16#06080800;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= CharMD1.TxFunCode;
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= 0;
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(SHR(CharMD1.TxRegNum, 8));
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE	(CharMD1.TxRegNum AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= UDINT_TO_BYTE(SHR(CharMD1.TxData_Set, 24));
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= UDINT_TO_BYTE(SHR(CharMD1.TxData_Set, 16));			
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UDINT_TO_BYTE(SHR(CharMD1.TxData_Set, 8)); 
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UDINT_TO_BYTE(CharMD1.TxData_Set AND 16#000000FF);		
			
	END_CASE
	
	(***********************************************************)
		
				
	IF (ArCanSender.successCount <> successCountOld) THEN
		successCountOld						:= ArCanSender.successCount;
		ArCanSender.ArCanSend_0.SendFrame	:= FALSE;
		ArCanSender.step					:= STEP_WAIT_CMD;
	END_IF
	
	
	(* Action for Sender *)
	ActionArCanSender;
	

	
END_PROGRAM


PROGRAM _EXIT
	(* Deinitialization of the sender *)
	ArCanSender.ArCanSend_0.Enable := FALSE;
	ArCanSender.ArCanSend_0();
END_PROGRAM
