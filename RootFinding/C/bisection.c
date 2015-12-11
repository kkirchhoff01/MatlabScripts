#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
  float a = -1.2;
  float b = 0.8;
  static float TOL = pow(10,(-3));
  printf("TOL: %f\n", TOL);
  int n = 0;

  float p = (a+b)/2.0;
  float f[] = {pow(a,5.0) + 2.0*a +3.0, pow(b,5.0) + 2.0*b +3.0, pow(p,5) + 2.0*p +3.0};
  int sa;
  if(f[0] == 0)
    n=100;
  else if(f[0]<0)
    sa =-1;
  else
    sa =1;

  while(n<100){
    printf("Step: %i\n", n);
    if((b-a)/2 <= TOL)
      break;
    if((sa*f[2]) > 0){
      a = p;//f[0] = f[2];
      f[0] = pow(a,5) + 2.0*a +3.0;
    }
    if((sa*f[2]) < 0){
      b = p;//f[1] = f[2];
      f[1] = pow(b,5) + 2.0*b +3.0;
    }
    p = (a+b)/2.0;
    f[2] = pow(p,5) + 2.0*p +3.0;
    printf("p = %f\n", p);
    n++;

  }

  printf("Final p = %f\n", p);

  return 0;
}
