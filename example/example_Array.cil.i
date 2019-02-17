# 1 "./example_Array.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./example_Array.cil.c"
# 4 "./example_Array.c"
void __globinit_example_Array(void) ;
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
# 202 "/home/hyorm1226/Development/crest-0.1.2/bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 4 "./example_Array.c"
int main(void)
{
  int num ;
  int arr_2d[10][10] ;
  int i ;
  int j ;
  int i___0 ;
  int j___0 ;
  int __retres7 ;

  {
  __globinit_example_Array();
  __CrestCall(1, 1);
  __CrestLoad(2, (unsigned long )0, (long long )10);
  __CrestStore(3, (unsigned long )(& num));
# 6 "./example_Array.c"
  num = 10;
  __CrestLoad(4, (unsigned long )0, (long long )0);
  __CrestStore(5, (unsigned long )(& i));
# 9 "./example_Array.c"
  i = 0;
# 9 "./example_Array.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(8, (unsigned long )(& i), (long long )i);
    __CrestLoad(7, (unsigned long )(& num), (long long )num);
    __CrestApply2(6, 16, (long long )(i < num));
# 9 "./example_Array.c"
    if (i < num) {
      __CrestBranch(9, 6, 1);

    } else {
      __CrestBranch(10, 7, 0);
# 9 "./example_Array.c"
      goto while_break;
    }
    }
    __CrestLoad(11, (unsigned long )0, (long long )0);
    __CrestStore(12, (unsigned long )(& j));
# 10 "./example_Array.c"
    j = 0;
    {
# 10 "./example_Array.c"
    while (1) {
      while_continue___0: ;
      {
      __CrestLoad(15, (unsigned long )(& j), (long long )j);
      __CrestLoad(14, (unsigned long )(& num), (long long )num);
      __CrestApply2(13, 16, (long long )(j < num));
# 10 "./example_Array.c"
      if (j < num) {
        __CrestBranch(16, 13, 1);

      } else {
        __CrestBranch(17, 14, 0);
# 10 "./example_Array.c"
        goto while_break___0;
      }
      }
# 11 "./example_Array.c"
      __CrestInt(& arr_2d[i][j]);
      __CrestLoad(20, (unsigned long )(& j), (long long )j);
      __CrestLoad(19, (unsigned long )0, (long long )1);
      __CrestApply2(18, 0, (long long )(j + 1));
      __CrestStore(21, (unsigned long )(& j));
# 10 "./example_Array.c"
      j ++;
    }
    while_break___0: ;
    }
    __CrestLoad(24, (unsigned long )(& i), (long long )i);
    __CrestLoad(23, (unsigned long )0, (long long )1);
    __CrestApply2(22, 0, (long long )(i + 1));
    __CrestStore(25, (unsigned long )(& i));
# 9 "./example_Array.c"
    i ++;
  }
  while_break:
  __CrestLoad(26, (unsigned long )0, (long long )0);
  __CrestStore(27, (unsigned long )(& i___0));
# 14 "./example_Array.c"
  i___0 = 0;
# 14 "./example_Array.c"
  while (1) {
    while_continue___1: ;
    {
    __CrestLoad(30, (unsigned long )(& i___0), (long long )i___0);
    __CrestLoad(29, (unsigned long )(& num), (long long )num);
    __CrestApply2(28, 16, (long long )(i___0 < num));
# 14 "./example_Array.c"
    if (i___0 < num) {
      __CrestBranch(31, 24, 1);

    } else {
      __CrestBranch(32, 25, 0);
# 14 "./example_Array.c"
      goto while_break___1;
    }
    }
    __CrestLoad(33, (unsigned long )0, (long long )0);
    __CrestStore(34, (unsigned long )(& j___0));
# 15 "./example_Array.c"
    j___0 = 0;
    {
# 15 "./example_Array.c"
    while (1) {
      while_continue___2: ;
      {
      __CrestLoad(37, (unsigned long )(& j___0), (long long )j___0);
      __CrestLoad(36, (unsigned long )(& num), (long long )num);
      __CrestApply2(35, 16, (long long )(j___0 < num));
# 15 "./example_Array.c"
      if (j___0 < num) {
        __CrestBranch(38, 31, 1);

      } else {
        __CrestBranch(39, 32, 0);
# 15 "./example_Array.c"
        goto while_break___2;
      }
      }
      __CrestLoad(40, (unsigned long )(& arr_2d[i___0][j___0]), (long long )arr_2d[i___0][j___0]);
# 16 "./example_Array.c"
      printf((char const * __restrict )"%d", arr_2d[i___0][j___0]);
      __CrestClearStack(41);
      __CrestLoad(44, (unsigned long )(& j___0), (long long )j___0);
      __CrestLoad(43, (unsigned long )0, (long long )1);
      __CrestApply2(42, 0, (long long )(j___0 + 1));
      __CrestStore(45, (unsigned long )(& j___0));
# 15 "./example_Array.c"
      j___0 ++;
    }
    while_break___2: ;
    }
    __CrestLoad(48, (unsigned long )(& i___0), (long long )i___0);
    __CrestLoad(47, (unsigned long )0, (long long )1);
    __CrestApply2(46, 0, (long long )(i___0 + 1));
    __CrestStore(49, (unsigned long )(& i___0));
# 14 "./example_Array.c"
    i___0 ++;
  }
  while_break___1:
  __CrestLoad(50, (unsigned long )0, (long long )0);
  __CrestStore(51, (unsigned long )(& __retres7));
# 19 "./example_Array.c"
  __retres7 = 0;
  __CrestLoad(52, (unsigned long )(& __retres7), (long long )__retres7);
  __CrestReturn(53);
# 4 "./example_Array.c"
  return (__retres7);
}
}
void __globinit_example_Array(void)
{


  {
  __CrestInit();
}
}
