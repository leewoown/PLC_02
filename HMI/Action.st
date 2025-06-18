ACTION ActLOGIN	:
	IF NOT(HMIBinding.DialogUI.Account.Input_Button = '') THEN
		IF (HMIBinding.DialogUI.Account.Input_Button = 'E') THEN
			IF NOT(LEN(HMIBinding.DialogUI.Account.Password_Internal) = 0) THEN
				HMIBinding.DialogUI.Account.Password_Internal 	:= LEFT(HMIBinding.DialogUI.Account.Password_Internal,LEN(HMIBinding.DialogUI.Account.Password_Internal)-1);
				HMIBinding.DialogUI.Account.Password_External 	:= LEFT(HMIBinding.DialogUI.Account.Password_External,LEN(HMIBinding.DialogUI.Account.Password_External)-1);
			END_IF;
		ELSIF (HMIBinding.DialogUI.Account.Input_Button = 'L') THEN
			IF HMIBinding.DialogUI.Account.Password_Internal = PASSWORD THEN
				HMIBinding.DialogUI.Account.Authority 		:= ADMIN;
				HMIBinding.DialogUI.Account.Password_Internal:= '';
				HMIBinding.DialogUI.Account.Password_External:= '';
			END_IF;
		ELSE
			HMIBinding.DialogUI.Account.Password_Internal 	:= CONCAT(HMIBinding.DialogUI.Account.Password_Internal,HMIBinding.DialogUI.Account.Input_Button);
			HMIBinding.DialogUI.Account.Password_External 	:= CONCAT(HMIBinding.DialogUI.Account.Password_External,'*');
		END_IF;
		HMIBinding.DialogUI.Account.Input_Button 		:= '';
	END_IF;
END_ACTION


ACTION ActHMI_ALARM	:
	
	HMIBinding.AlarmUI.History[0].Name := 'Sys CHA Over Current';
	HMIBinding.AlarmUI.History[1].Name := 'Sys DisCHA Over Current';
	HMIBinding.AlarmUI.History[2].Name := 'Sys Over SOC';
	HMIBinding.AlarmUI.History[3].Name := 'Sys Under SOC';
	HMIBinding.AlarmUI.History[4].Name := 'Sys Over Voltage';
	HMIBinding.AlarmUI.History[5].Name := 'Sys Under Voltag';
	HMIBinding.AlarmUI.History[6].Name := 'Cell Over Voltage';
	HMIBinding.AlarmUI.History[7].Name := 'Cell Under Voltag';
	HMIBinding.AlarmUI.History[8].Name := 'Cell UnBalance Voltage';
	HMIBinding.AlarmUI.History[9].Name := 'Cell Over Temperature';
	HMIBinding.AlarmUI.History[10].Name := 'Cell Under Temperature';
	HMIBinding.AlarmUI.History[11].Name := 'Cell UnBalance Temperature';
	HMIBinding.AlarmUI.History[12].Name := 'Internal COM Error';
	HMIBinding.AlarmUI.History[13].Name := 'External COM Error';
	HMIBinding.AlarmUI.History[14].Name := 'Relay Welding Error';
	HMIBinding.AlarmUI.History[15].Name := 'Water Leak Error';
	HMIBinding.AlarmUI.History[16].Name := 'Insulation Registance Error';
	HMIBinding.AlarmUI.History[17].Name := 'MDS FUSE Open';
	
	CASE HMIBinding.AlarmUI.Key OF
		ALARM :
			
			HMIBinding.AlarmUI.History[0].InitialTime	:= AlarmDB.Alarm[0].InitialTime;
			HMIBinding.AlarmUI.History[1].InitialTime	:= AlarmDB.Alarm[1].InitialTime;
			HMIBinding.AlarmUI.History[2].InitialTime	:= AlarmDB.Alarm[2].InitialTime;
			HMIBinding.AlarmUI.History[3].InitialTime	:= AlarmDB.Alarm[3].InitialTime;
			HMIBinding.AlarmUI.History[4].InitialTime	:= AlarmDB.Alarm[4].InitialTime;
			HMIBinding.AlarmUI.History[5].InitialTime	:= AlarmDB.Alarm[5].InitialTime;
			HMIBinding.AlarmUI.History[6].InitialTime	:= AlarmDB.Alarm[6].InitialTime;
			HMIBinding.AlarmUI.History[7].InitialTime	:= AlarmDB.Alarm[7].InitialTime;
			HMIBinding.AlarmUI.History[8].InitialTime	:= AlarmDB.Alarm[8].InitialTime;
			HMIBinding.AlarmUI.History[9].InitialTime	:= AlarmDB.Alarm[9].InitialTime;
			HMIBinding.AlarmUI.History[10].InitialTime	:= AlarmDB.Alarm[10].InitialTime;
			HMIBinding.AlarmUI.History[11].InitialTime	:= AlarmDB.Alarm[11].InitialTime;
			HMIBinding.AlarmUI.History[12].InitialTime	:= AlarmDB.Alarm[12].InitialTime;
			HMIBinding.AlarmUI.History[13].InitialTime	:= AlarmDB.Alarm[13].InitialTime;
			HMIBinding.AlarmUI.History[14].InitialTime	:= AlarmDB.Alarm[14].InitialTime;
			HMIBinding.AlarmUI.History[15].InitialTime	:= AlarmDB.Alarm[15].InitialTime;
			HMIBinding.AlarmUI.History[16].InitialTime	:= AlarmDB.Alarm[16].InitialTime;
			HMIBinding.AlarmUI.History[17].InitialTime	:= AlarmDB.Alarm[17].InitialTime;
			
			HMIBinding.AlarmUI.History[0].RecentTime	:= AlarmDB.Alarm[0].RecentTime;
			HMIBinding.AlarmUI.History[1].RecentTime	:= AlarmDB.Alarm[1].RecentTime;
			HMIBinding.AlarmUI.History[2].RecentTime	:= AlarmDB.Alarm[2].RecentTime;
			HMIBinding.AlarmUI.History[3].RecentTime	:= AlarmDB.Alarm[3].RecentTime;
			HMIBinding.AlarmUI.History[4].RecentTime	:= AlarmDB.Alarm[4].RecentTime;
			HMIBinding.AlarmUI.History[5].RecentTime	:= AlarmDB.Alarm[5].RecentTime;
			HMIBinding.AlarmUI.History[6].RecentTime	:= AlarmDB.Alarm[6].RecentTime;
			HMIBinding.AlarmUI.History[7].RecentTime	:= AlarmDB.Alarm[7].RecentTime;
			HMIBinding.AlarmUI.History[8].RecentTime	:= AlarmDB.Alarm[8].RecentTime;
			HMIBinding.AlarmUI.History[9].RecentTime	:= AlarmDB.Alarm[9].RecentTime;
			HMIBinding.AlarmUI.History[10].RecentTime	:= AlarmDB.Alarm[10].RecentTime;
			HMIBinding.AlarmUI.History[11].RecentTime	:= AlarmDB.Alarm[11].RecentTime;
			HMIBinding.AlarmUI.History[12].RecentTime	:= AlarmDB.Alarm[12].RecentTime;
			HMIBinding.AlarmUI.History[13].RecentTime	:= AlarmDB.Alarm[13].RecentTime;
			HMIBinding.AlarmUI.History[14].RecentTime	:= AlarmDB.Alarm[14].RecentTime;
			HMIBinding.AlarmUI.History[15].RecentTime	:= AlarmDB.Alarm[15].RecentTime;
			HMIBinding.AlarmUI.History[16].RecentTime	:= AlarmDB.Alarm[16].RecentTime;
			HMIBinding.AlarmUI.History[17].RecentTime	:= AlarmDB.Alarm[17].RecentTime;
			
			HMIBinding.AlarmUI.History[0].ClearTime		:= AlarmDB.Alarm[0].ClearTime;
			HMIBinding.AlarmUI.History[1].ClearTime		:= AlarmDB.Alarm[1].ClearTime;
			HMIBinding.AlarmUI.History[2].ClearTime		:= AlarmDB.Alarm[2].ClearTime;
			HMIBinding.AlarmUI.History[3].ClearTime		:= AlarmDB.Alarm[3].ClearTime;
			HMIBinding.AlarmUI.History[4].ClearTime		:= AlarmDB.Alarm[4].ClearTime;
			HMIBinding.AlarmUI.History[5].ClearTime		:= AlarmDB.Alarm[5].ClearTime;
			HMIBinding.AlarmUI.History[6].ClearTime		:= AlarmDB.Alarm[6].ClearTime;
			HMIBinding.AlarmUI.History[7].ClearTime		:= AlarmDB.Alarm[7].ClearTime;
			HMIBinding.AlarmUI.History[8].ClearTime		:= AlarmDB.Alarm[8].ClearTime;
			HMIBinding.AlarmUI.History[9].ClearTime		:= AlarmDB.Alarm[9].ClearTime;
			HMIBinding.AlarmUI.History[10].ClearTime	:= AlarmDB.Alarm[10].ClearTime;
			HMIBinding.AlarmUI.History[11].ClearTime	:= AlarmDB.Alarm[11].ClearTime;
			HMIBinding.AlarmUI.History[12].ClearTime	:= AlarmDB.Alarm[12].ClearTime;
			HMIBinding.AlarmUI.History[13].ClearTime	:= AlarmDB.Alarm[13].ClearTime;
			HMIBinding.AlarmUI.History[14].ClearTime	:= AlarmDB.Alarm[14].ClearTime;
			HMIBinding.AlarmUI.History[15].ClearTime	:= AlarmDB.Alarm[15].ClearTime;
			HMIBinding.AlarmUI.History[16].ClearTime	:= AlarmDB.Alarm[16].ClearTime;
			HMIBinding.AlarmUI.History[17].ClearTime	:= AlarmDB.Alarm[17].ClearTime;
			
			HMIBinding.AlarmUI.History[0].Count	:= AlarmDB.Alarm[0].Count;
			HMIBinding.AlarmUI.History[1].Count	:= AlarmDB.Alarm[1].Count;
			HMIBinding.AlarmUI.History[2].Count	:= AlarmDB.Alarm[2].Count;
			HMIBinding.AlarmUI.History[3].Count	:= AlarmDB.Alarm[3].Count;
			HMIBinding.AlarmUI.History[4].Count	:= AlarmDB.Alarm[4].Count;
			HMIBinding.AlarmUI.History[5].Count	:= AlarmDB.Alarm[5].Count;
			HMIBinding.AlarmUI.History[6].Count	:= AlarmDB.Alarm[6].Count;
			HMIBinding.AlarmUI.History[7].Count	:= AlarmDB.Alarm[7].Count;
			HMIBinding.AlarmUI.History[8].Count	:= AlarmDB.Alarm[8].Count;
			HMIBinding.AlarmUI.History[9].Count	:= AlarmDB.Alarm[9].Count;
			HMIBinding.AlarmUI.History[10].Count	:= AlarmDB.Alarm[10].Count;
			HMIBinding.AlarmUI.History[11].Count	:= AlarmDB.Alarm[11].Count;
			HMIBinding.AlarmUI.History[12].Count	:= AlarmDB.Alarm[12].Count;
			HMIBinding.AlarmUI.History[13].Count	:= AlarmDB.Alarm[13].Count;
			HMIBinding.AlarmUI.History[14].Count	:= AlarmDB.Alarm[14].Count;
			HMIBinding.AlarmUI.History[15].Count	:= AlarmDB.Alarm[15].Count;
			HMIBinding.AlarmUI.History[16].Count	:= AlarmDB.Alarm[16].Count;
			HMIBinding.AlarmUI.History[17].Count	:= AlarmDB.Alarm[17].Count;
			
			
		FAULT:	
			HMIBinding.AlarmUI.History[0].InitialTime	:= AlarmDB.Fault[0].InitialTime;
			HMIBinding.AlarmUI.History[1].InitialTime	:= AlarmDB.Fault[1].InitialTime;
			HMIBinding.AlarmUI.History[2].InitialTime	:= AlarmDB.Fault[2].InitialTime;
			HMIBinding.AlarmUI.History[3].InitialTime	:= AlarmDB.Fault[3].InitialTime;
			HMIBinding.AlarmUI.History[4].InitialTime	:= AlarmDB.Fault[4].InitialTime;
			HMIBinding.AlarmUI.History[5].InitialTime	:= AlarmDB.Fault[5].InitialTime;
			HMIBinding.AlarmUI.History[6].InitialTime	:= AlarmDB.Fault[6].InitialTime;
			HMIBinding.AlarmUI.History[7].InitialTime	:= AlarmDB.Fault[7].InitialTime;
			HMIBinding.AlarmUI.History[8].InitialTime	:= AlarmDB.Fault[8].InitialTime;
			HMIBinding.AlarmUI.History[9].InitialTime	:= AlarmDB.Fault[9].InitialTime;
			HMIBinding.AlarmUI.History[10].InitialTime	:= AlarmDB.Fault[10].InitialTime;
			HMIBinding.AlarmUI.History[11].InitialTime	:= AlarmDB.Fault[11].InitialTime;
			HMIBinding.AlarmUI.History[12].InitialTime	:= AlarmDB.Fault[12].InitialTime;
			HMIBinding.AlarmUI.History[13].InitialTime	:= AlarmDB.Fault[13].InitialTime;
			HMIBinding.AlarmUI.History[14].InitialTime	:= AlarmDB.Fault[14].InitialTime;
			HMIBinding.AlarmUI.History[15].InitialTime	:= AlarmDB.Fault[15].InitialTime;
			HMIBinding.AlarmUI.History[16].InitialTime	:= AlarmDB.Fault[16].InitialTime;
			HMIBinding.AlarmUI.History[17].InitialTime	:= AlarmDB.Fault[17].InitialTime;
			
			HMIBinding.AlarmUI.History[0].RecentTime	:= AlarmDB.Fault[0].RecentTime;
			HMIBinding.AlarmUI.History[1].RecentTime	:= AlarmDB.Fault[1].RecentTime;
			HMIBinding.AlarmUI.History[2].RecentTime	:= AlarmDB.Fault[2].RecentTime;
			HMIBinding.AlarmUI.History[3].RecentTime	:= AlarmDB.Fault[3].RecentTime;
			HMIBinding.AlarmUI.History[4].RecentTime	:= AlarmDB.Fault[4].RecentTime;
			HMIBinding.AlarmUI.History[5].RecentTime	:= AlarmDB.Fault[5].RecentTime;
			HMIBinding.AlarmUI.History[6].RecentTime	:= AlarmDB.Fault[6].RecentTime;
			HMIBinding.AlarmUI.History[7].RecentTime	:= AlarmDB.Fault[7].RecentTime;
			HMIBinding.AlarmUI.History[8].RecentTime	:= AlarmDB.Fault[8].RecentTime;
			HMIBinding.AlarmUI.History[9].RecentTime	:= AlarmDB.Fault[9].RecentTime;
			HMIBinding.AlarmUI.History[10].RecentTime	:= AlarmDB.Fault[10].RecentTime;
			HMIBinding.AlarmUI.History[11].RecentTime	:= AlarmDB.Fault[11].RecentTime;
			HMIBinding.AlarmUI.History[12].RecentTime	:= AlarmDB.Fault[12].RecentTime;
			HMIBinding.AlarmUI.History[13].RecentTime	:= AlarmDB.Fault[13].RecentTime;
			HMIBinding.AlarmUI.History[14].RecentTime	:= AlarmDB.Fault[14].RecentTime;
			HMIBinding.AlarmUI.History[15].RecentTime	:= AlarmDB.Fault[15].RecentTime;
			HMIBinding.AlarmUI.History[16].RecentTime	:= AlarmDB.Fault[16].RecentTime;
			HMIBinding.AlarmUI.History[17].RecentTime	:= AlarmDB.Fault[17].RecentTime;
			
			HMIBinding.AlarmUI.History[0].ClearTime	:= AlarmDB.Fault[0].ClearTime;
			HMIBinding.AlarmUI.History[1].ClearTime	:= AlarmDB.Fault[1].ClearTime;
			HMIBinding.AlarmUI.History[2].ClearTime	:= AlarmDB.Fault[2].ClearTime;
			HMIBinding.AlarmUI.History[3].ClearTime	:= AlarmDB.Fault[3].ClearTime;
			HMIBinding.AlarmUI.History[4].ClearTime	:= AlarmDB.Fault[4].ClearTime;
			HMIBinding.AlarmUI.History[5].ClearTime	:= AlarmDB.Fault[5].ClearTime;
			HMIBinding.AlarmUI.History[6].ClearTime	:= AlarmDB.Fault[6].ClearTime;
			HMIBinding.AlarmUI.History[7].ClearTime	:= AlarmDB.Fault[7].ClearTime;
			HMIBinding.AlarmUI.History[8].ClearTime	:= AlarmDB.Fault[8].ClearTime;
			HMIBinding.AlarmUI.History[9].ClearTime	:= AlarmDB.Fault[9].ClearTime;
			HMIBinding.AlarmUI.History[10].ClearTime	:= AlarmDB.Fault[10].ClearTime;
			HMIBinding.AlarmUI.History[11].ClearTime	:= AlarmDB.Fault[11].ClearTime;
			HMIBinding.AlarmUI.History[12].ClearTime	:= AlarmDB.Fault[12].ClearTime;
			HMIBinding.AlarmUI.History[13].ClearTime	:= AlarmDB.Fault[13].ClearTime;
			HMIBinding.AlarmUI.History[14].ClearTime	:= AlarmDB.Fault[14].ClearTime;
			HMIBinding.AlarmUI.History[15].ClearTime	:= AlarmDB.Fault[15].ClearTime;
			HMIBinding.AlarmUI.History[16].ClearTime	:= AlarmDB.Fault[16].ClearTime;
			HMIBinding.AlarmUI.History[17].ClearTime	:= AlarmDB.Fault[17].ClearTime;
			
			HMIBinding.AlarmUI.History[0].Count	:= AlarmDB.Fault[0].Count;
			HMIBinding.AlarmUI.History[1].Count	:= AlarmDB.Fault[1].Count;
			HMIBinding.AlarmUI.History[2].Count	:= AlarmDB.Fault[2].Count;
			HMIBinding.AlarmUI.History[3].Count	:= AlarmDB.Fault[3].Count;
			HMIBinding.AlarmUI.History[4].Count	:= AlarmDB.Fault[4].Count;
			HMIBinding.AlarmUI.History[5].Count	:= AlarmDB.Fault[5].Count;
			HMIBinding.AlarmUI.History[6].Count	:= AlarmDB.Fault[6].Count;
			HMIBinding.AlarmUI.History[7].Count	:= AlarmDB.Fault[7].Count;
			HMIBinding.AlarmUI.History[8].Count	:= AlarmDB.Fault[8].Count;
			HMIBinding.AlarmUI.History[9].Count	:= AlarmDB.Fault[9].Count;
			HMIBinding.AlarmUI.History[10].Count	:= AlarmDB.Fault[10].Count;
			HMIBinding.AlarmUI.History[11].Count	:= AlarmDB.Fault[11].Count;
			HMIBinding.AlarmUI.History[12].Count	:= AlarmDB.Fault[12].Count;
			HMIBinding.AlarmUI.History[13].Count	:= AlarmDB.Fault[13].Count;
			HMIBinding.AlarmUI.History[14].Count	:= AlarmDB.Fault[14].Count;
			HMIBinding.AlarmUI.History[15].Count	:= AlarmDB.Fault[15].Count;
			HMIBinding.AlarmUI.History[16].Count	:= AlarmDB.Fault[16].Count;
			HMIBinding.AlarmUI.History[17].Count	:= AlarmDB.Fault[17].Count;
			
		PROTECT:
			HMIBinding.AlarmUI.History[0].InitialTime	:= AlarmDB.Protect[0].InitialTime;
			HMIBinding.AlarmUI.History[1].InitialTime	:= AlarmDB.Protect[1].InitialTime;
			HMIBinding.AlarmUI.History[2].InitialTime	:= AlarmDB.Protect[2].InitialTime;
			HMIBinding.AlarmUI.History[3].InitialTime	:= AlarmDB.Protect[3].InitialTime;
			HMIBinding.AlarmUI.History[4].InitialTime	:= AlarmDB.Protect[4].InitialTime;
			HMIBinding.AlarmUI.History[5].InitialTime	:= AlarmDB.Protect[5].InitialTime;
			HMIBinding.AlarmUI.History[6].InitialTime	:= AlarmDB.Protect[6].InitialTime;
			HMIBinding.AlarmUI.History[7].InitialTime	:= AlarmDB.Protect[7].InitialTime;
			HMIBinding.AlarmUI.History[8].InitialTime	:= AlarmDB.Protect[8].InitialTime;
			HMIBinding.AlarmUI.History[9].InitialTime	:= AlarmDB.Protect[9].InitialTime;
			HMIBinding.AlarmUI.History[10].InitialTime	:= AlarmDB.Protect[10].InitialTime;
			HMIBinding.AlarmUI.History[11].InitialTime	:= AlarmDB.Protect[11].InitialTime;
			HMIBinding.AlarmUI.History[12].InitialTime	:= AlarmDB.Protect[12].InitialTime;
			HMIBinding.AlarmUI.History[13].InitialTime	:= AlarmDB.Protect[13].InitialTime;
			HMIBinding.AlarmUI.History[14].InitialTime	:= AlarmDB.Protect[14].InitialTime;
			HMIBinding.AlarmUI.History[15].InitialTime	:= AlarmDB.Protect[15].InitialTime;
			HMIBinding.AlarmUI.History[16].InitialTime	:= AlarmDB.Protect[16].InitialTime;
			HMIBinding.AlarmUI.History[17].InitialTime	:= AlarmDB.Protect[17].InitialTime;
			
			HMIBinding.AlarmUI.History[0].RecentTime	:= AlarmDB.Protect[0].RecentTime;
			HMIBinding.AlarmUI.History[1].RecentTime	:= AlarmDB.Protect[1].RecentTime;
			HMIBinding.AlarmUI.History[2].RecentTime	:= AlarmDB.Protect[2].RecentTime;
			HMIBinding.AlarmUI.History[3].RecentTime	:= AlarmDB.Protect[3].RecentTime;
			HMIBinding.AlarmUI.History[4].RecentTime	:= AlarmDB.Protect[4].RecentTime;
			HMIBinding.AlarmUI.History[5].RecentTime	:= AlarmDB.Protect[5].RecentTime;
			HMIBinding.AlarmUI.History[6].RecentTime	:= AlarmDB.Protect[6].RecentTime;
			HMIBinding.AlarmUI.History[7].RecentTime	:= AlarmDB.Protect[7].RecentTime;
			HMIBinding.AlarmUI.History[8].RecentTime	:= AlarmDB.Protect[8].RecentTime;
			HMIBinding.AlarmUI.History[9].RecentTime	:= AlarmDB.Protect[9].RecentTime;
			HMIBinding.AlarmUI.History[10].RecentTime	:= AlarmDB.Protect[10].RecentTime;
			HMIBinding.AlarmUI.History[11].RecentTime	:= AlarmDB.Protect[11].RecentTime;
			HMIBinding.AlarmUI.History[12].RecentTime	:= AlarmDB.Protect[12].RecentTime;
			HMIBinding.AlarmUI.History[13].RecentTime	:= AlarmDB.Protect[13].RecentTime;
			HMIBinding.AlarmUI.History[14].RecentTime	:= AlarmDB.Protect[14].RecentTime;
			HMIBinding.AlarmUI.History[15].RecentTime	:= AlarmDB.Protect[15].RecentTime;
			HMIBinding.AlarmUI.History[16].RecentTime	:= AlarmDB.Protect[16].RecentTime;
			HMIBinding.AlarmUI.History[17].RecentTime	:= AlarmDB.Protect[17].RecentTime;
			
			HMIBinding.AlarmUI.History[0].ClearTime	:= AlarmDB.Protect[0].ClearTime;
			HMIBinding.AlarmUI.History[1].ClearTime	:= AlarmDB.Protect[1].ClearTime;
			HMIBinding.AlarmUI.History[2].ClearTime	:= AlarmDB.Protect[2].ClearTime;
			HMIBinding.AlarmUI.History[3].ClearTime	:= AlarmDB.Protect[3].ClearTime;
			HMIBinding.AlarmUI.History[4].ClearTime	:= AlarmDB.Protect[4].ClearTime;
			HMIBinding.AlarmUI.History[5].ClearTime	:= AlarmDB.Protect[5].ClearTime;
			HMIBinding.AlarmUI.History[6].ClearTime	:= AlarmDB.Protect[6].ClearTime;
			HMIBinding.AlarmUI.History[7].ClearTime	:= AlarmDB.Protect[7].ClearTime;
			HMIBinding.AlarmUI.History[8].ClearTime	:= AlarmDB.Protect[8].ClearTime;
			HMIBinding.AlarmUI.History[9].ClearTime	:= AlarmDB.Protect[9].ClearTime;
			HMIBinding.AlarmUI.History[10].ClearTime	:= AlarmDB.Protect[10].ClearTime;
			HMIBinding.AlarmUI.History[11].ClearTime	:= AlarmDB.Protect[11].ClearTime;
			HMIBinding.AlarmUI.History[12].ClearTime	:= AlarmDB.Protect[12].ClearTime;
			HMIBinding.AlarmUI.History[13].ClearTime	:= AlarmDB.Protect[13].ClearTime;
			HMIBinding.AlarmUI.History[14].ClearTime	:= AlarmDB.Protect[14].ClearTime;
			HMIBinding.AlarmUI.History[15].ClearTime	:= AlarmDB.Protect[15].ClearTime;
			HMIBinding.AlarmUI.History[16].ClearTime	:= AlarmDB.Protect[16].ClearTime;
			HMIBinding.AlarmUI.History[17].ClearTime	:= AlarmDB.Protect[17].ClearTime;
			
			HMIBinding.AlarmUI.History[0].Count	:= AlarmDB.Protect[0].Count;
			HMIBinding.AlarmUI.History[1].Count	:= AlarmDB.Protect[1].Count;
			HMIBinding.AlarmUI.History[2].Count	:= AlarmDB.Protect[2].Count;
			HMIBinding.AlarmUI.History[3].Count	:= AlarmDB.Protect[3].Count;
			HMIBinding.AlarmUI.History[4].Count	:= AlarmDB.Protect[4].Count;
			HMIBinding.AlarmUI.History[5].Count	:= AlarmDB.Protect[5].Count;
			HMIBinding.AlarmUI.History[6].Count	:= AlarmDB.Protect[6].Count;
			HMIBinding.AlarmUI.History[7].Count	:= AlarmDB.Protect[7].Count;
			HMIBinding.AlarmUI.History[8].Count	:= AlarmDB.Protect[8].Count;
			HMIBinding.AlarmUI.History[9].Count	:= AlarmDB.Protect[9].Count;
			HMIBinding.AlarmUI.History[10].Count	:= AlarmDB.Protect[10].Count;
			HMIBinding.AlarmUI.History[11].Count	:= AlarmDB.Protect[11].Count;
			HMIBinding.AlarmUI.History[12].Count	:= AlarmDB.Protect[12].Count;
			HMIBinding.AlarmUI.History[13].Count	:= AlarmDB.Protect[13].Count;
			HMIBinding.AlarmUI.History[14].Count	:= AlarmDB.Protect[14].Count;
			HMIBinding.AlarmUI.History[15].Count	:= AlarmDB.Protect[15].Count;
			HMIBinding.AlarmUI.History[16].Count	:= AlarmDB.Protect[16].Count;
			HMIBinding.AlarmUI.History[17].Count	:= AlarmDB.Protect[17].Count;

	END_CASE;
	
	
	IF HMIBinding.AlarmUI.Delete_Input THEN
		AlarmDB.Protect[HMIBinding.AlarmUI.Delete_Index].Count 	:= 0;
		HMIBinding.AlarmUI.Delete_Input								:= FALSE;
	END_IF;
	
END_ACTION
ACTION AtSystemUI :
	
	CASE HMI.System[4] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.System[5] >= 4700 AND HMI.System[5] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.System[5]) * 0.1 ;
	ELSIF HMI.System[5] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.System[6]) >= -3000 AND UINT_TO_INT(HMI.System[6]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.System[6]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.System[6]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.System[7]) >= -50 AND UINT_TO_INT(HMI.System[7]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.System[7]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.System[7]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.System[8] >= 750 AND HMI.System[8] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.System[8]) * 0.1 ;
	ELSIF HMI.System[8] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.System[9] >= 2000 AND HMI.System[9] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.System[9]) * 0.001 ;
	ELSIF	HMI.System[9] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.System[10] >= 2000 AND HMI.System[10] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.System[10]) * 0.001 ;
	ELSIF	HMI.System[10] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.System[11] >= 2000 AND HMI.System[11] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.System[11]) * 0.001 ;
	ELSIF	HMI.System[11] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.System[12] >= 0 AND HMI.System[12] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.System[12]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.System[13]) >= -300 AND UINT_TO_INT(HMI.System[13]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.System[13]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.System[13]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.System[14]) >= -300 AND UINT_TO_INT(HMI.System[14]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.System[14]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.System[14]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.System[15]) >= -300 AND UINT_TO_INT(HMI.System[15]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.System[15]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.System[15]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.System[16] >= 0 AND HMI.System[16] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.System[16]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.System[17] AND 16#00ff) >= 1 AND (HMI.System[17] AND 16#00ff) <= 10 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.System[17] AND 16#00ff)) ;
	ELSIF (HMI.System[17] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '10';
	END_IF;
	IF (HMI.System[17]  /  16#0100) >= 1 AND (HMI.System[17]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.System[17]  /  16#0100) ;
	ELSIF (HMI.System[17]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],CONCAT('(R), ',CONCAT(HMIBinding.CommonUI.sString5[1],'(C)')));
	
	IF (HMI.System[18] AND 16#00ff) >= 1 AND (HMI.System[18] AND 16#00ff) <= 10 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.System[18] AND 16#00ff)) ;
	ELSIF (HMI.System[18] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '10';
	END_IF;
	IF (HMI.System[18]  /  16#0100) >= 1 AND (HMI.System[18]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 	:= UINT_TO_STRING(HMI.System[18]  /  16#0100) ;
	ELSIF (HMI.System[18]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[0],CONCAT('(R), ',CONCAT(HMIBinding.CommonUI.sString5[1],'(C)')));
	
	IF (HMI.System[19] AND 16#00ff) >= 1 AND (HMI.System[19] AND 16#00ff) <= 10 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.System[19] AND 16#00ff)) ;
	ELSIF (HMI.System[19] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '10';
	END_IF;
	IF (HMI.System[19]  /  16#0100) >= 1 AND (HMI.System[19]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.System[19]  /  16#0100) ;
	ELSIF (HMI.System[19]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],CONCAT('(R), ',CONCAT(HMIBinding.CommonUI.sString5[1],'(C)')));
	
	IF (HMI.System[20] AND 16#00ff) >= 1 AND (HMI.System[20] AND 16#00ff) <= 10 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.System[20] AND 16#00ff)) ;
	ELSIF (HMI.System[20] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '10';
	END_IF;
	IF (HMI.System[20]  /  16#0100) >= 1 AND (HMI.System[20]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.System[20]  /  16#0100) ;
	ELSIF (HMI.System[20]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[0],CONCAT('(R), ',CONCAT(HMIBinding.CommonUI.sString5[1],'(C)')));
	
	
	IF HMI.System[23] >= 4700 AND HMI.System[23] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[23]*0.1) ; 
	ELSIF HMI.System[23] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[24]) >= -3000 AND UINT_TO_INT(HMI.System[24]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[24]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[24]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[1]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	
	CASE (HMI.System[21] / 2#1 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[0] := 'NONE';
			HMIBinding.SystemUI.sString20[1] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[0] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[0] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[0] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[0] := 'PROTECT';
	END_CASE
	
	IF HMI.System[25] >= 4700 AND HMI.System[25] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[25]*0.1) ; 
	ELSIF HMI.System[25] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[26]) >= -3000 AND UINT_TO_INT(HMI.System[26]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[26]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[26]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[3]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[21] / 2#1000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[2] := 'NONE';
			HMIBinding.SystemUI.sString20[3] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[2] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[2] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[2] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[2] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[2] := 'PROTECT';
	END_CASE
	
	IF HMI.System[27] >= 4700 AND HMI.System[27] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[27]*0.1) ; 
	ELSIF HMI.System[27] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[28]) >= -3000 AND UINT_TO_INT(HMI.System[28]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[28]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[28]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[5]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[21] / 2#1000000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[4] := 'NONE';
			HMIBinding.SystemUI.sString20[5] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[4] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[4] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[4] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[4] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[4] := 'PROTECT';
	END_CASE
	
	IF HMI.System[29] >= 4700 AND HMI.System[29] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[29]*0.1) ; 
	ELSIF HMI.System[29] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[30]) >= -3000 AND UINT_TO_INT(HMI.System[30]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[30]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[30]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[7]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[21] / 2#1000000000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[6] := 'NONE';
			HMIBinding.SystemUI.sString20[7] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[6] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[6] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[6] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[6] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[6] := 'PROTECT';
	END_CASE
	
	IF HMI.System[31] >= 4700 AND HMI.System[31] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[31]*0.1) ; 
	ELSIF HMI.System[31] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[32]) >= -3000 AND UINT_TO_INT(HMI.System[32]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[32]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[32]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[9]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[21] / 2#1000000000000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[8] := 'NONE';
			HMIBinding.SystemUI.sString20[9] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[8] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[8] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[8] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[8] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[8] := 'PROTECT';
	END_CASE
	
	IF HMI.System[33] >= 4700 AND HMI.System[33] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[33]*0.1) ; 
	ELSIF HMI.System[33] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[34]) >= -3000 AND UINT_TO_INT(HMI.System[34]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[34]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[34]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[11]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[22] / 2#1 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[10] := 'NONE';
			HMIBinding.SystemUI.sString20[11] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[10] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[10] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[10] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[10] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[10] := 'PROTECT';
	END_CASE
	
	IF HMI.System[35] >= 4700 AND HMI.System[35] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[35]*0.1) ; 
	ELSIF HMI.System[35] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[36]) >= -3000 AND UINT_TO_INT(HMI.System[36]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[36]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[36]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[13]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[22] / 2#1000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[12] := 'NONE';
			HMIBinding.SystemUI.sString20[13] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[12] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[12] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[12] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[12] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[12] := 'PROTECT';
	END_CASE
	
	IF HMI.System[37] >= 4700 AND HMI.System[37] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[37]*0.1) ; 
	ELSIF HMI.System[37] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[38]) >= -3000 AND UINT_TO_INT(HMI.System[38]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[38]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[38]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[15]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[22] / 2#1000000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[14] := 'NONE';
			HMIBinding.SystemUI.sString20[15] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[14] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[14] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[14] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[14] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[14] := 'PROTECT';
	END_CASE
	
	IF HMI.System[39] >= 4700 AND HMI.System[39] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[39]*0.1) ; 
	ELSIF HMI.System[39] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[40]) >= -3000 AND UINT_TO_INT(HMI.System[40]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[40]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[40]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[17]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[22] / 2#1000000000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[16] := 'NONE';
			HMIBinding.SystemUI.sString20[17] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[16] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[16] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[16] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[16] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[16] := 'PROTECT';
	END_CASE
	
	IF HMI.System[41] >= 4700 AND HMI.System[41] <= 7140 THEN
		HMIBinding.SystemUI.sString5[0] 	:= REAL_TO_STRING(HMI.System[41]*0.1) ; 
	ELSIF HMI.System[41] < 4700 THEN
		HMIBinding.SystemUI.sString5[0]		:= '470';
	ELSE
		HMIBinding.SystemUI.sString5[0]		:= '714';
	END_IF;
	IF UINT_TO_INT(HMI.System[42]) >= -3000 AND UINT_TO_INT(HMI.System[42]) <= 3000 THEN
		HMIBinding.SystemUI.sString5[1] 	:= REAL_TO_STRING(INT_TO_REAL(UINT_TO_INT(HMI.System[42]))*0.1) ; 
	ELSIF UINT_TO_INT(HMI.System[42]) < -3000 THEN
		HMIBinding.SystemUI.sString5[1]		:= '-300';
	ELSE
		HMIBinding.SystemUI.sString5[1]		:= '300';
	END_IF;
	HMIBinding.SystemUI.sString20[19]		:= CONCAT(HMIBinding.SystemUI.sString5[0],CONCAT('(V), ',CONCAT(HMIBinding.SystemUI.sString5[1],'(A)')));
	
	CASE (HMI.System[22] / 2#1000000000000 )AND 2#111 OF
		0:  HMIBinding.SystemUI.sString20[18] := 'NONE';
			HMIBinding.SystemUI.sString20[19] := 'Not Used';
		1:  HMIBinding.SystemUI.sString20[18] := 'STANDBY';
		2:  HMIBinding.SystemUI.sString20[18] := 'RUN';
		3:  HMIBinding.SystemUI.sString20[18] := 'ALARM';
		4:  HMIBinding.SystemUI.sString20[18] := 'FAULT';
		5:  HMIBinding.SystemUI.sString20[18] := 'PROTECT';
	END_CASE
	
	(* Over Current *)
	IF HMI.System[45].0 THEN
		HMIBinding.SystemUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.System[44].0 THEN
		HMIBinding.SystemUI.sString20[20]			:= 'Solid_Orange';
	ELSIF HMI.System[43].0 THEN		
		HMIBinding.SystemUI.sString20[20]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[20]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.System[45].1 THEN
		HMIBinding.SystemUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.System[44].1 THEN
		HMIBinding.SystemUI.sString20[21]			:= 'Solid_Orange';
	ELSIF HMI.System[43].1 THEN
		HMIBinding.SystemUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[21] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.System[45].2 THEN
		HMIBinding.SystemUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.System[44].2 THEN
		HMIBinding.SystemUI.sString20[22]  			:= 'Solid_Orange';
	ELSIF HMI.System[43].2 THEN
		HMIBinding.SystemUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[22]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.System[45].3 THEN
		HMIBinding.SystemUI.sString20[23]			:= 'Solid_Red';
	ELSIF HMI.System[44].3 THEN		
		HMIBinding.SystemUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].3 THEN
		HMIBinding.SystemUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.System[45].4 THEN
		HMIBinding.SystemUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.System[44].4 THEN
		HMIBinding.SystemUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].4 THEN
		HMIBinding.SystemUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.System[45].5 THEN
		HMIBinding.SystemUI.sString20[25] 			:= 'Solid_Red';
	ELSIF HMI.System[44].5 THEN
		HMIBinding.SystemUI.sString20[25] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].5 THEN
		HMIBinding.SystemUI.sString20[25] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[25] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.System[45].6 THEN
		HMIBinding.SystemUI.sString20[26] 			:= 'Solid_Red';
	ELSIF HMI.System[44].6 THEN
		HMIBinding.SystemUI.sString20[26] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].6 THEN
		HMIBinding.SystemUI.sString20[26] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[26] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.System[45].7 THEN
		HMIBinding.SystemUI.sString20[27]			:= 'Solid_Red';
	ELSIF HMI.System[44].7 THEN
		HMIBinding.SystemUI.sString20[27] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].7 THEN
		HMIBinding.SystemUI.sString20[27]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.System[45].8 THEN
		HMIBinding.SystemUI.sString20[28] 			:= 'Solid_Red';
	ELSIF HMI.System[44].8 THEN
		HMIBinding.SystemUI.sString20[28] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].8 THEN
		HMIBinding.SystemUI.sString20[28] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[28] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.System[45].9 THEN
		HMIBinding.SystemUI.sString20[29] 			:= 'Solid_Red';
	ELSIF HMI.System[44].9 THEN
		HMIBinding.SystemUI.sString20[29] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].9 THEN
		HMIBinding.SystemUI.sString20[29] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[29] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.System[45].10 THEN
		HMIBinding.SystemUI.sString20[30] 			:= 'Solid_Red';
	ELSIF HMI.System[44].10 THEN
		HMIBinding.SystemUI.sString20[30] 			:= 'Solid_Orange';
	ELSIF HMI.System[43].10 THEN
		HMIBinding.SystemUI.sString20[30] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[30] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.System[45].11 THEN
		HMIBinding.SystemUI.sString20[31] 			:= 'Solid_Red';
	ELSIF HMI.System[44].11 THEN
		HMIBinding.SystemUI.sString20[31]			:= 'Solid_Orange';
	ELSIF HMI.System[43].11 THEN
		HMIBinding.SystemUI.sString20[31]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.System[45].12 THEN
		HMIBinding.SystemUI.sString20[32] 			:= 'Solid_Red';
	ELSIF HMI.System[44].12 THEN
		HMIBinding.SystemUI.sString20[32]			:= 'Solid_Orange';
	ELSIF HMI.System[43].12 THEN
		HMIBinding.SystemUI.sString20[32]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.SystemUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.System[45].15 THEN
		HMIBinding.SystemUI.sString20[35] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.System[45].0 THEN
		HMIBinding.SystemUI.sString20[36] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.System[46].1 THEN
		HMIBinding.SystemUI.sString20[37] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.System[46].2 THEN
		HMIBinding.SystemUI.sString20[38] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.System[46].3 THEN
		HMIBinding.SystemUI.sString20[39] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[39]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.System[46].4 THEN
		HMIBinding.SystemUI.sString20[40] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[40]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingSystem *)
	IF HMI.System[46].5 THEN
		HMIBinding.SystemUI.sString20[41] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[41]			:= 'Solid_Green';
	END_IF;
	
	IF HMI.System[47].0 THEN
		HMIBinding.SystemUI.sString20[42] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[42]			:= 'Solid_Green';
	END_IF;
	IF HMI.System[47].1 THEN
		HMIBinding.SystemUI.sString20[43] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[43]			:= 'Solid_Green';
	END_IF;
	IF HMI.System[47].2 THEN
		HMIBinding.SystemUI.sString20[44] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[44]			:= 'Solid_Green';
	END_IF;
	IF HMI.System[48].2 THEN
		HMIBinding.SystemUI.sString20[45] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[45]			:= 'Solid_Green';
	END_IF;
	IF HMI.System[48].4 THEN
		HMIBinding.SystemUI.sString20[46] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[46]			:= 'Solid_Green';
	END_IF;
	IF HMI.System[48].5 THEN
		HMIBinding.SystemUI.sString20[47] 			:= 'Solid_Red';
	ELSE
		HMIBinding.SystemUI.sString20[47]			:= 'Solid_Green';
	END_IF;
	
END_ACTION
ACTION AtRack1UI :
	
	CASE HMI.Rack1[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack1[1] >= 4700 AND HMI.Rack1[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack1[1]) * 0.1 ;
	ELSIF HMI.Rack1[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack1[2]) >= -3000 AND UINT_TO_INT(HMI.Rack1[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack1[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack1[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack1[3]) >= -50 AND UINT_TO_INT(HMI.Rack1[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack1[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack1[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack1[4] >= 750 AND HMI.Rack1[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack1[4]) * 0.1 ;
	ELSIF HMI.Rack1[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack1[5] >= 2000 AND HMI.Rack1[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack1[5]) * 0.001 ;
	ELSIF	HMI.Rack1[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack1[6] >= 2000 AND HMI.Rack1[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack1[6]) * 0.001 ;
	ELSIF	HMI.Rack1[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack1[7] >= 2000 AND HMI.Rack1[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack1[7]) * 0.001 ;
	ELSIF	HMI.Rack1[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack1[8] >= 0 AND HMI.Rack1[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack1[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack1[9]) >= -300 AND UINT_TO_INT(HMI.Rack1[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack1[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack1[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack1[10]) >= -300 AND UINT_TO_INT(HMI.Rack1[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack1[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack1[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack1[11]) >= -300 AND UINT_TO_INT(HMI.Rack1[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack1[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack1[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack1[12] >= 0 AND HMI.Rack1[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack1[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack1[13] AND 16#00ff) >= 1 AND (HMI.Rack1[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack1[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack1[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack1[13]  /  16#0100) >= 1 AND (HMI.Rack1[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack1[13]  /  16#0100) ;
	ELSIF (HMI.Rack1[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack1[14] AND 16#00ff) >= 1 AND (HMI.Rack1[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack1[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack1[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack1[14]  /  16#0100) >= 1 AND (HMI.Rack1[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack1[14]  /  16#0100) ;
	ELSIF (HMI.Rack1[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack1[22] >= 672 AND HMI.Rack1[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack1[22]*0.1) ; 
	ELSIF HMI.Rack1[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack1[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack1[23] >= 672 AND HMI.Rack1[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack1[23]*0.1) ; 
	ELSIF HMI.Rack1[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack1[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack1[24] >= 672 AND HMI.Rack1[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack1[24]*0.1) ; 
	ELSIF HMI.Rack1[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack1[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack1[25] >= 672 AND HMI.Rack1[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack1[25]*0.1) ; 
	ELSIF HMI.Rack1[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack1[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack1[26] >= 672 AND HMI.Rack1[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack1[26]*0.1) ; 
	ELSIF HMI.Rack1[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack1[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack1[27] >= 672 AND HMI.Rack1[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack1[27]*0.1) ; 
	ELSIF HMI.Rack1[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack1[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack1[28] >= 672 AND HMI.Rack1[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack1[28]*0.1) ; 
	ELSIF HMI.Rack1[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack1[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack1[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack1[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack1[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack1[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack1[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack1[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack1[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack1[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack1[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack1[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack1[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack1[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack1[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack1[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack1[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack1[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack1[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack1[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack1[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack1[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack1[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack1[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack1[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack1[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack1[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack1[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack1[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack1[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack1[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack1[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack1[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack2UI :
	
	CASE HMI.Rack2[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack2[1] >= 4700 AND HMI.Rack2[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack2[1]) * 0.1 ;
	ELSIF HMI.Rack2[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack2[2]) >= -3000 AND UINT_TO_INT(HMI.Rack2[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack2[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack2[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack2[3]) >= -50 AND UINT_TO_INT(HMI.Rack2[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack2[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack2[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack2[4] >= 750 AND HMI.Rack2[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack2[4]) * 0.1 ;
	ELSIF HMI.Rack2[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack2[5] >= 2000 AND HMI.Rack2[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack2[5]) * 0.001 ;
	ELSIF	HMI.Rack2[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack2[6] >= 2000 AND HMI.Rack2[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack2[6]) * 0.001 ;
	ELSIF	HMI.Rack2[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack2[7] >= 2000 AND HMI.Rack2[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack2[7]) * 0.001 ;
	ELSIF	HMI.Rack2[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack2[8] >= 0 AND HMI.Rack2[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack2[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack2[9]) >= -300 AND UINT_TO_INT(HMI.Rack2[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack2[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack2[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack2[10]) >= -300 AND UINT_TO_INT(HMI.Rack2[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack2[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack2[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack2[11]) >= -300 AND UINT_TO_INT(HMI.Rack2[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack2[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack2[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack2[12] >= 0 AND HMI.Rack2[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack2[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack2[13] AND 16#00ff) >= 1 AND (HMI.Rack2[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack2[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack2[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack2[13]  /  16#0100) >= 1 AND (HMI.Rack2[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack2[13]  /  16#0100) ;
	ELSIF (HMI.Rack2[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack2[14] AND 16#00ff) >= 1 AND (HMI.Rack2[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack2[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack2[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack2[14]  /  16#0100) >= 1 AND (HMI.Rack2[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack2[14]  /  16#0100) ;
	ELSIF (HMI.Rack2[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack2[22] >= 672 AND HMI.Rack2[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack2[22]*0.1) ; 
	ELSIF HMI.Rack2[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack2[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack2[23] >= 672 AND HMI.Rack2[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack2[23]*0.1) ; 
	ELSIF HMI.Rack2[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack2[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack2[24] >= 672 AND HMI.Rack2[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack2[24]*0.1) ; 
	ELSIF HMI.Rack2[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack2[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack2[25] >= 672 AND HMI.Rack2[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack2[25]*0.1) ; 
	ELSIF HMI.Rack2[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack2[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack2[26] >= 672 AND HMI.Rack2[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack2[26]*0.1) ; 
	ELSIF HMI.Rack2[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack2[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack2[27] >= 672 AND HMI.Rack2[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack2[27]*0.1) ; 
	ELSIF HMI.Rack2[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack2[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack2[28] >= 672 AND HMI.Rack2[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack2[28]*0.1) ; 
	ELSIF HMI.Rack2[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack2[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack2[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack2[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack2[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack2[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack2[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack2[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack2[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack2[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack2[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack2[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack2[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack2[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack2[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack2[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack2[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack2[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack2[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack2[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack2[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack2[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack2[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack2[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack2[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack2[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack2[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack2[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack2[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack2[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack2[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack2[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack2[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack3UI :
	
	CASE HMI.Rack3[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack3[1] >= 4700 AND HMI.Rack3[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack3[1]) * 0.1 ;
	ELSIF HMI.Rack3[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack3[2]) >= -3000 AND UINT_TO_INT(HMI.Rack3[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack3[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack3[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack3[3]) >= -50 AND UINT_TO_INT(HMI.Rack3[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack3[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack3[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack3[4] >= 750 AND HMI.Rack3[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack3[4]) * 0.1 ;
	ELSIF HMI.Rack3[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack3[5] >= 2000 AND HMI.Rack3[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack3[5]) * 0.001 ;
	ELSIF	HMI.Rack3[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack3[6] >= 2000 AND HMI.Rack3[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack3[6]) * 0.001 ;
	ELSIF	HMI.Rack3[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack3[7] >= 2000 AND HMI.Rack3[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack3[7]) * 0.001 ;
	ELSIF	HMI.Rack3[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack3[8] >= 0 AND HMI.Rack3[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack3[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack3[9]) >= -300 AND UINT_TO_INT(HMI.Rack3[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack3[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack3[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack3[10]) >= -300 AND UINT_TO_INT(HMI.Rack3[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack3[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack3[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack3[11]) >= -300 AND UINT_TO_INT(HMI.Rack3[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack3[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack3[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack3[12] >= 0 AND HMI.Rack3[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack3[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack3[13] AND 16#00ff) >= 1 AND (HMI.Rack3[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack3[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack3[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack3[13]  /  16#0100) >= 1 AND (HMI.Rack3[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack3[13]  /  16#0100) ;
	ELSIF (HMI.Rack3[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack3[14] AND 16#00ff) >= 1 AND (HMI.Rack3[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack3[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack3[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack3[14]  /  16#0100) >= 1 AND (HMI.Rack3[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack3[14]  /  16#0100) ;
	ELSIF (HMI.Rack3[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack3[22] >= 672 AND HMI.Rack3[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack3[22]*0.1) ; 
	ELSIF HMI.Rack3[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack3[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack3[23] >= 672 AND HMI.Rack3[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack3[23]*0.1) ; 
	ELSIF HMI.Rack3[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack3[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack3[24] >= 672 AND HMI.Rack3[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack3[24]*0.1) ; 
	ELSIF HMI.Rack3[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack3[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack3[25] >= 672 AND HMI.Rack3[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack3[25]*0.1) ; 
	ELSIF HMI.Rack3[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack3[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack3[26] >= 672 AND HMI.Rack3[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack3[26]*0.1) ; 
	ELSIF HMI.Rack3[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack3[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack3[27] >= 672 AND HMI.Rack3[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack3[27]*0.1) ; 
	ELSIF HMI.Rack3[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack3[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack3[28] >= 672 AND HMI.Rack3[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack3[28]*0.1) ; 
	ELSIF HMI.Rack3[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack3[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack3[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack3[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack3[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack3[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack3[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack3[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack3[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack3[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack3[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack3[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack3[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack3[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack3[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack3[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack3[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack3[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack3[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack3[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack3[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack3[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack3[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack3[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack3[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack3[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack3[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack3[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack3[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack3[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack3[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack3[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack3[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack4UI :
	
	CASE HMI.Rack4[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack4[1] >= 4700 AND HMI.Rack4[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack4[1]) * 0.1 ;
	ELSIF HMI.Rack4[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack4[2]) >= -3000 AND UINT_TO_INT(HMI.Rack4[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack4[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack4[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack4[3]) >= -50 AND UINT_TO_INT(HMI.Rack4[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack4[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack4[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack4[4] >= 750 AND HMI.Rack4[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack4[4]) * 0.1 ;
	ELSIF HMI.Rack4[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack4[5] >= 2000 AND HMI.Rack4[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack4[5]) * 0.001 ;
	ELSIF	HMI.Rack4[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack4[6] >= 2000 AND HMI.Rack4[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack4[6]) * 0.001 ;
	ELSIF	HMI.Rack4[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack4[7] >= 2000 AND HMI.Rack4[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack4[7]) * 0.001 ;
	ELSIF	HMI.Rack4[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack4[8] >= 0 AND HMI.Rack4[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack4[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack4[9]) >= -300 AND UINT_TO_INT(HMI.Rack4[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack4[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack4[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack4[10]) >= -300 AND UINT_TO_INT(HMI.Rack4[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack4[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack4[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack4[11]) >= -300 AND UINT_TO_INT(HMI.Rack4[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack4[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack4[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack4[12] >= 0 AND HMI.Rack4[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack4[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack4[13] AND 16#00ff) >= 1 AND (HMI.Rack4[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack4[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack4[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack4[13]  /  16#0100) >= 1 AND (HMI.Rack4[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack4[13]  /  16#0100) ;
	ELSIF (HMI.Rack4[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack4[14] AND 16#00ff) >= 1 AND (HMI.Rack4[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack4[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack4[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack4[14]  /  16#0100) >= 1 AND (HMI.Rack4[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack4[14]  /  16#0100) ;
	ELSIF (HMI.Rack4[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack4[22] >= 672 AND HMI.Rack4[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack4[22]*0.1) ; 
	ELSIF HMI.Rack4[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack4[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack4[23] >= 672 AND HMI.Rack4[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack4[23]*0.1) ; 
	ELSIF HMI.Rack4[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack4[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack4[24] >= 672 AND HMI.Rack4[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack4[24]*0.1) ; 
	ELSIF HMI.Rack4[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack4[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack4[25] >= 672 AND HMI.Rack4[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack4[25]*0.1) ; 
	ELSIF HMI.Rack4[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack4[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack4[26] >= 672 AND HMI.Rack4[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack4[26]*0.1) ; 
	ELSIF HMI.Rack4[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack4[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack4[27] >= 672 AND HMI.Rack4[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack4[27]*0.1) ; 
	ELSIF HMI.Rack4[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack4[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack4[28] >= 672 AND HMI.Rack4[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack4[28]*0.1) ; 
	ELSIF HMI.Rack4[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack4[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack4[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack4[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack4[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack4[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack4[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack4[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack4[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack4[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack4[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack4[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack4[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack4[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack4[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack4[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack4[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack4[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack4[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack4[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack4[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack4[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack4[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack4[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack4[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack4[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack4[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack4[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack4[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack4[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack4[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack4[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack4[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack5UI :
	
	CASE HMI.Rack5[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack5[1] >= 4700 AND HMI.Rack5[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack5[1]) * 0.1 ;
	ELSIF HMI.Rack5[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack5[2]) >= -3000 AND UINT_TO_INT(HMI.Rack5[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack5[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack5[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack5[3]) >= -50 AND UINT_TO_INT(HMI.Rack5[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack5[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack5[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack5[4] >= 750 AND HMI.Rack5[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack5[4]) * 0.1 ;
	ELSIF HMI.Rack5[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack5[5] >= 2000 AND HMI.Rack5[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack5[5]) * 0.001 ;
	ELSIF	HMI.Rack5[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack5[6] >= 2000 AND HMI.Rack5[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack5[6]) * 0.001 ;
	ELSIF	HMI.Rack5[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack5[7] >= 2000 AND HMI.Rack5[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack5[7]) * 0.001 ;
	ELSIF	HMI.Rack5[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack5[8] >= 0 AND HMI.Rack5[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack5[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack5[9]) >= -300 AND UINT_TO_INT(HMI.Rack5[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack5[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack5[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack5[10]) >= -300 AND UINT_TO_INT(HMI.Rack5[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack5[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack5[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack5[11]) >= -300 AND UINT_TO_INT(HMI.Rack5[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack5[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack5[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack5[12] >= 0 AND HMI.Rack5[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack5[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack5[13] AND 16#00ff) >= 1 AND (HMI.Rack5[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack5[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack5[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack5[13]  /  16#0100) >= 1 AND (HMI.Rack5[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack5[13]  /  16#0100) ;
	ELSIF (HMI.Rack5[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack5[14] AND 16#00ff) >= 1 AND (HMI.Rack5[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack5[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack5[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack5[14]  /  16#0100) >= 1 AND (HMI.Rack5[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack5[14]  /  16#0100) ;
	ELSIF (HMI.Rack5[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack5[22] >= 672 AND HMI.Rack5[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack5[22]*0.1) ; 
	ELSIF HMI.Rack5[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack5[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack5[23] >= 672 AND HMI.Rack5[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack5[23]*0.1) ; 
	ELSIF HMI.Rack5[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack5[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack5[24] >= 672 AND HMI.Rack5[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack5[24]*0.1) ; 
	ELSIF HMI.Rack5[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack5[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack5[25] >= 672 AND HMI.Rack5[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack5[25]*0.1) ; 
	ELSIF HMI.Rack5[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack5[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack5[26] >= 672 AND HMI.Rack5[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack5[26]*0.1) ; 
	ELSIF HMI.Rack5[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack5[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack5[27] >= 672 AND HMI.Rack5[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack5[27]*0.1) ; 
	ELSIF HMI.Rack5[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack5[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack5[28] >= 672 AND HMI.Rack5[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack5[28]*0.1) ; 
	ELSIF HMI.Rack5[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack5[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack5[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack5[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack5[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack5[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack5[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack5[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack5[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack5[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack5[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack5[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack5[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack5[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack5[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack5[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack5[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack5[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack5[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack5[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack5[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack5[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack5[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack5[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack5[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack5[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack5[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack5[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack5[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack5[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack5[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack5[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack5[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack6UI :
	
	CASE HMI.Rack6[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack6[1] >= 4700 AND HMI.Rack6[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack6[1]) * 0.1 ;
	ELSIF HMI.Rack6[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack6[2]) >= -3000 AND UINT_TO_INT(HMI.Rack6[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack6[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack6[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack6[3]) >= -50 AND UINT_TO_INT(HMI.Rack6[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack6[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack6[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack6[4] >= 750 AND HMI.Rack6[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack6[4]) * 0.1 ;
	ELSIF HMI.Rack6[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack6[5] >= 2000 AND HMI.Rack6[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack6[5]) * 0.001 ;
	ELSIF	HMI.Rack6[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack6[6] >= 2000 AND HMI.Rack6[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack6[6]) * 0.001 ;
	ELSIF	HMI.Rack6[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack6[7] >= 2000 AND HMI.Rack6[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack6[7]) * 0.001 ;
	ELSIF	HMI.Rack6[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack6[8] >= 0 AND HMI.Rack6[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack6[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack6[9]) >= -300 AND UINT_TO_INT(HMI.Rack6[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack6[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack6[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack6[10]) >= -300 AND UINT_TO_INT(HMI.Rack6[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack6[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack6[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack6[11]) >= -300 AND UINT_TO_INT(HMI.Rack6[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack6[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack6[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack6[12] >= 0 AND HMI.Rack6[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack6[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack6[13] AND 16#00ff) >= 1 AND (HMI.Rack6[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack6[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack6[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack6[13]  /  16#0100) >= 1 AND (HMI.Rack6[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack6[13]  /  16#0100) ;
	ELSIF (HMI.Rack6[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack6[14] AND 16#00ff) >= 1 AND (HMI.Rack6[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack6[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack6[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack6[14]  /  16#0100) >= 1 AND (HMI.Rack6[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack6[14]  /  16#0100) ;
	ELSIF (HMI.Rack6[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack6[22] >= 672 AND HMI.Rack6[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack6[22]*0.1) ; 
	ELSIF HMI.Rack6[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack6[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack6[23] >= 672 AND HMI.Rack6[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack6[23]*0.1) ; 
	ELSIF HMI.Rack6[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack6[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack6[24] >= 672 AND HMI.Rack6[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack6[24]*0.1) ; 
	ELSIF HMI.Rack6[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack6[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack6[25] >= 672 AND HMI.Rack6[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack6[25]*0.1) ; 
	ELSIF HMI.Rack6[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack6[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack6[26] >= 672 AND HMI.Rack6[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack6[26]*0.1) ; 
	ELSIF HMI.Rack6[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack6[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack6[27] >= 672 AND HMI.Rack6[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack6[27]*0.1) ; 
	ELSIF HMI.Rack6[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack6[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack6[28] >= 672 AND HMI.Rack6[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack6[28]*0.1) ; 
	ELSIF HMI.Rack6[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack6[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack6[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack6[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack6[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack6[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack6[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack6[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack6[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack6[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack6[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack6[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack6[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack6[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack6[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack6[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack6[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack6[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack6[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack6[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack6[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack6[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack6[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack6[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack6[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack6[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack6[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack6[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack6[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack6[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack6[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack6[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack6[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack7UI :
	
	CASE HMI.Rack7[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack7[1] >= 4700 AND HMI.Rack7[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack7[1]) * 0.1 ;
	ELSIF HMI.Rack7[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack7[2]) >= -3000 AND UINT_TO_INT(HMI.Rack7[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack7[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack7[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack7[3]) >= -50 AND UINT_TO_INT(HMI.Rack7[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack7[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack7[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack7[4] >= 750 AND HMI.Rack7[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack7[4]) * 0.1 ;
	ELSIF HMI.Rack7[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack7[5] >= 2000 AND HMI.Rack7[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack7[5]) * 0.001 ;
	ELSIF	HMI.Rack7[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack7[6] >= 2000 AND HMI.Rack7[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack7[6]) * 0.001 ;
	ELSIF	HMI.Rack7[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack7[7] >= 2000 AND HMI.Rack7[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack7[7]) * 0.001 ;
	ELSIF	HMI.Rack7[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack7[8] >= 0 AND HMI.Rack7[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack7[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack7[9]) >= -300 AND UINT_TO_INT(HMI.Rack7[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack7[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack7[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack7[10]) >= -300 AND UINT_TO_INT(HMI.Rack7[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack7[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack7[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack7[11]) >= -300 AND UINT_TO_INT(HMI.Rack7[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack7[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack7[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack7[12] >= 0 AND HMI.Rack7[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack7[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack7[13] AND 16#00ff) >= 1 AND (HMI.Rack7[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack7[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack7[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack7[13]  /  16#0100) >= 1 AND (HMI.Rack7[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack7[13]  /  16#0100) ;
	ELSIF (HMI.Rack7[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack7[14] AND 16#00ff) >= 1 AND (HMI.Rack7[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack7[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack7[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack7[14]  /  16#0100) >= 1 AND (HMI.Rack7[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack7[14]  /  16#0100) ;
	ELSIF (HMI.Rack7[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack7[22] >= 672 AND HMI.Rack7[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack7[22]*0.1) ; 
	ELSIF HMI.Rack7[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack7[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack7[23] >= 672 AND HMI.Rack7[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack7[23]*0.1) ; 
	ELSIF HMI.Rack7[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack7[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack7[24] >= 672 AND HMI.Rack7[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack7[24]*0.1) ; 
	ELSIF HMI.Rack7[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack7[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack7[25] >= 672 AND HMI.Rack7[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack7[25]*0.1) ; 
	ELSIF HMI.Rack7[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack7[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack7[26] >= 672 AND HMI.Rack7[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack7[26]*0.1) ; 
	ELSIF HMI.Rack7[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack7[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack7[27] >= 672 AND HMI.Rack7[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack7[27]*0.1) ; 
	ELSIF HMI.Rack7[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack7[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack7[28] >= 672 AND HMI.Rack7[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack7[28]*0.1) ; 
	ELSIF HMI.Rack7[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack7[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack7[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack7[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack7[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack7[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack7[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack7[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack7[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack7[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack7[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack7[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack7[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack7[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack7[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack7[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack7[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack7[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack7[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack7[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack7[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack7[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack7[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack7[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack7[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack7[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack7[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack7[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack7[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack7[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack7[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack7[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack7[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack8UI :
	
	CASE HMI.Rack8[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack8[1] >= 4700 AND HMI.Rack8[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack8[1]) * 0.1 ;
	ELSIF HMI.Rack8[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack8[2]) >= -3000 AND UINT_TO_INT(HMI.Rack8[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack8[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack8[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack8[3]) >= -50 AND UINT_TO_INT(HMI.Rack8[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack8[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack8[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack8[4] >= 750 AND HMI.Rack8[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack8[4]) * 0.1 ;
	ELSIF HMI.Rack8[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack8[5] >= 2000 AND HMI.Rack8[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack8[5]) * 0.001 ;
	ELSIF	HMI.Rack8[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack8[6] >= 2000 AND HMI.Rack8[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack8[6]) * 0.001 ;
	ELSIF	HMI.Rack8[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack8[7] >= 2000 AND HMI.Rack8[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack8[7]) * 0.001 ;
	ELSIF	HMI.Rack8[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack8[8] >= 0 AND HMI.Rack8[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack8[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack8[9]) >= -300 AND UINT_TO_INT(HMI.Rack8[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack8[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack8[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack8[10]) >= -300 AND UINT_TO_INT(HMI.Rack8[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack8[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack8[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack8[11]) >= -300 AND UINT_TO_INT(HMI.Rack8[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack8[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack8[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack8[12] >= 0 AND HMI.Rack8[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack8[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack8[13] AND 16#00ff) >= 1 AND (HMI.Rack8[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack8[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack8[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack8[13]  /  16#0100) >= 1 AND (HMI.Rack8[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack8[13]  /  16#0100) ;
	ELSIF (HMI.Rack8[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack8[14] AND 16#00ff) >= 1 AND (HMI.Rack8[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack8[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack8[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack8[14]  /  16#0100) >= 1 AND (HMI.Rack8[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack8[14]  /  16#0100) ;
	ELSIF (HMI.Rack8[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack8[22] >= 672 AND HMI.Rack8[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack8[22]*0.1) ; 
	ELSIF HMI.Rack8[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack8[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack8[23] >= 672 AND HMI.Rack8[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack8[23]*0.1) ; 
	ELSIF HMI.Rack8[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack8[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack8[24] >= 672 AND HMI.Rack8[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack8[24]*0.1) ; 
	ELSIF HMI.Rack8[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack8[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack8[25] >= 672 AND HMI.Rack8[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack8[25]*0.1) ; 
	ELSIF HMI.Rack8[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack8[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack8[26] >= 672 AND HMI.Rack8[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack8[26]*0.1) ; 
	ELSIF HMI.Rack8[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack8[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack8[27] >= 672 AND HMI.Rack8[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack8[27]*0.1) ; 
	ELSIF HMI.Rack8[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack8[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack8[28] >= 672 AND HMI.Rack8[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack8[28]*0.1) ; 
	ELSIF HMI.Rack8[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack8[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack8[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack8[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack8[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack8[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack8[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack8[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack8[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack8[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack8[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack8[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack8[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack8[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack8[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack8[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack8[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack8[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack8[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack8[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack8[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack8[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack8[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack8[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack8[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack8[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack8[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack8[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack8[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack8[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack8[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack8[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack8[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack9UI :
	
	CASE HMI.Rack9[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack9[1] >= 4700 AND HMI.Rack9[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack9[1]) * 0.1 ;
	ELSIF HMI.Rack9[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack9[2]) >= -3000 AND UINT_TO_INT(HMI.Rack9[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack9[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack9[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack9[3]) >= -50 AND UINT_TO_INT(HMI.Rack9[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack9[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack9[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack9[4] >= 750 AND HMI.Rack9[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack9[4]) * 0.1 ;
	ELSIF HMI.Rack9[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack9[5] >= 2000 AND HMI.Rack9[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack9[5]) * 0.001 ;
	ELSIF	HMI.Rack9[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack9[6] >= 2000 AND HMI.Rack9[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack9[6]) * 0.001 ;
	ELSIF	HMI.Rack9[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack9[7] >= 2000 AND HMI.Rack9[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack9[7]) * 0.001 ;
	ELSIF	HMI.Rack9[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack9[8] >= 0 AND HMI.Rack9[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack9[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack9[9]) >= -300 AND UINT_TO_INT(HMI.Rack9[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack9[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack9[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack9[10]) >= -300 AND UINT_TO_INT(HMI.Rack9[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack9[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack9[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack9[11]) >= -300 AND UINT_TO_INT(HMI.Rack9[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack9[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack9[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack9[12] >= 0 AND HMI.Rack9[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack9[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack9[13] AND 16#00ff) >= 1 AND (HMI.Rack9[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack9[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack9[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack9[13]  /  16#0100) >= 1 AND (HMI.Rack9[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack9[13]  /  16#0100) ;
	ELSIF (HMI.Rack9[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack9[14] AND 16#00ff) >= 1 AND (HMI.Rack9[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack9[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack9[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack9[14]  /  16#0100) >= 1 AND (HMI.Rack9[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack9[14]  /  16#0100) ;
	ELSIF (HMI.Rack9[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack9[22] >= 672 AND HMI.Rack9[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack9[22]*0.1) ; 
	ELSIF HMI.Rack9[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack9[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack9[23] >= 672 AND HMI.Rack9[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack9[23]*0.1) ; 
	ELSIF HMI.Rack9[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack9[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack9[24] >= 672 AND HMI.Rack9[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack9[24]*0.1) ; 
	ELSIF HMI.Rack9[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack9[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack9[25] >= 672 AND HMI.Rack9[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack9[25]*0.1) ; 
	ELSIF HMI.Rack9[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack9[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack9[26] >= 672 AND HMI.Rack9[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack9[26]*0.1) ; 
	ELSIF HMI.Rack9[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack9[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack9[27] >= 672 AND HMI.Rack9[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack9[27]*0.1) ; 
	ELSIF HMI.Rack9[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack9[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack9[28] >= 672 AND HMI.Rack9[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack9[28]*0.1) ; 
	ELSIF HMI.Rack9[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack9[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack9[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack9[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack9[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack9[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack9[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack9[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack9[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack9[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack9[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack9[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack9[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack9[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack9[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack9[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack9[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack9[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack9[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack9[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack9[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack9[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack9[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack9[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack9[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack9[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack9[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack9[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack9[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack9[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack9[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack9[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack9[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
ACTION AtRack10UI :
	
	CASE HMI.Rack10[0] OF
		0:  HMIBinding.CommonUI.sString20[0] := 'NONE';
		1:  HMIBinding.CommonUI.sString20[0] := 'STANDBY';
		2:  HMIBinding.CommonUI.sString20[0] := 'RUN';
		3:  HMIBinding.CommonUI.sString20[0] := 'ALARM';
		4:  HMIBinding.CommonUI.sString20[0] := 'FAULT';
		5:  HMIBinding.CommonUI.sString20[0] := 'PROTECT';
	END_CASE;
			
	IF HMI.Rack10[1] >= 4700 AND HMI.Rack10[1] <= 7140 THEN
		HMIBinding.CommonUI.rReal[0]		:= UINT_TO_REAL(HMI.Rack10[1]) * 0.1 ;
	ELSIF HMI.Rack10[1] < 4700 THEN
		HMIBinding.CommonUI.rReal[0]		:= 470.0;
	ELSE
		HMIBinding.CommonUI.rReal[0]		:= 714.0;
	END_IF;
	HMIBinding.CommonUI.sString20[1]		:= REAL_TO_STRING((HMIBinding.CommonUI.rReal[0]-400)*0.675);
	HMIBinding.CommonUI.sString50[0]		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMIBinding.CommonUI.sString20[1],',0,0]}]'));
	
	
	IF UINT_TO_INT(HMI.Rack10[2]) >= -3000 AND UINT_TO_INT(HMI.Rack10[2]) <= 3000 THEN
		HMIBinding.CommonUI.rReal[1] 			:= (UINT_TO_REAL(HMI.Rack10[2]) * 0.1) ;
	ELSIF UINT_TO_INT(HMI.Rack10[2]) < -3000 THEN
		HMIBinding.CommonUI.rReal[1]			:= -300;
	ELSE
		HMIBinding.CommonUI.rReal[1]			:= 300;
	END_IF;
	HMIBinding.CommonUI.sString20[2]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[1]*0.27+135);
	HMIBinding.CommonUI.sString50[1]		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMIBinding.CommonUI.sString20[2],',0,0]}]'));
	
	IF UINT_TO_INT(HMI.Rack10[3]) >= -50 AND UINT_TO_INT(HMI.Rack10[3]) <= 1050 THEN
		HMIBinding.CommonUI.rReal[2]		:= UINT_TO_REAL(HMI.Rack10[3]) * 0.1 ;
	ELSIF UINT_TO_INT(HMI.Rack10[3]) < -50 THEN
		HMIBinding.CommonUI.rReal[2]		:= -5;
	ELSE
		HMIBinding.CommonUI.rReal[2]		:= 105;
	END_IF;
	HMIBinding.CommonUI.sString20[3]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[2]*2.7);
	HMIBinding.CommonUI.sString50[2]		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMIBinding.CommonUI.sString20[3],',0,0]}]'));
	
	IF HMI.Rack10[4] >= 750 AND HMI.Rack10[4] <= 1000 THEN
		HMIBinding.CommonUI.rReal[3]		:= UINT_TO_REAL(HMI.Rack10[4]) * 0.1 ;
	ELSIF HMI.Rack10[4] < 750 THEN
		HMIBinding.CommonUI.rReal[3]		:= 75;
	ELSE
		HMIBinding.CommonUI.rReal[3]		:= 100;
	END_IF;
	HMIBinding.CommonUI.sString20[4]		:= REAL_TO_STRING(HMIBinding.CommonUI.rReal[3]*2.7);
	HMIBinding.CommonUI.sString50[3]		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMIBinding.CommonUI.sString20[4],',0,0]}]'));
	
	IF HMI.Rack10[5] >= 2000 AND HMI.Rack10[5] <= 4500 THEN
		HMIBinding.CommonUI.rReal[4] 		:= UINT_TO_REAL(HMI.Rack10[5]) * 0.001 ;
	ELSIF	HMI.Rack10[5] < 2000 THEN
		HMIBinding.CommonUI.rReal[4]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[4]		:= 4.5;
	END_IF;
	IF HMI.Rack10[6] >= 2000 AND HMI.Rack10[6] <= 4500 THEN
		HMIBinding.CommonUI.rReal[5]		:= UINT_TO_REAL(HMI.Rack10[6]) * 0.001 ;
	ELSIF	HMI.Rack10[6] < 2000 THEN
		HMIBinding.CommonUI.rReal[5]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[5]		:= 4.5;
	END_IF;
	IF HMI.Rack10[7] >= 2000 AND HMI.Rack10[7] <= 4500 THEN
		HMIBinding.CommonUI.rReal[6]		:= UINT_TO_REAL(HMI.Rack10[7]) * 0.001 ;
	ELSIF	HMI.Rack10[7] < 2000 THEN
		HMIBinding.CommonUI.rReal[6]		:= 2;
	ELSE
		HMIBinding.CommonUI.rReal[6]		:= 4.5;
	END_IF;
	IF HMI.Rack10[8] >= 0 AND HMI.Rack10[8] <= 500 THEN
		HMIBinding.CommonUI.rReal[7] 		:= UINT_TO_REAL(HMI.Rack10[8]) * 0.001 ;
	ELSE
		HMIBinding.CommonUI.rReal[7] 		:= 0.5;
	END_IF;
	IF UINT_TO_INT(HMI.Rack10[9]) >= -300 AND UINT_TO_INT(HMI.Rack10[9]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[8] 		:= UINT_TO_REAL(HMI.Rack10[9]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack10[9]) < -300 THEN
		HMIBinding.CommonUI.rReal[8] 		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[8] 		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack10[10]) >= -300 AND UINT_TO_INT(HMI.Rack10[10]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[9]		:= UINT_TO_REAL(HMI.Rack10[10]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack10[10]) < -300 THEN
		HMIBinding.CommonUI.rReal[9]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[9]		:= 100;
	END_IF;
	IF UINT_TO_INT(HMI.Rack10[11]) >= -300 AND UINT_TO_INT(HMI.Rack10[11]) <= 1000 THEN
		HMIBinding.CommonUI.rReal[10]		:= UINT_TO_REAL(HMI.Rack10[11]) * 0.1 ;
	ELSIF	UINT_TO_INT(HMI.Rack10[11]) < -300 THEN
		HMIBinding.CommonUI.rReal[10]		:= -30;
	ELSE
		HMIBinding.CommonUI.rReal[10]		:= 100;
	END_IF;
	IF HMI.Rack10[12] >= 0 AND HMI.Rack10[12] <= 100 THEN
		HMIBinding.CommonUI.rReal[11] 		:= UINT_TO_REAL(HMI.Rack10[12]) * 0.1 ;
	ELSE
		HMIBinding.CommonUI.rReal[11]		:= 10;
	END_IF;
	
	IF (HMI.Rack10[13] AND 16#00ff) >= 1 AND (HMI.Rack10[13] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack10[13] AND 16#00ff)) ;
	ELSIF (HMI.Rack10[13] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack10[13]  /  16#0100) >= 1 AND (HMI.Rack10[13]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack10[13]  /  16#0100) ;
	ELSIF (HMI.Rack10[13]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[5]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[6]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	IF (HMI.Rack10[14] AND 16#00ff) >= 1 AND (HMI.Rack10[14] AND 16#00ff) <= 164 THEN
		HMIBinding.CommonUI.sString5[0]		:= UINT_TO_STRING((HMI.Rack10[14] AND 16#00ff)) ;
	ELSIF (HMI.Rack10[14] AND 16#00ff) < 1 THEN
		HMIBinding.CommonUI.sString5[0]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[0]		:= '164';
	END_IF;
	IF (HMI.Rack10[14]  /  16#0100) >= 1 AND (HMI.Rack10[14]  /  16#0100) <= 164 THEN
		HMIBinding.CommonUI.sString5[1] 		:= UINT_TO_STRING(HMI.Rack10[14]  /  16#0100) ;
	ELSIF (HMI.Rack10[14]  /  16#0100) < 1 THEN
		HMIBinding.CommonUI.sString5[1]		:= '1';
	ELSE
		HMIBinding.CommonUI.sString5[1]		:= '164';
	END_IF;
	HMIBinding.CommonUI.sString20[7]		:= CONCAT(HMIBinding.CommonUI.sString5[0],'(C)');
	HMIBinding.CommonUI.sString20[8]		:= CONCAT(HMIBinding.CommonUI.sString5[1],'(C)');
	
	
	IF HMI.Rack10[22] >= 672 AND HMI.Rack10[22] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack10[22]*0.1) ; 
	ELSIF HMI.Rack10[22] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[1]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack10[21].0) THEN
		HMIBinding.RackUI.sString20[0] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[0] := 'Solid_Red';
	END_IF;
	IF HMI.Rack10[23] >= 672 AND HMI.Rack10[23] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack10[23]*0.1) ; 
	ELSIF HMI.Rack10[23] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[3]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack10[21].1) THEN
		HMIBinding.RackUI.sString20[2] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[2] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack10[24] >= 672 AND HMI.Rack10[24] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack10[24]*0.1) ; 
	ELSIF HMI.Rack10[24] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[5]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack10[21].2) THEN
		HMIBinding.RackUI.sString20[4] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[4] := 'Solid_Red';
	END_IF;
	
	IF HMI.Rack10[25] >= 672 AND HMI.Rack10[25] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack10[25]*0.1) ; 
	ELSIF HMI.Rack10[25] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[7]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack10[21].3) THEN
		HMIBinding.RackUI.sString20[6] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[6] := 'Solid_Red';
	END_IF;
	IF HMI.Rack10[26] >= 672 AND HMI.Rack10[26] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack10[26]*0.1) ; 
	ELSIF HMI.Rack10[26] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[9]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack10[21].4) THEN
		HMIBinding.RackUI.sString20[8] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[8] := 'Solid_Red';
	END_IF;
	IF HMI.Rack10[27] >= 672 AND HMI.Rack10[27] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack10[27]*0.1) ; 
	ELSIF HMI.Rack10[27] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[11]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack10[21].5) THEN
		HMIBinding.RackUI.sString20[10] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[10] := 'Solid_Red';
	END_IF;
	IF HMI.Rack10[28] >= 672 AND HMI.Rack10[28] <= 1080 THEN
		HMIBinding.RackUI.sString5[0] 	:= REAL_TO_STRING(HMI.Rack10[28]*0.1) ; 
	ELSIF HMI.Rack10[28] < 672 THEN
		HMIBinding.RackUI.sString5[0]	:= '67.2';
	ELSE
		HMIBinding.RackUI.sString5[0]	:= '108';
	END_IF;
	HMIBinding.RackUI.sString20[13]		:= CONCAT(HMIBinding.RackUI.sString5[0],'(V)');
	
	IF (HMI.Rack10[21].6) THEN
		HMIBinding.RackUI.sString20[12] := 'Solid_Green';
	ELSE
		HMIBinding.RackUI.sString20[12] := 'Solid_Red';
	END_IF;
	
	(* Over Current *)
	IF HMI.Rack10[17].0 THEN
		HMIBinding.RackUI.sString20[14] 		:= 'Solid_Red';
	ELSIF HMI.Rack10[16].0 THEN
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].0 THEN		
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[14]			:= 'Solid_Green';
	END_IF;
	
	(* Over SOC *)
	IF HMI.Rack10[17].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].1 THEN
		HMIBinding.RackUI.sString20[15]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[15] 			:= 'Solid_Green';
	END_IF;
	
	(* Under SOC *)
	IF HMI.Rack10[17].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].2 THEN
		HMIBinding.RackUI.sString20[16]  			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].2 THEN
		HMIBinding.RackUI.sString20[16] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[16]			:= 'Solid_Green';
	END_IF;
	
	(* Over Voltage *)
	IF HMI.Rack10[17].3 THEN
		HMIBinding.RackUI.sString20[17]			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].3 THEN		
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].3 THEN
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[17] 			:= 'Solid_Green';
	END_IF;
	
	(* Under Voltage *)
	IF HMI.Rack10[17].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].4 THEN
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[18] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Over Voltage *)
	IF HMI.Rack10[17].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].5 THEN
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[19] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell Under Voltage *)
	IF HMI.Rack10[17].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].6 THEN
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[20] 			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Voltage *)
	IF HMI.Rack10[17].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].7 THEN
		HMIBinding.RackUI.sString20[21] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].7 THEN
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[21]			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Over Temperature *)
	IF HMI.Rack10[17].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].8 THEN
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[22] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Over Temperature *)
	IF HMI.Rack10[17].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].9 THEN
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[23] 			:= 'Solid_Green';
	END_IF;
	
	(* Discahrger Cell Under Temperature *)
	IF HMI.Rack10[17].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Red';
	ELSIF HMI.Rack10[16].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].10 THEN
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[24] 			:= 'Solid_Green';
	END_IF;
	
	(* Charger Cell Under Temperature *)
	IF HMI.Rack10[17].11 THEN
		HMIBinding.RackUI.sString20[25] 		:= 'Solid_Red';
	ELSIF HMI.Rack10[16].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].11 THEN
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[25]			:= 'Solid_Green';
	END_IF;
	
	(* Cell UnBalance Temperature *)
	IF HMI.Rack10[17].12 THEN
		HMIBinding.RackUI.sString20[26] 		:= 'Solid_Red';
	ELSIF HMI.Rack10[16].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Orange';
	ELSIF HMI.Rack10[15].12 THEN
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Yellow';
	ELSE
		HMIBinding.RackUI.sString20[26]			:= 'Solid_Green';
	END_IF;
	
	(* Internal COM *)
	IF HMI.Rack10[17].15 THEN
		HMIBinding.RackUI.sString20[27] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[27]			:= 'Solid_Green';
	END_IF;
	
	(* External COM *)
	IF HMI.Rack10[17].0 THEN
		HMIBinding.RackUI.sString20[28] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[28]			:= 'Solid_Green';
	END_IF;
	
	(* RelayWelding *)
	IF HMI.Rack10[18].1 THEN
		HMIBinding.RackUI.sString20[29] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[29]			:= 'Solid_Green';
	END_IF;
	
	(* WaterLeak *)
	IF HMI.Rack10[18].2 THEN
		HMIBinding.RackUI.sString20[30] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[30]			:= 'Solid_Green';
	END_IF;
	
	(* InsulationRegister *)
	IF HMI.Rack10[18].3 THEN
		HMIBinding.RackUI.sString20[31] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[31]			:= 'Solid_Green';
	END_IF;
	
	(* MDSFuse *)
	IF HMI.Rack10[18].4 THEN
		HMIBinding.RackUI.sString20[32] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[32]			:= 'Solid_Green';
	END_IF;
	
	(* CoolingRack *)
	IF HMI.Rack10[18].5 THEN
		HMIBinding.RackUI.sString20[33] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[33]			:= 'Solid_Green';
	END_IF;
	
	(* DIO *)
	IF HMI.Rack10[19].0 THEN
		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack10[19].1 THEN
		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack10[19].2 THEN
		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack10[20].2 THEN
		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack10[20].4 THEN
		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	END_IF;
	IF HMI.Rack10[20].5 THEN
		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	ELSE
		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	END_IF;
END_ACTION
