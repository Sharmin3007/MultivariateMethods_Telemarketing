/*Categorical+ Numerical Variable _Descriptive Statistics*/
proc means data=banknew mean median mode std var min max;
class job;
var duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex;
run;
