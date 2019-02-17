# 1 "./b_tree.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./b_tree.cil.c"
# 316 "./b_tree.c"
void __globinit_b_tree(void) ;
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
# 8 "./b_tree.c"
struct btreeNode {
   int val[5] ;
   int count ;
   struct btreeNode *link[5] ;
};
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 199 "/home/hyorm1226/Development/crest-0.1.2/bin/../include/crest.h"
extern void __CrestUInt(unsigned int *x ) __attribute__((__crest_skip__)) ;
# 466 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__)) void *( __attribute__((__leaf__)) malloc)(size_t __size ) __attribute__((__malloc__)) ;
# 483 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__)) void ( __attribute__((__leaf__)) free)(void *__ptr ) ;
# 543 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) exit)(int __status ) ;
# 13 "./b_tree.c"
struct btreeNode *root ;
# 16 "./b_tree.c"
struct btreeNode *createNode(int val , struct btreeNode *child )
{
  struct btreeNode *newNode ;
  void *tmp ;

  {
  __CrestCall(2, 1);
  __CrestStore(1, (unsigned long )(& val));
  __CrestLoad(3, (unsigned long )0, (long long )sizeof(struct btreeNode ));
# 18 "./b_tree.c"
  tmp = malloc(sizeof(struct btreeNode ));
  __CrestClearStack(4);
# 18 "./b_tree.c"
  newNode = (struct btreeNode *)tmp;
  __CrestLoad(5, (unsigned long )(& val), (long long )val);
  __CrestStore(6, (unsigned long )(& newNode->val[1]));
# 19 "./b_tree.c"
  newNode->val[1] = val;
  __CrestLoad(7, (unsigned long )0, (long long )1);
  __CrestStore(8, (unsigned long )(& newNode->count));
# 20 "./b_tree.c"
  newNode->count = 1;
# 21 "./b_tree.c"
  newNode->link[0] = root;
# 22 "./b_tree.c"
  newNode->link[1] = child;
  {
  __CrestReturn(9);
# 23 "./b_tree.c"
  return (newNode);
  }
}
}
# 27 "./b_tree.c"
void addValToNode(int val , int pos , struct btreeNode *node , struct btreeNode *child )
{
  int j ;

  {
  __CrestCall(12, 2);
  __CrestStore(11, (unsigned long )(& pos));
  __CrestStore(10, (unsigned long )(& val));
  __CrestLoad(13, (unsigned long )(& node->count), (long long )node->count);
  __CrestStore(14, (unsigned long )(& j));
# 29 "./b_tree.c"
  j = node->count;
  {
# 30 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(17, (unsigned long )(& j), (long long )j);
    __CrestLoad(16, (unsigned long )(& pos), (long long )pos);
    __CrestApply2(15, 14, (long long )(j > pos));
# 30 "./b_tree.c"
    if (j > pos) {
      __CrestBranch(18, 8, 1);

    } else {
      __CrestBranch(19, 9, 0);
# 30 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(20, (unsigned long )(& node->val[j]), (long long )node->val[j]);
    __CrestStore(21, (unsigned long )(& node->val[j + 1]));
# 31 "./b_tree.c"
    node->val[j + 1] = node->val[j];
# 32 "./b_tree.c"
    node->link[j + 1] = node->link[j];
    __CrestLoad(24, (unsigned long )(& j), (long long )j);
    __CrestLoad(23, (unsigned long )0, (long long )1);
    __CrestApply2(22, 1, (long long )(j - 1));
    __CrestStore(25, (unsigned long )(& j));
# 33 "./b_tree.c"
    j --;
  }
  while_break: ;
  }
  __CrestLoad(26, (unsigned long )(& val), (long long )val);
  __CrestStore(27, (unsigned long )(& node->val[j + 1]));
# 35 "./b_tree.c"
  node->val[j + 1] = val;
# 36 "./b_tree.c"
  node->link[j + 1] = child;
  __CrestLoad(30, (unsigned long )(& node->count), (long long )node->count);
  __CrestLoad(29, (unsigned long )0, (long long )1);
  __CrestApply2(28, 0, (long long )(node->count + 1));
  __CrestStore(31, (unsigned long )(& node->count));
# 37 "./b_tree.c"
  (node->count) ++;

  {
  __CrestReturn(32);
# 27 "./b_tree.c"
  return;
  }
}
}
# 41 "./b_tree.c"
void splitNode(int val , int *pval , int pos , struct btreeNode *node , struct btreeNode *child ,
               struct btreeNode **newNode )
{
  int median ;
  int j ;
  void *tmp ;
  struct btreeNode *mem_10 ;
  struct btreeNode *mem_11 ;
  struct btreeNode *mem_12 ;
  struct btreeNode *mem_13 ;

  {
  __CrestCall(35, 3);
  __CrestStore(34, (unsigned long )(& pos));
  __CrestStore(33, (unsigned long )(& val));
  {
  __CrestLoad(38, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(37, (unsigned long )0, (long long )2);
  __CrestApply2(36, 14, (long long )(pos > 2));
# 45 "./b_tree.c"
  if (pos > 2) {
    __CrestBranch(39, 16, 1);
    __CrestLoad(41, (unsigned long )0, (long long )3);
    __CrestStore(42, (unsigned long )(& median));
# 46 "./b_tree.c"
    median = 3;
  } else {
    __CrestBranch(40, 17, 0);
    __CrestLoad(43, (unsigned long )0, (long long )2);
    __CrestStore(44, (unsigned long )(& median));
# 48 "./b_tree.c"
    median = 2;
  }
  }
  __CrestLoad(45, (unsigned long )0, (long long )sizeof(struct btreeNode ));
# 50 "./b_tree.c"
  tmp = malloc(sizeof(struct btreeNode ));
  __CrestClearStack(46);
# 50 "./b_tree.c"
  *newNode = (struct btreeNode *)tmp;
  __CrestLoad(49, (unsigned long )(& median), (long long )median);
  __CrestLoad(48, (unsigned long )0, (long long )1);
  __CrestApply2(47, 0, (long long )(median + 1));
  __CrestStore(50, (unsigned long )(& j));
# 51 "./b_tree.c"
  j = median + 1;
  {
# 52 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(53, (unsigned long )(& j), (long long )j);
    __CrestLoad(52, (unsigned long )0, (long long )4);
    __CrestApply2(51, 15, (long long )(j <= 4));
# 52 "./b_tree.c"
    if (j <= 4) {
      __CrestBranch(54, 23, 1);

    } else {
      __CrestBranch(55, 24, 0);
# 52 "./b_tree.c"
      goto while_break;
    }
    }
# 53 "./b_tree.c"
    mem_10 = *newNode;
    __CrestLoad(56, (unsigned long )(& node->val[j]), (long long )node->val[j]);
    __CrestStore(57, (unsigned long )(& mem_10->val[j - median]));
# 53 "./b_tree.c"
    mem_10->val[j - median] = node->val[j];
# 54 "./b_tree.c"
    mem_11 = *newNode;
# 54 "./b_tree.c"
    mem_11->link[j - median] = node->link[j];
    __CrestLoad(60, (unsigned long )(& j), (long long )j);
    __CrestLoad(59, (unsigned long )0, (long long )1);
    __CrestApply2(58, 0, (long long )(j + 1));
    __CrestStore(61, (unsigned long )(& j));
# 55 "./b_tree.c"
    j ++;
  }
  while_break: ;
  }
  __CrestLoad(62, (unsigned long )(& median), (long long )median);
  __CrestStore(63, (unsigned long )(& node->count));
# 57 "./b_tree.c"
  node->count = median;
# 58 "./b_tree.c"
  mem_12 = *newNode;
  __CrestLoad(66, (unsigned long )0, (long long )4);
  __CrestLoad(65, (unsigned long )(& median), (long long )median);
  __CrestApply2(64, 1, (long long )(4 - median));
  __CrestStore(67, (unsigned long )(& mem_12->count));
# 58 "./b_tree.c"
  mem_12->count = 4 - median;
  {
  __CrestLoad(70, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(69, (unsigned long )0, (long long )2);
  __CrestApply2(68, 15, (long long )(pos <= 2));
# 60 "./b_tree.c"
  if (pos <= 2) {
    __CrestBranch(71, 29, 1);
    __CrestLoad(73, (unsigned long )(& val), (long long )val);
    __CrestLoad(74, (unsigned long )(& pos), (long long )pos);
# 61 "./b_tree.c"
    addValToNode(val, pos, node, child);
    __CrestClearStack(75);
  } else {
    __CrestBranch(72, 30, 0);
    __CrestLoad(76, (unsigned long )(& val), (long long )val);
    __CrestLoad(79, (unsigned long )(& pos), (long long )pos);
    __CrestLoad(78, (unsigned long )(& median), (long long )median);
    __CrestApply2(77, 1, (long long )(pos - median));
# 63 "./b_tree.c"
    addValToNode(val, pos - median, *newNode, child);
    __CrestClearStack(80);
  }
  }
  __CrestLoad(81, (unsigned long )(& node->val[node->count]), (long long )node->val[node->count]);
  __CrestStore(82, (unsigned long )pval);
# 65 "./b_tree.c"
  *pval = node->val[node->count];
# 66 "./b_tree.c"
  mem_13 = *newNode;
# 66 "./b_tree.c"
  mem_13->link[0] = node->link[node->count];
  __CrestLoad(85, (unsigned long )(& node->count), (long long )node->count);
  __CrestLoad(84, (unsigned long )0, (long long )1);
  __CrestApply2(83, 1, (long long )(node->count - 1));
  __CrestStore(86, (unsigned long )(& node->count));
# 67 "./b_tree.c"
  (node->count) --;

  {
  __CrestReturn(87);
# 41 "./b_tree.c"
  return;
  }
}
}
# 71 "./b_tree.c"
int setValueInNode(int val , int *pval , struct btreeNode *node , struct btreeNode **child )
{
  int pos ;
  int tmp ;
  int __retres7 ;

  {
  __CrestCall(89, 4);
  __CrestStore(88, (unsigned long )(& val));
  {
  __CrestLoad(92, (unsigned long )(& node), (long long )((unsigned long )node));
  __CrestLoad(91, (unsigned long )0, (long long )0);
  __CrestApply2(90, 12, (long long )(node == 0));
# 75 "./b_tree.c"
  if (node == 0) {
    __CrestBranch(93, 35, 1);
    __CrestLoad(95, (unsigned long )(& val), (long long )val);
    __CrestStore(96, (unsigned long )pval);
# 76 "./b_tree.c"
    *pval = val;
# 77 "./b_tree.c"
    *child = (struct btreeNode *)((void *)0);
    __CrestLoad(97, (unsigned long )0, (long long )1);
    __CrestStore(98, (unsigned long )(& __retres7));
# 78 "./b_tree.c"
    __retres7 = 1;
# 78 "./b_tree.c"
    goto return_label;
  } else {
    __CrestBranch(94, 38, 0);

  }
  }
  {
  __CrestLoad(101, (unsigned long )(& val), (long long )val);
  __CrestLoad(100, (unsigned long )(& node->val[1]), (long long )node->val[1]);
  __CrestApply2(99, 16, (long long )(val < node->val[1]));
# 81 "./b_tree.c"
  if (val < node->val[1]) {
    __CrestBranch(102, 40, 1);
    __CrestLoad(104, (unsigned long )0, (long long )0);
    __CrestStore(105, (unsigned long )(& pos));
# 82 "./b_tree.c"
    pos = 0;
  } else {
    __CrestBranch(103, 41, 0);
    __CrestLoad(106, (unsigned long )(& node->count), (long long )node->count);
    __CrestStore(107, (unsigned long )(& pos));
# 84 "./b_tree.c"
    pos = node->count;
    {
# 84 "./b_tree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(110, (unsigned long )(& val), (long long )val);
      __CrestLoad(109, (unsigned long )(& node->val[pos]), (long long )node->val[pos]);
      __CrestApply2(108, 16, (long long )(val < node->val[pos]));
# 84 "./b_tree.c"
      if (val < node->val[pos]) {
        __CrestBranch(111, 46, 1);
        {
        __CrestLoad(115, (unsigned long )(& pos), (long long )pos);
        __CrestLoad(114, (unsigned long )0, (long long )1);
        __CrestApply2(113, 14, (long long )(pos > 1));
# 84 "./b_tree.c"
        if (pos > 1) {
          __CrestBranch(116, 47, 1);

        } else {
          __CrestBranch(117, 48, 0);
# 84 "./b_tree.c"
          goto while_break;
        }
        }
      } else {
        __CrestBranch(112, 49, 0);
# 84 "./b_tree.c"
        goto while_break;
      }
      }
      __CrestLoad(120, (unsigned long )(& pos), (long long )pos);
      __CrestLoad(119, (unsigned long )0, (long long )1);
      __CrestApply2(118, 1, (long long )(pos - 1));
      __CrestStore(121, (unsigned long )(& pos));
# 84 "./b_tree.c"
      pos --;
    }
    while_break: ;
    }
    {
    __CrestLoad(124, (unsigned long )(& val), (long long )val);
    __CrestLoad(123, (unsigned long )(& node->val[pos]), (long long )node->val[pos]);
    __CrestApply2(122, 12, (long long )(val == node->val[pos]));
# 86 "./b_tree.c"
    if (val == node->val[pos]) {
      __CrestBranch(125, 53, 1);
# 87 "./b_tree.c"
      printf((char const * __restrict )"Duplicates not allowed\n");
      __CrestClearStack(127);
      __CrestLoad(128, (unsigned long )0, (long long )0);
      __CrestStore(129, (unsigned long )(& __retres7));
# 88 "./b_tree.c"
      __retres7 = 0;
# 88 "./b_tree.c"
      goto return_label;
    } else {
      __CrestBranch(126, 56, 0);

    }
    }
  }
  }
  __CrestLoad(130, (unsigned long )(& val), (long long )val);
# 91 "./b_tree.c"
  tmp = setValueInNode(val, pval, node->link[pos], child);
  __CrestHandleReturn(132, (long long )tmp);
  __CrestStore(131, (unsigned long )(& tmp));
  {
  __CrestLoad(135, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(134, (unsigned long )0, (long long )0);
  __CrestApply2(133, 13, (long long )(tmp != 0));
# 91 "./b_tree.c"
  if (tmp != 0) {
    __CrestBranch(136, 59, 1);
    {
    __CrestLoad(140, (unsigned long )(& node->count), (long long )node->count);
    __CrestLoad(139, (unsigned long )0, (long long )4);
    __CrestApply2(138, 16, (long long )(node->count < 4));
# 92 "./b_tree.c"
    if (node->count < 4) {
      __CrestBranch(141, 60, 1);
      __CrestLoad(143, (unsigned long )pval, (long long )*pval);
      __CrestLoad(144, (unsigned long )(& pos), (long long )pos);
# 93 "./b_tree.c"
      addValToNode(*pval, pos, node, *child);
      __CrestClearStack(145);
    } else {
      __CrestBranch(142, 61, 0);
      __CrestLoad(146, (unsigned long )pval, (long long )*pval);
      __CrestLoad(147, (unsigned long )(& pos), (long long )pos);
# 95 "./b_tree.c"
      splitNode(*pval, pval, pos, node, *child, child);
      __CrestClearStack(148);
      __CrestLoad(149, (unsigned long )0, (long long )1);
      __CrestStore(150, (unsigned long )(& __retres7));
# 96 "./b_tree.c"
      __retres7 = 1;
# 96 "./b_tree.c"
      goto return_label;
    }
    }
  } else {
    __CrestBranch(137, 64, 0);

  }
  }
  __CrestLoad(151, (unsigned long )0, (long long )0);
  __CrestStore(152, (unsigned long )(& __retres7));
# 99 "./b_tree.c"
  __retres7 = 0;
  return_label:
  {
  __CrestLoad(153, (unsigned long )(& __retres7), (long long )__retres7);
  __CrestReturn(154);
# 71 "./b_tree.c"
  return (__retres7);
  }
}
}
# 103 "./b_tree.c"
void insertion(int val )
{
  int flag ;
  int i ;
  struct btreeNode *child ;

  {
  __CrestCall(156, 5);
  __CrestStore(155, (unsigned long )(& val));
  __CrestLoad(157, (unsigned long )(& val), (long long )val);
# 107 "./b_tree.c"
  flag = setValueInNode(val, & i, root, & child);
  __CrestHandleReturn(159, (long long )flag);
  __CrestStore(158, (unsigned long )(& flag));
  {
  __CrestLoad(162, (unsigned long )(& flag), (long long )flag);
  __CrestLoad(161, (unsigned long )0, (long long )0);
  __CrestApply2(160, 13, (long long )(flag != 0));
# 108 "./b_tree.c"
  if (flag != 0) {
    __CrestBranch(163, 69, 1);
    __CrestLoad(165, (unsigned long )(& i), (long long )i);
# 109 "./b_tree.c"
    root = createNode(i, child);
    __CrestClearStack(166);
  } else {
    __CrestBranch(164, 70, 0);

  }
  }

  {
  __CrestReturn(167);
# 103 "./b_tree.c"
  return;
  }
}
}
# 113 "./b_tree.c"
void copySuccessor(struct btreeNode *myNode , int pos )
{
  struct btreeNode *dummy ;

  {
  __CrestCall(169, 6);
  __CrestStore(168, (unsigned long )(& pos));
# 115 "./b_tree.c"
  dummy = myNode->link[pos];
  {
# 117 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(172, (unsigned long )(& dummy->link[0]), (long long )((unsigned long )dummy->link[0]));
    __CrestLoad(171, (unsigned long )0, (long long )((unsigned long )((void *)0)));
    __CrestApply2(170, 13, (long long )((unsigned long )dummy->link[0] != (unsigned long )((void *)0)));
# 117 "./b_tree.c"
    if ((unsigned long )dummy->link[0] != (unsigned long )((void *)0)) {
      __CrestBranch(173, 78, 1);

    } else {
      __CrestBranch(174, 79, 0);
# 117 "./b_tree.c"
      goto while_break;
    }
    }
# 118 "./b_tree.c"
    dummy = dummy->link[0];
  }
  while_break: ;
  }
  __CrestLoad(175, (unsigned long )(& dummy->val[1]), (long long )dummy->val[1]);
  __CrestStore(176, (unsigned long )(& myNode->val[pos]));
# 119 "./b_tree.c"
  myNode->val[pos] = dummy->val[1];

  {
  __CrestReturn(177);
# 113 "./b_tree.c"
  return;
  }
}
}
# 124 "./b_tree.c"
void removeVal(struct btreeNode *myNode , int pos )
{
  int i ;

  {
  __CrestCall(179, 7);
  __CrestStore(178, (unsigned long )(& pos));
  __CrestLoad(182, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(181, (unsigned long )0, (long long )1);
  __CrestApply2(180, 0, (long long )(pos + 1));
  __CrestStore(183, (unsigned long )(& i));
# 125 "./b_tree.c"
  i = pos + 1;
  {
# 126 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(186, (unsigned long )(& i), (long long )i);
    __CrestLoad(185, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestApply2(184, 15, (long long )(i <= myNode->count));
# 126 "./b_tree.c"
    if (i <= myNode->count) {
      __CrestBranch(187, 90, 1);

    } else {
      __CrestBranch(188, 91, 0);
# 126 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(189, (unsigned long )(& myNode->val[i]), (long long )myNode->val[i]);
    __CrestStore(190, (unsigned long )(& myNode->val[i - 1]));
# 127 "./b_tree.c"
    myNode->val[i - 1] = myNode->val[i];
# 128 "./b_tree.c"
    myNode->link[i - 1] = myNode->link[i];
    __CrestLoad(193, (unsigned long )(& i), (long long )i);
    __CrestLoad(192, (unsigned long )0, (long long )1);
    __CrestApply2(191, 0, (long long )(i + 1));
    __CrestStore(194, (unsigned long )(& i));
# 129 "./b_tree.c"
    i ++;
  }
  while_break: ;
  }
  __CrestLoad(197, (unsigned long )(& myNode->count), (long long )myNode->count);
  __CrestLoad(196, (unsigned long )0, (long long )1);
  __CrestApply2(195, 1, (long long )(myNode->count - 1));
  __CrestStore(198, (unsigned long )(& myNode->count));
# 131 "./b_tree.c"
  (myNode->count) --;

  {
  __CrestReturn(199);
# 124 "./b_tree.c"
  return;
  }
}
}
# 135 "./b_tree.c"
void doRightShift(struct btreeNode *myNode , int pos )
{
  struct btreeNode *x ;
  int j ;

  {
  __CrestCall(201, 8);
  __CrestStore(200, (unsigned long )(& pos));
# 136 "./b_tree.c"
  x = myNode->link[pos];
  __CrestLoad(202, (unsigned long )(& x->count), (long long )x->count);
  __CrestStore(203, (unsigned long )(& j));
# 137 "./b_tree.c"
  j = x->count;
  {
# 139 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(206, (unsigned long )(& j), (long long )j);
    __CrestLoad(205, (unsigned long )0, (long long )0);
    __CrestApply2(204, 14, (long long )(j > 0));
# 139 "./b_tree.c"
    if (j > 0) {
      __CrestBranch(207, 102, 1);

    } else {
      __CrestBranch(208, 103, 0);
# 139 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(209, (unsigned long )(& x->val[j]), (long long )x->val[j]);
    __CrestStore(210, (unsigned long )(& x->val[j + 1]));
# 140 "./b_tree.c"
    x->val[j + 1] = x->val[j];
# 141 "./b_tree.c"
    x->link[j + 1] = x->link[j];
  }
  while_break: ;
  }
  __CrestLoad(211, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(212, (unsigned long )(& x->val[1]));
# 143 "./b_tree.c"
  x->val[1] = myNode->val[pos];
# 144 "./b_tree.c"
  x->link[1] = x->link[0];
  __CrestLoad(215, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(214, (unsigned long )0, (long long )1);
  __CrestApply2(213, 0, (long long )(x->count + 1));
  __CrestStore(216, (unsigned long )(& x->count));
# 145 "./b_tree.c"
  (x->count) ++;
# 147 "./b_tree.c"
  x = myNode->link[pos - 1];
  __CrestLoad(217, (unsigned long )(& x->val[x->count]), (long long )x->val[x->count]);
  __CrestStore(218, (unsigned long )(& myNode->val[pos]));
# 148 "./b_tree.c"
  myNode->val[pos] = x->val[x->count];
# 149 "./b_tree.c"
  myNode->link[pos] = x->link[x->count];
  __CrestLoad(221, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(220, (unsigned long )0, (long long )1);
  __CrestApply2(219, 1, (long long )(x->count - 1));
  __CrestStore(222, (unsigned long )(& x->count));
# 150 "./b_tree.c"
  (x->count) --;

  {
  __CrestReturn(223);
# 135 "./b_tree.c"
  return;
  }
}
}
# 155 "./b_tree.c"
void doLeftShift(struct btreeNode *myNode , int pos )
{
  int j ;
  struct btreeNode *x ;
  struct btreeNode *mem_5 ;

  {
  __CrestCall(225, 9);
  __CrestStore(224, (unsigned long )(& pos));
  __CrestLoad(226, (unsigned long )0, (long long )1);
  __CrestStore(227, (unsigned long )(& j));
# 156 "./b_tree.c"
  j = 1;
# 157 "./b_tree.c"
  x = myNode->link[pos - 1];
  __CrestLoad(230, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(229, (unsigned long )0, (long long )1);
  __CrestApply2(228, 0, (long long )(x->count + 1));
  __CrestStore(231, (unsigned long )(& x->count));
# 159 "./b_tree.c"
  (x->count) ++;
  __CrestLoad(232, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(233, (unsigned long )(& x->val[x->count]));
# 160 "./b_tree.c"
  x->val[x->count] = myNode->val[pos];
# 161 "./b_tree.c"
  mem_5 = myNode->link[pos];
# 161 "./b_tree.c"
  x->link[x->count] = mem_5->link[0];
# 163 "./b_tree.c"
  x = myNode->link[pos];
  __CrestLoad(234, (unsigned long )(& x->val[1]), (long long )x->val[1]);
  __CrestStore(235, (unsigned long )(& myNode->val[pos]));
# 164 "./b_tree.c"
  myNode->val[pos] = x->val[1];
# 165 "./b_tree.c"
  x->link[0] = x->link[1];
  __CrestLoad(238, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(237, (unsigned long )0, (long long )1);
  __CrestApply2(236, 1, (long long )(x->count - 1));
  __CrestStore(239, (unsigned long )(& x->count));
# 166 "./b_tree.c"
  (x->count) --;
  {
# 168 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(242, (unsigned long )(& j), (long long )j);
    __CrestLoad(241, (unsigned long )(& x->count), (long long )x->count);
    __CrestApply2(240, 15, (long long )(j <= x->count));
# 168 "./b_tree.c"
    if (j <= x->count) {
      __CrestBranch(243, 114, 1);

    } else {
      __CrestBranch(244, 115, 0);
# 168 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(245, (unsigned long )(& x->val[j + 1]), (long long )x->val[j + 1]);
    __CrestStore(246, (unsigned long )(& x->val[j]));
# 169 "./b_tree.c"
    x->val[j] = x->val[j + 1];
# 170 "./b_tree.c"
    x->link[j] = x->link[j + 1];
    __CrestLoad(249, (unsigned long )(& j), (long long )j);
    __CrestLoad(248, (unsigned long )0, (long long )1);
    __CrestApply2(247, 0, (long long )(j + 1));
    __CrestStore(250, (unsigned long )(& j));
# 171 "./b_tree.c"
    j ++;
  }
  while_break: ;
  }

  {
  __CrestReturn(251);
# 155 "./b_tree.c"
  return;
  }
}
}
# 177 "./b_tree.c"
void mergeNodes(struct btreeNode *myNode , int pos )
{
  int j ;
  struct btreeNode *x1 ;
  struct btreeNode *x2 ;

  {
  __CrestCall(253, 10);
  __CrestStore(252, (unsigned long )(& pos));
  __CrestLoad(254, (unsigned long )0, (long long )1);
  __CrestStore(255, (unsigned long )(& j));
# 178 "./b_tree.c"
  j = 1;
# 179 "./b_tree.c"
  x1 = myNode->link[pos];
# 179 "./b_tree.c"
  x2 = myNode->link[pos - 1];
  __CrestLoad(258, (unsigned long )(& x2->count), (long long )x2->count);
  __CrestLoad(257, (unsigned long )0, (long long )1);
  __CrestApply2(256, 0, (long long )(x2->count + 1));
  __CrestStore(259, (unsigned long )(& x2->count));
# 181 "./b_tree.c"
  (x2->count) ++;
  __CrestLoad(260, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(261, (unsigned long )(& x2->val[x2->count]));
# 182 "./b_tree.c"
  x2->val[x2->count] = myNode->val[pos];
# 183 "./b_tree.c"
  x2->link[x2->count] = myNode->link[0];
  {
# 185 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(264, (unsigned long )(& j), (long long )j);
    __CrestLoad(263, (unsigned long )(& x1->count), (long long )x1->count);
    __CrestApply2(262, 15, (long long )(j <= x1->count));
# 185 "./b_tree.c"
    if (j <= x1->count) {
      __CrestBranch(265, 125, 1);

    } else {
      __CrestBranch(266, 126, 0);
# 185 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(269, (unsigned long )(& x2->count), (long long )x2->count);
    __CrestLoad(268, (unsigned long )0, (long long )1);
    __CrestApply2(267, 0, (long long )(x2->count + 1));
    __CrestStore(270, (unsigned long )(& x2->count));
# 186 "./b_tree.c"
    (x2->count) ++;
    __CrestLoad(271, (unsigned long )(& x1->val[j]), (long long )x1->val[j]);
    __CrestStore(272, (unsigned long )(& x2->val[x2->count]));
# 187 "./b_tree.c"
    x2->val[x2->count] = x1->val[j];
# 188 "./b_tree.c"
    x2->link[x2->count] = x1->link[j];
    __CrestLoad(275, (unsigned long )(& j), (long long )j);
    __CrestLoad(274, (unsigned long )0, (long long )1);
    __CrestApply2(273, 0, (long long )(j + 1));
    __CrestStore(276, (unsigned long )(& j));
# 189 "./b_tree.c"
    j ++;
  }
  while_break: ;
  }
  __CrestLoad(277, (unsigned long )(& pos), (long long )pos);
  __CrestStore(278, (unsigned long )(& j));
# 192 "./b_tree.c"
  j = pos;
  {
# 193 "./b_tree.c"
  while (1) {
    while_continue___0: ;
    {
    __CrestLoad(281, (unsigned long )(& j), (long long )j);
    __CrestLoad(280, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestApply2(279, 16, (long long )(j < myNode->count));
# 193 "./b_tree.c"
    if (j < myNode->count) {
      __CrestBranch(282, 134, 1);

    } else {
      __CrestBranch(283, 135, 0);
# 193 "./b_tree.c"
      goto while_break___0;
    }
    }
    __CrestLoad(284, (unsigned long )(& myNode->val[j + 1]), (long long )myNode->val[j + 1]);
    __CrestStore(285, (unsigned long )(& myNode->val[j]));
# 194 "./b_tree.c"
    myNode->val[j] = myNode->val[j + 1];
# 195 "./b_tree.c"
    myNode->link[j] = myNode->link[j + 1];
    __CrestLoad(288, (unsigned long )(& j), (long long )j);
    __CrestLoad(287, (unsigned long )0, (long long )1);
    __CrestApply2(286, 0, (long long )(j + 1));
    __CrestStore(289, (unsigned long )(& j));
# 196 "./b_tree.c"
    j ++;
  }
  while_break___0: ;
  }
  __CrestLoad(292, (unsigned long )(& myNode->count), (long long )myNode->count);
  __CrestLoad(291, (unsigned long )0, (long long )1);
  __CrestApply2(290, 1, (long long )(myNode->count - 1));
  __CrestStore(293, (unsigned long )(& myNode->count));
# 198 "./b_tree.c"
  (myNode->count) --;
# 199 "./b_tree.c"
  free((void *)x1);
  __CrestClearStack(294);

  {
  __CrestReturn(295);
# 177 "./b_tree.c"
  return;
  }
}
}
# 203 "./b_tree.c"
void adjustNode(struct btreeNode *myNode , int pos )
{
  struct btreeNode *mem_3 ;
  struct btreeNode *mem_4 ;
  struct btreeNode *mem_5 ;
  struct btreeNode *mem_6 ;

  {
  __CrestCall(297, 11);
  __CrestStore(296, (unsigned long )(& pos));
  {
  __CrestLoad(300, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(299, (unsigned long )0, (long long )0);
  __CrestApply2(298, 12, (long long )(pos == 0));
# 204 "./b_tree.c"
  if (pos == 0) {
    __CrestBranch(301, 142, 1);
    {
# 205 "./b_tree.c"
    mem_3 = myNode->link[1];
    {
    __CrestLoad(305, (unsigned long )(& mem_3->count), (long long )mem_3->count);
    __CrestLoad(304, (unsigned long )0, (long long )2);
    __CrestApply2(303, 14, (long long )(mem_3->count > 2));
# 205 "./b_tree.c"
    if (mem_3->count > 2) {
      __CrestBranch(306, 145, 1);
      __CrestLoad(308, (unsigned long )0, (long long )1);
# 206 "./b_tree.c"
      doLeftShift(myNode, 1);
      __CrestClearStack(309);
    } else {
      __CrestBranch(307, 146, 0);
      __CrestLoad(310, (unsigned long )0, (long long )1);
# 208 "./b_tree.c"
      mergeNodes(myNode, 1);
      __CrestClearStack(311);
    }
    }
    }
  } else {
    __CrestBranch(302, 147, 0);
    {
    __CrestLoad(314, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestLoad(313, (unsigned long )(& pos), (long long )pos);
    __CrestApply2(312, 13, (long long )(myNode->count != pos));
# 211 "./b_tree.c"
    if (myNode->count != pos) {
      __CrestBranch(315, 148, 1);
      {
# 212 "./b_tree.c"
      mem_4 = myNode->link[pos - 1];
      {
      __CrestLoad(319, (unsigned long )(& mem_4->count), (long long )mem_4->count);
      __CrestLoad(318, (unsigned long )0, (long long )2);
      __CrestApply2(317, 14, (long long )(mem_4->count > 2));
# 212 "./b_tree.c"
      if (mem_4->count > 2) {
        __CrestBranch(320, 151, 1);
        __CrestLoad(322, (unsigned long )(& pos), (long long )pos);
# 213 "./b_tree.c"
        doRightShift(myNode, pos);
        __CrestClearStack(323);
      } else {
        __CrestBranch(321, 152, 0);
        {
# 215 "./b_tree.c"
        mem_5 = myNode->link[pos + 1];
        {
        __CrestLoad(326, (unsigned long )(& mem_5->count), (long long )mem_5->count);
        __CrestLoad(325, (unsigned long )0, (long long )2);
        __CrestApply2(324, 14, (long long )(mem_5->count > 2));
# 215 "./b_tree.c"
        if (mem_5->count > 2) {
          __CrestBranch(327, 155, 1);
          __CrestLoad(331, (unsigned long )(& pos), (long long )pos);
          __CrestLoad(330, (unsigned long )0, (long long )1);
          __CrestApply2(329, 0, (long long )(pos + 1));
# 216 "./b_tree.c"
          doLeftShift(myNode, pos + 1);
          __CrestClearStack(332);
        } else {
          __CrestBranch(328, 156, 0);
          __CrestLoad(333, (unsigned long )(& pos), (long long )pos);
# 218 "./b_tree.c"
          mergeNodes(myNode, pos);
          __CrestClearStack(334);
        }
        }
        }
      }
      }
      }
    } else {
      __CrestBranch(316, 157, 0);
      {
# 222 "./b_tree.c"
      mem_6 = myNode->link[pos - 1];
      {
      __CrestLoad(337, (unsigned long )(& mem_6->count), (long long )mem_6->count);
      __CrestLoad(336, (unsigned long )0, (long long )2);
      __CrestApply2(335, 14, (long long )(mem_6->count > 2));
# 222 "./b_tree.c"
      if (mem_6->count > 2) {
        __CrestBranch(338, 160, 1);
        __CrestLoad(340, (unsigned long )(& pos), (long long )pos);
# 223 "./b_tree.c"
        doRightShift(myNode, pos);
        __CrestClearStack(341);
      } else {
        __CrestBranch(339, 161, 0);
        __CrestLoad(342, (unsigned long )(& pos), (long long )pos);
# 225 "./b_tree.c"
        mergeNodes(myNode, pos);
        __CrestClearStack(343);
      }
      }
      }
    }
    }
  }
  }

  {
  __CrestReturn(344);
# 203 "./b_tree.c"
  return;
  }
}
}
# 231 "./b_tree.c"
int delValFromNode(int val , struct btreeNode *myNode )
{
  int pos ;
  int flag ;
  struct btreeNode *mem_5 ;

  {
  __CrestCall(346, 12);
  __CrestStore(345, (unsigned long )(& val));
  __CrestLoad(347, (unsigned long )0, (long long )0);
  __CrestStore(348, (unsigned long )(& flag));
# 232 "./b_tree.c"
  flag = 0;
  {
  __CrestLoad(351, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(350, (unsigned long )0, (long long )0);
  __CrestApply2(349, 13, (long long )(myNode != 0));
# 233 "./b_tree.c"
  if (myNode != 0) {
    __CrestBranch(352, 166, 1);
    {
    __CrestLoad(356, (unsigned long )(& val), (long long )val);
    __CrestLoad(355, (unsigned long )(& myNode->val[1]), (long long )myNode->val[1]);
    __CrestApply2(354, 16, (long long )(val < myNode->val[1]));
# 234 "./b_tree.c"
    if (val < myNode->val[1]) {
      __CrestBranch(357, 167, 1);
      __CrestLoad(359, (unsigned long )0, (long long )0);
      __CrestStore(360, (unsigned long )(& pos));
# 235 "./b_tree.c"
      pos = 0;
      __CrestLoad(361, (unsigned long )0, (long long )0);
      __CrestStore(362, (unsigned long )(& flag));
# 236 "./b_tree.c"
      flag = 0;
    } else {
      __CrestBranch(358, 168, 0);
      __CrestLoad(363, (unsigned long )(& myNode->count), (long long )myNode->count);
      __CrestStore(364, (unsigned long )(& pos));
# 238 "./b_tree.c"
      pos = myNode->count;
      {
# 238 "./b_tree.c"
      while (1) {
        while_continue: ;
        {
        __CrestLoad(367, (unsigned long )(& val), (long long )val);
        __CrestLoad(366, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
        __CrestApply2(365, 16, (long long )(val < myNode->val[pos]));
# 238 "./b_tree.c"
        if (val < myNode->val[pos]) {
          __CrestBranch(368, 173, 1);
          {
          __CrestLoad(372, (unsigned long )(& pos), (long long )pos);
          __CrestLoad(371, (unsigned long )0, (long long )1);
          __CrestApply2(370, 14, (long long )(pos > 1));
# 238 "./b_tree.c"
          if (pos > 1) {
            __CrestBranch(373, 174, 1);

          } else {
            __CrestBranch(374, 175, 0);
# 238 "./b_tree.c"
            goto while_break;
          }
          }
        } else {
          __CrestBranch(369, 176, 0);
# 238 "./b_tree.c"
          goto while_break;
        }
        }
        __CrestLoad(377, (unsigned long )(& pos), (long long )pos);
        __CrestLoad(376, (unsigned long )0, (long long )1);
        __CrestApply2(375, 1, (long long )(pos - 1));
        __CrestStore(378, (unsigned long )(& pos));
# 238 "./b_tree.c"
        pos --;
      }
      while_break: ;
      }
      {
      __CrestLoad(381, (unsigned long )(& val), (long long )val);
      __CrestLoad(380, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
      __CrestApply2(379, 12, (long long )(val == myNode->val[pos]));
# 240 "./b_tree.c"
      if (val == myNode->val[pos]) {
        __CrestBranch(382, 180, 1);
        __CrestLoad(384, (unsigned long )0, (long long )1);
        __CrestStore(385, (unsigned long )(& flag));
# 241 "./b_tree.c"
        flag = 1;
      } else {
        __CrestBranch(383, 181, 0);
        __CrestLoad(386, (unsigned long )0, (long long )0);
        __CrestStore(387, (unsigned long )(& flag));
# 243 "./b_tree.c"
        flag = 0;
      }
      }
    }
    }
    {
    __CrestLoad(390, (unsigned long )(& flag), (long long )flag);
    __CrestLoad(389, (unsigned long )0, (long long )0);
    __CrestApply2(388, 13, (long long )(flag != 0));
# 246 "./b_tree.c"
    if (flag != 0) {
      __CrestBranch(391, 183, 1);
      {
      __CrestLoad(395, (unsigned long )(& myNode->link[pos - 1]), (long long )((unsigned long )myNode->link[pos - 1]));
      __CrestLoad(394, (unsigned long )0, (long long )0);
      __CrestApply2(393, 13, (long long )(myNode->link[pos - 1] != 0));
# 247 "./b_tree.c"
      if (myNode->link[pos - 1] != 0) {
        __CrestBranch(396, 184, 1);
        __CrestLoad(398, (unsigned long )(& pos), (long long )pos);
# 248 "./b_tree.c"
        copySuccessor(myNode, pos);
        __CrestClearStack(399);
        __CrestLoad(400, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
# 249 "./b_tree.c"
        flag = delValFromNode(myNode->val[pos], myNode->link[pos]);
        __CrestHandleReturn(402, (long long )flag);
        __CrestStore(401, (unsigned long )(& flag));
        {
        __CrestLoad(405, (unsigned long )(& flag), (long long )flag);
        __CrestLoad(404, (unsigned long )0, (long long )0);
        __CrestApply2(403, 12, (long long )(flag == 0));
# 250 "./b_tree.c"
        if (flag == 0) {
          __CrestBranch(406, 186, 1);
# 251 "./b_tree.c"
          printf((char const * __restrict )"Given data is not present in B-Tree\n");
          __CrestClearStack(408);
        } else {
          __CrestBranch(407, 187, 0);

        }
        }
      } else {
        __CrestBranch(397, 188, 0);
        __CrestLoad(409, (unsigned long )(& pos), (long long )pos);
# 254 "./b_tree.c"
        removeVal(myNode, pos);
        __CrestClearStack(410);
      }
      }
    } else {
      __CrestBranch(392, 189, 0);
      __CrestLoad(411, (unsigned long )(& val), (long long )val);
# 257 "./b_tree.c"
      flag = delValFromNode(val, myNode->link[pos]);
      __CrestHandleReturn(413, (long long )flag);
      __CrestStore(412, (unsigned long )(& flag));
    }
    }
    {
    __CrestLoad(416, (unsigned long )(& myNode->link[pos]), (long long )((unsigned long )myNode->link[pos]));
    __CrestLoad(415, (unsigned long )0, (long long )0);
    __CrestApply2(414, 13, (long long )(myNode->link[pos] != 0));
# 259 "./b_tree.c"
    if (myNode->link[pos] != 0) {
      __CrestBranch(417, 191, 1);
      {
# 260 "./b_tree.c"
      mem_5 = myNode->link[pos];
      {
      __CrestLoad(421, (unsigned long )(& mem_5->count), (long long )mem_5->count);
      __CrestLoad(420, (unsigned long )0, (long long )2);
      __CrestApply2(419, 16, (long long )(mem_5->count < 2));
# 260 "./b_tree.c"
      if (mem_5->count < 2) {
        __CrestBranch(422, 194, 1);
        __CrestLoad(424, (unsigned long )(& pos), (long long )pos);
# 261 "./b_tree.c"
        adjustNode(myNode, pos);
        __CrestClearStack(425);
      } else {
        __CrestBranch(423, 195, 0);

      }
      }
      }
    } else {
      __CrestBranch(418, 196, 0);

    }
    }
  } else {
    __CrestBranch(353, 197, 0);

  }
  }
  {
  __CrestLoad(426, (unsigned long )(& flag), (long long )flag);
  __CrestReturn(427);
# 264 "./b_tree.c"
  return (flag);
  }
}
}
# 268 "./b_tree.c"
void deletion(int val , struct btreeNode *myNode )
{
  struct btreeNode *tmp ;
  int tmp___0 ;

  {
  __CrestCall(429, 13);
  __CrestStore(428, (unsigned long )(& val));
  __CrestLoad(430, (unsigned long )(& val), (long long )val);
# 270 "./b_tree.c"
  tmp___0 = delValFromNode(val, myNode);
  __CrestHandleReturn(432, (long long )tmp___0);
  __CrestStore(431, (unsigned long )(& tmp___0));
  {
  __CrestLoad(435, (unsigned long )(& tmp___0), (long long )tmp___0);
  __CrestLoad(434, (unsigned long )0, (long long )0);
  __CrestApply2(433, 13, (long long )(tmp___0 != 0));
# 270 "./b_tree.c"
  if (tmp___0 != 0) {
    __CrestBranch(436, 201, 1);
    {
    __CrestLoad(440, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestLoad(439, (unsigned long )0, (long long )0);
    __CrestApply2(438, 12, (long long )(myNode->count == 0));
# 274 "./b_tree.c"
    if (myNode->count == 0) {
      __CrestBranch(441, 202, 1);
# 275 "./b_tree.c"
      tmp = myNode;
# 276 "./b_tree.c"
      myNode = myNode->link[0];
# 277 "./b_tree.c"
      free((void *)tmp);
      __CrestClearStack(443);
    } else {
      __CrestBranch(442, 203, 0);

    }
    }
  } else {
    __CrestBranch(437, 204, 0);
# 271 "./b_tree.c"
    printf((char const * __restrict )"Given value is not present in B-Tree\n");
    __CrestClearStack(444);
# 272 "./b_tree.c"
    goto return_label;
  }
  }
# 280 "./b_tree.c"
  root = myNode;

  return_label:
  {
  __CrestReturn(445);
# 268 "./b_tree.c"
  return;
  }
}
}
# 285 "./b_tree.c"
void searching(int val , int *pos , struct btreeNode *myNode )
{


  {
  __CrestCall(447, 14);
  __CrestStore(446, (unsigned long )(& val));
  {
  __CrestLoad(450, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(449, (unsigned long )0, (long long )0);
  __CrestApply2(448, 12, (long long )(myNode == 0));
# 286 "./b_tree.c"
  if (myNode == 0) {
    __CrestBranch(451, 211, 1);
# 287 "./b_tree.c"
    goto return_label;
  } else {
    __CrestBranch(452, 213, 0);

  }
  }
  {
  __CrestLoad(455, (unsigned long )(& val), (long long )val);
  __CrestLoad(454, (unsigned long )(& myNode->val[1]), (long long )myNode->val[1]);
  __CrestApply2(453, 16, (long long )(val < myNode->val[1]));
# 290 "./b_tree.c"
  if (val < myNode->val[1]) {
    __CrestBranch(456, 215, 1);
    __CrestLoad(458, (unsigned long )0, (long long )0);
    __CrestStore(459, (unsigned long )pos);
# 291 "./b_tree.c"
    *pos = 0;
  } else {
    __CrestBranch(457, 216, 0);
    __CrestLoad(460, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestStore(461, (unsigned long )pos);
# 293 "./b_tree.c"
    *pos = myNode->count;
    {
# 293 "./b_tree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(464, (unsigned long )(& val), (long long )val);
      __CrestLoad(463, (unsigned long )(& myNode->val[*pos]), (long long )myNode->val[*pos]);
      __CrestApply2(462, 16, (long long )(val < myNode->val[*pos]));
# 293 "./b_tree.c"
      if (val < myNode->val[*pos]) {
        __CrestBranch(465, 221, 1);
        {
        __CrestLoad(469, (unsigned long )pos, (long long )*pos);
        __CrestLoad(468, (unsigned long )0, (long long )1);
        __CrestApply2(467, 14, (long long )(*pos > 1));
# 293 "./b_tree.c"
        if (*pos > 1) {
          __CrestBranch(470, 222, 1);

        } else {
          __CrestBranch(471, 223, 0);
# 293 "./b_tree.c"
          goto while_break;
        }
        }
      } else {
        __CrestBranch(466, 224, 0);
# 293 "./b_tree.c"
        goto while_break;
      }
      }
      __CrestLoad(474, (unsigned long )pos, (long long )*pos);
      __CrestLoad(473, (unsigned long )0, (long long )1);
      __CrestApply2(472, 1, (long long )(*pos - 1));
      __CrestStore(475, (unsigned long )pos);
# 293 "./b_tree.c"
      (*pos) --;
    }
    while_break: ;
    }
    {
    __CrestLoad(478, (unsigned long )(& val), (long long )val);
    __CrestLoad(477, (unsigned long )(& myNode->val[*pos]), (long long )myNode->val[*pos]);
    __CrestApply2(476, 12, (long long )(val == myNode->val[*pos]));
# 295 "./b_tree.c"
    if (val == myNode->val[*pos]) {
      __CrestBranch(479, 228, 1);
      __CrestLoad(481, (unsigned long )(& val), (long long )val);
# 296 "./b_tree.c"
      printf((char const * __restrict )"Given data %d is present in B-Tree", val);
      __CrestClearStack(482);
# 297 "./b_tree.c"
      goto return_label;
    } else {
      __CrestBranch(480, 231, 0);

    }
    }
  }
  }
  __CrestLoad(483, (unsigned long )(& val), (long long )val);
# 300 "./b_tree.c"
  searching(val, pos, myNode->link[*pos]);
  __CrestClearStack(484);

  return_label:
  {
  __CrestReturn(485);
# 285 "./b_tree.c"
  return;
  }
}
}
# 305 "./b_tree.c"
void traversal(struct btreeNode *myNode )
{
  int i ;

  {
  __CrestCall(486, 15);

  {
  __CrestLoad(489, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(488, (unsigned long )0, (long long )0);
  __CrestApply2(487, 13, (long long )(myNode != 0));
# 307 "./b_tree.c"
  if (myNode != 0) {
    __CrestBranch(490, 236, 1);
    __CrestLoad(492, (unsigned long )0, (long long )0);
    __CrestStore(493, (unsigned long )(& i));
# 308 "./b_tree.c"
    i = 0;
    {
# 308 "./b_tree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(496, (unsigned long )(& i), (long long )i);
      __CrestLoad(495, (unsigned long )(& myNode->count), (long long )myNode->count);
      __CrestApply2(494, 16, (long long )(i < myNode->count));
# 308 "./b_tree.c"
      if (i < myNode->count) {
        __CrestBranch(497, 241, 1);

      } else {
        __CrestBranch(498, 242, 0);
# 308 "./b_tree.c"
        goto while_break;
      }
      }
# 309 "./b_tree.c"
      traversal(myNode->link[i]);
      __CrestClearStack(499);
      __CrestLoad(500, (unsigned long )(& myNode->val[i + 1]), (long long )myNode->val[i + 1]);
# 310 "./b_tree.c"
      printf((char const * __restrict )"%d ", myNode->val[i + 1]);
      __CrestClearStack(501);
      __CrestLoad(504, (unsigned long )(& i), (long long )i);
      __CrestLoad(503, (unsigned long )0, (long long )1);
      __CrestApply2(502, 0, (long long )(i + 1));
      __CrestStore(505, (unsigned long )(& i));
# 308 "./b_tree.c"
      i ++;
    }
    while_break: ;
    }
# 312 "./b_tree.c"
    traversal(myNode->link[i]);
    __CrestClearStack(506);
  } else {
    __CrestBranch(491, 246, 0);

  }
  }

  {
  __CrestReturn(507);
# 305 "./b_tree.c"
  return;
  }
}
}
# 316 "./b_tree.c"
int main(void)
{
  int val ;
  int ch ;
  int hyorm ;
  int hyorm_flag ;
  int __retres5 ;

  {
  __globinit_b_tree();
  __CrestCall(508, 16);
  __CrestLoad(509, (unsigned long )0, (long long )0);
  __CrestStore(510, (unsigned long )(& hyorm));
# 317 "./b_tree.c"
  hyorm = 0;
  __CrestLoad(511, (unsigned long )0, (long long )0);
  __CrestStore(512, (unsigned long )(& hyorm_flag));
# 317 "./b_tree.c"
  hyorm_flag = 0;
# 318 "./b_tree.c"
  while (1) {
    while_continue: ;
# 319 "./b_tree.c"
    printf((char const * __restrict )"1. Insertion\t2. Deletion\n");
    __CrestClearStack(513);
# 320 "./b_tree.c"
    printf((char const * __restrict )"3. Searching\t4. Traversal\n");
    __CrestClearStack(514);
# 321 "./b_tree.c"
    printf((char const * __restrict )"5. Exit\nEnter your choice:");
    __CrestClearStack(515);
# 322 "./b_tree.c"
    __CrestUInt((unsigned int *)(& ch));
    __CrestLoad(516, (unsigned long )(& ch), (long long )ch);
# 325 "./b_tree.c"
    printf((char const * __restrict )"%d\n", ch);
    __CrestClearStack(517);
    {
    {
    __CrestLoad(520, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(519, (unsigned long )0, (long long )1);
    __CrestApply2(518, 12, (long long )(ch == 1));
# 327 "./b_tree.c"
    if (ch == 1) {
      __CrestBranch(521, 256, 1);
# 327 "./b_tree.c"
      goto case_1;
    } else {
      __CrestBranch(522, 257, 0);

    }
    }
    {
    __CrestLoad(525, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(524, (unsigned long )0, (long long )2);
    __CrestApply2(523, 12, (long long )(ch == 2));
# 334 "./b_tree.c"
    if (ch == 2) {
      __CrestBranch(526, 259, 1);
# 334 "./b_tree.c"
      goto case_2;
    } else {
      __CrestBranch(527, 260, 0);

    }
    }
    {
    __CrestLoad(530, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(529, (unsigned long )0, (long long )3);
    __CrestApply2(528, 12, (long long )(ch == 3));
# 341 "./b_tree.c"
    if (ch == 3) {
      __CrestBranch(531, 262, 1);
# 341 "./b_tree.c"
      goto case_3;
    } else {
      __CrestBranch(532, 263, 0);

    }
    }
    {
    __CrestLoad(535, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(534, (unsigned long )0, (long long )4);
    __CrestApply2(533, 12, (long long )(ch == 4));
# 348 "./b_tree.c"
    if (ch == 4) {
      __CrestBranch(536, 265, 1);
# 348 "./b_tree.c"
      goto case_4;
    } else {
      __CrestBranch(537, 266, 0);

    }
    }
    {
    __CrestLoad(540, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(539, (unsigned long )0, (long long )5);
    __CrestApply2(538, 12, (long long )(ch == 5));
# 351 "./b_tree.c"
    if (ch == 5) {
      __CrestBranch(541, 268, 1);
# 351 "./b_tree.c"
      goto case_5;
    } else {
      __CrestBranch(542, 269, 0);

    }
    }
# 353 "./b_tree.c"
    goto switch_default;
    case_1:
# 328 "./b_tree.c"
    printf((char const * __restrict )"Enter your input:");
    __CrestClearStack(543);
# 329 "./b_tree.c"
    __CrestUInt((unsigned int *)(& val));
    __CrestLoad(544, (unsigned long )(& val), (long long )val);
# 331 "./b_tree.c"
    printf((char const * __restrict )"%d\n", val);
    __CrestClearStack(545);
    __CrestLoad(546, (unsigned long )(& val), (long long )val);
# 332 "./b_tree.c"
    insertion(val);
    __CrestClearStack(547);
# 333 "./b_tree.c"
    goto switch_break;
    case_2:
# 335 "./b_tree.c"
    printf((char const * __restrict )"Enter the element to delete:");
    __CrestClearStack(548);
# 336 "./b_tree.c"
    __CrestUInt((unsigned int *)(& val));
    __CrestLoad(549, (unsigned long )(& val), (long long )val);
# 338 "./b_tree.c"
    printf((char const * __restrict )"%d\n", val);
    __CrestClearStack(550);
    __CrestLoad(551, (unsigned long )(& val), (long long )val);
# 339 "./b_tree.c"
    deletion(val, root);
    __CrestClearStack(552);
# 340 "./b_tree.c"
    goto switch_break;
    case_3:
# 342 "./b_tree.c"
    printf((char const * __restrict )"Enter the element to search:");
    __CrestClearStack(553);
# 343 "./b_tree.c"
    __CrestUInt((unsigned int *)(& val));
    __CrestLoad(554, (unsigned long )(& val), (long long )val);
# 345 "./b_tree.c"
    printf((char const * __restrict )"%d\n", val);
    __CrestClearStack(555);
    __CrestLoad(556, (unsigned long )(& val), (long long )val);
# 346 "./b_tree.c"
    searching(val, & ch, root);
    __CrestClearStack(557);
# 347 "./b_tree.c"
    goto switch_break;
    case_4:
# 349 "./b_tree.c"
    traversal(root);
    __CrestClearStack(558);
# 350 "./b_tree.c"
    goto switch_break;
    case_5:
    __CrestLoad(559, (unsigned long )0, (long long )0);
# 352 "./b_tree.c"
    exit(0);
    __CrestClearStack(560);
    switch_default:
    __CrestLoad(561, (unsigned long )(& ch), (long long )ch);
# 354 "./b_tree.c"
    printf((char const * __restrict )"%d U have entered wrong option!!\n", ch);
    __CrestClearStack(562);
    {
    __CrestLoad(565, (unsigned long )(& hyorm), (long long )hyorm);
    __CrestLoad(564, (unsigned long )0, (long long )500);
    __CrestApply2(563, 14, (long long )(hyorm > 500));
# 355 "./b_tree.c"
    if (hyorm > 500) {
      __CrestBranch(566, 282, 1);
      __CrestLoad(568, (unsigned long )0, (long long )1);
      __CrestStore(569, (unsigned long )(& hyorm_flag));
# 355 "./b_tree.c"
      hyorm_flag = 1;
    } else {
      __CrestBranch(567, 283, 0);
      __CrestLoad(572, (unsigned long )(& hyorm), (long long )hyorm);
      __CrestLoad(571, (unsigned long )0, (long long )1);
      __CrestApply2(570, 0, (long long )(hyorm + 1));
      __CrestStore(573, (unsigned long )(& hyorm));
# 356 "./b_tree.c"
      hyorm ++;
    }
    }
# 357 "./b_tree.c"
    goto switch_break;
    switch_break: ;
    }
    {
    __CrestLoad(576, (unsigned long )(& hyorm_flag), (long long )hyorm_flag);
    __CrestLoad(575, (unsigned long )0, (long long )1);
    __CrestApply2(574, 12, (long long )(hyorm_flag == 1));
# 359 "./b_tree.c"
    if (hyorm_flag == 1) {
      __CrestBranch(577, 287, 1);
# 359 "./b_tree.c"
      goto while_break;
    } else {
      __CrestBranch(578, 288, 0);

    }
    }
# 360 "./b_tree.c"
    printf((char const * __restrict )"\n");
    __CrestClearStack(579);
  }
  while_break:
  __CrestLoad(580, (unsigned long )0, (long long )0);
  __CrestStore(581, (unsigned long )(& __retres5));
# 362 "./b_tree.c"
  __retres5 = 0;
  __CrestLoad(582, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(583);
# 316 "./b_tree.c"
  return (__retres5);
}
}
void __globinit_b_tree(void)
{


  {
  __CrestInit();
}
}
