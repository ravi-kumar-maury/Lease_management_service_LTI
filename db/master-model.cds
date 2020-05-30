namespace com.lti.masterleasemanagement;
using { Currency, managed, cuid } from '@sap/cds/common';

entity ZLTI_LA_BUSEVNID :managed { // Bussiness Event ID for posting
	key busiEVEID : String(4);
	busDESC : String(50);

}

entity ZLTI_LA_AGRMT_STATUS :managed { // agreement status
	key sTATUS : String(2);
	dESCRP : String(50);

}

entity ZLTI_LA_STATUS_TYPE  :managed {
	key sTATUS : String(2);
	key docTY : String(4);
	dESCRP : String(50);

}

entity ZLTI_LA_FLOW_TYP :managed { // flow types required for cashflow calculation
	key flowTYPE : String(5);
	dESCRP : String(50);

}

entity ZLTI_LA_ASSET_TY :managed { // Lease Asset Type to hold asste description
	key assetTYPE : String(2);
	dESCRP : String(50);

}

entity ZLTI_LA_FI_DOCTY :managed { // document type require while posting
	key coCDE : String(4);
	key busEVNTID : String(4);
	docTYP : String(2);

}

entity ZLTI_LA_SC_REASONS :managed {
	key sCLRSN : String(2);
	dESCRP : String(50);

}

entity ZLTI_LA_AGREEMENT_TYPES :managed {
	key agreementTYP : String(2);
	dESCRP : String(50);
	numRANGE : String(5);

}

entity ZLTI_LA_TYPES :managed {
	key lesTYPE : String(2);
	dESCRP : String(50);

}

entity ZLTI_LA_COST_MAP :managed { // cost mapping table for cash-flow
	key costKEY : String(4);
	dESCRP : String(50);
	cTYP : Boolean;
	iNTB : Boolean;
	dISC : Boolean;

}

entity ZLTI_LA_ACCT_DET :managed {
	key cOA : String(4);
	key coCDE : String(4);
	key lEDGER : String(2);
	key lesTYPE : String(2);
	key busiEVEID : String(4);
	key flowTYPE : String(5);
	key acctYPE : String(1);
	glACC : String(10);
	debCRE : String(1);
	invBLK : String(1);
	sPCLGL : String(1);
	assTTYP : String (3);

}

entity ZLTI_LA_LAI_SW :managed { // individual agreement type
	key docTYP : String(4);
	typDESC : String(25);

}

entity ZLTI_LA_LCH_SW :managed { // not required now
	key docCAT : String(1);
	key docTYP : String(4);
	leasAGGAPP : String(1);

}

entity ZLTI_LA_LCI_LEDG :managed { // ledger account master table
	key lEDGER : String(2);
	ledNAM : String(25);

}

entity ZLTI_LA_RENT_CLS :managed { // required for cashflow calculation
	key indexSERIES : String(5);
	key indexYR : Integer;
	key indexMNTH : Integer;
	indexVAL : Decimal(9,2);

}

entity ZLTI_LA_CCODE :managed {
	key coCDE : String(4);
	cocdeDESC : String(25);
	cURR : String(5);
	logSYS : String(40);

}

entity ZLTI_LA_VEND :managed {
	//key coCDE : String(4);
	//coCDE : String(4);
	key vEND : String(10);
	dESCRP : String(25);
	coCDE_coCDE : Association to ZLTI_LA_CCODE;// 
	vendADD : String(25);
	vendBANK : String(10);
	vendTDS : String(20);
	vatNUM : String(20);

}

entity ZLTI_LA_CURR :managed {
	key cURR : String(3);
	currDESC : String(25);

}

entity ZLTI_LA_IRR :managed {
	key intrKEY : String(4);
	intrDESC : String(25);
	validFRM : Date;
	rOI : Decimal(7,4);

}

entity ZLTI_LA_CURCONV :managed {
	key exchRTTYP : String(4);
	key fromCURR : String(5);
	key toCURR : String(5);
	effDT : Date;
	exchRT : Decimal(7,4);

}

entity ZLTI_LA_UOM :managed {
	key uOM : String(6);
	dESCRP : String(25);

}

entity ZLTI_LA_CSTCNT :managed {
	key ccCODE : String(10);
	key coCDE : String(4);
	key profCEN : String(10);
	ccVALIDTO : Date;
	ccVALIDFROM : Date;
	CCNAME : String(25);
	ccDESC : String(40);

}

entity ZLTI_LA_ASSTMST :managed { // asset maintained as per company code
	key coCDE : String(4);
	key assNUM : String(12);
	assSUBNUM : String(4);
	assCLASS : String(25);
	profCEN : String(10);

}

entity ZLTI_LA_WBS :managed {
	key wBS : String(24);
	wbsDESC : String(40);
	profCEN : String(10);
	coCDE : String(4);


}

entity  ZLTI_LA_INTORD :managed {
	key internalORDER : String(12);
	ccDESC : String(40);
	profCEN : String(10);
	coCDE : String(4);

}

entity ZLTI_LA_PFTCNT :managed {
	key coCDE : String(4);
	key profCEN : String(10);
	profCENVALTO : Date;
	profCENVALFRM : Date;
	profCENVALDESC : String(25);
	


}

entity ZLTI_LA_GLMAST :managed {
	key coCDE : String(4);
	key glACC : String(10);
	accDESC : String(40);
	cOA : String(4);

}

entity ZLTI_LA_TAXCDE :managed {
	key taxCODE : String(4);
	key cOUNTRY : String(4);
	taxCDEDESC : String(40);
	taxJURIS : String(10);
	taxRATE : Decimal (5,3);

}

entity ZLTI_LA_PLNT :managed {
	key pLNT : String(10);
	plntDESC : String(40);
	cITY : String(40);
	cOUNTRY : String(4);
	coCDE : String(4);


}

entity ZLTI_LA_MATNUM :managed {
	key assIDENT : String(10);
	assDESC : String(40);
	coCDE : String(4);

}
