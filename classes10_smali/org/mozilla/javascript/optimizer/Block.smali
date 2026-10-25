.class Lorg/mozilla/javascript/optimizer/Block;
.super Ljava/lang/Object;
.source "Block.java"


# static fields
.field static final DEBUG:Z

.field private static debug_blockCount:I


# instance fields
.field private itsBlockID:I

.field private itsEndNodeIndex:I

.field private itsLiveOnEntrySet:Ljava/util/BitSet;

.field private itsLiveOnExitSet:Ljava/util/BitSet;

.field private itsNotDefSet:Ljava/util/BitSet;

.field private itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

.field private itsStartNodeIndex:I

.field private itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

.field private itsUseBeforeDefSet:Ljava/util/BitSet;


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    iput p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    return-void
.end method

.method private static assignType([III)Z
    .registers 5

    aget v0, p0, p1

    aget v1, p0, p1

    or-int/2addr p2, v1

    aput p2, p0, p1

    if-eq v0, p2, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static buildBlocks([Lorg/mozilla/javascript/Node;)[Lorg/mozilla/javascript/optimizer/Block;
    .registers 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v1}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    array-length v5, p0

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/16 v9, 0x84

    if-ge v3, v5, :cond_57

    aget-object v5, p0, v3

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-eq v5, v8, :cond_3e

    if-eq v5, v7, :cond_3e

    if-eq v5, v6, :cond_3e

    if-eq v5, v9, :cond_24

    goto :goto_54

    :cond_24
    if-eq v3, v4, :cond_54

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v9, :cond_39

    aget-object v4, p0, v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    move v4, v3

    goto :goto_54

    :cond_3e
    invoke-static {v4, v3}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v9, :cond_4f

    aget-object v4, p0, v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v3, 0x1

    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_57
    array-length v3, p0

    if-eq v4, v3, :cond_71

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v3}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v3

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v9, :cond_6e

    aget-object v4, p0, v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    :cond_71
    const/4 v3, 0x0

    :goto_72
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_be

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    iget-object v5, v4, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    iget v5, v5, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    if-eq v9, v8, :cond_a0

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_a0

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v1, v10}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    invoke-virtual {v4, v10}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    invoke-virtual {v10, v4}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    :cond_a0
    if-eq v9, v6, :cond_a6

    if-eq v9, v7, :cond_a6

    if-ne v9, v8, :cond_bb

    :cond_a6
    check-cast v5, Lorg/mozilla/javascript/ast/Jump;

    iget-object v5, v5, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    iget-object v10, v9, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    invoke-virtual {v5, v7, v10}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v4, v9}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    :cond_bb
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :cond_be
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p0

    new-array p0, p0, [Lorg/mozilla/javascript/optimizer/Block;

    :goto_c4
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_e5

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    iget-object v3, v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->getSuccessors()[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v4

    iput-object v4, v3, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->getPredecessors()[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v0

    iput-object v0, v3, Lorg/mozilla/javascript/optimizer/Block;->itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

    iput v2, v3, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    aput-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    :cond_e5
    return-object p0
.end method

.method private doReachedUseDataFlow()Z
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/optimizer/Block;->updateEntrySet(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v0

    return v0
.end method

.method private doTypeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    if-gt v0, v2, :cond_13

    aget-object v2, p2, v0

    if-eqz v2, :cond_10

    invoke-static {p1, v2, p3}, Lorg/mozilla/javascript/optimizer/Block;->findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    return v1
.end method

.method private static findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z
    .registers 8

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_12

    invoke-static {p0, v2, p2}, Lorg/mozilla/javascript/optimizer/Block;->findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_6

    :cond_12
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_45

    const/16 v4, 0x9d

    if-eq v2, v4, :cond_45

    const/16 p1, 0x6b

    if-eq v2, p1, :cond_27

    const/16 p1, 0x6c

    if-eq v2, p1, :cond_27

    goto :goto_66

    :cond_27
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v2, 0x37

    if-ne p1, v2, :cond_66

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object p0

    aget-boolean p0, p0, p1

    if-nez p0, :cond_66

    const/4 p0, 0x1

    invoke-static {p2, p1, p0}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    move-result p0

    or-int/2addr p0, v1

    move v1, p0

    goto :goto_66

    :cond_45
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-ne p1, v3, :cond_61

    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object p0

    aget-boolean p0, p0, v2

    if-nez p0, :cond_66

    :cond_61
    invoke-static {p2, v2, v0}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_66
    :goto_66
    return v1
.end method

.method private static findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_76

    const/16 v1, 0x25

    if-eq v0, v1, :cond_76

    const/16 v1, 0x28

    const/4 v2, 0x1

    if-eq v0, v1, :cond_75

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_76

    const/16 v1, 0x67

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_76

    const/16 v1, 0x37

    if-eq v0, v1, :cond_58

    const/16 v1, 0x38

    if-eq v0, v1, :cond_76

    packed-switch v0, :pswitch_data_82

    packed-switch v0, :pswitch_data_8e

    packed-switch v0, :pswitch_data_a2

    packed-switch v0, :pswitch_data_ac

    const/4 p0, 0x3

    return p0

    :pswitch_33  #0x69, 0x6a
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :pswitch_45  #0x15
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :pswitch_57  #0x9, 0xa, 0xb, 0x12, 0x13, 0x14, 0x16, 0x17, 0x18, 0x19, 0x1b, 0x1c, 0x1d, 0x6b, 0x6c
    return v2

    :cond_58
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p0

    aget p0, p2, p0

    return p0

    :cond_5f
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p1

    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0

    or-int/2addr p0, p1

    return p0

    :cond_75
    return v2

    :cond_76
    :pswitch_76  #0x8
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    :try_start_7a
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result p0
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_7f

    return p0

    :catchall_7f
    move-exception p0

    throw p0

    nop

    :pswitch_data_82
    .packed-switch 0x8
        :pswitch_76  #00000008
        :pswitch_57  #00000009
        :pswitch_57  #0000000a
        :pswitch_57  #0000000b
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x12
        :pswitch_57  #00000012
        :pswitch_57  #00000013
        :pswitch_57  #00000014
        :pswitch_45  #00000015
        :pswitch_57  #00000016
        :pswitch_57  #00000017
        :pswitch_57  #00000018
        :pswitch_57  #00000019
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x1b
        :pswitch_57  #0000001b
        :pswitch_57  #0000001c
        :pswitch_57  #0000001d
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x69
        :pswitch_33  #00000069
        :pswitch_33  #0000006a
        :pswitch_57  #0000006b
        :pswitch_57  #0000006c
    .end packed-switch
.end method

.method private initLiveOnEntrySets(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarCount()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Ljava/util/BitSet;

    iget v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    :goto_22
    iget v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    if-gt v1, v2, :cond_2e

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2e
    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/BitSet;->flip(II)V

    return-void
.end method

.method private lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V
    .registers 6

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_7b

    const/16 v2, 0x38

    if-eq v0, v2, :cond_66

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_41

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_41

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_66

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    :goto_20
    if-eqz p2, :cond_8c

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_20

    :cond_2a
    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_8c

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_8c

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_8c

    :cond_41
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    if-ne v0, v1, :cond_62

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_5c

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    :cond_5c
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_8c

    :cond_62
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    goto :goto_8c

    :cond_66
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_8c

    :cond_7b
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_8c

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private markAnyTypeVariables([I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_13

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private static newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;-><init>(Lorg/mozilla/javascript/optimizer/Block$1;)V

    new-instance v1, Lorg/mozilla/javascript/optimizer/Block;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/optimizer/Block;-><init>(II)V

    iput-object v1, v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    return-object v0
.end method

.method private printLiveOnEntrySet(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .registers 2

    return-void
.end method

.method private static reachingDefDataFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_d

    aget-object v2, p2, v1

    invoke-direct {v2, p0, p1}, Lorg/mozilla/javascript/optimizer/Block;->initLiveOnEntrySets(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    array-length p0, p2

    new-array p0, p0, [Z

    array-length p1, p2

    new-array p1, p1, [Z

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-boolean v2, p0, v1

    :goto_18
    const/4 v3, 0x0

    :goto_19
    aget-boolean v4, p0, v1

    if-nez v4, :cond_21

    aget-boolean v4, p1, v1

    if-nez v4, :cond_46

    :cond_21
    aput-boolean v2, p1, v1

    aput-boolean v0, p0, v1

    aget-object v4, p2, v1

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/Block;->doReachedUseDataFlow()Z

    move-result v4

    if-eqz v4, :cond_46

    aget-object v4, p2, v1

    iget-object v4, v4, Lorg/mozilla/javascript/optimizer/Block;->itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

    if-eqz v4, :cond_46

    const/4 v5, 0x0

    :goto_34
    array-length v6, v4

    if-ge v5, v6, :cond_46

    aget-object v6, v4, v5

    iget v6, v6, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    aput-boolean v2, p0, v6

    if-le v6, v1, :cond_41

    const/4 v6, 0x1

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    :goto_42
    or-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_46
    if-nez v1, :cond_53

    if-eqz v3, :cond_4d

    array-length v1, p2

    sub-int/2addr v1, v2

    goto :goto_18

    :cond_4d
    aget-object p0, p2, v0

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/optimizer/Block;->markAnyTypeVariables([I)V

    return-void

    :cond_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_19
.end method

.method static runFlowAnalyzes(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-eq v4, v0, :cond_18

    const/4 v5, 0x3

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_18
    move v4, v0

    :goto_19
    if-eq v4, v1, :cond_20

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_20
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Block;->buildBlocks([Lorg/mozilla/javascript/Node;)[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v3

    invoke-static {p0, p1, v3, v2}, Lorg/mozilla/javascript/optimizer/Block;->reachingDefDataFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V

    invoke-static {p0, p1, v3, v2}, Lorg/mozilla/javascript/optimizer/Block;->typeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V

    :goto_2a
    if-eq v0, v1, :cond_37

    aget p1, v2, v0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_34

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setIsNumberVar(I)V

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_37
    return-void
.end method

.method private static toString([Lorg/mozilla/javascript/optimizer/Block;[Lorg/mozilla/javascript/Node;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method private static typeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V
    .registers 13

    array-length v0, p2

    new-array v0, v0, [Z

    array-length v1, p2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    :goto_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    aget-boolean v6, v0, v4

    if-nez v6, :cond_14

    aget-boolean v6, v1, v4

    if-nez v6, :cond_39

    :cond_14
    aput-boolean v3, v1, v4

    aput-boolean v2, v0, v4

    aget-object v6, p2, v4

    invoke-direct {v6, p0, p1, p3}, Lorg/mozilla/javascript/optimizer/Block;->doTypeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z

    move-result v6

    if-eqz v6, :cond_39

    aget-object v6, p2, v4

    iget-object v6, v6, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    if-eqz v6, :cond_39

    const/4 v7, 0x0

    :goto_27
    array-length v8, v6

    if-ge v7, v8, :cond_39

    aget-object v8, v6, v7

    iget v8, v8, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    aput-boolean v3, v0, v8

    if-ge v8, v4, :cond_34

    const/4 v8, 0x1

    goto :goto_35

    :cond_34
    const/4 v8, 0x0

    :goto_35
    or-int/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_39
    array-length v6, p2

    sub-int/2addr v6, v3

    if-ne v4, v6, :cond_41

    if-eqz v5, :cond_40

    goto :goto_a

    :cond_40
    return-void

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method private static updateEntrySet(Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p0, p3}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    invoke-virtual {p0, p2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-eq p0, v0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method
