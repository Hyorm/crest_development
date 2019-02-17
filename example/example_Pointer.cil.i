# 1 "./example_Pointer.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./example_Pointer.cil.c"
# 4 "./example_Pointer.c"
void __globinit_example_Pointer(void) ;
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
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
typedef unsigned long size_t;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 466 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__)) void *( __attribute__((__leaf__)) malloc)(size_t __size ) __attribute__((__malloc__)) ;
# 483 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__)) void ( __attribute__((__leaf__)) free)(void *__ptr ) ;
# 202 "/home/hyorm1226/Development/crest-0.1.2/bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 4 "./example_Pointer.c"
int main(void)
{
  int **arr_2d ;
  int num ;
  void *tmp ;
  int i ;
  void *tmp___0 ;
  int i___0 ;
  int j ;
  int i___1 ;
  int j___0 ;
  int **mem_10 ;
  int **mem_11 ;
  int **mem_12 ;
  int *mem_13 ;
  int **mem_14 ;
  int __retres15 ;

  {
  __globinit_example_Pointer();
  __CrestCall(1, 1);
  __CrestLoad(2, (unsigned long )0, (long long )10);
  __CrestStore(3, (unsigned long )(& num));
# 7 "./example_Pointer.c"
  num = 10;
  __CrestLoad(6, (unsigned long )0, (long long )sizeof(int *));
  __CrestLoad(5, (unsigned long )(& num), (long long )num);
  __CrestApply2(4, 2, (long long )(sizeof(int *) * (unsigned long )num));
# 9 "./example_Pointer.c"
  tmp = malloc(sizeof(int *) * (unsigned long )num);
  __CrestClearStack(7);
# 9 "./example_Pointer.c"
  arr_2d = (int **)tmp;
  __CrestLoad(8, (unsigned long )0, (long long )0);
  __CrestStore(9, (unsigned long )(& i));
# 11 "./example_Pointer.c"
  i = 0;
# 11 "./example_Pointer.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(12, (unsigned long )(& i), (long long )i);
    __CrestLoad(11, (unsigned long )(& num), (long long )num);
    __CrestApply2(10, 16, (long long )(i < num));
# 11 "./example_Pointer.c"
    if (i < num) {
      __CrestBranch(13, 6, 1);

    } else {
      __CrestBranch(14, 7, 0);
# 11 "./example_Pointer.c"
      goto while_break;
    }
    }
    __CrestLoad(17, (unsigned long )0, (long long )sizeof(int ));
    __CrestLoad(16, (unsigned long )(& num), (long long )num);
    __CrestApply2(15, 2, (long long )(sizeof(int ) * (unsigned long )num));
# 12 "./example_Pointer.c"
    tmp___0 = malloc(sizeof(int ) * (unsigned long )num);
    __CrestClearStack(18);
# 12 "./example_Pointer.c"
    mem_10 = arr_2d + i;
# 12 "./example_Pointer.c"
    *mem_10 = (int *)tmp___0;
    __CrestLoad(21, (unsigned long )(& i), (long long )i);
    __CrestLoad(20, (unsigned long )0, (long long )1);
    __CrestApply2(19, 0, (long long )(i + 1));
    __CrestStore(22, (unsigned long )(& i));
# 11 "./example_Pointer.c"
    i ++;
  }
  while_break:
  __CrestLoad(23, (unsigned long )0, (long long )0);
  __CrestStore(24, (unsigned long )(& i___0));
# 15 "./example_Pointer.c"
  i___0 = 0;
# 15 "./example_Pointer.c"
  while (1) {
    while_continue___0: ;
    {
    __CrestLoad(27, (unsigned long )(& i___0), (long long )i___0);
    __CrestLoad(26, (unsigned long )(& num), (long long )num);
    __CrestApply2(25, 16, (long long )(i___0 < num));
# 15 "./example_Pointer.c"
    if (i___0 < num) {
      __CrestBranch(28, 15, 1);

    } else {
      __CrestBranch(29, 16, 0);
# 15 "./example_Pointer.c"
      goto while_break___0;
    }
    }
    __CrestLoad(30, (unsigned long )0, (long long )0);
    __CrestStore(31, (unsigned long )(& j));
# 16 "./example_Pointer.c"
    j = 0;
    {
# 16 "./example_Pointer.c"
    while (1) {
      while_continue___1: ;
      {
      __CrestLoad(34, (unsigned long )(& j), (long long )j);
      __CrestLoad(33, (unsigned long )(& num), (long long )num);
      __CrestApply2(32, 16, (long long )(j < num));
# 16 "./example_Pointer.c"
      if (j < num) {
        __CrestBranch(35, 22, 1);

      } else {
        __CrestBranch(36, 23, 0);
# 16 "./example_Pointer.c"
        goto while_break___1;
      }
      }
# 17 "./example_Pointer.c"
      mem_11 = arr_2d + i___0;
# 17 "./example_Pointer.c"
      __CrestInt(*mem_11 + j);
      __CrestLoad(39, (unsigned long )(& j), (long long )j);
      __CrestLoad(38, (unsigned long )0, (long long )1);
      __CrestApply2(37, 0, (long long )(j + 1));
      __CrestStore(40, (unsigned long )(& j));
# 16 "./example_Pointer.c"
      j ++;
    }
    while_break___1: ;
    }
    __CrestLoad(43, (unsigned long )(& i___0), (long long )i___0);
    __CrestLoad(42, (unsigned long )0, (long long )1);
    __CrestApply2(41, 0, (long long )(i___0 + 1));
    __CrestStore(44, (unsigned long )(& i___0));
# 15 "./example_Pointer.c"
    i___0 ++;
  }
  while_break___0:
  __CrestLoad(45, (unsigned long )0, (long long )0);
  __CrestStore(46, (unsigned long )(& i___1));
# 20 "./example_Pointer.c"
  i___1 = 0;
# 20 "./example_Pointer.c"
  while (1) {
    while_continue___2: ;
    {
    __CrestLoad(49, (unsigned long )(& i___1), (long long )i___1);
    __CrestLoad(48, (unsigned long )(& num), (long long )num);
    __CrestApply2(47, 16, (long long )(i___1 < num));
# 20 "./example_Pointer.c"
    if (i___1 < num) {
      __CrestBranch(50, 33, 1);

    } else {
      __CrestBranch(51, 34, 0);
# 20 "./example_Pointer.c"
      goto while_break___2;
    }
    }
    __CrestLoad(52, (unsigned long )0, (long long )0);
    __CrestStore(53, (unsigned long )(& j___0));
# 21 "./example_Pointer.c"
    j___0 = 0;
    {
# 21 "./example_Pointer.c"
    while (1) {
      while_continue___3: ;
      {
      __CrestLoad(56, (unsigned long )(& j___0), (long long )j___0);
      __CrestLoad(55, (unsigned long )(& num), (long long )num);
      __CrestApply2(54, 16, (long long )(j___0 < num));
# 21 "./example_Pointer.c"
      if (j___0 < num) {
        __CrestBranch(57, 40, 1);

      } else {
        __CrestBranch(58, 41, 0);
# 21 "./example_Pointer.c"
        goto while_break___3;
      }
      }
# 22 "./example_Pointer.c"
      mem_12 = arr_2d + i___1;
# 22 "./example_Pointer.c"
      mem_13 = *mem_12 + j___0;
      __CrestLoad(59, (unsigned long )mem_13, (long long )*mem_13);
# 22 "./example_Pointer.c"
      printf((char const * __restrict )"%d", *mem_13);
      __CrestClearStack(60);
      __CrestLoad(63, (unsigned long )(& j___0), (long long )j___0);
      __CrestLoad(62, (unsigned long )0, (long long )1);
      __CrestApply2(61, 0, (long long )(j___0 + 1));
      __CrestStore(64, (unsigned long )(& j___0));
# 21 "./example_Pointer.c"
      j___0 ++;
    }
    while_break___3: ;
    }
# 24 "./example_Pointer.c"
    mem_14 = arr_2d + i___1;
# 24 "./example_Pointer.c"
    free((void *)*mem_14);
    __CrestClearStack(65);
    __CrestLoad(68, (unsigned long )(& i___1), (long long )i___1);
    __CrestLoad(67, (unsigned long )0, (long long )1);
    __CrestApply2(66, 0, (long long )(i___1 + 1));
    __CrestStore(69, (unsigned long )(& i___1));
# 20 "./example_Pointer.c"
    i___1 ++;
  }
  while_break___2:
# 26 "./example_Pointer.c"
  free((void *)arr_2d);
  __CrestClearStack(70);
  __CrestLoad(71, (unsigned long )0, (long long )0);
  __CrestStore(72, (unsigned long )(& __retres15));
# 27 "./example_Pointer.c"
  __retres15 = 0;
  __CrestLoad(73, (unsigned long )(& __retres15), (long long )__retres15);
  __CrestReturn(74);
# 4 "./example_Pointer.c"
  return (__retres15);
}
}
void __globinit_example_Pointer(void)
{


  {
  __CrestInit();
}
}
