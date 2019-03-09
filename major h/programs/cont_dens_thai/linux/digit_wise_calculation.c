#include <stdlib.h>
#include <stdio.h>
#include<string.h>
#include<math.h>
#include<time.h>
#define ROWS 1000
#define COLUMNS 91
#define SIZE 10
int *Y();   
int *Y1();
int *Reproduction(int *, int *);
int distance(float *C, float *C1, int * ,int);
main(void)
{

   float i[91000], i1[91000];
   int j,k,k1;
   int *r;
   int Rand[SIZE][91];
   int r1,r2,r3;
   int string[90];
   int RESULT,it,iteration=10;
   int FINAL_RESULT=0;
   int TARGET_STRING[90];
   int OVER_ALL_RESULT=0;
   int feature_vector=0;
   time_t t;

  FILE *stream,*stream1,*output;

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

stream1 = fopen("ga_test.txt", "r");
   /* read an integer from the
	 standard input stream */
printf("\n Processing the Reading of Test File \n");
  for(j=0;j<ROWS*COLUMNS;j++)
   if (fscanf(stream1, "%f", &i1[j]))
  k1=0;
   else
   {
      fprintf(stderr, "Error reading an integer from stdin.\n");
      exit(1);
   }


output=fopen("result.txt","w");


r=Y();  
for(r1=0;r1<SIZE;r1++)
for(r2=0;r2<90;r2++)
Rand[r1][r2]=*((r+r1)+r2);


printf("\n Getting inside Genatic Algorithm \n");

/*************************************************************
****    GENETIC ALGO CODING STARTS HERE 
****    RUNNING ALGO FOR <iterations> TIMES
**************************************************************/


for(it=0;it<iteration;it++)
 {

srand((unsigned) time(&t)); 
r=Y();  
for(r1=0;r1<SIZE;r1++)
for(r2=0;r2<90;r2++)
Rand[r1][r2]=*((r+r1)+r2);
/* Insert New Rand of dimention 10x91 here*/

for(r1=0;r1<SIZE;r1++)
{
r3=0;

for(r2=0;r2<90;r2++)

string[r3++]=Rand[r1][r2];

RESULT=distance(&i[0],&i1[0],string,it);
Rand[r1][90]=RESULT;
if(RESULT>FINAL_RESULT)
{
FINAL_RESULT=RESULT;
for(k=0;k<90;k++)
TARGET_STRING[k]=string[k];
}

/*
printf("Digit : %2d    Iteration : %5d     Result  : %4d     Best  %4d\n",it,r1,RESULT,FINAL_RESULT);
*/
}


fprintf(output,"\nr%d={",it); 
for(k=0;k<90;k++)
{
fprintf(output,",%1d",TARGET_STRING[k]);
if(TARGET_STRING[k]==1)
feature_vector=feature_vector+1;

}
fprintf(output,"};" ); 



printf("\n For Digit   : %2d      Best Recognition is : %3d   Size of Featuer : %d\n",it,FINAL_RESULT,feature_vector);
feature_vector=0;
RESULT=0;
OVER_ALL_RESULT=OVER_ALL_RESULT+FINAL_RESULT;
FINAL_RESULT=0;


}

printf("\n\n\n Final Recognition is %4d \n",OVER_ALL_RESULT);
fprintf(output,"\n Final Recognition %d ",OVER_ALL_RESULT);

/********************************
** END OF GA PART
***********************************/
return 0;
}

/******************************************************
****    Function Name	:	distance
****	Parameters	:	data and test vectors
****	return		:	result of recognition
*******************************************************/

int distance(float *X, float *Y, int *T1,int it1)
{
int     result=0,T;

int k,k1,K=0,P,j;
float D[ROWS],p;
float B1[1000][91], A1[1000][91];
int target_string[90];

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




for(K=it1*100;K<it1*100+100;K++)

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

if(A1[P][90]==B1[K][90])
result=result+1;
}

return result;

}
/***** END OF FUNCTION DISTANCE **********/


/******************************************

*** Function Name   : Y()
*** Generate random numbers : Population : SIZE

*******************************************/    

int *Y()
{
int i,j;
time_t t;
int R[SIZE][90];
int *a1;
for(i=0;i<SIZE;i++)
for(j=0;j<90;j++)
if(rand()>RAND_MAX/2)
R[i][j]=1;
else
R[i][j]=0;

return &R[0][0];
}


/***** END OF FUNCTION RANDOM NUMBER GENERATOR    : int *Y()   */


int *Y2()
{
int i,j;
time_t t;
int R[90];
for(i=0;i<90;j++)

srand((unsigned)time(&t));
if(rand()>RAND_MAX/2)
R[i]=1;
else
R[i]=0;

return &R[0];
}

