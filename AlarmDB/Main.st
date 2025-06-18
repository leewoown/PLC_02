
PROGRAM _INIT
	
	Timestamp.DTGetTime_0.enable := TRUE;
	(*
	Alarm[0] == 'Sys CHA Over Current';
	Alarm[1] == 'Sys DisCHA Over Current';
	Alarm[2] == 'Sys Over SOC';
	Alarm[3] == 'Sys Under SOC';
	Alarm[4] == 'Sys Over Voltage';
	Alarm[5] == 'Sys Under Voltag';
	Alarm[6] == 'Cell Over Voltage';
	Alarm[7] == 'Cell Under Voltag';
	Alarm[8] == 'Cell UnBalance Voltage';
	Alarm[9] == 'Cell Over Temperature';
	Alarm[10] == 'Cell Under Temperature';
	Alarm[11] == 'Cell UnBalance Temperature';
	Alarm[12] == 'Sys CHA Over Current';
	Alarm[13] == 'Sys CHA Over Current';
	Alarm[12] == 'Internal COM Error';
	Alarm[13] == 'External COM Error';
	Alarm[14] == 'Relay Welding Error';
	Alarm[15] == 'Water Leak Error';
	Alarm[16] == 'Insulation Registance Error';
	Alarm[17] == 'MDS FUSE Open';
	*)
	
END_PROGRAM

PROGRAM _CYCLIC
	(**********************************************************************************)
	(* TIME TRANS 'DT#YYYY-MM-DD-hh:mm:ss' >> 'YY-MM-DD, hh:mm' *)
	(**********************************************************************************)
	
	Timestamp.DTGetTime_0();
	
	Timestamp.Original := DT_TO_STRING(Timestamp.DTGetTime_0.DT1);
	Timestamp.Split.Day := MID(Timestamp.Original,8,6);
	Timestamp.Split.Time := MID(Timestamp.Original,5,15);
	
	Timestamp.Total := CONCAT(Timestamp.Split.Day, CONCAT(', ',Timestamp.Split.Time));
	
	(**********************************************************************************)
	(* Alarm HISTORY Init, Past, Count*)
	(**********************************************************************************)
	
	IF EDGEPOS(HMI.System[43].0) THEN
		IF AlarmDB.Alarm[0].Count = 0 THEN
			AlarmDB.Alarm[0].InitialTime 	:= Timestamp.Total;
			AlarmDB.Alarm[0].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[0].RecentTime 	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[0].Count  := AlarmDB.Alarm[0].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].1) THEN
		IF AlarmDB.Alarm[1].Count = 0 THEN
			AlarmDB.Alarm[1].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[1].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[1].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[1].Count  := AlarmDB.Alarm[1].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].2) THEN
		IF AlarmDB.Alarm[2].Count = 0 THEN
			AlarmDB.Alarm[2].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[2].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[2].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[2].Count  := AlarmDB.Alarm[2].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].3) THEN
		IF AlarmDB.Alarm[3].Count = 0 THEN
			AlarmDB.Alarm[3].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[3].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[3].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[3].Count  := AlarmDB.Alarm[3].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].4) THEN
		IF AlarmDB.Alarm[4].Count = 0 THEN
			AlarmDB.Alarm[4].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[4].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[4].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[4].Count  := AlarmDB.Alarm[4].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].5) THEN
		IF AlarmDB.Alarm[5].Count = 0 THEN
			AlarmDB.Alarm[5].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[5].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[5].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[5].Count  := AlarmDB.Alarm[5].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].6) THEN
		IF AlarmDB.Alarm[6].Count = 0 THEN
			AlarmDB.Alarm[6].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[6].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[6].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[6].Count  := AlarmDB.Alarm[6].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].7) THEN
		IF AlarmDB.Alarm[7].Count = 0 THEN
			AlarmDB.Alarm[7].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[7].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[7].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[7].Count  := AlarmDB.Alarm[7].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].8) THEN
		IF AlarmDB.Alarm[8].Count = 0 THEN
			AlarmDB.Alarm[8].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[8].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[8].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[8].Count  := AlarmDB.Alarm[8].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].9) THEN
		IF AlarmDB.Alarm[9].Count = 0 THEN
			AlarmDB.Alarm[9].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[9].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[9].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[9].Count  := AlarmDB.Alarm[9].Count + 1;		
	END_IF;	
	IF EDGEPOS(HMI.System[43].10) THEN
		IF AlarmDB.Alarm[10].Count = 0 THEN
			AlarmDB.Alarm[10].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[10].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[10].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[10].Count 	:= AlarmDB.Alarm[10].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[43].11) THEN
		IF AlarmDB.Alarm[11].Count = 0 THEN
			AlarmDB.Alarm[11].InitialTime  	:= Timestamp.Total;
			AlarmDB.Alarm[11].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Alarm[11].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Alarm[11].Count 	:= AlarmDB.Alarm[11].Count + 1;		
	END_IF;
	
	IF EDGENEG(HMI.System[43].0) THEN
		AlarmDB.Alarm[0].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].1) THEN
		AlarmDB.Alarm[1].ClearTime 	:= Timestamp.Total;
	END_IF;
	IF EDGENEG(HMI.System[43].2) THEN
		AlarmDB.Alarm[2].ClearTime 	:= Timestamp.Total;
	END_IF;
	IF EDGENEG(HMI.System[43].3) THEN
		AlarmDB.Alarm[3].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].4) THEN
		AlarmDB.Alarm[4].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].5) THEN
		AlarmDB.Alarm[5].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].6) THEN
		AlarmDB.Alarm[6].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].7) THEN
		AlarmDB.Alarm[7].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].8) THEN
		AlarmDB.Alarm[8].ClearTime	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].9) THEN
		AlarmDB.Alarm[9].ClearTime 	:= Timestamp.Total;		
	END_IF;	
	IF EDGENEG(HMI.System[43].10) THEN
		AlarmDB.Alarm[10].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[43].11) THEN
		AlarmDB.Alarm[11].ClearTime 	:= Timestamp.Total;		
	END_IF;
	
	
	IF EDGEPOS(HMI.System[44].0) THEN
		IF AlarmDB.Fault[0].Count = 0 THEN
			AlarmDB.Fault[0].InitialTime 	:= Timestamp.Total;
			AlarmDB.Fault[0].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[0].RecentTime 	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[0].Count  := AlarmDB.Fault[0].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].1) THEN
		IF AlarmDB.Fault[1].Count = 0 THEN
			AlarmDB.Fault[1].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[1].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[1].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[1].Count  := AlarmDB.Fault[1].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].2) THEN
		IF AlarmDB.Fault[2].Count = 0 THEN
			AlarmDB.Fault[2].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[2].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[2].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[2].Count  := AlarmDB.Fault[2].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].3) THEN
		IF AlarmDB.Fault[3].Count = 0 THEN
			AlarmDB.Fault[3].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[3].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[3].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[3].Count  := AlarmDB.Fault[3].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].4) THEN
		IF AlarmDB.Fault[4].Count = 0 THEN
			AlarmDB.Fault[4].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[4].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[4].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[4].Count  := AlarmDB.Fault[4].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].5) THEN
		IF AlarmDB.Fault[5].Count = 0 THEN
			AlarmDB.Fault[5].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[5].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[5].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[5].Count  := AlarmDB.Fault[5].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].6) THEN
		IF AlarmDB.Fault[6].Count = 0 THEN
			AlarmDB.Fault[6].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[6].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[6].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[6].Count  := AlarmDB.Fault[6].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].7) THEN
		IF AlarmDB.Fault[7].Count = 0 THEN
			AlarmDB.Fault[7].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[7].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[7].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[7].Count  := AlarmDB.Fault[7].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].8) THEN
		IF AlarmDB.Fault[8].Count = 0 THEN
			AlarmDB.Fault[8].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[8].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[8].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[8].Count  := AlarmDB.Fault[8].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].9) THEN
		IF AlarmDB.Fault[9].Count = 0 THEN
			AlarmDB.Fault[9].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[9].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[9].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[9].Count  := AlarmDB.Fault[9].Count + 1;		
	END_IF;	
	IF EDGEPOS(HMI.System[44].10) THEN
		IF AlarmDB.Fault[10].Count = 0 THEN
			AlarmDB.Fault[10].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[10].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[10].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[10].Count 	:= AlarmDB.Fault[10].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[44].11) THEN
		IF AlarmDB.Fault[11].Count = 0 THEN
			AlarmDB.Fault[11].InitialTime  	:= Timestamp.Total;
			AlarmDB.Fault[11].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Fault[11].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Fault[11].Count 	:= AlarmDB.Fault[11].Count + 1;		
	END_IF;
	
	IF EDGENEG(HMI.System[45].0) THEN
		AlarmDB.Protect[0].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].1) THEN
		AlarmDB.Protect[1].ClearTime 	:= Timestamp.Total;
	END_IF;
	IF EDGENEG(HMI.System[45].2) THEN
		AlarmDB.Protect[2].ClearTime 	:= Timestamp.Total;
	END_IF;
	IF EDGENEG(HMI.System[45].3) THEN
		AlarmDB.Protect[3].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].4) THEN
		AlarmDB.Protect[4].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].5) THEN
		AlarmDB.Protect[5].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].6) THEN
		AlarmDB.Protect[6].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].7) THEN
		AlarmDB.Protect[7].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].8) THEN
		AlarmDB.Protect[8].ClearTime	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].9) THEN
		AlarmDB.Protect[9].ClearTime 	:= Timestamp.Total;		
	END_IF;	
	IF EDGENEG(HMI.System[45].10) THEN
		AlarmDB.Protect[10].ClearTime := Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].11) THEN
		AlarmDB.Protect[11].ClearTime := Timestamp.Total;		
	END_IF;

	IF EDGEPOS(HMI.System[45].0) THEN
			
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Sys CHA Over Current';
		
		IF AlarmDB.Protect[0].Count = 0 THEN
			AlarmDB.Protect[0].InitialTime 	:= Timestamp.Total;
			AlarmDB.Protect[0].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[0].RecentTime 	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[0].Count  := AlarmDB.Protect[0].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].1) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Sys DisCHA Over Current';
		
		IF AlarmDB.Protect[1].Count = 0 THEN
			AlarmDB.Protect[1].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[1].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[1].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[1].Count  := AlarmDB.Protect[1].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].2) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Sys Over SOC';
		
		IF AlarmDB.Protect[2].Count = 0 THEN
			AlarmDB.Protect[2].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[2].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[2].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[2].Count  := AlarmDB.Protect[2].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].3) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Sys Under SOC';
		
		IF AlarmDB.Protect[3].Count = 0 THEN
			AlarmDB.Protect[3].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[3].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[3].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[3].Count  := AlarmDB.Protect[3].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].4) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Sys Over Voltage';
		
		
		IF AlarmDB.Protect[4].Count = 0 THEN
			AlarmDB.Protect[4].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[4].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[4].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[4].Count  := AlarmDB.Protect[4].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].5) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Sys Under Voltag';
		
		
		IF AlarmDB.Protect[5].Count = 0 THEN
			AlarmDB.Protect[5].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[5].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[5].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[5].Count  := AlarmDB.Protect[5].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].6) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name :='Cell Over Voltage';
		
		
		IF AlarmDB.Protect[6].Count = 0 THEN
			AlarmDB.Protect[6].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[6].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[6].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[6].Count  := AlarmDB.Protect[6].Count + 1;		
	END_IF;

	IF EDGEPOS(HMI.System[45].7) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name :=  'Cell Under Voltag';
		
		
		IF AlarmDB.Protect[7].Count = 0 THEN
			AlarmDB.Protect[7].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[7].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[7].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[7].Count  := AlarmDB.Protect[7].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].8) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Cell UnBalance Voltage';
		
		
		IF AlarmDB.Protect[8].Count = 0 THEN
			AlarmDB.Protect[8].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[8].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[8].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[8].Count  := AlarmDB.Protect[8].Count + 1;		
	END_IF;
	IF EDGEPOS(HMI.System[45].9) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Cell Over Temperature';
		
		
		IF AlarmDB.Protect[9].Count = 0 THEN
			AlarmDB.Protect[9].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[9].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[9].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[9].Count  := AlarmDB.Protect[9].Count + 1;		
	END_IF;	
	IF EDGEPOS(HMI.System[45].10) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Cell Under Temperature';
		
		
		IF AlarmDB.Protect[10].Count = 0 THEN
			AlarmDB.Protect[10].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[10].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[10].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[10].Count 	:= AlarmDB.Protect[10].Count + 1;		
	END_IF;
			
	IF EDGEPOS(HMI.System[45].11) THEN
		
		HMIBinding.DialogUI.Protect.Trigger := TRUE;
		HMIBinding.DialogUI.Protect.Name := 'Cell UnBalance Temperature';
		
		
		IF AlarmDB.Protect[11].Count = 0 THEN
			AlarmDB.Protect[11].InitialTime  	:= Timestamp.Total;
			AlarmDB.Protect[11].RecentTime 	:= Timestamp.Total;
		ELSE
			AlarmDB.Protect[11].InitialTime  	:= Timestamp.Total;
		END_IF;
		AlarmDB.Protect[11].Count 	:= AlarmDB.Protect[11].Count + 1;		
	END_IF;
	
	IF EDGENEG(HMI.System[45].0) THEN
		AlarmDB.Protect[0].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].1) THEN
		AlarmDB.Protect[1].ClearTime 	:= Timestamp.Total;
	END_IF;
	IF EDGENEG(HMI.System[45].2) THEN
		AlarmDB.Protect[2].ClearTime 	:= Timestamp.Total;
	END_IF;
	IF EDGENEG(HMI.System[45].3) THEN
		AlarmDB.Protect[3].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].4) THEN
		AlarmDB.Protect[4].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].5) THEN
		AlarmDB.Protect[5].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].6) THEN
		AlarmDB.Protect[6].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].7) THEN
		AlarmDB.Protect[7].ClearTime 	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].8) THEN
		AlarmDB.Protect[8].ClearTime	:= Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].9) THEN
		AlarmDB.Protect[9].ClearTime 	:= Timestamp.Total;		
	END_IF;	
	IF EDGENEG(HMI.System[45].10) THEN
		AlarmDB.Protect[10].ClearTime := Timestamp.Total;		
	END_IF;
	IF EDGENEG(HMI.System[45].11) THEN
		AlarmDB.Protect[11].ClearTime := Timestamp.Total;		
	END_IF;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

