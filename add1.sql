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
  is '����ERP����ƾ֤�������ƿ⡢C�౸������������������';
-- Add comments to the columns 
comment on column T_INF_SPARE_PROOF.hpid
  is '����';
comment on column T_INF_SPARE_PROOF.mblnr
  is '����ƾ֤���';
comment on column T_INF_SPARE_PROOF.mjahr
  is '����ƾ֤���';
comment on column T_INF_SPARE_PROOF.werks
  is '��������';
comment on column T_INF_SPARE_PROOF.f_trans
  is '�����־';
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
  is '����ERP����ƾ֤����Ŀ�������ƿ⡢C�౸������������������';
-- Add comments to the columns 
comment on column T_INF_SPARE_PROOF_DTL.dpid
  is '��ϸ����';
comment on column T_INF_SPARE_PROOF_DTL.hpid
  is '����ID';
comment on column T_INF_SPARE_PROOF_DTL.zeile
  is '����ƾ֤�е���Ŀ';
comment on column T_INF_SPARE_PROOF_DTL.bwart
  is '�ƶ����ͣ�������';
comment on column T_INF_SPARE_PROOF_DTL.matnr
  is '���Ϻ�';
comment on column T_INF_SPARE_PROOF_DTL.menge
  is '����';
comment on column T_INF_SPARE_PROOF_DTL.meins
  is '��λ';
comment on column T_INF_SPARE_PROOF_DTL.dmbtr
  is '���';
comment on column T_INF_SPARE_PROOF_DTL.kostl
  is '�ɱ�����';
comment on column T_INF_SPARE_PROOF_DTL.rsnum
  is 'Ԥ�����';
comment on column T_INF_SPARE_PROOF_DTL.rspos
  is 'Ԥ����Ŀ���';
comment on column T_INF_SPARE_PROOF_DTL.kzear
  is '��Ԥ������󷢻�';
comment on column T_INF_SPARE_PROOF_DTL.zdjh
  is '���쵥��';
comment on column T_INF_SPARE_PROOF_DTL.zhh
  is '���쵥�к�';
comment on column T_INF_SPARE_PROOF_DTL.aufnr
  is 'ERP������';
comment on column T_INF_SPARE_PROOF_DTL.posnr1
  is 'ERP�����к�';
comment on column T_INF_SPARE_PROOF_DTL.eqfnr
  is 'MES������';
comment on column T_INF_SPARE_PROOF_DTL.posnr
  is 'MES�����к�';
comment on column T_INF_SPARE_PROOF_DTL.f_trans
  is '�����־';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_INF_SPARE_PROOF_DTL
  add constraint PK_T_INF_SPARE_PROOF_DTL primary key (DPID);
alter table T_INF_SPARE_PROOF_DTL
  add constraint FK_INF_RE_RESBGL6 foreign key (HPID)
  references T_INF_SPARE_PROOF (HPID)
  novalidate;
