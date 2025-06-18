
PROGRAM _INIT
	(* Insert code here *)
	StateMa := 0; 
	PRATimerProRlyOn.IN := FALSE;
	PRATimerProRlyOn.PT := T#500ms;
	PRATimerProRlyOff.IN := FALSE;
	PRATimerProRlyOff.PT := T#200ms;
	PRATimerWakeUpOff.IN := FALSE;
	PRATimerWakeUpOff.PT := T#100ms;
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	WakeUpSig := Sys.WakeUpSig;
	
	CASE StateMa OF
		0: 
			IF WakeUpSig = 1 THEN
	  			StateMa := 1;
			END_IF;
		1:
			Sys.NRly := 1;
			IF Sys.NRlyAux = 1 THEN
	  			StateMa := 2;
			END_IF;
		2:
			Sys.ProRly :=1;
			IF Sys.ProRlyAux = 1 THEN
	  			StateMa := 3;
			END_IF;
		3:
			// Timmer1 on	
			PRATimerProRlyOn.IN := TRUE;
			IF PRATimerProRlyOn.Q = 1 THEN
	  			StateMa := 4;
			END_IF;			
		4:
			Sys.PRly :=1;
			IF Sys.PRlyAux = 1 THEN
	  			StateMa := 5;
			END_IF;		
		5 :
			// Timer2 on
			PRATimerProRlyOff.IN := TRUE;
			IF PRATimerProRlyOff.Q = 1 THEN
	  			StateMa := 6;
			END_IF;
		6:
			Sys.ProRly := 0;
			IF Sys.ProRlyAux = 0 THEN
	  			StateMa := 7;
			END_IF;
		7 :
			// Timer1 reset
			// Timer2 reset
			PRATimerProRlyOn.IN 	:= FALSE;
			PRATimerProRlyOff.IN 	:= FALSE;
			IF WakeUpSig = 0 THEN
				StateMa := 8;
			END_IF;
		8 :
			Sys.NRly := 0;
			IF Sys.NRlyAux = 0 THEN
				StateMa := 9;
			END_IF;
		9 :
			PRATimerWakeUpOff.IN := TRUE;
			IF PRATimerWakeUpOff.Q = 1 THEN
				StateMa := 10;
			END_IF;	
		10 :
			Sys.PRly := 0;
			IF Sys.PRlyAux = 0 THEN
				StateMa := 11;
			END_IF;
		11 :
			PRATimerWakeUpOff.IN	:= FALSE;
			StateMa := 0;
		
		ELSE
			
	END_CASE;
	PRATimerProRlyOn();
	PRATimerProRlyOff();
	PRATimerWakeUpOff();
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

