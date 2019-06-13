
insert into t_inf_basicinf (F_PID, F_NAME_CN, F_NAME_ENG, F_SENDPOJO, F_SENDTABLE, F_PARAMS, F_FLAGSQL, F_HASSTEP, F_OMIT, F_OMITPG, F_REMARK)
values ('INF000092', '备件请领请退接口（MES->WMS）', 'WMS0085001', 'sail.business.model.inf.SparePartsApply', 'T_INF_SPARE_PARTS_APPLY', 'f_pid=f_pid', 'UPDATE T_INF_SPARE_PARTS_APPLY_DTL SET F_TRANS = :f_trans WHERE HPID IN :hpid', null, 'sail.business.model.inf.SparePartsApplyDtl=sparepartsapply', 'sail.business.model.inf.SparePartsApplyDtl;org.hibernate.collection.PersistentSet', 'F');

insert into t_inf_basicinf (F_PID, F_NAME_CN, F_NAME_ENG, F_SENDPOJO, F_SENDTABLE, F_PARAMS, F_FLAGSQL, F_HASSTEP, F_OMIT, F_OMITPG, F_REMARK)
values ('INF000093', '备件申领反馈接口（MES->ERP）', 'WMS0085002', 'sail.business.model.inf.SpareAplBackE', 'T_INF_SPARE_APL_BACK_E', 'f_pid=f_pid', 'UPDATE T_INF_SPARE_APL_BACK_E_DTL SET F_TRANS = :f_trans WHERE HPID IN :hpid', null, null, 'sail.business.model.inf.SpareAplBackEDtl;org.hibernate.collection.PersistentSet', 'F');

insert into t_inf_basicinf (F_PID, F_NAME_CN, F_NAME_ENG, F_SENDPOJO, F_SENDTABLE, F_PARAMS, F_FLAGSQL, F_HASSTEP, F_OMIT, F_OMITPG, F_REMARK)
values ('INF000094', '凭证接口（接口->WMS）', 'WMS0085003', 'sail.business.model.inf.SpareProof', 'T_INF_SPARE_PROOF', 'f_pid=f_pid', 'UPDATE T_INF_SPARE_PROOF_DTL SET F_TRANS = :f_trans WHERE HPID IN :hpid', null, null, 'sail.business.model.inf.SpareProofDtl;org.hibernate.collection.PersistentSet', 'F');

