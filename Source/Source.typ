
TYPE
	SystemStatesEnum : 
		(
		SYSTEM_INIT,
		SYSTEM_OPERATION,
		SYSTEM_READY,
		New_Member2,
		New_Member1,
		New_Member
		);
	BMS_Type : 	STRUCT 
		Rack : ARRAY[0..BATTERY_NUM_MINUS_ONE]OF BMS_RackType;
		System : BMS_SystemType;
		New_Member2 : USINT;
		New_Member1 : USINT;
		New_Member : USINT;
	END_STRUCT;
	ErrorStatesEnum : 
		(
		ERROR_NONE := 0,
		ERROR_ALARM := 1,
		ERROR_FAULT := 2,
		ERROR_PROTECT := 3
		);
	BMS_RackType : 	STRUCT 
	END_STRUCT;
	BMS_SystemType : 	STRUCT 
		Voltage : USINT;
		Current : USINT;
		SOC : USINT;
		SOH : USINT;
		BC_MaxVoltage : USINT;
		BC_MinVoltage : USINT;
		BC_AvgVoltage : USINT;
		BC_DivVoltage : USINT;
		BC_MaxTemp : USINT;
		BC_MinTemp : USINT;
		BC_AvgTemp : USINT;
		BC_DivTemp : USINT;
	END_STRUCT;
END_TYPE
