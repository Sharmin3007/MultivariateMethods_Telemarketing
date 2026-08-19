/* MANOVA */
PROC GLM;
 CLASS job;
 MODEL duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex=job;
 MANOVA H=job/PRINTE PRINTH MSTAT=EXACT;
RUN;
