CREATE INDEX IX_HRC_NAME ON DB_WCT.HARVEST_RESOURCE (HRC_NAME);

CREATE INDEX IX_HRC_HARVEST_RESULT_OID ON DB_WCT.HARVEST_RESOURCE (HRC_HARVEST_RESULT_OID);

CREATE INDEX IX_FLAGGED ON DB_WCT.TARGET_INSTANCE (TI_FLAGGED);
ALTER TABLE DB_WCT.TARGET_INSTANCE CLUSTER ON IX_FLAGGED;

CREATE INDEX IX_AUD_DATE ON DB_WCT.WCTAUDIT (AUD_DATE);

CREATE INDEX IX_SHED_PROC_DATE ON DB_WCT.SCHEDULE(S_LAST_PROCESSED_DATE);
CREATE INDEX IX_SHED_NEXT_TIME ON DB_WCT.SCHEDULE(S_NEXT_SCHEDULE_TIME);

-- WCT 1.6 UPGRADE
CREATE UNIQUE INDEX IX_I_OID ON DB_WCT.INDICATOR(I_OID);
CREATE UNIQUE INDEX IX_IRL_OID ON DB_WCT.INDICATOR_REPORT_LINE(IRL_OID);
CREATE INDEX IX_IRL_I_OID ON DB_WCT.INDICATOR_REPORT_LINE(IRL_I_OID);

-- added for performance	
CREATE INDEX IX_TI_TARGET_ID ON DB_WCT.TARGET_INSTANCE(TI_TARGET_ID);
CREATE INDEX IX_TI_SCHEDULE_ID ON DB_WCT.TARGET_INSTANCE(TI_SCHEDULE_ID);
CREATE INDEX IX_TI_PROFILE_ID ON DB_WCT.TARGET_INSTANCE(TI_PROFILE_ID);
CREATE INDEX IX_TI_FLAG_OID ON DB_WCT.TARGET_INSTANCE(TI_FLAG_OID);
CREATE INDEX IX_HR_TARGET_INSTANCE_ID ON DB_WCT.HARVEST_RESULT(HR_TARGET_INSTANCE_ID);
CREATE INDEX IX_S_TARGET_ID ON DB_WCT.SEED(S_TARGET_ID);
CREATE INDEX IX_PU_PERMISSION_ID ON DB_WCT.PERMISSION_URLPATTERN(PU_PERMISSION_ID);
CREATE INDEX IX_AHF_ARC_HARVEST_RESULT_ID ON DB_WCT.ARC_HARVEST_FILE(AHF_ARC_HARVEST_RESULT_ID);
CREATE INDEX IX_TIOS_TI_OID ON DB_WCT.TARGET_INSTANCE_ORIG_SEED(TIOS_TI_OID);
CREATE INDEX IX_SH_TI_OID ON DB_WCT.SEED_HISTORY(SH_TI_OID);
