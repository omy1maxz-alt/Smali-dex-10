.class Lorg/mozilla/javascript/optimizer/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final AnyType:I = 0x3

.field static final NoType:I = 0x0

.field static final NumberType:I = 0x1


# instance fields
.field private inDirectCallFunction:Z

.field private parameterUsedInNumberContext:Z

.field theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildStatementList_r(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x82

    if-eq v0, v1, :cond_19

    const/16 v1, 0x8e

    if-eq v0, v1, :cond_19

    const/16 v1, 0x85

    if-eq v0, v1, :cond_19

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    goto :goto_27

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    :goto_1d
    if-eqz p0, :cond_27

    invoke-static {p0, p1}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p0

    goto :goto_1d

    :cond_27
    :goto_27
    return-void
.end method

.method private convertParameter(Lorg/mozilla/javascript/Node;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method private markDCPNumberContext(Lorg/mozilla/javascript/Node;)V
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    :cond_1d
    return-void
.end method

.method private optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .registers 7

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iget-object v1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-static {v1, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    new-array v2, v1, [Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->runFlowAnalyzes(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    :goto_32
    if-ge v0, v1, :cond_3d

    aget-object v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3d
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setParameterNumberContext(Z)V

    :cond_42
    return-void
.end method

.method private rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .registers 6

    :goto_0
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x96

    invoke-direct {v1, v2, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-nez v0, :cond_24

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_27

    :cond_24
    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/Node;->addChildBefore(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_27
    :goto_27
    move-object p2, v0

    goto :goto_0

    :cond_29
    return-void
.end method

.method private rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I
    .registers 11

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x28

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2a2

    const/16 v1, 0x86

    if-eq v0, v1, :cond_294

    const/16 v1, 0x8d

    const/16 v5, 0x96

    if-eq v0, v1, :cond_24a

    const/16 v1, 0x9d

    const/16 v6, 0x97

    if-eq v0, v1, :cond_1eb

    const/16 v1, 0x37

    if-eq v0, v1, :cond_1c6

    const/16 p2, 0x38

    if-eq v0, p2, :cond_1eb

    const/16 p2, 0x6b

    if-eq v0, p2, :cond_195

    const/16 p2, 0x6c

    if-eq v0, p2, :cond_195

    packed-switch v0, :pswitch_data_2aa

    const/4 p2, 0x2

    packed-switch v0, :pswitch_data_2b4

    packed-switch v0, :pswitch_data_2c4

    packed-switch v0, :pswitch_data_2d2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return v3

    :pswitch_41  #0x26
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_6a

    :goto_5a
    if-eqz p2, :cond_6d

    invoke-direct {p0, p2, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p1

    if-ne p1, v4, :cond_65

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    :cond_65
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_5a

    :cond_6a
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_6d
    return v3

    :pswitch_6e  #0x24
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v0, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    if-ne v6, v4, :cond_8d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v5, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_8d
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    if-ne v0, v4, :cond_9c

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_9c

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_9c
    return v3

    :pswitch_9d  #0x15
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v0, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_ba

    return v3

    :cond_ba
    if-ne v6, v4, :cond_dd

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_dd

    :cond_c0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_cc

    if-ne v5, v4, :cond_dd

    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_dd

    :cond_cc
    if-ne v5, v4, :cond_d8

    if-ne v6, v4, :cond_d4

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_d4
    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_dd

    :cond_d8
    if-ne v6, v4, :cond_dd

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_dd
    :goto_dd
    return v3

    :pswitch_de  #0xe, 0xf, 0x10, 0x11
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v0, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_101

    return v3

    :cond_101
    if-ne v6, v4, :cond_124

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_124

    :cond_107
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-eqz v0, :cond_113

    if-ne v5, v4, :cond_124

    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_124

    :cond_113
    if-ne v5, v4, :cond_11f

    if-ne v6, v4, :cond_11b

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_124

    :cond_11b
    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_124

    :cond_11f
    if-ne v6, v4, :cond_124

    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_124
    :goto_124
    return v3

    :pswitch_125  #0x9, 0xa, 0xb, 0x12, 0x13, 0x16, 0x17, 0x18, 0x19
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p2, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    invoke-direct {p0, v0, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    if-ne v1, v4, :cond_158

    if-ne v5, v4, :cond_143

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_143
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_157

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, v6, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_157
    return v4

    :cond_158
    if-ne v5, v4, :cond_16f

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_16e

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v6, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_16e
    return v4

    :cond_16f
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    if-nez v1, :cond_180

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, v6, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_180
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_191

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, v6, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_191
    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_195
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p2, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v1, :cond_1b3

    if-ne v0, v4, :cond_1b2

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_1b2

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    return v4

    :cond_1b2
    return v3

    :cond_1b3
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v1, 0x24

    if-eq p1, v1, :cond_1c5

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p2, 0x21

    if-ne p1, p2, :cond_1c4

    goto :goto_1c5

    :cond_1c4
    return v3

    :cond_1c5
    :goto_1c5
    return v0

    :cond_1c6
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v1, :cond_1de

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v1

    if-eqz v1, :cond_1de

    if-ne p2, v4, :cond_1de

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_1de
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result p2

    if-eqz p2, :cond_1ea

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_1ea
    return v3

    :cond_1eb
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p2, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    iget-boolean v7, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v7, :cond_21a

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v7, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v7

    if-eqz v7, :cond_21a

    if-ne v0, v4, :cond_219

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_215

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :cond_215
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    return v3

    :cond_219
    return v0

    :cond_21a
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v7, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v1

    if-eqz v1, :cond_236

    if-eq v0, v4, :cond_22f

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v6, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_22f
    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    return v4

    :cond_236
    if-ne v0, v4, :cond_249

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_249

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v5, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_249
    return v3

    :cond_24a
    :pswitch_24a  #0x25
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, p2, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    if-ne v6, v4, :cond_26d

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v6

    if-nez v6, :cond_26d

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v5, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_26d
    invoke-direct {p0, v0, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v4, :cond_27c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_27c

    invoke-virtual {p1, v2, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_27c
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v4, :cond_293

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_293

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, v5, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_293
    return v3

    :cond_294
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    :try_start_298
    invoke-direct {p0, p2, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p2
    :try_end_29c
    .catchall {:try_start_298 .. :try_end_29c} :catchall_2a6

    if-ne p2, v4, :cond_2a1

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_2a1
    return v3

    :cond_2a2
    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v4

    :catchall_2a6
    move-exception p1

    goto :goto_2a9

    :goto_2a8
    throw p1

    :goto_2a9
    goto :goto_2a8

    :pswitch_data_2aa
    .packed-switch 0x9
        :pswitch_125  #00000009
        :pswitch_125  #0000000a
        :pswitch_125  #0000000b
    .end packed-switch

    :pswitch_data_2b4
    .packed-switch 0xe
        :pswitch_de  #0000000e
        :pswitch_de  #0000000f
        :pswitch_de  #00000010
        :pswitch_de  #00000011
        :pswitch_125  #00000012
        :pswitch_125  #00000013
    .end packed-switch

    :pswitch_data_2c4
    .packed-switch 0x15
        :pswitch_9d  #00000015
        :pswitch_125  #00000016
        :pswitch_125  #00000017
        :pswitch_125  #00000018
        :pswitch_125  #00000019
    .end packed-switch

    :pswitch_data_2d2
    .packed-switch 0x24
        :pswitch_6e  #00000024
        :pswitch_24a  #00000025
        :pswitch_41  #00000026
    .end packed-switch
.end method


# virtual methods
.method optimize(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-eq v1, v0, :cond_11

    invoke-static {p1, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method
