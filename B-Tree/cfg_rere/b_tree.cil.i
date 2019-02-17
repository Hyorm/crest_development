# 1 "./b_tree.cil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./b_tree.cil.c"
# 315 "./b_tree.c"
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
# 7 "./b_tree.c"
struct btreeNode {
   int val[5] ;
   int count ;
   struct btreeNode *link[5] ;
};
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 466 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__)) void *( __attribute__((__leaf__)) malloc)(size_t __size ) __attribute__((__malloc__)) ;
# 483 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__)) void ( __attribute__((__leaf__)) free)(void *__ptr ) ;
# 543 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) exit)(int __status ) ;
# 199 "/home/hyorm1226/Development/crest-0.1.2/bin/../include/crest.h"
extern void __CrestUInt(unsigned int *x ) __attribute__((__crest_skip__)) ;
# 12 "./b_tree.c"
struct btreeNode *root ;
# 15 "./b_tree.c"
struct btreeNode *createNode(int val , struct btreeNode *child )
{
  struct btreeNode *newNode ;
  void *tmp ;

  {
  __CrestCall(2, 1);
  __CrestStore(1, (unsigned long )(& val));
  __CrestLoad(3, (unsigned long )0, (long long )sizeof(struct btreeNode ));
# 17 "./b_tree.c"
  tmp = malloc(sizeof(struct btreeNode ));
  __CrestClearStack(4);
# 17 "./b_tree.c"
  newNode = (struct btreeNode *)tmp;
  __CrestLoad(5, (unsigned long )(& val), (long long )val);
  __CrestStore(6, (unsigned long )(& newNode->val[1]));
# 18 "./b_tree.c"
  newNode->val[1] = val;
  __CrestLoad(7, (unsigned long )0, (long long )1);
  __CrestStore(8, (unsigned long )(& newNode->count));
# 19 "./b_tree.c"
  newNode->count = 1;
# 20 "./b_tree.c"
  newNode->link[0] = root;
# 21 "./b_tree.c"
  newNode->link[1] = child;
  {
  __CrestReturn(9);
# 22 "./b_tree.c"
  return (newNode);
  }
}
}
# 26 "./b_tree.c"
void addValToNode(int val , int pos , struct btreeNode *node , struct btreeNode *child )
{
  int j ;

  {
  __CrestCall(12, 2);
  __CrestStore(11, (unsigned long )(& pos));
  __CrestStore(10, (unsigned long )(& val));
  __CrestLoad(13, (unsigned long )(& node->count), (long long )node->count);
  __CrestStore(14, (unsigned long )(& j));
# 28 "./b_tree.c"
  j = node->count;
  {
# 29 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(17, (unsigned long )(& j), (long long )j);
    __CrestLoad(16, (unsigned long )(& pos), (long long )pos);
    __CrestApply2(15, 14, (long long )(j > pos));
# 29 "./b_tree.c"
    if (j > pos) {
      __CrestBranch(18, 8, 1);

    } else {
      __CrestBranch(19, 9, 0);
# 29 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(20, (unsigned long )(& node->val[j]), (long long )node->val[j]);
    __CrestStore(21, (unsigned long )(& node->val[j + 1]));
# 30 "./b_tree.c"
    node->val[j + 1] = node->val[j];
# 31 "./b_tree.c"
    node->link[j + 1] = node->link[j];
    __CrestLoad(24, (unsigned long )(& j), (long long )j);
    __CrestLoad(23, (unsigned long )0, (long long )1);
    __CrestApply2(22, 1, (long long )(j - 1));
    __CrestStore(25, (unsigned long )(& j));
# 32 "./b_tree.c"
    j --;
  }
  while_break: ;
  }
  __CrestLoad(26, (unsigned long )(& val), (long long )val);
  __CrestStore(27, (unsigned long )(& node->val[j + 1]));
# 34 "./b_tree.c"
  node->val[j + 1] = val;
# 35 "./b_tree.c"
  node->link[j + 1] = child;
  __CrestLoad(30, (unsigned long )(& node->count), (long long )node->count);
  __CrestLoad(29, (unsigned long )0, (long long )1);
  __CrestApply2(28, 0, (long long )(node->count + 1));
  __CrestStore(31, (unsigned long )(& node->count));
# 36 "./b_tree.c"
  (node->count) ++;

  {
  __CrestReturn(32);
# 26 "./b_tree.c"
  return;
  }
}
}
# 40 "./b_tree.c"
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
# 44 "./b_tree.c"
  if (pos > 2) {
    __CrestBranch(39, 16, 1);
    __CrestLoad(41, (unsigned long )0, (long long )3);
    __CrestStore(42, (unsigned long )(& median));
# 45 "./b_tree.c"
    median = 3;
  } else {
    __CrestBranch(40, 17, 0);
    __CrestLoad(43, (unsigned long )0, (long long )2);
    __CrestStore(44, (unsigned long )(& median));
# 47 "./b_tree.c"
    median = 2;
  }
  }
  __CrestLoad(45, (unsigned long )0, (long long )sizeof(struct btreeNode ));
# 49 "./b_tree.c"
  tmp = malloc(sizeof(struct btreeNode ));
  __CrestClearStack(46);
# 49 "./b_tree.c"
  *newNode = (struct btreeNode *)tmp;
  __CrestLoad(49, (unsigned long )(& median), (long long )median);
  __CrestLoad(48, (unsigned long )0, (long long )1);
  __CrestApply2(47, 0, (long long )(median + 1));
  __CrestStore(50, (unsigned long )(& j));
# 50 "./b_tree.c"
  j = median + 1;
  {
# 51 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(53, (unsigned long )(& j), (long long )j);
    __CrestLoad(52, (unsigned long )0, (long long )4);
    __CrestApply2(51, 15, (long long )(j <= 4));
# 51 "./b_tree.c"
    if (j <= 4) {
      __CrestBranch(54, 23, 1);

    } else {
      __CrestBranch(55, 24, 0);
# 51 "./b_tree.c"
      goto while_break;
    }
    }
# 52 "./b_tree.c"
    mem_10 = *newNode;
    __CrestLoad(56, (unsigned long )(& node->val[j]), (long long )node->val[j]);
    __CrestStore(57, (unsigned long )(& mem_10->val[j - median]));
# 52 "./b_tree.c"
    mem_10->val[j - median] = node->val[j];
# 53 "./b_tree.c"
    mem_11 = *newNode;
# 53 "./b_tree.c"
    mem_11->link[j - median] = node->link[j];
    __CrestLoad(60, (unsigned long )(& j), (long long )j);
    __CrestLoad(59, (unsigned long )0, (long long )1);
    __CrestApply2(58, 0, (long long )(j + 1));
    __CrestStore(61, (unsigned long )(& j));
# 54 "./b_tree.c"
    j ++;
  }
  while_break: ;
  }
  __CrestLoad(62, (unsigned long )(& median), (long long )median);
  __CrestStore(63, (unsigned long )(& node->count));
# 56 "./b_tree.c"
  node->count = median;
# 57 "./b_tree.c"
  mem_12 = *newNode;
  __CrestLoad(66, (unsigned long )0, (long long )4);
  __CrestLoad(65, (unsigned long )(& median), (long long )median);
  __CrestApply2(64, 1, (long long )(4 - median));
  __CrestStore(67, (unsigned long )(& mem_12->count));
# 57 "./b_tree.c"
  mem_12->count = 4 - median;
  {
  __CrestLoad(70, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(69, (unsigned long )0, (long long )2);
  __CrestApply2(68, 15, (long long )(pos <= 2));
# 59 "./b_tree.c"
  if (pos <= 2) {
    __CrestBranch(71, 29, 1);
    __CrestLoad(73, (unsigned long )(& val), (long long )val);
    __CrestLoad(74, (unsigned long )(& pos), (long long )pos);
# 60 "./b_tree.c"
    addValToNode(val, pos, node, child);
    __CrestClearStack(75);
  } else {
    __CrestBranch(72, 30, 0);
    __CrestLoad(76, (unsigned long )(& val), (long long )val);
    __CrestLoad(79, (unsigned long )(& pos), (long long )pos);
    __CrestLoad(78, (unsigned long )(& median), (long long )median);
    __CrestApply2(77, 1, (long long )(pos - median));
# 62 "./b_tree.c"
    addValToNode(val, pos - median, *newNode, child);
    __CrestClearStack(80);
  }
  }
  __CrestLoad(81, (unsigned long )(& node->val[node->count]), (long long )node->val[node->count]);
  __CrestStore(82, (unsigned long )pval);
# 64 "./b_tree.c"
  *pval = node->val[node->count];
# 65 "./b_tree.c"
  mem_13 = *newNode;
# 65 "./b_tree.c"
  mem_13->link[0] = node->link[node->count];
  __CrestLoad(85, (unsigned long )(& node->count), (long long )node->count);
  __CrestLoad(84, (unsigned long )0, (long long )1);
  __CrestApply2(83, 1, (long long )(node->count - 1));
  __CrestStore(86, (unsigned long )(& node->count));
# 66 "./b_tree.c"
  (node->count) --;

  {
  __CrestReturn(87);
# 40 "./b_tree.c"
  return;
  }
}
}
# 70 "./b_tree.c"
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
# 74 "./b_tree.c"
  if (node == 0) {
    __CrestBranch(93, 35, 1);
    __CrestLoad(95, (unsigned long )(& val), (long long )val);
    __CrestStore(96, (unsigned long )pval);
# 75 "./b_tree.c"
    *pval = val;
# 76 "./b_tree.c"
    *child = (struct btreeNode *)((void *)0);
    __CrestLoad(97, (unsigned long )0, (long long )1);
    __CrestStore(98, (unsigned long )(& __retres7));
# 77 "./b_tree.c"
    __retres7 = 1;
# 77 "./b_tree.c"
    goto return_label;
  } else {
    __CrestBranch(94, 38, 0);

  }
  }
  {
  __CrestLoad(101, (unsigned long )(& val), (long long )val);
  __CrestLoad(100, (unsigned long )(& node->val[1]), (long long )node->val[1]);
  __CrestApply2(99, 16, (long long )(val < node->val[1]));
# 80 "./b_tree.c"
  if (val < node->val[1]) {
    __CrestBranch(102, 40, 1);
    __CrestLoad(104, (unsigned long )0, (long long )0);
    __CrestStore(105, (unsigned long )(& pos));
# 81 "./b_tree.c"
    pos = 0;
  } else {
    __CrestBranch(103, 41, 0);
    __CrestLoad(106, (unsigned long )(& node->count), (long long )node->count);
    __CrestStore(107, (unsigned long )(& pos));
# 83 "./b_tree.c"
    pos = node->count;
    {
# 83 "./b_tree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(110, (unsigned long )(& val), (long long )val);
      __CrestLoad(109, (unsigned long )(& node->val[pos]), (long long )node->val[pos]);
      __CrestApply2(108, 16, (long long )(val < node->val[pos]));
# 83 "./b_tree.c"
      if (val < node->val[pos]) {
        __CrestBranch(111, 46, 1);
        {
        __CrestLoad(115, (unsigned long )(& pos), (long long )pos);
        __CrestLoad(114, (unsigned long )0, (long long )1);
        __CrestApply2(113, 14, (long long )(pos > 1));
# 83 "./b_tree.c"
        if (pos > 1) {
          __CrestBranch(116, 47, 1);

        } else {
          __CrestBranch(117, 48, 0);
# 83 "./b_tree.c"
          goto while_break;
        }
        }
      } else {
        __CrestBranch(112, 49, 0);
# 83 "./b_tree.c"
        goto while_break;
      }
      }
      __CrestLoad(120, (unsigned long )(& pos), (long long )pos);
      __CrestLoad(119, (unsigned long )0, (long long )1);
      __CrestApply2(118, 1, (long long )(pos - 1));
      __CrestStore(121, (unsigned long )(& pos));
# 83 "./b_tree.c"
      pos --;
    }
    while_break: ;
    }
    {
    __CrestLoad(124, (unsigned long )(& val), (long long )val);
    __CrestLoad(123, (unsigned long )(& node->val[pos]), (long long )node->val[pos]);
    __CrestApply2(122, 12, (long long )(val == node->val[pos]));
# 85 "./b_tree.c"
    if (val == node->val[pos]) {
      __CrestBranch(125, 53, 1);
      __CrestLoad(127, (unsigned long )0, (long long )0);
      __CrestStore(128, (unsigned long )(& __retres7));
# 87 "./b_tree.c"
      __retres7 = 0;
# 87 "./b_tree.c"
      goto return_label;
    } else {
      __CrestBranch(126, 55, 0);

    }
    }
  }
  }
  __CrestLoad(129, (unsigned long )(& val), (long long )val);
# 90 "./b_tree.c"
  tmp = setValueInNode(val, pval, node->link[pos], child);
  __CrestHandleReturn(131, (long long )tmp);
  __CrestStore(130, (unsigned long )(& tmp));
  {
  __CrestLoad(134, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(133, (unsigned long )0, (long long )0);
  __CrestApply2(132, 13, (long long )(tmp != 0));
# 90 "./b_tree.c"
  if (tmp != 0) {
    __CrestBranch(135, 58, 1);
    {
    __CrestLoad(139, (unsigned long )(& node->count), (long long )node->count);
    __CrestLoad(138, (unsigned long )0, (long long )4);
    __CrestApply2(137, 16, (long long )(node->count < 4));
# 91 "./b_tree.c"
    if (node->count < 4) {
      __CrestBranch(140, 59, 1);
      __CrestLoad(142, (unsigned long )pval, (long long )*pval);
      __CrestLoad(143, (unsigned long )(& pos), (long long )pos);
# 92 "./b_tree.c"
      addValToNode(*pval, pos, node, *child);
      __CrestClearStack(144);
    } else {
      __CrestBranch(141, 60, 0);
      __CrestLoad(145, (unsigned long )pval, (long long )*pval);
      __CrestLoad(146, (unsigned long )(& pos), (long long )pos);
# 94 "./b_tree.c"
      splitNode(*pval, pval, pos, node, *child, child);
      __CrestClearStack(147);
      __CrestLoad(148, (unsigned long )0, (long long )1);
      __CrestStore(149, (unsigned long )(& __retres7));
# 95 "./b_tree.c"
      __retres7 = 1;
# 95 "./b_tree.c"
      goto return_label;
    }
    }
  } else {
    __CrestBranch(136, 63, 0);

  }
  }
  __CrestLoad(150, (unsigned long )0, (long long )0);
  __CrestStore(151, (unsigned long )(& __retres7));
# 98 "./b_tree.c"
  __retres7 = 0;
  return_label:
  {
  __CrestLoad(152, (unsigned long )(& __retres7), (long long )__retres7);
  __CrestReturn(153);
# 70 "./b_tree.c"
  return (__retres7);
  }
}
}
# 102 "./b_tree.c"
void insertion(int val )
{
  int flag ;
  int i ;
  struct btreeNode *child ;

  {
  __CrestCall(155, 5);
  __CrestStore(154, (unsigned long )(& val));
  __CrestLoad(156, (unsigned long )(& val), (long long )val);
# 106 "./b_tree.c"
  flag = setValueInNode(val, & i, root, & child);
  __CrestHandleReturn(158, (long long )flag);
  __CrestStore(157, (unsigned long )(& flag));
  {
  __CrestLoad(161, (unsigned long )(& flag), (long long )flag);
  __CrestLoad(160, (unsigned long )0, (long long )0);
  __CrestApply2(159, 13, (long long )(flag != 0));
# 107 "./b_tree.c"
  if (flag != 0) {
    __CrestBranch(162, 68, 1);
    __CrestLoad(164, (unsigned long )(& i), (long long )i);
# 108 "./b_tree.c"
    root = createNode(i, child);
    __CrestClearStack(165);
  } else {
    __CrestBranch(163, 69, 0);

  }
  }

  {
  __CrestReturn(166);
# 102 "./b_tree.c"
  return;
  }
}
}
# 112 "./b_tree.c"
void copySuccessor(struct btreeNode *myNode , int pos )
{
  struct btreeNode *dummy ;

  {
  __CrestCall(168, 6);
  __CrestStore(167, (unsigned long )(& pos));
# 114 "./b_tree.c"
  dummy = myNode->link[pos];
  {
# 116 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(171, (unsigned long )(& dummy->link[0]), (long long )((unsigned long )dummy->link[0]));
    __CrestLoad(170, (unsigned long )0, (long long )((unsigned long )((void *)0)));
    __CrestApply2(169, 13, (long long )((unsigned long )dummy->link[0] != (unsigned long )((void *)0)));
# 116 "./b_tree.c"
    if ((unsigned long )dummy->link[0] != (unsigned long )((void *)0)) {
      __CrestBranch(172, 77, 1);

    } else {
      __CrestBranch(173, 78, 0);
# 116 "./b_tree.c"
      goto while_break;
    }
    }
# 117 "./b_tree.c"
    dummy = dummy->link[0];
  }
  while_break: ;
  }
  __CrestLoad(174, (unsigned long )(& dummy->val[1]), (long long )dummy->val[1]);
  __CrestStore(175, (unsigned long )(& myNode->val[pos]));
# 118 "./b_tree.c"
  myNode->val[pos] = dummy->val[1];

  {
  __CrestReturn(176);
# 112 "./b_tree.c"
  return;
  }
}
}
# 123 "./b_tree.c"
void removeVal(struct btreeNode *myNode , int pos )
{
  int i ;

  {
  __CrestCall(178, 7);
  __CrestStore(177, (unsigned long )(& pos));
  __CrestLoad(181, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(180, (unsigned long )0, (long long )1);
  __CrestApply2(179, 0, (long long )(pos + 1));
  __CrestStore(182, (unsigned long )(& i));
# 124 "./b_tree.c"
  i = pos + 1;
  {
# 125 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(185, (unsigned long )(& i), (long long )i);
    __CrestLoad(184, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestApply2(183, 15, (long long )(i <= myNode->count));
# 125 "./b_tree.c"
    if (i <= myNode->count) {
      __CrestBranch(186, 89, 1);

    } else {
      __CrestBranch(187, 90, 0);
# 125 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(188, (unsigned long )(& myNode->val[i]), (long long )myNode->val[i]);
    __CrestStore(189, (unsigned long )(& myNode->val[i - 1]));
# 126 "./b_tree.c"
    myNode->val[i - 1] = myNode->val[i];
# 127 "./b_tree.c"
    myNode->link[i - 1] = myNode->link[i];
    __CrestLoad(192, (unsigned long )(& i), (long long )i);
    __CrestLoad(191, (unsigned long )0, (long long )1);
    __CrestApply2(190, 0, (long long )(i + 1));
    __CrestStore(193, (unsigned long )(& i));
# 128 "./b_tree.c"
    i ++;
  }
  while_break: ;
  }
  __CrestLoad(196, (unsigned long )(& myNode->count), (long long )myNode->count);
  __CrestLoad(195, (unsigned long )0, (long long )1);
  __CrestApply2(194, 1, (long long )(myNode->count - 1));
  __CrestStore(197, (unsigned long )(& myNode->count));
# 130 "./b_tree.c"
  (myNode->count) --;

  {
  __CrestReturn(198);
# 123 "./b_tree.c"
  return;
  }
}
}
# 134 "./b_tree.c"
void doRightShift(struct btreeNode *myNode , int pos )
{
  struct btreeNode *x ;
  int j ;

  {
  __CrestCall(200, 8);
  __CrestStore(199, (unsigned long )(& pos));
# 135 "./b_tree.c"
  x = myNode->link[pos];
  __CrestLoad(201, (unsigned long )(& x->count), (long long )x->count);
  __CrestStore(202, (unsigned long )(& j));
# 136 "./b_tree.c"
  j = x->count;
  {
# 138 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(205, (unsigned long )(& j), (long long )j);
    __CrestLoad(204, (unsigned long )0, (long long )0);
    __CrestApply2(203, 14, (long long )(j > 0));
# 138 "./b_tree.c"
    if (j > 0) {
      __CrestBranch(206, 101, 1);

    } else {
      __CrestBranch(207, 102, 0);
# 138 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(208, (unsigned long )(& x->val[j]), (long long )x->val[j]);
    __CrestStore(209, (unsigned long )(& x->val[j + 1]));
# 139 "./b_tree.c"
    x->val[j + 1] = x->val[j];
# 140 "./b_tree.c"
    x->link[j + 1] = x->link[j];
  }
  while_break: ;
  }
  __CrestLoad(210, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(211, (unsigned long )(& x->val[1]));
# 142 "./b_tree.c"
  x->val[1] = myNode->val[pos];
# 143 "./b_tree.c"
  x->link[1] = x->link[0];
  __CrestLoad(214, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(213, (unsigned long )0, (long long )1);
  __CrestApply2(212, 0, (long long )(x->count + 1));
  __CrestStore(215, (unsigned long )(& x->count));
# 144 "./b_tree.c"
  (x->count) ++;
# 146 "./b_tree.c"
  x = myNode->link[pos - 1];
  __CrestLoad(216, (unsigned long )(& x->val[x->count]), (long long )x->val[x->count]);
  __CrestStore(217, (unsigned long )(& myNode->val[pos]));
# 147 "./b_tree.c"
  myNode->val[pos] = x->val[x->count];
# 148 "./b_tree.c"
  myNode->link[pos] = x->link[x->count];
  __CrestLoad(220, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(219, (unsigned long )0, (long long )1);
  __CrestApply2(218, 1, (long long )(x->count - 1));
  __CrestStore(221, (unsigned long )(& x->count));
# 149 "./b_tree.c"
  (x->count) --;

  {
  __CrestReturn(222);
# 134 "./b_tree.c"
  return;
  }
}
}
# 154 "./b_tree.c"
void doLeftShift(struct btreeNode *myNode , int pos )
{
  int j ;
  struct btreeNode *x ;
  struct btreeNode *mem_5 ;

  {
  __CrestCall(224, 9);
  __CrestStore(223, (unsigned long )(& pos));
  __CrestLoad(225, (unsigned long )0, (long long )1);
  __CrestStore(226, (unsigned long )(& j));
# 155 "./b_tree.c"
  j = 1;
# 156 "./b_tree.c"
  x = myNode->link[pos - 1];
  __CrestLoad(229, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(228, (unsigned long )0, (long long )1);
  __CrestApply2(227, 0, (long long )(x->count + 1));
  __CrestStore(230, (unsigned long )(& x->count));
# 158 "./b_tree.c"
  (x->count) ++;
  __CrestLoad(231, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(232, (unsigned long )(& x->val[x->count]));
# 159 "./b_tree.c"
  x->val[x->count] = myNode->val[pos];
# 160 "./b_tree.c"
  mem_5 = myNode->link[pos];
# 160 "./b_tree.c"
  x->link[x->count] = mem_5->link[0];
# 162 "./b_tree.c"
  x = myNode->link[pos];
  __CrestLoad(233, (unsigned long )(& x->val[1]), (long long )x->val[1]);
  __CrestStore(234, (unsigned long )(& myNode->val[pos]));
# 163 "./b_tree.c"
  myNode->val[pos] = x->val[1];
# 164 "./b_tree.c"
  x->link[0] = x->link[1];
  __CrestLoad(237, (unsigned long )(& x->count), (long long )x->count);
  __CrestLoad(236, (unsigned long )0, (long long )1);
  __CrestApply2(235, 1, (long long )(x->count - 1));
  __CrestStore(238, (unsigned long )(& x->count));
# 165 "./b_tree.c"
  (x->count) --;
  {
# 167 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(241, (unsigned long )(& j), (long long )j);
    __CrestLoad(240, (unsigned long )(& x->count), (long long )x->count);
    __CrestApply2(239, 15, (long long )(j <= x->count));
# 167 "./b_tree.c"
    if (j <= x->count) {
      __CrestBranch(242, 113, 1);

    } else {
      __CrestBranch(243, 114, 0);
# 167 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(244, (unsigned long )(& x->val[j + 1]), (long long )x->val[j + 1]);
    __CrestStore(245, (unsigned long )(& x->val[j]));
# 168 "./b_tree.c"
    x->val[j] = x->val[j + 1];
# 169 "./b_tree.c"
    x->link[j] = x->link[j + 1];
    __CrestLoad(248, (unsigned long )(& j), (long long )j);
    __CrestLoad(247, (unsigned long )0, (long long )1);
    __CrestApply2(246, 0, (long long )(j + 1));
    __CrestStore(249, (unsigned long )(& j));
# 170 "./b_tree.c"
    j ++;
  }
  while_break: ;
  }

  {
  __CrestReturn(250);
# 154 "./b_tree.c"
  return;
  }
}
}
# 176 "./b_tree.c"
void mergeNodes(struct btreeNode *myNode , int pos )
{
  int j ;
  struct btreeNode *x1 ;
  struct btreeNode *x2 ;

  {
  __CrestCall(252, 10);
  __CrestStore(251, (unsigned long )(& pos));
  __CrestLoad(253, (unsigned long )0, (long long )1);
  __CrestStore(254, (unsigned long )(& j));
# 177 "./b_tree.c"
  j = 1;
# 178 "./b_tree.c"
  x1 = myNode->link[pos];
# 178 "./b_tree.c"
  x2 = myNode->link[pos - 1];
  __CrestLoad(257, (unsigned long )(& x2->count), (long long )x2->count);
  __CrestLoad(256, (unsigned long )0, (long long )1);
  __CrestApply2(255, 0, (long long )(x2->count + 1));
  __CrestStore(258, (unsigned long )(& x2->count));
# 180 "./b_tree.c"
  (x2->count) ++;
  __CrestLoad(259, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
  __CrestStore(260, (unsigned long )(& x2->val[x2->count]));
# 181 "./b_tree.c"
  x2->val[x2->count] = myNode->val[pos];
# 182 "./b_tree.c"
  x2->link[x2->count] = myNode->link[0];
  {
# 184 "./b_tree.c"
  while (1) {
    while_continue: ;
    {
    __CrestLoad(263, (unsigned long )(& j), (long long )j);
    __CrestLoad(262, (unsigned long )(& x1->count), (long long )x1->count);
    __CrestApply2(261, 15, (long long )(j <= x1->count));
# 184 "./b_tree.c"
    if (j <= x1->count) {
      __CrestBranch(264, 124, 1);

    } else {
      __CrestBranch(265, 125, 0);
# 184 "./b_tree.c"
      goto while_break;
    }
    }
    __CrestLoad(268, (unsigned long )(& x2->count), (long long )x2->count);
    __CrestLoad(267, (unsigned long )0, (long long )1);
    __CrestApply2(266, 0, (long long )(x2->count + 1));
    __CrestStore(269, (unsigned long )(& x2->count));
# 185 "./b_tree.c"
    (x2->count) ++;
    __CrestLoad(270, (unsigned long )(& x1->val[j]), (long long )x1->val[j]);
    __CrestStore(271, (unsigned long )(& x2->val[x2->count]));
# 186 "./b_tree.c"
    x2->val[x2->count] = x1->val[j];
# 187 "./b_tree.c"
    x2->link[x2->count] = x1->link[j];
    __CrestLoad(274, (unsigned long )(& j), (long long )j);
    __CrestLoad(273, (unsigned long )0, (long long )1);
    __CrestApply2(272, 0, (long long )(j + 1));
    __CrestStore(275, (unsigned long )(& j));
# 188 "./b_tree.c"
    j ++;
  }
  while_break: ;
  }
  __CrestLoad(276, (unsigned long )(& pos), (long long )pos);
  __CrestStore(277, (unsigned long )(& j));
# 191 "./b_tree.c"
  j = pos;
  {
# 192 "./b_tree.c"
  while (1) {
    while_continue___0: ;
    {
    __CrestLoad(280, (unsigned long )(& j), (long long )j);
    __CrestLoad(279, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestApply2(278, 16, (long long )(j < myNode->count));
# 192 "./b_tree.c"
    if (j < myNode->count) {
      __CrestBranch(281, 133, 1);

    } else {
      __CrestBranch(282, 134, 0);
# 192 "./b_tree.c"
      goto while_break___0;
    }
    }
    __CrestLoad(283, (unsigned long )(& myNode->val[j + 1]), (long long )myNode->val[j + 1]);
    __CrestStore(284, (unsigned long )(& myNode->val[j]));
# 193 "./b_tree.c"
    myNode->val[j] = myNode->val[j + 1];
# 194 "./b_tree.c"
    myNode->link[j] = myNode->link[j + 1];
    __CrestLoad(287, (unsigned long )(& j), (long long )j);
    __CrestLoad(286, (unsigned long )0, (long long )1);
    __CrestApply2(285, 0, (long long )(j + 1));
    __CrestStore(288, (unsigned long )(& j));
# 195 "./b_tree.c"
    j ++;
  }
  while_break___0: ;
  }
  __CrestLoad(291, (unsigned long )(& myNode->count), (long long )myNode->count);
  __CrestLoad(290, (unsigned long )0, (long long )1);
  __CrestApply2(289, 1, (long long )(myNode->count - 1));
  __CrestStore(292, (unsigned long )(& myNode->count));
# 197 "./b_tree.c"
  (myNode->count) --;
# 198 "./b_tree.c"
  free((void *)x1);
  __CrestClearStack(293);

  {
  __CrestReturn(294);
# 176 "./b_tree.c"
  return;
  }
}
}
# 202 "./b_tree.c"
void adjustNode(struct btreeNode *myNode , int pos )
{
  struct btreeNode *mem_3 ;
  struct btreeNode *mem_4 ;
  struct btreeNode *mem_5 ;
  struct btreeNode *mem_6 ;

  {
  __CrestCall(296, 11);
  __CrestStore(295, (unsigned long )(& pos));
  {
  __CrestLoad(299, (unsigned long )(& pos), (long long )pos);
  __CrestLoad(298, (unsigned long )0, (long long )0);
  __CrestApply2(297, 12, (long long )(pos == 0));
# 203 "./b_tree.c"
  if (pos == 0) {
    __CrestBranch(300, 141, 1);
    {
# 204 "./b_tree.c"
    mem_3 = myNode->link[1];
    {
    __CrestLoad(304, (unsigned long )(& mem_3->count), (long long )mem_3->count);
    __CrestLoad(303, (unsigned long )0, (long long )2);
    __CrestApply2(302, 14, (long long )(mem_3->count > 2));
# 204 "./b_tree.c"
    if (mem_3->count > 2) {
      __CrestBranch(305, 144, 1);
      __CrestLoad(307, (unsigned long )0, (long long )1);
# 205 "./b_tree.c"
      doLeftShift(myNode, 1);
      __CrestClearStack(308);
    } else {
      __CrestBranch(306, 145, 0);
      __CrestLoad(309, (unsigned long )0, (long long )1);
# 207 "./b_tree.c"
      mergeNodes(myNode, 1);
      __CrestClearStack(310);
    }
    }
    }
  } else {
    __CrestBranch(301, 146, 0);
    {
    __CrestLoad(313, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestLoad(312, (unsigned long )(& pos), (long long )pos);
    __CrestApply2(311, 13, (long long )(myNode->count != pos));
# 210 "./b_tree.c"
    if (myNode->count != pos) {
      __CrestBranch(314, 147, 1);
      {
# 211 "./b_tree.c"
      mem_4 = myNode->link[pos - 1];
      {
      __CrestLoad(318, (unsigned long )(& mem_4->count), (long long )mem_4->count);
      __CrestLoad(317, (unsigned long )0, (long long )2);
      __CrestApply2(316, 14, (long long )(mem_4->count > 2));
# 211 "./b_tree.c"
      if (mem_4->count > 2) {
        __CrestBranch(319, 150, 1);
        __CrestLoad(321, (unsigned long )(& pos), (long long )pos);
# 212 "./b_tree.c"
        doRightShift(myNode, pos);
        __CrestClearStack(322);
      } else {
        __CrestBranch(320, 151, 0);
        {
# 214 "./b_tree.c"
        mem_5 = myNode->link[pos + 1];
        {
        __CrestLoad(325, (unsigned long )(& mem_5->count), (long long )mem_5->count);
        __CrestLoad(324, (unsigned long )0, (long long )2);
        __CrestApply2(323, 14, (long long )(mem_5->count > 2));
# 214 "./b_tree.c"
        if (mem_5->count > 2) {
          __CrestBranch(326, 154, 1);
          __CrestLoad(330, (unsigned long )(& pos), (long long )pos);
          __CrestLoad(329, (unsigned long )0, (long long )1);
          __CrestApply2(328, 0, (long long )(pos + 1));
# 215 "./b_tree.c"
          doLeftShift(myNode, pos + 1);
          __CrestClearStack(331);
        } else {
          __CrestBranch(327, 155, 0);
          __CrestLoad(332, (unsigned long )(& pos), (long long )pos);
# 217 "./b_tree.c"
          mergeNodes(myNode, pos);
          __CrestClearStack(333);
        }
        }
        }
      }
      }
      }
    } else {
      __CrestBranch(315, 156, 0);
      {
# 221 "./b_tree.c"
      mem_6 = myNode->link[pos - 1];
      {
      __CrestLoad(336, (unsigned long )(& mem_6->count), (long long )mem_6->count);
      __CrestLoad(335, (unsigned long )0, (long long )2);
      __CrestApply2(334, 14, (long long )(mem_6->count > 2));
# 221 "./b_tree.c"
      if (mem_6->count > 2) {
        __CrestBranch(337, 159, 1);
        __CrestLoad(339, (unsigned long )(& pos), (long long )pos);
# 222 "./b_tree.c"
        doRightShift(myNode, pos);
        __CrestClearStack(340);
      } else {
        __CrestBranch(338, 160, 0);
        __CrestLoad(341, (unsigned long )(& pos), (long long )pos);
# 224 "./b_tree.c"
        mergeNodes(myNode, pos);
        __CrestClearStack(342);
      }
      }
      }
    }
    }
  }
  }

  {
  __CrestReturn(343);
# 202 "./b_tree.c"
  return;
  }
}
}
# 230 "./b_tree.c"
int delValFromNode(int val , struct btreeNode *myNode )
{
  int pos ;
  int flag ;
  struct btreeNode *mem_5 ;

  {
  __CrestCall(345, 12);
  __CrestStore(344, (unsigned long )(& val));
  __CrestLoad(346, (unsigned long )0, (long long )0);
  __CrestStore(347, (unsigned long )(& flag));
# 231 "./b_tree.c"
  flag = 0;
  {
  __CrestLoad(350, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(349, (unsigned long )0, (long long )0);
  __CrestApply2(348, 13, (long long )(myNode != 0));
# 232 "./b_tree.c"
  if (myNode != 0) {
    __CrestBranch(351, 165, 1);
    {
    __CrestLoad(355, (unsigned long )(& val), (long long )val);
    __CrestLoad(354, (unsigned long )(& myNode->val[1]), (long long )myNode->val[1]);
    __CrestApply2(353, 16, (long long )(val < myNode->val[1]));
# 233 "./b_tree.c"
    if (val < myNode->val[1]) {
      __CrestBranch(356, 166, 1);
      __CrestLoad(358, (unsigned long )0, (long long )0);
      __CrestStore(359, (unsigned long )(& pos));
# 234 "./b_tree.c"
      pos = 0;
      __CrestLoad(360, (unsigned long )0, (long long )0);
      __CrestStore(361, (unsigned long )(& flag));
# 235 "./b_tree.c"
      flag = 0;
    } else {
      __CrestBranch(357, 167, 0);
      __CrestLoad(362, (unsigned long )(& myNode->count), (long long )myNode->count);
      __CrestStore(363, (unsigned long )(& pos));
# 237 "./b_tree.c"
      pos = myNode->count;
      {
# 237 "./b_tree.c"
      while (1) {
        while_continue: ;
        {
        __CrestLoad(366, (unsigned long )(& val), (long long )val);
        __CrestLoad(365, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
        __CrestApply2(364, 16, (long long )(val < myNode->val[pos]));
# 237 "./b_tree.c"
        if (val < myNode->val[pos]) {
          __CrestBranch(367, 172, 1);
          {
          __CrestLoad(371, (unsigned long )(& pos), (long long )pos);
          __CrestLoad(370, (unsigned long )0, (long long )1);
          __CrestApply2(369, 14, (long long )(pos > 1));
# 237 "./b_tree.c"
          if (pos > 1) {
            __CrestBranch(372, 173, 1);

          } else {
            __CrestBranch(373, 174, 0);
# 237 "./b_tree.c"
            goto while_break;
          }
          }
        } else {
          __CrestBranch(368, 175, 0);
# 237 "./b_tree.c"
          goto while_break;
        }
        }
        __CrestLoad(376, (unsigned long )(& pos), (long long )pos);
        __CrestLoad(375, (unsigned long )0, (long long )1);
        __CrestApply2(374, 1, (long long )(pos - 1));
        __CrestStore(377, (unsigned long )(& pos));
# 237 "./b_tree.c"
        pos --;
      }
      while_break: ;
      }
      {
      __CrestLoad(380, (unsigned long )(& val), (long long )val);
      __CrestLoad(379, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
      __CrestApply2(378, 12, (long long )(val == myNode->val[pos]));
# 239 "./b_tree.c"
      if (val == myNode->val[pos]) {
        __CrestBranch(381, 179, 1);
        __CrestLoad(383, (unsigned long )0, (long long )1);
        __CrestStore(384, (unsigned long )(& flag));
# 240 "./b_tree.c"
        flag = 1;
      } else {
        __CrestBranch(382, 180, 0);
        __CrestLoad(385, (unsigned long )0, (long long )0);
        __CrestStore(386, (unsigned long )(& flag));
# 242 "./b_tree.c"
        flag = 0;
      }
      }
    }
    }
    {
    __CrestLoad(389, (unsigned long )(& flag), (long long )flag);
    __CrestLoad(388, (unsigned long )0, (long long )0);
    __CrestApply2(387, 13, (long long )(flag != 0));
# 245 "./b_tree.c"
    if (flag != 0) {
      __CrestBranch(390, 182, 1);
      {
      __CrestLoad(394, (unsigned long )(& myNode->link[pos - 1]), (long long )((unsigned long )myNode->link[pos - 1]));
      __CrestLoad(393, (unsigned long )0, (long long )0);
      __CrestApply2(392, 13, (long long )(myNode->link[pos - 1] != 0));
# 246 "./b_tree.c"
      if (myNode->link[pos - 1] != 0) {
        __CrestBranch(395, 183, 1);
        __CrestLoad(397, (unsigned long )(& pos), (long long )pos);
# 247 "./b_tree.c"
        copySuccessor(myNode, pos);
        __CrestClearStack(398);
        __CrestLoad(399, (unsigned long )(& myNode->val[pos]), (long long )myNode->val[pos]);
# 248 "./b_tree.c"
        flag = delValFromNode(myNode->val[pos], myNode->link[pos]);
        __CrestHandleReturn(401, (long long )flag);
        __CrestStore(400, (unsigned long )(& flag));
      } else {
        __CrestBranch(396, 184, 0);
        __CrestLoad(402, (unsigned long )(& pos), (long long )pos);
# 253 "./b_tree.c"
        removeVal(myNode, pos);
        __CrestClearStack(403);
      }
      }
    } else {
      __CrestBranch(391, 185, 0);
      __CrestLoad(404, (unsigned long )(& val), (long long )val);
# 256 "./b_tree.c"
      flag = delValFromNode(val, myNode->link[pos]);
      __CrestHandleReturn(406, (long long )flag);
      __CrestStore(405, (unsigned long )(& flag));
    }
    }
    {
    __CrestLoad(409, (unsigned long )(& myNode->link[pos]), (long long )((unsigned long )myNode->link[pos]));
    __CrestLoad(408, (unsigned long )0, (long long )0);
    __CrestApply2(407, 13, (long long )(myNode->link[pos] != 0));
# 258 "./b_tree.c"
    if (myNode->link[pos] != 0) {
      __CrestBranch(410, 187, 1);
      {
# 259 "./b_tree.c"
      mem_5 = myNode->link[pos];
      {
      __CrestLoad(414, (unsigned long )(& mem_5->count), (long long )mem_5->count);
      __CrestLoad(413, (unsigned long )0, (long long )2);
      __CrestApply2(412, 16, (long long )(mem_5->count < 2));
# 259 "./b_tree.c"
      if (mem_5->count < 2) {
        __CrestBranch(415, 190, 1);
        __CrestLoad(417, (unsigned long )(& pos), (long long )pos);
# 260 "./b_tree.c"
        adjustNode(myNode, pos);
        __CrestClearStack(418);
      } else {
        __CrestBranch(416, 191, 0);

      }
      }
      }
    } else {
      __CrestBranch(411, 192, 0);

    }
    }
  } else {
    __CrestBranch(352, 193, 0);

  }
  }
  {
  __CrestLoad(419, (unsigned long )(& flag), (long long )flag);
  __CrestReturn(420);
# 263 "./b_tree.c"
  return (flag);
  }
}
}
# 267 "./b_tree.c"
void deletion(int val , struct btreeNode *myNode )
{
  struct btreeNode *tmp ;
  int tmp___0 ;

  {
  __CrestCall(422, 13);
  __CrestStore(421, (unsigned long )(& val));
  __CrestLoad(423, (unsigned long )(& val), (long long )val);
# 269 "./b_tree.c"
  tmp___0 = delValFromNode(val, myNode);
  __CrestHandleReturn(425, (long long )tmp___0);
  __CrestStore(424, (unsigned long )(& tmp___0));
  {
  __CrestLoad(428, (unsigned long )(& tmp___0), (long long )tmp___0);
  __CrestLoad(427, (unsigned long )0, (long long )0);
  __CrestApply2(426, 13, (long long )(tmp___0 != 0));
# 269 "./b_tree.c"
  if (tmp___0 != 0) {
    __CrestBranch(429, 197, 1);
    {
    __CrestLoad(433, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestLoad(432, (unsigned long )0, (long long )0);
    __CrestApply2(431, 12, (long long )(myNode->count == 0));
# 273 "./b_tree.c"
    if (myNode->count == 0) {
      __CrestBranch(434, 198, 1);
# 274 "./b_tree.c"
      tmp = myNode;
# 275 "./b_tree.c"
      myNode = myNode->link[0];
# 276 "./b_tree.c"
      free((void *)tmp);
      __CrestClearStack(436);
    } else {
      __CrestBranch(435, 199, 0);

    }
    }
  } else {
    __CrestBranch(430, 200, 0);
# 271 "./b_tree.c"
    goto return_label;
  }
  }
# 279 "./b_tree.c"
  root = myNode;

  return_label:
  {
  __CrestReturn(437);
# 267 "./b_tree.c"
  return;
  }
}
}
# 284 "./b_tree.c"
void searching(int val , int *pos , struct btreeNode *myNode )
{


  {
  __CrestCall(439, 14);
  __CrestStore(438, (unsigned long )(& val));
  {
  __CrestLoad(442, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(441, (unsigned long )0, (long long )0);
  __CrestApply2(440, 12, (long long )(myNode == 0));
# 285 "./b_tree.c"
  if (myNode == 0) {
    __CrestBranch(443, 206, 1);
# 286 "./b_tree.c"
    goto return_label;
  } else {
    __CrestBranch(444, 208, 0);

  }
  }
  {
  __CrestLoad(447, (unsigned long )(& val), (long long )val);
  __CrestLoad(446, (unsigned long )(& myNode->val[1]), (long long )myNode->val[1]);
  __CrestApply2(445, 16, (long long )(val < myNode->val[1]));
# 289 "./b_tree.c"
  if (val < myNode->val[1]) {
    __CrestBranch(448, 210, 1);
    __CrestLoad(450, (unsigned long )0, (long long )0);
    __CrestStore(451, (unsigned long )pos);
# 290 "./b_tree.c"
    *pos = 0;
  } else {
    __CrestBranch(449, 211, 0);
    __CrestLoad(452, (unsigned long )(& myNode->count), (long long )myNode->count);
    __CrestStore(453, (unsigned long )pos);
# 292 "./b_tree.c"
    *pos = myNode->count;
    {
# 292 "./b_tree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(456, (unsigned long )(& val), (long long )val);
      __CrestLoad(455, (unsigned long )(& myNode->val[*pos]), (long long )myNode->val[*pos]);
      __CrestApply2(454, 16, (long long )(val < myNode->val[*pos]));
# 292 "./b_tree.c"
      if (val < myNode->val[*pos]) {
        __CrestBranch(457, 216, 1);
        {
        __CrestLoad(461, (unsigned long )pos, (long long )*pos);
        __CrestLoad(460, (unsigned long )0, (long long )1);
        __CrestApply2(459, 14, (long long )(*pos > 1));
# 292 "./b_tree.c"
        if (*pos > 1) {
          __CrestBranch(462, 217, 1);

        } else {
          __CrestBranch(463, 218, 0);
# 292 "./b_tree.c"
          goto while_break;
        }
        }
      } else {
        __CrestBranch(458, 219, 0);
# 292 "./b_tree.c"
        goto while_break;
      }
      }
      __CrestLoad(466, (unsigned long )pos, (long long )*pos);
      __CrestLoad(465, (unsigned long )0, (long long )1);
      __CrestApply2(464, 1, (long long )(*pos - 1));
      __CrestStore(467, (unsigned long )pos);
# 292 "./b_tree.c"
      (*pos) --;
    }
    while_break: ;
    }
    {
    __CrestLoad(470, (unsigned long )(& val), (long long )val);
    __CrestLoad(469, (unsigned long )(& myNode->val[*pos]), (long long )myNode->val[*pos]);
    __CrestApply2(468, 12, (long long )(val == myNode->val[*pos]));
# 294 "./b_tree.c"
    if (val == myNode->val[*pos]) {
      __CrestBranch(471, 223, 1);
# 296 "./b_tree.c"
      goto return_label;
    } else {
      __CrestBranch(472, 225, 0);

    }
    }
  }
  }
  __CrestLoad(473, (unsigned long )(& val), (long long )val);
# 299 "./b_tree.c"
  searching(val, pos, myNode->link[*pos]);
  __CrestClearStack(474);

  return_label:
  {
  __CrestReturn(475);
# 284 "./b_tree.c"
  return;
  }
}
}
# 304 "./b_tree.c"
void traversal(struct btreeNode *myNode )
{
  int i ;

  {
  __CrestCall(476, 15);

  {
  __CrestLoad(479, (unsigned long )(& myNode), (long long )((unsigned long )myNode));
  __CrestLoad(478, (unsigned long )0, (long long )0);
  __CrestApply2(477, 13, (long long )(myNode != 0));
# 306 "./b_tree.c"
  if (myNode != 0) {
    __CrestBranch(480, 230, 1);
    __CrestLoad(482, (unsigned long )0, (long long )0);
    __CrestStore(483, (unsigned long )(& i));
# 307 "./b_tree.c"
    i = 0;
    {
# 307 "./b_tree.c"
    while (1) {
      while_continue: ;
      {
      __CrestLoad(486, (unsigned long )(& i), (long long )i);
      __CrestLoad(485, (unsigned long )(& myNode->count), (long long )myNode->count);
      __CrestApply2(484, 16, (long long )(i < myNode->count));
# 307 "./b_tree.c"
      if (i < myNode->count) {
        __CrestBranch(487, 235, 1);

      } else {
        __CrestBranch(488, 236, 0);
# 307 "./b_tree.c"
        goto while_break;
      }
      }
# 308 "./b_tree.c"
      traversal(myNode->link[i]);
      __CrestClearStack(489);
      __CrestLoad(492, (unsigned long )(& i), (long long )i);
      __CrestLoad(491, (unsigned long )0, (long long )1);
      __CrestApply2(490, 0, (long long )(i + 1));
      __CrestStore(493, (unsigned long )(& i));
# 307 "./b_tree.c"
      i ++;
    }
    while_break: ;
    }
# 311 "./b_tree.c"
    traversal(myNode->link[i]);
    __CrestClearStack(494);
  } else {
    __CrestBranch(481, 240, 0);

  }
  }

  {
  __CrestReturn(495);
# 304 "./b_tree.c"
  return;
  }
}
}
# 315 "./b_tree.c"
int main(void)
{
  int val ;
  int ch ;
  int hyormFlag ;
  int __retres4 ;

  {
  __globinit_b_tree();
  __CrestCall(496, 16);
  __CrestLoad(497, (unsigned long )0, (long long )0);
  __CrestStore(498, (unsigned long )(& hyormFlag));
# 316 "./b_tree.c"
  hyormFlag = 0;
# 317 "./b_tree.c"
  while (1) {
    while_continue: ;
# 323 "./b_tree.c"
    __CrestUInt((unsigned int *)(& ch));
    __CrestLoad(501, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(500, (unsigned long )0, (long long )6);
    __CrestApply2(499, 4, (long long )(ch % 6));
    __CrestStore(502, (unsigned long )(& ch));
# 324 "./b_tree.c"
    ch %= 6;
    __CrestLoad(503, (unsigned long )(& ch), (long long )ch);
# 325 "./b_tree.c"
    printf((char const * __restrict )"%d\n", ch);
    __CrestClearStack(504);
    {
    {
    __CrestLoad(507, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(506, (unsigned long )0, (long long )1);
    __CrestApply2(505, 12, (long long )(ch == 1));
# 327 "./b_tree.c"
    if (ch == 1) {
      __CrestBranch(508, 250, 1);
# 327 "./b_tree.c"
      goto case_1;
    } else {
      __CrestBranch(509, 251, 0);

    }
    }
    {
    __CrestLoad(512, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(511, (unsigned long )0, (long long )2);
    __CrestApply2(510, 12, (long long )(ch == 2));
# 333 "./b_tree.c"
    if (ch == 2) {
      __CrestBranch(513, 253, 1);
# 333 "./b_tree.c"
      goto case_2;
    } else {
      __CrestBranch(514, 254, 0);

    }
    }
    {
    __CrestLoad(517, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(516, (unsigned long )0, (long long )3);
    __CrestApply2(515, 12, (long long )(ch == 3));
# 339 "./b_tree.c"
    if (ch == 3) {
      __CrestBranch(518, 256, 1);
# 339 "./b_tree.c"
      goto case_3;
    } else {
      __CrestBranch(519, 257, 0);

    }
    }
    {
    __CrestLoad(522, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(521, (unsigned long )0, (long long )4);
    __CrestApply2(520, 12, (long long )(ch == 4));
# 345 "./b_tree.c"
    if (ch == 4) {
      __CrestBranch(523, 259, 1);
# 345 "./b_tree.c"
      goto case_4;
    } else {
      __CrestBranch(524, 260, 0);

    }
    }
    {
    __CrestLoad(527, (unsigned long )(& ch), (long long )ch);
    __CrestLoad(526, (unsigned long )0, (long long )5);
    __CrestApply2(525, 12, (long long )(ch == 5));
# 348 "./b_tree.c"
    if (ch == 5) {
      __CrestBranch(528, 262, 1);
# 348 "./b_tree.c"
      goto case_5;
    } else {
      __CrestBranch(529, 263, 0);

    }
    }
# 350 "./b_tree.c"
    goto switch_default;
    case_1:
# 329 "./b_tree.c"
    __CrestUInt((unsigned int *)(& val));
    __CrestLoad(530, (unsigned long )(& val), (long long )val);
# 330 "./b_tree.c"
    printf((char const * __restrict )"%d\n", val);
    __CrestClearStack(531);
    __CrestLoad(532, (unsigned long )(& val), (long long )val);
# 331 "./b_tree.c"
    insertion(val);
    __CrestClearStack(533);
# 332 "./b_tree.c"
    goto switch_break;
    case_2:
# 335 "./b_tree.c"
    __CrestUInt((unsigned int *)(& val));
    __CrestLoad(534, (unsigned long )(& val), (long long )val);
# 336 "./b_tree.c"
    printf((char const * __restrict )"%d\n", val);
    __CrestClearStack(535);
    __CrestLoad(536, (unsigned long )(& val), (long long )val);
# 337 "./b_tree.c"
    deletion(val, root);
    __CrestClearStack(537);
# 338 "./b_tree.c"
    goto switch_break;
    case_3:
# 341 "./b_tree.c"
    __CrestUInt((unsigned int *)(& val));
    __CrestLoad(538, (unsigned long )(& val), (long long )val);
# 342 "./b_tree.c"
    printf((char const * __restrict )"%d\n", val);
    __CrestClearStack(539);
    __CrestLoad(540, (unsigned long )(& val), (long long )val);
# 343 "./b_tree.c"
    searching(val, & ch, root);
    __CrestClearStack(541);
# 344 "./b_tree.c"
    goto switch_break;
    case_4:
# 346 "./b_tree.c"
    traversal(root);
    __CrestClearStack(542);
# 347 "./b_tree.c"
    goto switch_break;
    case_5:
    __CrestLoad(543, (unsigned long )0, (long long )0);
# 349 "./b_tree.c"
    exit(0);
    __CrestClearStack(544);
    switch_default:
    __CrestLoad(547, (unsigned long )(& hyormFlag), (long long )hyormFlag);
    __CrestLoad(546, (unsigned long )0, (long long )1);
    __CrestApply2(545, 0, (long long )(hyormFlag + 1));
    __CrestStore(548, (unsigned long )(& hyormFlag));
# 351 "./b_tree.c"
    hyormFlag ++;
    {
    __CrestLoad(551, (unsigned long )(& hyormFlag), (long long )hyormFlag);
    __CrestLoad(550, (unsigned long )0, (long long )500);
    __CrestApply2(549, 14, (long long )(hyormFlag > 500));
# 352 "./b_tree.c"
    if (hyormFlag > 500) {
      __CrestBranch(552, 276, 1);
      __CrestLoad(554, (unsigned long )0, (long long )0);
# 352 "./b_tree.c"
      exit(0);
      __CrestClearStack(555);
    } else {
      __CrestBranch(553, 277, 0);

    }
    }
# 354 "./b_tree.c"
    goto switch_break;
    switch_break: ;
    }
  }
  while_break:
  __CrestLoad(556, (unsigned long )(& __retres4), (long long )__retres4);
  __CrestReturn(557);
# 315 "./b_tree.c"
  return (__retres4);
}
}
void __globinit_b_tree(void)
{


  {
  __CrestInit();
}
}
