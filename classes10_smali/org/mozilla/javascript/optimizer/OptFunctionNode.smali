.class public final Lorg/mozilla/javascript/optimizer/OptFunctionNode;
.super Ljava/lang/Object;
.source "OptFunctionNode.java"


# instance fields
.field private directTargetIndex:I

.field public final fnode:Lorg/mozilla/javascript/ast/FunctionNode;

.field itsContainsCalls0:Z

.field itsContainsCalls1:Z

.field private itsParameterNumberContext:Z

.field private numberVarFlags:[Z


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ast/FunctionNode;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->directTargetIndex:I

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/ScriptNode;->setCompilerData(Ljava/lang/Object;)V

    return-void
.end method

.method public static get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    .registers 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getCompilerData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    return-object p0
.end method

.method public static get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getCompilerData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    return-object p0
.end method


# virtual methods
.method public getDirectTargetIndex()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->directTargetIndex:I

    return v0
.end method

.method public getParameterNumberContext()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsParameterNumberContext:Z

    return v0
.end method

.method public getVarCount()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v0

    return v0
.end method

.method public getVarIndex(Lorg/mozilla/javascript/Node;)I
    .registers 5

    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v2

    if-ne v2, v1, :cond_35

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_12

    move-object v1, p1

    goto :goto_24

    :cond_12
    const/16 v2, 0x38

    if-eq v1, v2, :cond_20

    const/16 v2, 0x9d

    if-ne v1, v2, :cond_1b

    goto :goto_20

    :cond_1b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_20
    :goto_20
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    :goto_24
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v2

    if-ltz v2, :cond_30

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_35

    :cond_30
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_35
    :goto_35
    return v2
.end method

.method public isNumberVar(I)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_10

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->numberVarFlags:[Z

    if-eqz v0, :cond_10

    aget-boolean p1, v0, p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public isParameter(I)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    if-ge p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public isTargetOfDirectCall()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->directTargetIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method setDirectTargetIndex(I)V
    .registers 3

    if-ltz p1, :cond_6

    iget v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->directTargetIndex:I

    if-ltz v0, :cond_9

    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iput p1, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->directTargetIndex:I

    return-void
.end method

.method setIsNumberVar(I)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->numberVarFlags:[Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->numberVarFlags:[Z

    :cond_21
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->numberVarFlags:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method setParameterNumberContext(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->itsParameterNumberContext:Z

    return-void
.end method
