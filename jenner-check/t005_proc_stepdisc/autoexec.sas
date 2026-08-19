/* options obs=100; caps input rows for the captured run */
options obs=100;

/* Sample rows shaped like banknew2.txt (the repo's own Portuguese-bank
   telemarketing extract, itself drawn from the public UCI Bank Marketing
   dataset). The original script reads banknew2.txt via INFILE; here the
   same columns are supplied inline via DATALINES so the bundle is
   self-contained -- job/marital/education are categorical buckets only,
   no individual-identifying fields. */
DATA banknew;
INPUT job$ marital$ education$ contact$ duration campaign age ConsumerPriceeIndex ConsumerConfidenceIndex y$;
DATALINES;
self-employed married high.school cellular 37 2 63 93.578 -44.5 no
entrepreneur married high.school cellular 419 5 47 93.589 -41.2 yes
management single basic.9y telephone 640 2 42 92.954 -26.1 yes
entrepreneur divorced high.school telephone 748 2 56 93.587 -37.2 no
technician married basic.6y cellular 443 2 74 93.424 -36.1 no
unemployed single illiterate telephone 353 2 18 93.146 -26.0 no
housemaid single basic.4y telephone 440 5 22 92.527 -27.4 yes
unknown single unknown telephone 656 9 18 93.67 -36.7 no
unemployed married university.degree telephone 297 4 60 93.79 -44.3 yes
self-employed divorced university.degree telephone 478 9 46 92.303 -44.6 yes
retired divorced basic.9y cellular 643 6 49 92.049 -27.7 yes
blue-collar married illiterate telephone 621 4 63 92.174 -34.1 yes
unemployed married high.school telephone 165 6 74 92.172 -44.1 yes
student unknown basic.6y cellular 697 9 71 92.037 -47.8 no
technician single high.school telephone 252 1 55 93.839 -48.5 yes
student married university.degree telephone 832 8 36 93.058 -27.0 yes
unknown single illiterate cellular 139 9 27 92.681 -35.5 yes
self-employed divorced basic.6y cellular 315 8 31 93.348 -32.6 yes
housemaid unknown university.degree telephone 254 3 50 93.234 -31.9 no
admin. unknown basic.4y cellular 125 4 32 93.263 -49.4 no
student single university.degree telephone 522 4 73 93.003 -48.6 yes
blue-collar divorced professional.course telephone 856 1 64 93.149 -47.0 yes
admin. unknown high.school telephone 633 5 69 94.173 -31.8 no
blue-collar unknown professional.course telephone 189 4 66 92.841 -47.8 no
unknown single illiterate telephone 287 1 23 93.586 -30.1 no
technician married basic.4y telephone 544 9 28 92.142 -37.8 no
management married basic.6y telephone 817 6 25 92.734 -46.2 no
services unknown basic.4y cellular 92 7 64 92.848 -29.3 no
retired single unknown cellular 301 9 73 93.516 -26.9 no
management divorced basic.9y cellular 670 5 71 93.597 -35.4 no
services single high.school telephone 173 7 29 92.696 -44.0 no
housemaid single unknown telephone 688 8 27 92.662 -44.1 yes
retired single basic.4y cellular 610 2 23 93.83 -30.4 no
entrepreneur single unknown telephone 306 9 32 93.712 -29.8 no
services single unknown telephone 224 2 24 93.647 -41.5 yes
admin. married basic.4y telephone 280 4 26 93.841 -33.8 no
;
run;
