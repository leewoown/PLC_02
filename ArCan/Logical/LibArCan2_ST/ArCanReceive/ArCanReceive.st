

PROGRAM _INIT
	ArCanReceiver.receiverDeviceName 	:= 'SS2.IF2';	
END_PROGRAM
	

PROGRAM _CYCLIC	
	
	CASE ArCanReceiver.step OF
		STEP_WAIT:
			(* wait for starting *)
		  						
					
		STEP_INIT_BAUDRATE:	(* Initializes the receiver with ArCanSetBitTimingRegisters to 250 kbit/s *)
			ArCanReceiver.ArCanSetBitTimingRegisters_0.Execute := TRUE;
			ArCanReceiver.ArCanSetBitTimingRegisters_0.DeviceName := ArCanReceiver.receiverDeviceName;
			ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0 := 1;
			ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1 := 28;	(* Set to 250 000 bit/s *)
			
			ArCanReceiver.ArCanSetBitTimingRegisters_0();
			
			IF (ArCanReceiver.ArCanSetBitTimingRegisters_0.Done = TRUE) THEN
				ArCanReceiver.step := STEP_INIT_RECEIVER;
			ELSIF (ArCanReceiver.ArCanSetBitTimingRegisters_0.Error = TRUE) THEN
				ArCanReceiver.lastError := ArCanReceiver.ArCanSetBitTimingRegisters_0.StatusID;
				ArCanReceiver.errorCount := ArCanReceiver.errorCount + 1;				
				ArCanReceiver.step := STEP_ERROR;
			END_IF;
			

		STEP_INIT_RECEIVER:	(* Initializes the CAN Receiver *)
			ArCanReceiver.ArCanReceiver_0.Enable := TRUE;			(* FALSE -> TRUE takeovers the input parameters *)
			ArCanReceiver.ArCanReceiver_0.DeviceName := ArCanReceiver.receiverDeviceName;					
			ArCanReceiver.ArCanReceiver_0.ID := 0;				(* dummy, because IDMask is arCAN_RECEIVE_ALL *)
			ArCanReceiver.ArCanReceiver_0.IDMask := arCAN_RECEIVE_ALL;
			ArCanReceiver.ArCanReceiver_0.Format := arCAN_11BIT;
			ArCanReceiver.ArCanReceiver_0.QueueSize	:= 1;
					
			IF (ArCanReceiver.ArCanReceiver_0.Active = TRUE) THEN
				ArCanReceiver.step := STEP_WAIT_FOR_DATA;
			ELSIF (ArCanReceiver.ArCanReceiver_0.Error = TRUE) THEN
				ArCanReceiver.errorCount := ArCanReceiver.errorCount + 1;
				ArCanReceiver.lastError := ArCanReceiver.ArCanReceiver_0.StatusID;								
				ArCanReceiver.step := STEP_ERROR;
			END_IF;			
			

			
		STEP_WAIT_FOR_DATA:	(* Checks for new data *)
			IF (ArCanReceiver.ArCanReceiver_0.NewDataValid) THEN
				ArCanReceiver.successCount := ArCanReceiver.successCount + 1;
				
				(* copy received data & save timestamp *)
				memcpy( ADR(ArCanReceiver.receivedIterationCounter), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame), SIZEOF(ArCanReceiver.receivedIterationCounter));
					
				ArCanReceiver.lastReceiveTimestamp := ArCanReceiver.ArCanReceiver_0.Timestamp.UTCSeconds;							
				
				ArCanReceiver.lostFrames := ArCanReceiver.lostFrames + ArCanReceiver.ArCanReceiver_0.NumberOfLostFrames;
			ELSIF (ArCanReceiver.ArCanReceiver_0.Error) THEN
				ArCanReceiver.errorCount := ArCanReceiver.errorCount + 1;
				ArCanReceiver.lastError := ArCanReceiver.ArCanReceiver_0.StatusID;							
				ArCanReceiver.step := STEP_ERROR;
			END_IF;
						
						
			IF (ArCanReceiver.stopTest = TRUE) THEN (* User stops the test *)
				ArCanReceiver.stopTest := FALSE;
				ArCanReceiver.step := STEP_DEINIT;
			END_IF;
			

		STEP_DEINIT:
			ArCanReceiver.ArCanReceiver_0.Enable := FALSE;			
			ArCanReceiver.step := STEP_WAIT;
			
		STEP_ERROR:
			ArCanReceiver.ArCanReceiver_0.Enable := FALSE;						
			
		ELSE

	END_CASE;
	
	ArCanReceiver.ArCanReceiver_0();
	
END_PROGRAM


PROGRAM _EXIT
	(* Deinitialization of the receiver *)
	ArCanReceiver.ArCanReceiver_0.Enable	:= FALSE;
	ArCanReceiver.ArCanReceiver_0();
END_PROGRAM
