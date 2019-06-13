	alter table T_INF_RECEIVE_MAT_PROOF add (BLDAT varchar2(8) );
	alter table T_INF_RECEIVE_MAT_PROOF add (BUDAT varchar2(8) );
	alter table T_INF_RECEIVE_MAT_PROOF add (USNAM varchar2(12) );
	alter table T_INF_RECEIVE_MAT_PROOF add (CPUDT varchar2(8) );
	alter table T_INF_RECEIVE_MAT_PROOF add (CPUTM varchar2(6) );
	
	
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (LGORT varchar2(4) );
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (INSMK varchar2(1) );
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (SOBKZ varchar2(1) );
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (LIFNR varchar2(10) );
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (SHKZG varchar2(1) );
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (BUALT varchar2(15) );
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (EBELN varchar2(10) );
	alter table T_INF_RECEIVE_MAT_PROOF_DTL add (EBELP varchar2(5) );