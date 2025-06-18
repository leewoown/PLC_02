
TYPE
	QLog_areas : 	STRUCT 
		ReadA : UDINT;
		ReadB : UDINT;
		WriteA : UDINT;
		WriteB : UDINT;
		ReadUnit : UDINT;
		WriteUnit : UDINT;
	END_STRUCT;
	RwData_typ : 	STRUCT 
		nData : ARRAY[0..49]OF INT;
	END_STRUCT;
	CharMD_Typ : 	STRUCT 
		TxFunCode : BYTE;
		TxRegNum : UINT;
		TxData_Set : UDINT;
		RxFunCode : USINT;
		RxRegNum : UINT;
		RxData_Set : UDINT;
	END_STRUCT;
	CharSys_Typ : 	STRUCT 
	END_STRUCT;
	CahrHMI_Typ : 	STRUCT 
	END_STRUCT;
	CharBat_Tye : 	STRUCT 
	END_STRUCT;
	CharCANChA_TX : 	STRUCT 
	END_STRUCT;
	CharCANChB_RX : 	STRUCT 
	END_STRUCT;
	CharCANChA_RX : 	STRUCT 
	END_STRUCT;
	CharCANChB_TX : 	STRUCT 
	END_STRUCT;
	gIO_typ : 	STRUCT 
		ST3_DI9372 : DI9372_typ;
		ST4_DO8322 : DO8322_typ;
	END_STRUCT;
	gComm_typ : 	STRUCT 
		CAN1 : gCommStatus_typ;
		CAN2 : gCommStatus_typ;
		ModTCPM : gCommStatus_typ;
		ModTCPS : gCommStatus_typ;
		ModRTUM : gCommStatus_typ;
	END_STRUCT;
END_TYPE

(*DIO Structure Type*)

TYPE
	DI9372_typ : 	STRUCT 
		DI_CH : ARRAY[0..11]OF BOOL;
	END_STRUCT;
	DO8322_typ : 	STRUCT 
		DO_CH : ARRAY[0..7]OF BOOL;
	END_STRUCT;
END_TYPE

(*COM Status Structure Type*)

TYPE
	gCommStatus_typ : 	STRUCT 
		bActive : BOOL;
		bTransmitting : BOOL;
		bError : BOOL;
	END_STRUCT;
END_TYPE

(*User Login Structure  Type*)
(*Insert your comment here.*)

TYPE
	gSignalCheckType : 	STRUCT 
		Can_HardwareCheck1 : BOOL;
		Can_HardwareCheck2 : BOOL;
		Can_ReceiveCheck : BOOL;
		Can_SendCheck : BOOL;
		TCP_Check : BOOL;
		RS485_Check : BOOL;
	END_STRUCT;
	RackSySDate : 	STRUCT 
		RackIfroArry : ARRAY[0..40]OF UINT;
		Producttype : UINT;
		ProductSWVer : UINT;
		BatconfigS : UINT;
		BatconfigP : UINT;
		BSAVoltTotal : UINT;
		BSACurrTotal : UINT;
		BSASOC : UINT;
		BSASOH : UINT;
		ProductNorVoltage : UINT;
		ProductCapacity : UINT;
		BSADiviceStatus : UINT;
		BSAProtectSatus : UINT;
		BSABalance : UINT;
		BSANegRly : UINT;
		BSAPosRly : UINT;
		BSAPreCharRly : UINT;
		BSAMSDAUX : UINT;
		BSAEMGSW : UINT;
		BSAWaterleak : UINT;
		BSAAh : UINT;
		BSAWnDischagerOC : UINT;
		BSAWnChagerOC : UINT;
		BSAWnSOCOV : UINT;
		BSAWnSOCUN : UINT;
		BSAWnOV : UINT;
		BSAWnUV : UINT;
		BSAWnCellOV : UINT;
		BSAWnCellUV : UINT;
		BSAWnCellUnbalV : UINT;
		BSAWnDisChargerCellOT : UINT;
		BSAwnChargerCellOT : UINT;
		BSAWnDisChargerCellUT : UINT;
		BSAWnChargerCellUT : UINT;
		BSAWnCellUnbalT : UINT;
		BSAWnDischargerUnbalPWR : UINT;
		BSAWnChargerUnbalPWR : UINT;
		BSAFLTDischargerOC : UINT;
		BSAFTLChargerOC : UINT;
		BSAFLTSOCOV : UINT;
		BSAFLTSOHUn : UINT;
		BSAFLTOV : UINT;
		BSAFLTUV : UINT;
		BSAFLTCellOV : UINT;
		BSAFLTCellUV : UINT;
		BSAFLTCellUnbalV : UINT;
		BSAFLTDisChargerCellOT : UINT;
		BSAFLTChargerCellOT : UINT;
		BSAFLTDisChargerCellUT : UINT;
		BSAFLTChargerCellUT : UINT;
		BSAFLTCellUnbalT : UINT;
		BSAFLTDischargerUnbalPWR : UINT;
		BSAFLTChargerUnbalPWR : UINT;
		BSAPrtctDischagerOC : UINT;
		BSAPrtctChagerOC : UINT;
		BSAPrtctSOCOV : UINT;
		BSAPrtctSOCUn : UINT;
		BSAPrtctOV : UINT;
		BSAPrtctUV : UINT;
		BSAPrtctCellOV : UINT;
		BSAPrtctCellUV : UINT;
		BSAPrtctCellUnbalV : UINT;
		BSAPrtctDisChargerCellOT : UINT;
		BSAPrtctChargerCellOT : UINT;
		BSAPrtctDisChargerCellUT : UINT;
		BSAPrtctChargerCellUT : UINT;
		BSAPrtctCellUnbalT : UINT;
		BSAPrtctDischargerUnbaPWR : UINT;
		BSAPrtctChargerUnbaPWR : UINT;
		BSAPrtctRlyErr : UINT;
		BSAPrtctINCOMErr : UINT;
		BSAPrtctEXCOMErr : UINT;
		BSAPrtctCTCOMErr : UINT;
		BSAPrtctWaterLeakErr : UINT;
		BSAPrtctEMSSWErr : UINT;
		BSACHAPWCont : UINT;
		BSADisCHAPWCont : UINT;
		BSACHAPWPeak : UINT;
		BSADisCHAPWPeak : UINT;
		BSACellMaxV : UINT;
		BSACellMinV : UINT;
		BSACellAVGV : UINT;
		BSACellDeviV : UINT;
		BSACellMaxT : UINT;
		BSACellMinT : UINT;
		BSACellAVGT : UINT;
		BSACellDeviT : UINT;
		BSACellMaxVLocation : UINT;
		BSACellMinVLocation : UINT;
		BSACellMaxTLocation : UINT;
		BSACellMinTLocation : UINT;
		BSABM1VoltTotal : UINT;
		BSABM1AgvVolt : UINT;
		BSABM1AgvTemp : UINT;
		BSABM1OPSINITOK : UINT;
		BSABM1OPSFault : UINT;
		BSABM1OPSBalanOnOFF : UINT;
		BSABM1OPSWaterleakErr : UINT;
		BSABM1OPSCellVoltErr : UINT;
		BSABM1OPSCellTempsErr : UINT;
		BSABM1BATICErr : UINT;
		BSABM1OPSCTCOMErr : UINT;
		BSABM1OPSMBCOMErr : UINT;
		BSABM1OPSHMI : UINT;
		BSABM2OPSINITOK : UINT;
		BSABM2OPSFault : UINT;
		BSABM2OPSBalanOnOFF : UINT;
		BSABM2OPSWaterleakErr : UINT;
		BSABM2OPSCellVoltErr : UINT;
		BSABM2OPSCellTempsErr : UINT;
		BSABM2BATICErr : UINT;
		BSABM2OPSCTCOMErr : UINT;
		BSABM2OPSMBCOMErr : UINT;
		BSABM2OPSHMI : UINT;
		BSABM3OPSINITOK : UINT;
		BSABM3OPSFault : UINT;
		BSABM3OPSBalanOnOFF : UINT;
		BSABM3OPSWaterleakErr : UINT;
		BSABM3OPSCellVoltErr : UINT;
		BSABM3OPSCellTempsErr : UINT;
		BSABM3BATICErr : UINT;
		BSABM3OPSCTCOMErr : UINT;
		BSABM3OPSMBCOMErr : UINT;
		BSABM3OPSHMI : UINT;
		BSABM4OPSINITOK : UINT;
		BSABM4OPSFault : UINT;
		BSABM4OPSBalanOnOFF : UINT;
		BSABM4OPSWaterleakErr : UINT;
		BSABM4OPSCellVoltErr : UINT;
		BSABM4OPSCellTempsErr : UINT;
		BSABM4BATICErr : UINT;
		BSABM4OPSCTCOMErr : UINT;
		BSABM4OPSMBCOMErr : UINT;
		BSABM4OPSHMI : UINT;
		BSABM5OPSINITOK : UINT;
		BSABM5OPSFault : UINT;
		BSABM5OPSBalanOnOFF : UINT;
		BSABM5OPSWaterleakErr : UINT;
		BSABM5OPSCellVoltErr : UINT;
		BSABM5OPSCellTempsErr : UINT;
		BSABM5BATICErr : UINT;
		BSABM5OPSCTCOMErr : UINT;
		BSABM5OPSMBCOMErr : UINT;
		BSABM5OPSHMI : UINT;
		BSABM6OPSINITOK : UINT;
		BSABM6OPSFault : UINT;
		BSABM6OPSBalanOnOFF : UINT;
		BSABM6OPSWaterleakErr : UINT;
		BSABM6OPSCellVoltErr : UINT;
		BSABM6OPSCellTempsErr : UINT;
		BSABM6BATICErr : UINT;
		BSABM6OPSCTCOMErr : UINT;
		BSABM6OPSMBCOMErr : UINT;
		BSABM6OPSHMI : UINT;
		BSABM7OPSINITOK : UINT;
		BSABM7OPSFault : UINT;
		BSABM7OPSBalanOnOFF : UINT;
		BSABM7OPSWaterleakErr : UINT;
		BSABM7OPSCellVoltErr : UINT;
		BSABM7OPSCellTempsErr : UINT;
		BSABM7BATICErr : UINT;
		BSABM7OPSCTCOMErr : UINT;
		BSABM7OPSMBCOMErr : UINT;
		BSABM7OPSHMI : UINT;
		RackAvgTemp : INT;
		RackMinTemp : INT;
		RackMaxTemp : INT;
		RackCurret : INT;
		RackCanCount : UINT;
	END_STRUCT;
	HMI_typ : 	STRUCT 
		System : ARRAY[0..54]OF UINT;
		Rack1 : ARRAY[0..54]OF UINT;
		Rack2 : ARRAY[0..54]OF UINT;
		Rack3 : ARRAY[0..54]OF UINT;
		Rack4 : ARRAY[0..54]OF UINT;
		Rack5 : ARRAY[0..54]OF UINT;
		Rack6 : ARRAY[0..54]OF UINT;
		Rack7 : ARRAY[0..54]OF UINT;
		Rack8 : ARRAY[0..54]OF UINT;
		Rack9 : ARRAY[0..54]OF UINT;
		Rack10 : ARRAY[0..54]OF UINT;
	END_STRUCT;
	SysBMS_Typ : 	STRUCT 
		ProRlyAux : BOOL;
		NRlyAux : BOOL;
		PRlyAux : BOOL;
		PRly : BOOL;
		NRly : BOOL;
		ProRly : BOOL;
		WakeUpSig : BOOL;
	END_STRUCT;
	PMS_typ : 	STRUCT 
		Rx : ARRAY[0..54]OF UINT;
		Tx : ARRAY[0..2]OF UINT;
	END_STRUCT;
	HMIBinding_typ : 	STRUCT 
		Step : STEP_Enum;
		DeviceLoading : USINT;
		CommonUI : CommonUI_typ;
		SystemUI : SystemUI_typ;
		RackUI : RackUI_typ;
		AdminUI : AdminUI_typ;
		AlarmUI : AlarmUI_typ;
		DialogUI : DialogUI_typ;
	END_STRUCT;
	CommonUI_typ : 	STRUCT 
		bBool : ARRAY[0..9]OF BOOL;
		rReal : ARRAY[0..11]OF REAL;
		sString20 : ARRAY[0..8]OF STRING[20];
		sString50 : ARRAY[0..3]OF STRING[50];
		sString5 : ARRAY[0..1]OF STRING[5];
	END_STRUCT;
	SystemUI_typ : 	STRUCT 
		bBool : ARRAY[0..10]OF BOOL;
		rReal : ARRAY[0..11]OF REAL;
		sString20 : ARRAY[0..50]OF STRING[20];
		sString50 : ARRAY[0..3]OF STRING[50];
		sString5 : ARRAY[0..1]OF STRING[5];
	END_STRUCT;
	RackUI_typ : 	STRUCT 
		bBool : ARRAY[0..10]OF BOOL;
		rReal : ARRAY[0..11]OF REAL;
		sString20 : ARRAY[0..50]OF STRING[20];
		sString5 : ARRAY[0..1]OF STRING[5];
	END_STRUCT;
	AdminUI_typ : 	STRUCT 
		SysVoltage : REAL;
		SysCurrent : REAL;
	END_STRUCT;
	DialogUI_typ : 	STRUCT 
		Account : Account_Typ;
		Protect : Protect_typ;
	END_STRUCT;
	AlarmUI_typ : 	STRUCT 
		Key : AlarmKey_enum;
		History : ARRAY[0..ALARM_NUMBER_MINUS_1]OF Histroy_typ;
		Delete_Input : BOOL;
		Delete_Index : USINT;
	END_STRUCT;
	Account_Typ : 	STRUCT 
		Authority : LoginStatusEnum;
		Input_Button : STRING[1];
		Password_Internal : STRING[16];
		Password_External : STRING[16];
	END_STRUCT;
	AlarmDB_typ : 	STRUCT 
		Alarm : ARRAY[0..ALARM_NUMBER_MINUS_1]OF HistoryDetail_typ;
		Fault : ARRAY[0..ALARM_NUMBER_MINUS_1]OF HistoryDetail_typ;
		Protect : ARRAY[0..ALARM_NUMBER_MINUS_1]OF HistoryDetail_typ;
	END_STRUCT;
	Histroy_typ : 	STRUCT 
		Name : STRING[40];
		InitialTime : STRING[15];
		RecentTime : STRING[15];
		ClearTime : STRING[15];
		Count : USINT;
	END_STRUCT;
	HistoryDetail_typ : 	STRUCT 
		InitialTime : STRING[15];
		RecentTime : STRING[15];
		ClearTime : STRING[15];
		Count : USINT;
	END_STRUCT;
	Protect_typ : 	STRUCT 
		Trigger : BOOL;
		Name : STRING[40];
	END_STRUCT;
	AlarmKey_enum : 
		(
		ALARM := 0,
		FAULT := 1,
		PROTECT := 2
		);
	STEP_Enum : 
		(
		INITIAL := 0,
		BOOTING := 1,
		SYSTEM := 2,
		RACK1 := 3,
		RACK2 := 4,
		RACK3 := 5,
		RACK4 := 6,
		RACK5 := 7,
		RACK6 := 8,
		RACK7 := 9,
		RACK8 := 10,
		RACK9 := 11,
		RACK10 := 12,
		ADMINISTRATOR := 13,
		ALARMHISTORY := 14,
		LOADINGERROR := 15,
		PROTECTERROR := 16,
		USERTEST := 20
		);
	LoginStatusEnum : 
		(
		USER := 0,
		ADMIN := 1
		);
	CanData : 	STRUCT 
		CanInfoArry : ARRAY[0..10]OF UINT;
		Count : UINT;
	END_STRUCT;
	Can1Data : 	STRUCT 
		Can1InfoArry : ARRAY[0..10]OF UINT;
		Count : UINT;
	END_STRUCT;
END_TYPE
