/*Reading Text File*/
DATA banknew;
INFILE 'banknew2.txt' dlm=',' firstobs=2 lrecl=32767;
INPUT job$ marital$ education$ contact$ duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex y$;
/*Categorical Variable_Descriptive Statistics*/
proc freq data=banknew;
tables job;
run;
/*Numerical Variable _Descriptive Statistics*/
proc means data=banknew mean median mode std var min max;
run;
/*Categorical+ Numerical Variable _Descriptive Statistics*/
proc means data=banknew mean median mode std var min max;
class job;
var duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex;
run;
/*Scatter Plot by Group*/
proc sgscatter data=banknew;
matrix duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex /diagonal=(histogram kernel);
run;
/*Stepwise Procedure*/
PROC STEPDISC STEPWISE;
 CLASS job;
Run;
/*Classification Analysis'*/
PROC DISCRIM LIST CROSSVALIDATE POOL=TEST;
 CLASS job;
 VAR duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex;
RUN;
/* MANOVA */
PROC GLM;
 CLASS job;
 MODEL duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex=job;
 MANOVA H=job/PRINTE PRINTH MSTAT=EXACT;
RUN;
/*Principal Component Analysis of Factor Method*/
proc factor method=prin rotate=varimax proportion=0.8 corr;
 var duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex;
run;

