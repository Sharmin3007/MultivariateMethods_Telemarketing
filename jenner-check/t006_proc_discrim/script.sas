/*Classification Analysis'*/
PROC DISCRIM LIST CROSSVALIDATE POOL=TEST;
 CLASS job;
 VAR duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex;
RUN;
