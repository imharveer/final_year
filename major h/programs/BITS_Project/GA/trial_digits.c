#include <stdlib.h>
#include <stdio.h>
#include<string.h>
#include<math.h>
#include"random.c"
#define SIZE 18 
#define COLUMNS 91
#define ROWS 1000
int *Y();
int distance(float *C, float *C1, int * ,int);
main(void)
{

   float i[91000], i1[91000];
   int j,k,k1;
   int *r;
   int Rand[SIZE][92];
   int r1,r2,r3;
   int string[90];
   int RESULT,it,iteration=9;
   int FINAL_RESULT=0;
   int WORST_RESULT=1000;
   int TARGET_STRING[90];
   int COMPLETE_RESULT=0; 
   int WORST_STRING[90];

  FILE *stream,*stream1, output,*out_file;

/* open a Data File */

stream = fopen("ga_data.txt", "r");
   /* read an integer from the
	 standard input stream */
printf("\n Processing the Reading of Data File \n");
  for(j=0;j<ROWS*COLUMNS;j++)
   if (fscanf(stream, "%f", &i[j]))
  k1=0;
   else
   {
      fprintf(stderr, "Error reading an integer from stdin.\n");
      exit(1);
   }
/* open a Test File */

stream = fopen("ga_test.txt", "r");
   /* read an integer from the
	 standard input stream */
printf("\n Processing the Reading of Test File \n");
  for(j=0;j<ROWS*COLUMNS;j++)
   if (fscanf(stream, "%f", &i1[j]))
  k1=0;
   else
   {
      fprintf(stderr, "Error reading an integer from stdin.\n");
      exit(1);
   }

r=Y();


for(r1=0;r1<SIZE;r1++)
for(r2=0;r2<90;r2++)

Rand[r1][r2]=*((r+r1)+r2);


printf("\n Getting inside Genatic Algorithm \n");

/*************************************************************
****    GENETIC ALGO CODING STARTS HERE 
****    RUNNING ALGO FOR <iterations> TIMES
**************************************************************/

FINAL_RESULT=0;
WORST_RESULT=1000;
for(r1=0;r1<SIZE;r1++)
{
r3=0;
for(r2=0;r2<90;r2++)

string[r3++]=Rand[r1][r2];

RESULT=0;

for(it=0;it<=iteration;it++)
RESULT=RESULT+distance(&i[0],&i1[0],string,it);


if(RESULT>FINAL_RESULT)
{
FINAL_RESULT=RESULT;
for(k=0;k<90;k++)
TARGET_STRING[k]=string[k];
}


if(WORST_RESULT > RESULT)
{
WORST_RESULT=RESULT;
for(k=0;k<90;k++)
WORST_STRING[k]=string[k];
}

printf("\nIteration =  %4d  Result = %3d  Worst = %3d   Best =  %3d",r1,RESULT,WORST_RESULT,FINAL_RESULT);

}

printf("\n Best Result is %d  \n",FINAL_RESULT);
for(k=0;k<90;k++)
printf("%d",TARGET_STRING[k]);

printf("\n Worst Result is %d  \n ",WORST_RESULT);
for(k=0;k<90;k++)
printf("%d",WORST_STRING[k]);

if(!(out_file=fopen("strings_ga.txt","w")))
{
printf("\n Can Not Open File");
exit(0);

}

fprintf(out_file,"\n Result is %d   :  BEST String : ",FINAL_RESULT);
for(k=0;k<90;k++)
fprintf(out_file,"%d",TARGET_STRING[k]);
fprintf(out_file,"\n Worst String : ");
for(k=0;k<90;k++)
fprintf(out_file,"%d",WORST_STRING[k]);

return 0;
}

/******************************************************
****    Function Name	:	distance
****	Parameters	:	data and test vectors
****	return		:	result of recognition
*******************************************************/

int distance(float *X, float *Y, int *T1,int T2)
{
int     result=0,T;

int k,k1,K=0,P,j;
float D[ROWS],p;
float B1[1000][91], A1[1000][91];
int target_string[90];
int digit;
digit=T2;

j=0;
for(k=0;k<1000;k++)
for(k1=0;k1<91;k1++)
   A1[k][k1]=X[j++];



j=0;
for(k=0;k<1000;k++)
for(k1=0;k1<91;k1++)

   B1[k][k1]=Y[j++];

for(k=0;k<90;k++)
target_string[k]=T1[k];




for(K=digit*100;K<digit*100+100;K++)


{
for(k=0;k<ROWS;k++)
D[k]=0;
 for(k=0;k<ROWS;k++)
for(k1=0;k1<COLUMNS-1;k1++)
if(target_string[k1]==1)
D[k]=D[k]+((B1[K][k1]-A1[k][k1])*(B1[K][k1]-A1[k][k1]));

P=0;
p=D[0];

for(j=0;j<ROWS;j++)
if(p>D[j])
{
p=D[j];
P=j;
if(D[j]=0)
T=T+1;
}

if(A1[P][90]==digit)
result=result+1;
}

return result;

}
   




