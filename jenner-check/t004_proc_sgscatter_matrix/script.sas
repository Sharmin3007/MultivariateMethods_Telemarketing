/*Scatter Plot by Group*/
proc sgscatter data=banknew;
matrix duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex /diagonal=(histogram kernel);
run;
