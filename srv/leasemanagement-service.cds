using com.lti.masterleasemanagement from '../db/master-model';
using com.lti.aggrementleasemanagement from '../db/aggrement-model';

@impl:'./leasemanagement-service.js'
service CatalogService {
  entity ZLTI_LA_BUSEVNID as projection on masterleasemanagement.ZLTI_LA_BUSEVNID;
  entity ZLTI_LA_FLOW_TYP as projection on masterleasemanagement.ZLTI_LA_FLOW_TYP;
  entity ZLTI_LA_ASSET_TY as projection on masterleasemanagement.ZLTI_LA_ASSET_TY;
  entity ZLTI_LA_FI_DOCTY as projection on masterleasemanagement.ZLTI_LA_FI_DOCTY;
  entity ZLTI_LA_TYPES as projection on masterleasemanagement.ZLTI_LA_TYPES;
  entity ZLTI_LA_COST_MAP as projection on masterleasemanagement.ZLTI_LA_COST_MAP;
  entity ZLTI_LA_ACCT_DET as projection on masterleasemanagement.ZLTI_LA_ACCT_DET;
  entity ZLTI_LA_LAI_SW as projection on masterleasemanagement.ZLTI_LA_LAI_SW;
  entity ZLTI_LA_LCH_SW as projection on masterleasemanagement.ZLTI_LA_LCH_SW;
  entity ZLTI_LA_LCI_LEDG as projection on masterleasemanagement.ZLTI_LA_LCI_LEDG;
  entity ZLTI_LA_RENT_CLS as projection on masterleasemanagement.ZLTI_LA_RENT_CLS;
  entity ZLTI_LA_CCODE as projection on masterleasemanagement.ZLTI_LA_CCODE;
  entity ZLTI_LA_VEND as projection on masterleasemanagement.ZLTI_LA_VEND;
  entity ZLTI_LA_CURR as projection on masterleasemanagement.ZLTI_LA_CURR;
  entity ZLTI_LA_IRR as projection on masterleasemanagement.ZLTI_LA_IRR;
  entity ZLTI_LA_CURCONV as projection on masterleasemanagement.ZLTI_LA_CURCONV;
  entity ZLTI_LA_UOM as projection on masterleasemanagement.ZLTI_LA_UOM;
  entity ZLTI_LA_CSTCNT as projection on masterleasemanagement.ZLTI_LA_CSTCNT;
  entity ZLTI_LA_ASSTMST as projection on masterleasemanagement.ZLTI_LA_ASSTMST;
  entity ZLTI_LA_WBS as projection on masterleasemanagement.ZLTI_LA_WBS;
  entity ZLTI_LA_INTORD as projection on masterleasemanagement.ZLTI_LA_INTORD;
  entity ZLTI_LA_PFTCNT as projection on masterleasemanagement.ZLTI_LA_PFTCNT;
  entity ZLTI_LA_GLMAST as projection on masterleasemanagement.ZLTI_LA_GLMAST;
  entity ZLTI_LA_TAXCDE as projection on masterleasemanagement.ZLTI_LA_TAXCDE;
  entity ZLTI_LA_PLNT as projection on masterleasemanagement.ZLTI_LA_PLNT;
  entity ZLTI_LA_MATNUM as projection on masterleasemanagement.ZLTI_LA_MATNUM;
  entity ZLTI_LA_IND_LA as projection on aggrementleasemanagement.ZLTI_LA_IND_LA;
  entity ZLTI_LA_LCH_DTL as projection on aggrementleasemanagement.ZLTI_LA_LCH_DTL;
  entity ZLTI_LA_LCI_PVF as projection on aggrementleasemanagement.ZLTI_LA_LCI_PVF;
  entity ZLTI_LA_LCI_CFL as projection on aggrementleasemanagement.ZLTI_LA_LCI_CFL;
  entity ZLTI_LA_LCI_VALP as projection on aggrementleasemanagement.ZLTI_LA_LCI_VALP;
  entity ZLTI_LA_MASTRLA as projection on aggrementleasemanagement.ZLTI_LA_MASTRLA;
  entity ZLTI_LA_MASTRLA_ITMS as projection on aggrementleasemanagement.ZLTI_LA_MASTRLA_ITMS;
  entity ZLTI_LA_LDETAILS as projection on aggrementleasemanagement.ZLTI_LA_LDETAILS;
  entity ZLTI_LA_VAL_DATE as projection on aggrementleasemanagement.ZLTI_LA_VAL_DATE;
}
