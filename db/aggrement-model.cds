namespace com.lti.aggrementleasemanagement;

using com.lti.masterleasemanagement from './master-model';
using { Currency, managed, cuid } from '@sap/cds/common';

// master agreement
entity ZLTI_LA_MASTRLA : managed {
	key mastAGGR : String(100);
	coCDE : Association to masterleasemanagement.ZLTI_LA_CCODE;
	iTEMs : Composition of many ZLTI_LA_MASTRLA_ITMS on iTEMs.mastAGGR = $self;
	vEND : Association to masterleasemanagement.ZLTI_LA_VEND;
	aggDt : Date;
	pLNT : Association to masterleasemanagement.ZLTI_LA_PLNT;
	targVAL : String (10);
	cURR : Association to masterleasemanagement.ZLTI_LA_CURR;
	validFROM : Date;
	validTO : Date;
	lesTYPE  : Association to masterleasemanagement.ZLTI_LA_TYPES;
	pENALTY : Boolean;
}

// master agreement items entity ZLTI_LA_MASTRLA_ITMS
entity ZLTI_LA_MASTRLA_ITMS :  managed {
	key mastAGGR: Association to ZLTI_LA_MASTRLA;
	key iTEM : Integer;
	assetTYPE  :  Association to masterleasemanagement.ZLTI_LA_ASSET_TY;
	shrtTEXT : String (40);
	targQTY : Integer;
	uOM : Association to masterleasemanagement.ZLTI_LA_UOM;
	netPRICE : Decimal (13,2);
	buyBACK : Boolean;
}

// Individual header
entity  ZLTI_LA_IND_LA: managed {
	key agNUM : String(100);
	coCDE : Association to masterleasemanagement.ZLTI_LA_CCODE; 
	orderTYP : String (4); 
	aggDt : Date; 
	lesTYPE  : Association to masterleasemanagement.ZLTI_LA_TYPES;
	assNUM : Association to masterleasemanagement.ZLTI_LA_ASSTMST;
	assSUBNO : Association to masterleasemanagement.ZLTI_LA_ASSTMST;
	pLNT : Association to masterleasemanagement.ZLTI_LA_PLNT;
	assDesc : String(40);
	qTY : Integer;
	uOM : Association to masterleasemanagement.ZLTI_LA_UOM;
	vEND : Association to masterleasemanagement.ZLTI_LA_VEND;
	ccCODE : Association to masterleasemanagement.ZLTI_LA_CSTCNT;
	internalORDER : Association to masterleasemanagement.ZLTI_LA_INTORD; 
	wbS : Association to masterleasemanagement.ZLTI_LA_WBS;
	profCEN:  Association to masterleasemanagement.ZLTI_LA_PFTCNT;
	migIND : Boolean;
	cURR : Association to masterleasemanagement.ZLTI_LA_CURR;
	validFROM : Date;
	validTO : Date;
	assIDENT: Association to masterleasemanagement.ZLTI_LA_MATNUM;
	mastAGGR: Association to ZLTI_LA_MASTRLA;
	agTYP: Association to masterleasemanagement.ZLTI_LA_LAI_SW;
	exchngRATE : Decimal (10,4);
	userTEXT : String(500);
	oldCONTRNO : String(25);
	oldCONTRDT : Date;
	legDOCNUM : String(10);
	legDOCDT : Date;
	mastCONTNUM : String(25);
	contSTRDT : Date;
	contENDDT : Date;
	docTY : String(4);
	useLIFEYRS : Integer;
	useLIFEMON : Integer;
	buyBACK : Boolean;
	buyBACKAMT : Decimal (13,2);
	resiVALUE : String (10);
	yRS : Integer;
	mnTHS : Integer;
	refINTRT: Association to masterleasemanagement.ZLTI_LA_IRR;
	indxSER : Association to masterleasemanagement.ZLTI_LA_RENT_CLS;
	subLEAS : Boolean;
	termsCONDTN : Composition of many ZLTI_LA_LCH_DTL on termsCONDTN.agNUM = $self;
	cashFLOW: Composition of many ZLTI_LA_LCI_CFL on cashFLOW.agNUM = $self; 
	valPERIOD: Composition of many ZLTI_LA_LCI_VALP on valPERIOD.agNUM = $self;
}

// // Terms & Conditions items
entity ZLTI_LA_LCH_DTL: managed {
	key agNUM : Association to ZLTI_LA_IND_LA;
	key iTEMs : Integer;
	expenseTYP : String(100);
	amounT : Decimal(13,2);
	validFRM : Date;
	dueON : String(3);
	pymtFREQ : String(10);
	priceESC : String(10);
	esclVAL : Decimal(13,2);
	priceCHNGFREQ : String(10);
	minESCLPAR : String(10);
	minESC : Decimal(13,2);
	capitalisatioN : Boolean;
	iNTB : Boolean;
	vEND : Association to masterleasemanagement.ZLTI_LA_VEND;
	taxCODE : String(2);
	glACC : String(10);
	lEDGER : Association to masterleasemanagement.ZLTI_LA_LCI_LEDG;
}

// Posting
entity ZLTI_LA_LCI_PVF : managed{
	key agNUM : Association to ZLTI_LA_IND_LA;
	key iTEM : Integer;
	key lEDGER : Association to masterleasemanagement.ZLTI_LA_ACCT_DET;
	validFRM : Date;
	dESCR : String(50);
	postDT : Date;
	perLEASPYMT : Decimal(13,2);
	fREQUENCY : String(10);
	pymtMADEAT : String (3);
	refINTRT :  Association to masterleasemanagement.ZLTI_LA_IRR ;
	intrRATE : Decimal(10,7);
	residVALUE : Decimal(13,2);
	cURR : Association to masterleasemanagement.ZLTI_LA_CURR;
	pvPERIOD : Integer;
	fACTOR : Decimal(13,5);
	nomiAMT : Decimal(23,2);
	fisYR : Integer;
	pERIOD : Integer;
	procSTS : String(1);
}

// Cash flow
entity ZLTI_LA_LCI_CFL: managed {
	key agNUM : Association to ZLTI_LA_IND_LA;
	key lineITEM : Integer;
	sTATUS  : String(4);
	purcDOCTYP : String (4);
	flowTYPE : Association to masterleasemanagement.ZLTI_LA_FLOW_TYP;
	dESCR : String(50);
	postDT : Date;
	amtLOCCURR : Decimal(13,2);
	lCURR : String(5);
	aMT : Decimal(13,2);
	cURR : Association to masterleasemanagement.ZLTI_LA_CURR;
	docNUM : String(10);
	fisYR : Integer;
	fisMON : Integer;
	pLNT : Association to masterleasemanagement.ZLTI_LA_PLNT;
	proccSTS : String(1);
	revPEND : String (1);
	vEND : Association to masterleasemanagement.ZLTI_LA_VEND;
	accASSCAT : String (1);
	lEDGER : String(2);
}

// Validity Period
entity ZLTI_LA_LCI_VALP : managed{
	key agNUM : Association to ZLTI_LA_IND_LA;
	key iTEM : Integer;
	dESCR : String(50);
	lEDGER : Association to masterleasemanagement.ZLTI_LA_ACCT_DET;
	purcDOCTYP : String (4);
	perLEASPYMT : Decimal(13,2);
	fREQUENCY : String(10);
	leasPYMTMNTH : Integer;
	typPRCCHNG : String(6);
	priceESCL : Decimal(13,2);
	noMONTH : Integer;
	pymtMADEAT : String (3);
	idREFINT : Association to masterleasemanagement.ZLTI_LA_IRR;
	intrRATE : Decimal(10,7);
	residVALUE : String(20);
	cURR : Association to masterleasemanagement.ZLTI_LA_CURR;
	mATERIAL : String(40);
	pLNT :Association to masterleasemanagement.ZLTI_LA_PLNT;
	vEND : Association to masterleasemanagement.ZLTI_LA_VEND;
	validDT : Date;
	cAPITAL : String(1);
	intrBEAR : String(1);
	vendBUSPARTNR : String(10);
	taxCODE : String(2);
	glACC : String(10);
	indexSER : String (5);
	postCHK : String (1);
	validFROM : Date;
	validTO : Date;
	strDT : Date;
	endDT : Date;
	sTATUS  : String(4);
	validID : Integer;
}

entity ZLTI_LA_LDETAILS : managed{
	key agNUM : Association to ZLTI_LA_IND_LA;
	key iTEM : Integer;
	dESCR : String(50);
	validPERID : String (14);
	coCDE : Association to masterleasemanagement.ZLTI_LA_CCODE;
	lEDGER : Association to masterleasemanagement.ZLTI_LA_ACCT_DET;
	validFROM : Date;
	valSTS : String(4);
	purcDOCTYP : String (4);
	perLEASPYMT : Decimal(13,2);
	fREQUENCY : String(10);
	leasePERIOD : Integer;
	leTYPPRCHG : String(6);
	lePRICEESC : Integer;
	noMONTH : Integer;
	leESCLPAR : String(6);
	priceESC : Decimal(13,2);
	pymtMADEAT : String (3);
	refINTRT : Association to masterleasemanagement.ZLTI_LA_IRR;
	intrRATE : Decimal(10,7);
	indexSER : String (5);
	residVALUE : Decimal(5,2);
	cURR: Association to masterleasemanagement.ZLTI_LA_CURR;
	mATERIAL : String(40);
	pLNT : Association to masterleasemanagement.ZLTI_LA_PLNT;
	vEND : Association to masterleasemanagement.ZLTI_LA_VEND;
	cAPITAL : String(1);
	intrBEAR : String(1);
	vendCREDACCNO : String(10);
	taxCODE : String(2);
	glACC : String(10);
}


entity ZLTI_LA_VAL_DATE: managed {
	key agNUM : Association to ZLTI_LA_IND_LA;
	key validPERID : String (14);
	strDT : Date;
	endDT : Date;
	leasePERIOD : Integer;
	valSTS : String(4);
}
