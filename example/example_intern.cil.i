# 1 "./example_intern.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./example_intern.cil.c"
# 6 "./example_intern.c"
void __globinit_example_intern(void) ;
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
# 3 "./example_intern.c"
int readCrest(void) ;
# 4 "./example_intern.c"
int sum(int a , int b , int c ) ;
# 6 "./example_intern.c"
int main(void)
{
  int a ;
  int b ;
  int c ;
  int s ;
  int __retres5 ;

  {
  __globinit_example_intern();
  __CrestCall(1, 1);
# 10 "./example_intern.c"
  scanf((char const * __restrict )"%d", & a);
  __CrestClearStack(2);
# 11 "./example_intern.c"
  scanf((char const * __restrict )"%d", & b);
  __CrestClearStack(3);
# 13 "./example_intern.c"
  c = readCrest();
  __CrestHandleReturn(5, (long long )c);
  __CrestStore(4, (unsigned long )(& c));
  __CrestLoad(6, (unsigned long )(& a), (long long )a);
  __CrestLoad(7, (unsigned long )(& b), (long long )b);
  __CrestLoad(8, (unsigned long )(& c), (long long )c);
# 15 "./example_intern.c"
  s = sum(a, b, c);
  __CrestHandleReturn(10, (long long )s);
  __CrestStore(9, (unsigned long )(& s));
  __CrestLoad(11, (unsigned long )(& s), (long long )s);
# 16 "./example_intern.c"
  printf((char const * __restrict )"%d", s);
  __CrestClearStack(12);
  __CrestLoad(13, (unsigned long )0, (long long )0);
  __CrestStore(14, (unsigned long )(& __retres5));
# 19 "./example_intern.c"
  __retres5 = 0;
  __CrestLoad(15, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(16);
# 6 "./example_intern.c"
  return (__retres5);
}
}
# 21 "./example_intern.c"
int readCrest(void)
{
  int fc ;

  {
  __CrestCall(17, 2);
# 23 "./example_intern.c"
  scanf((char const * __restrict )"%d", & fc);
  __CrestClearStack(18);
  {
  __CrestLoad(19, (unsigned long )(& fc), (long long )fc);
  __CrestReturn(20);
# 24 "./example_intern.c"
  return (fc);
  }
}
}
# 27 "./example_intern.c"
int sum(int a , int b , int c )
{
  int __retres4 ;

  {
  __CrestCall(24, 3);
  __CrestStore(23, (unsigned long )(& c));
  __CrestStore(22, (unsigned long )(& b));
  __CrestStore(21, (unsigned long )(& a));
  __CrestLoad(29, (unsigned long )(& a), (long long )a);
  __CrestLoad(28, (unsigned long )(& b), (long long )b);
  __CrestApply2(27, 0, (long long )(a + b));
  __CrestLoad(26, (unsigned long )(& c), (long long )c);
  __CrestApply2(25, 0, (long long )((a + b) + c));
  __CrestStore(30, (unsigned long )(& __retres4));
# 28 "./example_intern.c"
  __retres4 = (a + b) + c;
  {
  __CrestLoad(31, (unsigned long )(& __retres4), (long long )__retres4);
  __CrestReturn(32);
# 27 "./example_intern.c"
  return (__retres4);
  }
}
}
void __globinit_example_intern(void)
{


  {
  __CrestInit();
}
}
