-- Create table
create table T_INF_SPARE_PROOF
(
  hpid    VARCHAR2(32) not null,
  mblnr   VARCHAR2(20) not null,
  mjahr   VARCHAR2(8) not null,
  werks   VARCHAR2(8) not null,
  f_trans VARCHAR2(2),
  bldat   VARCHAR2(8),
  budat   VARCHAR2(8),
  usnam   VARCHAR2(12),
  cpudt   VARCHAR2(8),
  cputm   VARCHAR2(6)
);
-- Add comments to the table 
comment on table T_INF_SPARE_PROOF
  is '接收ERP物料凭证（备件移库、C类备件发货、工单发货）';
-- Add comments to the columns 
comment on column T_INF_SPARE_PROOF.hpid
  is '主键';
comment on column T_INF_SPARE_PROOF.mblnr
  is '物料凭证编号';
comment on column T_INF_SPARE_PROOF.mjahr
  is '物料凭证年度';
comment on column T_INF_SPARE_PROOF.werks
  is '工厂代码';
comment on column T_INF_SPARE_PROOF.f_trans
  is '传输标志';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_INF_SPARE_PROOF
  add constraint PK_T_INF_SPARE_PROOF primary key (HPID);
  


-- Create table
create table T_INF_SPARE_PROOF_DTL
(
  dpid    VARCHAR2(32) not null,
  hpid    VARCHAR2(32) not null,
  zeile   VARCHAR2(8) not null,
  bwart   VARCHAR2(6) not null,
  matnr   VARCHAR2(36),
  menge   VARCHAR2(26) not null,
  meins   VARCHAR2(6) not null,
  dmbtr   VARCHAR2(26),
  kostl   VARCHAR2(20),
  rsnum   VARCHAR2(20),
  rspos   VARCHAR2(8),
  kzear   VARCHAR2(2),
  zdjh    VARCHAR2(60),
  zhh     VARCHAR2(8),
  aufnr   VARCHAR2(24),
  posnr1  VARCHAR2(8),
  eqfnr   VARCHAR2(60),
  posnr   VARCHAR2(8),
  f_trans VARCHAR2(2),
  lgort   VARCHAR2(4),
  insmk   VARCHAR2(1),
  sobkz   VARCHAR2(1),
  lifnr   VARCHAR2(10),
  shkzg   VARCHAR2(1),
  bualt   VARCHAR2(15),
  ebeln   VARCHAR2(10),
  ebelp   VARCHAR2(5)
);
-- Add comments to the table 
comment on table T_INF_SPARE_PROOF_DTL
  is '接收ERP物料凭证行项目（备件移库、C类备件发货、工单发货）';
-- Add comments to the columns 
comment on column T_INF_SPARE_PROOF_DTL.dpid
  is '明细主键';
comment on column T_INF_SPARE_PROOF_DTL.hpid
  is '主表ID';
comment on column T_INF_SPARE_PROOF_DTL.zeile
  is '物料凭证中的项目';
comment on column T_INF_SPARE_PROOF_DTL.bwart
  is '移动类型（库存管理）';
comment on column T_INF_SPARE_PROOF_DTL.matnr
  is '物料号';
comment on column T_INF_SPARE_PROOF_DTL.menge
  is '数量';
comment on column T_INF_SPARE_PROOF_DTL.meins
  is '单位';
comment on column T_INF_SPARE_PROOF_DTL.dmbtr
  is '金额';
comment on column T_INF_SPARE_PROOF_DTL.kostl
  is '成本中心';
comment on column T_INF_SPARE_PROOF_DTL.rsnum
  is '预留编号';
comment on column T_INF_SPARE_PROOF_DTL.rspos
  is '预留项目编号';
comment on column T_INF_SPARE_PROOF_DTL.kzear
  is '该预留的最后发货';
comment on column T_INF_SPARE_PROOF_DTL.zdjh
  is '请领单号';
comment on column T_INF_SPARE_PROOF_DTL.zhh
  is '请领单行号';
comment on column T_INF_SPARE_PROOF_DTL.aufnr
  is 'ERP工单号';
comment on column T_INF_SPARE_PROOF_DTL.posnr1
  is 'ERP工单行号';
comment on column T_INF_SPARE_PROOF_DTL.eqfnr
  is 'MES工单号';
comment on column T_INF_SPARE_PROOF_DTL.posnr
  is 'MES工单行号';
comment on column T_INF_SPARE_PROOF_DTL.f_trans
  is '传输标志';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_INF_SPARE_PROOF_DTL
  add constraint PK_T_INF_SPARE_PROOF_DTL primary key (DPID);
alter table T_INF_SPARE_PROOF_DTL
  add constraint FK_INF_RE_RESBGL6 foreign key (HPID)
  references T_INF_SPARE_PROOF (HPID)
  novalidate;
