# 1 "./example_extern.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./example_extern.cil.c"
# 4 "./example_extern.c"
void __globinit_example_extern(void) ;
extern void __CrestInit(void) __attribute__((__crest_skip__)) ;
extern void __CrestHandleReturn(int id , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestReturn(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestCall(int id , unsigned int fid ) __attribute__((__crest_skip__)) ;
extern void __CrestBranch(int id , int bid , unsigned char b ) __attribute__((__crest_skip__)) ;
extern void __CrestApply2(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestClearStack(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestStore(int id , unsigned long addr ) __attribute__((__crest_skip__)) ;
extern void __CrestLoad(int id , unsigned long addr , long long val ) __attribute__((__crest_skip__)) ;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 431 "/usr/include/stdio.h"
extern int scanf(char const * __restrict __format , ...) __asm__("__isoc99_scanf") ;
# 1 "./example_extern.h"
int readCrest(void) ;
# 2 "./example_extern.h"
int sum(int a , int b , int c ) ;
# 4 "./example_extern.h"
int readCrest(void)
{
  int fc ;

  {
  __CrestCall(1, 1);
# 6 "./example_extern.h"
  scanf((char const * __restrict )"%d", & fc);
  __CrestClearStack(2);
  {
  __CrestLoad(3, (unsigned long )(& fc), (long long )fc);
  __CrestReturn(4);
# 7 "./example_extern.h"
  return (fc);
  }
}
}
# 10 "./example_extern.h"
int sum(int a , int b , int c )
{
  int __retres4 ;

  {
  __CrestCall(8, 2);
  __CrestStore(7, (unsigned long )(& c));
  __CrestStore(6, (unsigned long )(& b));
  __CrestStore(5, (unsigned long )(& a));
  __CrestLoad(13, (unsigned long )(& a), (long long )a);
  __CrestLoad(12, (unsigned long )(& b), (long long )b);
  __CrestApply2(11, 0, (long long )(a + b));
  __CrestLoad(10, (unsigned long )(& c), (long long )c);
  __CrestApply2(9, 0, (long long )((a + b) + c));
  __CrestStore(14, (unsigned long )(& __retres4));
# 11 "./example_extern.h"
  __retres4 = (a + b) + c;
  {
  __CrestLoad(15, (unsigned long )(& __retres4), (long long )__retres4);
  __CrestReturn(16);
# 10 "./example_extern.h"
  return (__retres4);
  }
}
}
# 4 "./example_extern.c"
int main(void)
{
  int a ;
  int b ;
  int c ;
  int s ;
  int __retres5 ;

  {
  __globinit_example_extern();
  __CrestCall(17, 3);
# 8 "./example_extern.c"
  scanf((char const * __restrict )"%d", & a);
  __CrestClearStack(18);
# 9 "./example_extern.c"
  scanf((char const * __restrict )"%d", & b);
  __CrestClearStack(19);
# 11 "./example_extern.c"
  c = readCrest();
  __CrestHandleReturn(21, (long long )c);
  __CrestStore(20, (unsigned long )(& c));
  __CrestLoad(22, (unsigned long )(& a), (long long )a);
  __CrestLoad(23, (unsigned long )(& b), (long long )b);
  __CrestLoad(24, (unsigned long )(& c), (long long )c);
# 13 "./example_extern.c"
  s = sum(a, b, c);
  __CrestHandleReturn(26, (long long )s);
  __CrestStore(25, (unsigned long )(& s));
  __CrestLoad(27, (unsigned long )(& s), (long long )s);
# 14 "./example_extern.c"
  printf((char const * __restrict )"%d", s);
  __CrestClearStack(28);
  __CrestLoad(29, (unsigned long )0, (long long )0);
  __CrestStore(30, (unsigned long )(& __retres5));
# 17 "./example_extern.c"
  __retres5 = 0;
  __CrestLoad(31, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(32);
# 4 "./example_extern.c"
  return (__retres5);
}
}
void __globinit_example_extern(void)
{


  {
  __CrestInit();
}
}
