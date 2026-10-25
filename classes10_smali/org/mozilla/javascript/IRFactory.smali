.class public final Lorg/mozilla/javascript/IRFactory;
.super Lorg/mozilla/javascript/Parser;
.source "IRFactory.java"


# static fields
.field private static final ALWAYS_FALSE_BOOLEAN:I = -0x1

.field private static final ALWAYS_TRUE_BOOLEAN:I = 0x1

.field private static final LOOP_DO_WHILE:I = 0x0

.field private static final LOOP_FOR:I = 0x2

.field private static final LOOP_WHILE:I = 0x1


# instance fields
.field private decompiler:Lorg/mozilla/javascript/Decompiler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/Decompiler;

    invoke-direct {v0}, Lorg/mozilla/javascript/Decompiler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .registers 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    new-instance p1, Lorg/mozilla/javascript/Decompiler;

    invoke-direct {p1}, Lorg/mozilla/javascript/Decompiler;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    return-void
.end method

.method private static addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .registers 7

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_38

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_33

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-eqz p1, :cond_29

    new-instance v2, Lorg/mozilla/javascript/ast/Jump;

    const/16 v3, 0x74

    invoke-direct {v2, v3, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    iput-object v1, v2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->setDefault(Lorg/mozilla/javascript/Node;)V

    :goto_2c
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void

    :cond_33
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_38
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .registers 22

    move-object/from16 v9, p0

    iget-object v0, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getResult()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getLoops()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v11, v2, [Lorg/mozilla/javascript/Node;

    new-array v12, v2, [Lorg/mozilla/javascript/Node;

    const/4 v13, 0x0

    move-object v14, v1

    const/4 v1, 0x0

    :goto_24
    const/16 v3, 0x59

    const-string v4, " "

    const/16 v5, 0x58

    if-ge v1, v2, :cond_b7

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    iget-object v7, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v7, v4}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x78

    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v7, "each "

    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    :cond_4b
    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_66

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_84

    :cond_66
    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v7, v9, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v5, v7, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    const/16 v5, 0x5a

    const/16 v8, 0x5b

    invoke-virtual {v9, v7}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    invoke-direct {v9, v8, v4, v15}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-static {v5, v4, v14}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    move-object v14, v4

    move-object v4, v7

    :goto_84
    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v7, 0x9a

    invoke-virtual {v9, v7, v4, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    aput-object v5, v11, v1

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v4

    if-eqz v4, :cond_9d

    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v5, "of "

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_a4

    :cond_9d
    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x34

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :goto_a4
    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    aput-object v4, v12, v1

    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_24

    :cond_b7
    const/16 v1, 0x26

    move-object/from16 v6, p2

    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    const/4 v15, 0x0

    const-string v7, "push"

    invoke-direct {v9, v6, v15, v7, v13}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {v9, v1, v6}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x86

    invoke-direct {v1, v6, v8, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    if-eqz v6, :cond_f9

    iget-object v6, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x71

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v4, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-static {v4, v1, v15, v0}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v1

    iget-object v0, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_f9
    add-int/lit8 v2, v2, -0x1

    move-object v6, v1

    move v0, v2

    const/4 v1, 0x0

    :goto_fe
    if-ltz v0, :cond_145

    :try_start_100
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-direct {v9, v15, v3}, Lorg/mozilla/javascript/IRFactory;->createLoopNode(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    :try_end_111
    .catchall {:try_start_100 .. :try_end_111} :catchall_13a

    add-int/lit8 v16, v1, 0x1

    const/16 v4, 0x9a

    :try_start_115
    aget-object v5, v11, v0

    aget-object v7, v12, v0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v17

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v18

    move-object/from16 v1, p0

    move v2, v4

    move-object v4, v5

    move-object v5, v7

    move/from16 v7, v17

    move-object v13, v8

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object v6
    :try_end_12f
    .catchall {:try_start_115 .. :try_end_12f} :catchall_136

    add-int/lit8 v0, v0, -0x1

    move-object v8, v13

    move/from16 v1, v16

    const/4 v13, 0x0

    goto :goto_fe

    :catchall_136
    move-exception v0

    move/from16 v1, v16

    goto :goto_13b

    :catchall_13a
    move-exception v0

    :goto_13b
    const/4 v13, 0x0

    :goto_13c
    if-ge v13, v1, :cond_144

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_13c

    :cond_144
    throw v0

    :cond_145
    move-object v13, v8

    const/4 v0, 0x0

    :goto_147
    if-ge v0, v1, :cond_14f

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_147

    :cond_14f
    iget-object v0, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {v13, v14}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v6
.end method

.method private static closeSwitch(Lorg/mozilla/javascript/Node;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2f

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getDefault()Lorg/mozilla/javascript/Node;

    move-result-object v2

    if-nez v2, :cond_23

    move-object v2, v1

    :cond_23
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void

    :cond_2f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_34
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 8

    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-nez v0, :cond_2d

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1d

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_17

    goto :goto_1d

    :cond_17
    const-string p1, "msg.bad.assign.left"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object p3

    :cond_1d
    :goto_1d
    const/16 v0, 0x5b

    if-eq p1, v0, :cond_27

    const-string p1, "msg.bad.destruct.op"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object p3

    :cond_27
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_2d
    packed-switch p1, :pswitch_data_c4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_35  #0x66
    const/16 p1, 0x19

    goto :goto_55

    :pswitch_38  #0x65
    const/16 p1, 0x18

    goto :goto_55

    :pswitch_3b  #0x64
    const/16 p1, 0x17

    goto :goto_55

    :pswitch_3e  #0x63
    const/16 p1, 0x16

    goto :goto_55

    :pswitch_41  #0x62
    const/16 p1, 0x15

    goto :goto_55

    :pswitch_44  #0x61
    const/16 p1, 0x14

    goto :goto_55

    :pswitch_47  #0x60
    const/16 p1, 0x13

    goto :goto_55

    :pswitch_4a  #0x5f
    const/16 p1, 0x12

    goto :goto_55

    :pswitch_4d  #0x5e
    const/16 p1, 0xb

    goto :goto_55

    :pswitch_50  #0x5d
    const/16 p1, 0xa

    goto :goto_55

    :pswitch_53  #0x5c
    const/16 p1, 0x9

    :goto_55
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p2

    const/16 v1, 0x8b

    const/16 v2, 0x21

    if-eq p2, v2, :cond_a0

    const/16 v3, 0x24

    if-eq p2, v3, :cond_a0

    const/16 v2, 0x27

    if-eq p2, v2, :cond_89

    const/16 v2, 0x44

    if-ne p2, v2, :cond_84

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x8f

    invoke-direct {p1, p3, p2, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p1

    :cond_84
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_89
    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p1, 0x31

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x8

    invoke-direct {p3, v0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p3

    :cond_a0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-ne p2, v2, :cond_ad

    const/16 p2, 0x8c

    goto :goto_af

    :cond_ad
    const/16 p2, 0x8d

    :goto_af
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p2, v3, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p1

    :pswitch_bf  #0x5b
    invoke-virtual {p0, v0, p3}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_data_c4
    .packed-switch 0x5b
        :pswitch_bf  #0000005b
        :pswitch_53  #0000005c
        :pswitch_50  #0000005d
        :pswitch_4d  #0000005e
        :pswitch_4a  #0000005f
        :pswitch_47  #00000060
        :pswitch_44  #00000061
        :pswitch_41  #00000062
        :pswitch_3e  #00000063
        :pswitch_3b  #00000064
        :pswitch_38  #00000065
        :pswitch_35  #00000066
    .end packed-switch
.end method

.method private static createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 10

    const/16 v0, 0x69

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_f5

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_eb

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    const/16 v2, 0x1c

    const/16 v3, 0x28

    packed-switch p0, :pswitch_data_106

    goto/16 :goto_ff

    :pswitch_15  #0x18
    iget v4, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_ff

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v4

    iget v6, p1, Lorg/mozilla/javascript/Node;->type:I

    if-ne v6, v3, :cond_2a

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_2a
    cmpl-double v3, v4, v0

    if-nez v3, :cond_ff

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :pswitch_34  #0x17
    iget v4, p1, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_54

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v4

    iget v6, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v6, v3, :cond_4a

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    mul-double v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_4a
    cmpl-double v3, v4, v0

    if-nez v3, :cond_ff

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :cond_54
    iget v4, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_ff

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v3

    cmpl-double v5, v3, v0

    if-nez v5, :cond_ff

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :pswitch_66  #0x16
    iget v0, p1, Lorg/mozilla/javascript/Node;->type:I

    const-wide/16 v4, 0x0

    if-ne v0, v3, :cond_89

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    iget v2, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v2, v3, :cond_7d

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_7d
    cmpl-double v2, v0, v4

    if-nez v2, :cond_ff

    new-instance p0, Lorg/mozilla/javascript/Node;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :cond_89
    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v3, :cond_ff

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_ff

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :pswitch_9b  #0x15
    iget v0, p1, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0xa

    const/16 v2, 0x29

    if-ne v0, v2, :cond_c2

    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v2, :cond_ac

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b6

    :cond_ac
    if-ne v0, v3, :cond_ff

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    :goto_b6
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    return-object p1

    :cond_c2
    if-ne v0, v3, :cond_ff

    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v3, :cond_d5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_d5
    if-ne v0, v2, :cond_ff

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    return-object p2

    :cond_eb
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    if-ne v0, v1, :cond_f2

    return-object p1

    :cond_f2
    if-ne v0, v2, :cond_ff

    return-object p2

    :cond_f5
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    if-ne v0, v2, :cond_fc

    return-object p1

    :cond_fc
    if-ne v0, v1, :cond_ff

    return-object p2

    :cond_ff
    :goto_ff
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0

    nop

    :pswitch_data_106
    .packed-switch 0x15
        :pswitch_9b  #00000015
        :pswitch_66  #00000016
        :pswitch_34  #00000017
        :pswitch_15  #00000018
    .end packed-switch
.end method

.method private createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 8

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "eval"

    const/4 v3, 0x0

    const/16 v4, 0x27

    if-ne v0, v4, :cond_21

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_39

    :cond_17
    const-string v1, "With"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x2

    goto :goto_39

    :cond_21
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v4, 0x21

    if-ne v0, v4, :cond_38

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    const/16 p1, 0xa

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_48
    return-object v0
.end method

.method private createCatch(Ljava/lang/String;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 12

    if-nez p2, :cond_9

    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x81

    invoke-direct {p2, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :cond_9
    move-object v4, p2

    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x7d

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v1, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V

    return-object p2
.end method

.method private static createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-static {p0}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return-object p1

    :cond_8
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-object p2

    :cond_c
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 5

    if-nez p2, :cond_13

    if-nez p4, :cond_13

    if-eqz p1, :cond_e

    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p4, 0x24

    invoke-direct {p2, p4, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p2

    :cond_e
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private static createExprStatementNoReturn(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x86

    invoke-direct {v0, v1, p0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    return-object v0
.end method

.method private static createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 13

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x9a

    if-ne v0, v1, :cond_26

    invoke-static {p0}, Lorg/mozilla/javascript/ast/Scope;->splitScope(Lorg/mozilla/javascript/ast/Scope;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v3, 0x2

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 p1, 0x81

    invoke-direct {v6, p1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    move-object v2, p0

    move-object v4, p4

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_26
    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method private createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;ZZ)Lorg/mozilla/javascript/Node;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "msg.bad.for.in.lhs"

    const/16 v5, 0x9a

    const/16 v6, 0x42

    const/16 v7, 0x7b

    const/16 v8, 0x43

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v2, v7, :cond_3a

    if-ne v2, v5, :cond_1a

    goto :goto_3a

    :cond_1a
    if-eq v2, v6, :cond_2c

    if-ne v2, v8, :cond_1f

    goto :goto_2c

    :cond_1f
    invoke-static/range {p3 .. p3}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    if-nez v6, :cond_29

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object v3

    :cond_29
    move v12, v2

    :goto_2a
    const/4 v2, -0x1

    goto :goto_67

    :cond_2c
    :goto_2c
    instance-of v3, v1, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-eqz v3, :cond_37

    move-object v3, v1

    check-cast v3, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v9

    :cond_37
    move-object v6, v1

    move v12, v2

    goto :goto_67

    :cond_3a
    :goto_3a
    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    if-eq v12, v6, :cond_5a

    if-ne v12, v8, :cond_47

    goto :goto_5a

    :cond_47
    const/16 v6, 0x27

    if-ne v12, v6, :cond_56

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    move v12, v2

    move-object v6, v3

    goto :goto_2a

    :cond_56
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object v3

    :cond_5a
    :goto_5a
    instance-of v2, v11, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-eqz v2, :cond_65

    move-object v2, v11

    check-cast v2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v9

    :cond_65
    move-object v6, v11

    move v2, v12

    :goto_67
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x8e

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    if-eqz p6, :cond_73

    const/16 v4, 0x3b

    goto :goto_7f

    :cond_73
    if-eqz p7, :cond_78

    const/16 v4, 0x3d

    goto :goto_7f

    :cond_78
    if-eq v2, v10, :cond_7d

    const/16 v4, 0x3c

    goto :goto_7f

    :cond_7d
    const/16 v4, 0x3a

    :goto_7f
    new-instance v11, Lorg/mozilla/javascript/Node;

    move-object/from16 v13, p4

    invoke-direct {v11, v4, v13}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/4 v4, 0x3

    invoke-virtual {v11, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v15, Lorg/mozilla/javascript/Node;

    const/16 v13, 0x3e

    invoke-direct {v15, v13}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v15, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v13, Lorg/mozilla/javascript/Node;

    const/16 v14, 0x3f

    invoke-direct {v13, v14}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v13, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v14, 0x82

    invoke-direct {v4, v14}, Lorg/mozilla/javascript/Node;-><init>(I)V

    if-eq v2, v10, :cond_bc

    move/from16 v10, p1

    invoke-virtual {v0, v10, v6, v13}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    if-nez p6, :cond_c0

    if-nez p7, :cond_c0

    if-eq v2, v8, :cond_b6

    const/4 v2, 0x2

    if-eq v9, v2, :cond_c0

    :cond_b6
    const-string v2, "msg.bad.for.in.destruct"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_c0

    :cond_bc
    invoke-virtual {v0, v6, v13}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    :cond_c0
    :goto_c0
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x86

    invoke-direct {v2, v8, v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v2, p5

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v13, p2

    check-cast v13, Lorg/mozilla/javascript/ast/Jump;

    const/4 v14, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v15

    move-object v15, v4

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    if-eq v12, v7, :cond_e7

    if-ne v12, v5, :cond_ea

    :cond_e7
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_ea
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v3
.end method

.method private static createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 7

    invoke-static {p0}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return-object p1

    :cond_8
    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne v0, v1, :cond_16

    if-eqz p2, :cond_10

    return-object p2

    :cond_10
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(II)V

    return-object p0

    :cond_16
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(II)V

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p3

    new-instance v1, Lorg/mozilla/javascript/ast/Jump;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    iput-object p3, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    if-eqz p2, :cond_45

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_48

    :cond_45
    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_48
    return-object v0
.end method

.method private static createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x44

    if-ne v0, v1, :cond_19

    goto :goto_1e

    :cond_19
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1e
    :goto_1e
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/4 p2, 0x0

    const/16 v1, 0x6c

    if-ne p0, v1, :cond_29

    const/4 p2, 0x1

    :cond_29
    if-eqz p1, :cond_2d

    or-int/lit8 p2, p2, 0x2

    :cond_2d
    const/16 p0, 0xd

    invoke-virtual {v0, p0, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-object v0
.end method

.method private static createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 13

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, 0x81

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1a

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1a

    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x2d

    invoke-direct {p3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :cond_1a
    new-instance v4, Lorg/mozilla/javascript/ast/Jump;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p3}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    iput-object v0, v4, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_31

    if-ne p1, v3, :cond_3d

    :cond_31
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-direct {v5, v2, v6}, Lorg/mozilla/javascript/Node;-><init>(II)V

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    :cond_3d
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    iput-object p3, p0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eq p1, v0, :cond_4c

    if-ne p1, v3, :cond_84

    :cond_4c
    const/4 p3, 0x5

    invoke-static {p3, v1}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    if-ne p1, v3, :cond_84

    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p3, 0x86

    if-eq p1, v2, :cond_6f

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_6c

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object p4, p1

    :cond_6c
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_6f
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-eq p1, v2, :cond_84

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p3, p5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_84
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/Jump;->setContinue(Lorg/mozilla/javascript/Node;)V

    return-object p0
.end method

.method private createLoopNode(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/ast/Scope;
    .registers 4

    const/16 v0, 0x85

    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/Parser;->createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object p2

    if-eqz p1, :cond_d

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/Jump;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    :cond_d
    return-object p2
.end method

.method private createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 7

    if-eqz p2, :cond_17

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    goto :goto_18

    :cond_12
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-nez p1, :cond_2c

    if-nez p2, :cond_24

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p2, 0x50

    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_3e

    :cond_24
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p2, 0x51

    invoke-direct {p1, p2, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3e

    :cond_2c
    if-nez p2, :cond_36

    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x4e

    invoke-direct {p2, v0, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3d

    :cond_36
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x4f

    invoke-direct {p2, v1, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_3d
    move-object p1, p2

    :goto_3e
    if-eqz p4, :cond_45

    const/16 p2, 0x10

    invoke-virtual {p1, p2, p4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_45
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x44

    invoke-direct {p2, p3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p2
.end method

.method private createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;
    .registers 5

    if-nez p2, :cond_34

    if-nez p4, :cond_34

    if-nez p1, :cond_b

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 p2, 0x21

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isSpecialProperty(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2a

    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p4, 0x48

    invoke-direct {p2, p4, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/16 p1, 0x11

    invoke-virtual {p2, p1, p3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x44

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p1

    :cond_2a
    new-instance p4, Lorg/mozilla/javascript/Node;

    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-direct {p4, p2, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p4

    :cond_34
    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    or-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private static createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method private createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/16 v2, 0x82

    const/4 v4, 0x0

    if-eqz v1, :cond_17

    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v2, :cond_15

    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_15
    const/4 v5, 0x1

    goto :goto_18

    :cond_17
    const/4 v5, 0x0

    :goto_18
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v2, :cond_27

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v2

    if-nez v2, :cond_27

    if-nez v5, :cond_27

    return-object v0

    :cond_27
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v2

    if-nez v5, :cond_30

    if-nez v2, :cond_30

    return-object v0

    :cond_30
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x8e

    invoke-direct {v6, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v8, Lorg/mozilla/javascript/ast/Jump;

    const/16 v9, 0x52

    move/from16 v10, p4

    invoke-direct {v8, v9, v0, v10}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;I)V

    const/4 v0, 0x3

    invoke-virtual {v8, v0, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    const/4 v9, 0x5

    if-eqz v2, :cond_e2

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v9, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v10

    iput-object v10, v8, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v10, Lorg/mozilla/javascript/Node;

    invoke-direct {v10, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    move-object v11, v7

    const/4 v7, 0x0

    :goto_66
    if-eqz v11, :cond_ca

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v12

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-virtual {v13}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v15

    invoke-virtual {v11, v13}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v11, v14}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v11, v15}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v3, Lorg/mozilla/javascript/Node;

    invoke-direct {v3, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v15, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-static {v9, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v9, 0x81

    if-ne v3, v9, :cond_9a

    const/4 v4, 0x1

    goto :goto_9f

    :cond_9a
    const/4 v3, 0x0

    invoke-static {v14, v15, v3, v12}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v15

    :goto_9f
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v9, 0x39

    invoke-static {v6}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {v3, v9, v13, v14}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v3, v0, v10}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    const/16 v9, 0xe

    invoke-virtual {v3, v9, v7}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-static {v10}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object/from16 v9, p0

    invoke-direct {v9, v3, v15, v12}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v11

    const/4 v3, 0x1

    add-int/2addr v7, v3

    const/4 v9, 0x5

    goto :goto_66

    :cond_ca
    move-object/from16 v9, p0

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    if-nez v4, :cond_de

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x33

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3, v0, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_de
    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_e4

    :cond_e2
    move-object/from16 v9, p0

    :goto_e4
    if-eqz v5, :cond_115

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/ast/Jump;->setFinally(Lorg/mozilla/javascript/Node;)V

    const/16 v3, 0x88

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x7e

    invoke-direct {v2, v4, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v0, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_115
    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v6
.end method

.method private static createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x27

    const/16 v2, 0x28

    const/16 v3, 0x2d

    packed-switch p0, :pswitch_data_aa

    :pswitch_d  #0x1c, 0x1e
    goto/16 :goto_a3

    :pswitch_f  #0x20
    if-ne v0, v1, :cond_a3

    const/16 p0, 0x8a

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-object p1

    :pswitch_17  #0x1f
    if-ne v0, v1, :cond_2c

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_67

    :cond_2c
    const/16 v1, 0x21

    if-eq v0, v1, :cond_53

    const/16 v1, 0x24

    if-ne v0, v1, :cond_35

    goto :goto_53

    :cond_35
    const/16 v1, 0x44

    if-ne v0, v1, :cond_48

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 p1, 0x46

    invoke-direct {v1, p1, p0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_67

    :cond_48
    new-instance v1, Lorg/mozilla/javascript/Node;

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-direct {v1, p0, v0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_67

    :cond_53
    :goto_53
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p0, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v1, p1

    :goto_67
    return-object v1

    :pswitch_68  #0x1d
    if-ne v0, v2, :cond_a3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :pswitch_73  #0x1b
    if-ne v0, v2, :cond_a3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    xor-int/lit8 p0, p0, -0x1

    int-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :pswitch_84  #0x1a
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v1

    if-eqz v1, :cond_a3

    const/4 p0, 0x1

    const/16 v2, 0x2c

    if-ne v1, p0, :cond_92

    const/16 p0, 0x2c

    goto :goto_94

    :cond_92
    const/16 p0, 0x2d

    :goto_94
    if-eq v0, v3, :cond_9f

    if-ne v0, v2, :cond_99

    goto :goto_9f

    :cond_99
    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    return-object p1

    :cond_9f
    :goto_9f
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-object p1

    :cond_a3
    :goto_a3
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v0

    nop

    :pswitch_data_aa
    .packed-switch 0x1a
        :pswitch_84  #0000001a
        :pswitch_73  #0000001b
        :pswitch_d  #0000001c
        :pswitch_68  #0000001d
        :pswitch_d  #0000001e
        :pswitch_17  #0000001f
        :pswitch_f  #00000020
    .end packed-switch
.end method

.method private static createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x8e

    if-ne v1, v0, :cond_14

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v0

    :cond_14
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 7

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x82

    invoke-direct {v0, v1, p3}, Lorg/mozilla/javascript/Node;-><init>(II)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x7c

    invoke-direct {p1, v1, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private genExprTransformHelper(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;
    .registers 20

    move-object/from16 v9, p0

    iget-object v0, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getResult()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getLoops()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v11, v3, [Lorg/mozilla/javascript/Node;

    new-array v12, v3, [Lorg/mozilla/javascript/Node;

    const/4 v13, 0x0

    const/4 v4, 0x0

    :goto_23
    const-string v5, " "

    const/16 v14, 0x59

    if-ge v4, v3, :cond_a9

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    iget-object v7, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v7, v5}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v5, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x78

    invoke-virtual {v5, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v5, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_56

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v7, v5}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_74

    :cond_56
    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v7, v9, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v1, v7, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    const/16 v8, 0x5a

    const/16 v15, 0x5b

    invoke-virtual {v9, v7}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {v9, v15, v5, v1}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {v8, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    move-object v2, v1

    move-object v5, v7

    :goto_74
    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v7, 0x9a

    invoke-virtual {v9, v7, v5, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    aput-object v1, v11, v4

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v5, "of "

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_94

    :cond_8d
    iget-object v1, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x34

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :goto_94
    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    aput-object v1, v12, v4

    iget-object v1, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x58

    goto/16 :goto_23

    :cond_a9
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x49

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-direct {v1, v4, v2, v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x86

    invoke-direct {v2, v4, v1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    const/4 v15, 0x0

    if-eqz v1, :cond_e6

    iget-object v1, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v1, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x71

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v1, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x58

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {v1, v2, v15, v0}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v2

    iget-object v0, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_e6
    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v0, v3

    const/4 v1, 0x0

    :goto_eb
    if-ltz v0, :cond_12d

    :try_start_ed
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-direct {v9, v15, v3}, Lorg/mozilla/javascript/IRFactory;->createLoopNode(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    :try_end_fe
    .catchall {:try_start_ed .. :try_end_fe} :catchall_123

    add-int/lit8 v16, v1, 0x1

    const/16 v4, 0x9a

    :try_start_102
    aget-object v5, v11, v0

    aget-object v7, v12, v0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;->isForEach()Z

    move-result v8

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v17

    move-object/from16 v1, p0

    move v2, v4

    move-object v4, v5

    move-object v5, v7

    move v7, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object v6
    :try_end_11a
    .catchall {:try_start_102 .. :try_end_11a} :catchall_11f

    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v16

    goto :goto_eb

    :catchall_11f
    move-exception v0

    move/from16 v1, v16

    goto :goto_124

    :catchall_123
    move-exception v0

    :goto_124
    if-ge v13, v1, :cond_12c

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_124

    :cond_12c
    throw v0

    :cond_12d
    :goto_12d
    if-ge v13, v1, :cond_135

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_12d

    :cond_135
    iget-object v0, v9, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    return-object v6
.end method

.method private getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3b

    :cond_14
    instance-of v0, p1, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v0, :cond_28

    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Decompiler;->addString(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3b

    :cond_28
    instance-of v0, p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    if-eqz v0, :cond_3c

    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v0

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Decompiler;->addNumber(D)V

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(D)Ljava/lang/Object;

    move-result-object p1

    :goto_3b
    return-object p1

    :cond_3c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private static initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .registers 11

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    :cond_f
    const/4 v0, 0x2

    const/16 v1, 0x6e

    if-ne p3, v0, :cond_58

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p3

    if-eqz p3, :cond_58

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v0

    if-nez v0, :cond_58

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x86

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x8

    const/16 v5, 0x31

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    new-instance v5, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-direct {v3, v4, p3, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/Node;->addChildrenToFront(Lorg/mozilla/javascript/Node;)V

    :cond_58
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/4 v0, 0x4

    if-eqz p3, :cond_65

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    if-eq p3, v0, :cond_6d

    :cond_65
    new-instance p3, Lorg/mozilla/javascript/Node;

    invoke-direct {p3, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_6d
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-object p0
.end method

.method private static isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I
    .registers 7

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1a

    const/16 p0, 0x2a

    if-eq v0, p0, :cond_19

    const/16 p0, 0x2c

    if-eq v0, p0, :cond_19

    const/16 p0, 0x2d

    if-eq v0, p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    return v2

    :cond_19
    return v3

    :cond_1a
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2b

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_2b

    return v2

    :cond_2b
    return v3
.end method

.method private static makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    iput-object p1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method private static makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_25

    const/16 v1, 0x24

    if-eq v0, v1, :cond_25

    const/16 v1, 0x44

    if-eq v0, v1, :cond_25

    const/16 v2, 0x26

    if-eq v0, v2, :cond_1a

    const/16 v1, 0x27

    if-eq v0, v1, :cond_25

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v1, p0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_25
    return-object p0
.end method

.method private transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;
    .registers 11

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    const/16 v1, 0x9e

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v3, 0x9a

    const/4 v4, 0x0

    :try_start_16
    invoke-virtual {p0, v3, v2, v4}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x82

    invoke-direct {v3, v4, v0}, Lorg/mozilla/javascript/Node;-><init>(II)V

    const/16 v4, 0x1e

    const-string v5, "Array"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    new-instance v5, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x86

    const/16 v7, 0x5b

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {p0, v7, v8, v4}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-direct {v5, v6, v4, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/IRFactory;->arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_55

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :catchall_55
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;
    .registers 10

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->isDestructuring()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x81

    if-eq v6, v7, :cond_38

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_46

    :cond_38
    if-nez v2, :cond_3f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_55

    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x5a

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_58
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x55

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    const/16 v0, 0x15

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    if-eqz v2, :cond_8a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    :goto_70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_85

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_85
    const/16 v0, 0xb

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_8a
    return-object v1
.end method

.method private transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->isDestructuring(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_16

    :cond_12
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_16
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .registers 6

    instance-of v0, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_a

    move-object v1, p1

    check-cast v1, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_a
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Node;

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->removeChildren()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_48

    goto :goto_30

    :cond_40
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_47
    return-object p1

    :catchall_48
    move-exception p1

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw p1

    :goto_50
    goto :goto_4f
.end method

.method private transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/BreakStatement;->getBreakLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/BreakStatement;->getBreakLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    return-object p1
.end method

.method private transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTestExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTrueExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getFalseExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/IRFactory;->createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->getLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->getLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    return-object p1
.end method

.method private transformDefaultXmlNamepace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v1, " xml"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v1, " namespace"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/16 v0, 0x4b

    invoke-static {v0, p1}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;
    .registers 9

    const/16 v0, 0x85

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_8
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/DoLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_55

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_55
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x24

    invoke-direct {v1, v2, v0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v1
.end method

.method private transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {v1, v2, v0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    return-object v1
.end method

.method private transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v1, "each "

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    const/16 v0, 0x85

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/4 v0, -0x1

    :try_start_24
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    instance-of v2, v1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v2, :cond_35

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    move v2, v0

    goto :goto_36

    :cond_35
    const/4 v2, -0x1

    :goto_36
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v1, "of "

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_4f

    :cond_48
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :goto_4f
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v7

    move-object v0, p0

    move v1, v2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_83
    .catchall {:try_start_24 .. :try_end_83} :catchall_87

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_87
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    const/16 v0, 0x85

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    :try_start_17
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getIncrement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x56

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x57

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-static {p1, v1, v2, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_5c
    .catchall {:try_start_17 .. :try_end_5c} :catchall_5f

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-object p1

    :catchall_5f
    move-exception p1

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    throw p1
.end method

.method private transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .registers 13

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Decompiler;->markFunctionStart(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result v3

    new-instance v4, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v4, p0, p1}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    const/16 v5, 0x17

    const/4 v6, 0x1

    :try_start_1c
    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    iget v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/2addr v8, v6

    iput v8, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result v9

    if-nez v9, :cond_47

    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x57

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_47
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v1}, Lorg/mozilla/javascript/Decompiler;->markFunctionEnd(I)I

    move-result v9

    invoke-virtual {p1, v1, v9}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5e

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_5e
    if-eqz v7, :cond_6a

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v9, 0x86

    invoke-direct {v0, v9, v7, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_6a
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    invoke-static {p1, v3, v8, v0}, Lorg/mozilla/javascript/IRFactory;->initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v2, :cond_84

    const/16 v5, 0x5b

    invoke-direct {p0, v5, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eq v0, v1, :cond_84

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-static {v3, p1}, Lorg/mozilla/javascript/IRFactory;->createExprStatementNoReturn(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3
    :try_end_84
    .catchall {:try_start_1c .. :try_end_84} :catchall_8d

    :cond_84
    iget p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {v4}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    return-object v3

    :catchall_8d
    move-exception p1

    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v0, v6

    iput v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {v4}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw p1
.end method

.method private transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x26

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_43

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_46
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    return-object v0
.end method

.method private transformGenExpr(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;
    .registers 15

    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsGenerator()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Decompiler;->markFunctionStart(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result v5

    new-instance v6, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v6, p0, v0}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    const/16 v7, 0x17

    const/4 v8, 0x1

    :try_start_34
    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    iget v7, p1, Lorg/mozilla/javascript/Node;->lineno:I

    iget v10, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/2addr v10, v8

    iput v10, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->genExprTransformHelper(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result v11

    if-nez v11, :cond_55

    iget-object v11, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v12, 0x57

    invoke-virtual {v11, v12}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_55
    iget-object v11, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v11, v3}, Lorg/mozilla/javascript/Decompiler;->markFunctionEnd(I)I

    move-result v11

    invoke-virtual {v0, v3, v11}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    if-eq v2, v1, :cond_6b

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result v2

    if-nez v2, :cond_6b

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2, v8}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_6b
    if-eqz v9, :cond_77

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x86

    invoke-direct {v2, v3, v9, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual {v10, v2}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_77
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    invoke-static {v0, v5, v10, v2}, Lorg/mozilla/javascript/IRFactory;->initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v4, :cond_91

    const/16 v5, 0x5b

    invoke-direct {p0, v5, v4, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eq v2, v1, :cond_91

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/IRFactory;->createExprStatementNoReturn(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3
    :try_end_91
    .catchall {:try_start_34 .. :try_end_91} :catchall_b5

    :cond_91
    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v0, v8

    iput v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {v6}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    const/16 v0, 0x26

    invoke-direct {p0, v0, v3}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    return-object v0

    :catchall_b5
    move-exception p1

    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr v0, v8

    iput v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {v6}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw p1
.end method

.method private transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getThenPart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    const/16 v4, 0x57

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x72

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    instance-of v2, p1, Lorg/mozilla/javascript/ast/XmlDotQuery;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_24
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;
    .registers 7

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x68

    const/4 v4, 0x1

    if-le v2, v4, :cond_41

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_26

    :cond_41
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x82

    if-ne v1, v2, :cond_5c

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x43

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x56

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    goto :goto_61

    :cond_5c
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    :goto_61
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-ne p1, v2, :cond_7a

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x57

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    :cond_7a
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p1

    new-instance v3, Lorg/mozilla/javascript/Node;

    invoke-direct {v3, v2, v0, v1, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iput-object p1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    return-object v3
.end method

.method private transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_3
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getVariables()Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz v1, :cond_59

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_45

    :cond_3e
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    :goto_45
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    if-nez v0, :cond_59

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5d

    :cond_59
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_5d
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    return-object p1
.end method

.method private transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    return-object p1
.end method

.method private transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    const/4 v2, 0x0

    :goto_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_4b
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_63
    return-object v0
.end method

.method private transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Decompiler;->addNumber(D)V

    return-object p1
.end method

.method private transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;
    .registers 13

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x43

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto/16 :goto_b2

    :cond_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetterMethod()Z

    move-result v6

    const/16 v7, 0xa4

    const/16 v8, 0x99

    const/16 v9, 0x98

    if-eqz v6, :cond_4c

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v6, v9}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_63

    :cond_4c
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetterMethod()Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_63

    :cond_58
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isNormalMethod()Z

    move-result v6

    if-eqz v6, :cond_63

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_63
    :goto_63
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/mozilla/javascript/IRFactory;->getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v3

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isMethod()Z

    move-result v3

    if-nez v3, :cond_7a

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_7a
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetterMethod()Z

    move-result v10

    if-eqz v10, :cond_8d

    invoke-static {v9, v3}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_a2

    :cond_8d
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetterMethod()Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-static {v8, v3}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_a2

    :cond_98
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isNormalMethod()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-static {v7, v3}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    :cond_a2
    :goto_a2
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    if-ge v6, v2, :cond_ae

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x5a

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_ae
    move v3, v6

    goto/16 :goto_2e

    :cond_b1
    move-object p1, v4

    :goto_b2
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v0
.end method

.method private transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    const/4 v0, 0x1

    :goto_c
    instance-of v2, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    add-int/lit8 v0, v0, 0x1

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_c

    :cond_1e
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_2f

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2f
    const/16 v0, 0x13

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object p1
.end method

.method private transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getFlags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Decompiler;->addRegexp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)V

    return-object p1
.end method

.method private transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;
    .registers 7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1b

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v1, :cond_23

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v3, " "

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_28

    :cond_23
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_28
    :goto_28
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->getReturnValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-nez v0, :cond_30

    const/4 v3, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    :goto_34
    if-nez v1, :cond_3d

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x53

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    :cond_3d
    if-nez v0, :cond_49

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {v0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(II)V

    goto :goto_52

    :cond_49
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {v0, v2, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    :goto_52
    return-object v0
.end method

.method private transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_e
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x82

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_1b

    :cond_31
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->removeChildren()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    :cond_3d
    return-object p1
.end method

.method private transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    const/16 v2, 0x82

    invoke-direct {v0, v2, p1, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getCases()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/SwitchCase;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x74

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_60

    :cond_59
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x75

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :goto_60
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x68

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/SwitchCase;->getStatements()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v2}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    if-eqz v1, :cond_8a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_76

    :cond_8a
    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/IRFactory;->addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3a

    :cond_8e
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-static {v0}, Lorg/mozilla/javascript/IRFactory;->closeSwitch(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {v2, v1, v0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    return-object v2
.end method

.method private transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;
    .registers 12

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getTryBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    new-instance v2, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v2}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/CatchClause;

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x58

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/CatchClause;->getVarName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v7, v6}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/CatchClause;->getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-eqz v7, :cond_6a

    iget-object v8, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v9, " "

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v9, 0x71

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    goto :goto_6f

    :cond_6a
    new-instance v7, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v7}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>()V

    :goto_6f
    iget-object v8, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v9, 0x59

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v8, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v8, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/CatchClause;->getBody()Lorg/mozilla/javascript/ast/Block;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    invoke-direct {p0, v6, v7, v8, v5}, Lorg/mozilla/javascript/IRFactory;->createCatch(Ljava/lang/String;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2a

    :cond_94
    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    if-eqz v5, :cond_b4

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x7e

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    :cond_b4
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {p0, v0, v2, v4, p1}, Lorg/mozilla/javascript/IRFactory;->createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDefaultXmlNamepace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->isPrefix()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_18
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_2b
    const/16 v2, 0x6b

    if-eq v0, v2, :cond_39

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_34

    goto :goto_39

    :cond_34
    invoke-static {v0, v1}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_39
    :goto_39
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix()Z

    move-result p1

    invoke-static {v0, p1, v1}, Lorg/mozilla/javascript/IRFactory;->createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .registers 10

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/VariableInitializer;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/VariableInitializer;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/VariableInitializer;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_2f

    :cond_2b
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    :goto_2f
    const/4 v6, 0x0

    if-eqz v5, :cond_3d

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    :cond_3d
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v3

    if-eqz v3, :cond_55

    if-nez v6, :cond_49

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_5d

    :cond_49
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    invoke-virtual {p0, v3, v4, v6}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_5d

    :cond_55
    if-eqz v6, :cond_5a

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_5a
    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_5d
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_6a

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x5a

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_6a
    move v2, v3

    goto :goto_d

    :cond_6c
    return-object p1
.end method

.method private transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/ast/Loop;

    if-nez v1, :cond_1f

    instance-of v0, v0, Lorg/mozilla/javascript/ast/LetNode;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    :cond_1f
    return-object p1
.end method

.method private transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    const/16 v0, 0x85

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_f
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WhileLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_47

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_47
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;
    .registers 9

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    const/16 v2, 0x1e

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/Node;-><init>(II)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlLiteral;->getFragments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/XmlString;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "XMLList"

    goto :goto_2b

    :cond_29
    const-string v1, "XML"

    :goto_2b
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/XmlFragment;

    instance-of v3, v2, Lorg/mozilla/javascript/ast/XmlString;

    const/16 v4, 0x15

    if-eqz v3, :cond_64

    check-cast v2, Lorg/mozilla/javascript/ast/XmlString;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    if-nez v1, :cond_5b

    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_37

    :cond_5b
    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_37

    :cond_64
    check-cast v2, Lorg/mozilla/javascript/ast/XmlExpression;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->isXmlAttribute()Z

    move-result v3

    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x56

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    instance-of v5, v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-eqz v5, :cond_80

    const-string v2, ""

    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_88

    :cond_80
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_88
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x57

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    if-eqz v3, :cond_aa

    const/16 v3, 0x4c

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v3}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v3}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_b0

    :cond_aa
    const/16 v3, 0x4d

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_b0
    invoke-static {v4, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_37

    :cond_b5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getMemberRef()Lorg/mozilla/javascript/ast/XmlRef;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v3, 0x90

    if-ne p1, v3, :cond_25

    or-int/lit8 v2, v2, 0x4

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_2c

    :cond_25
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x6d

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :goto_2c
    invoke-direct {p0, v1, v0, v2}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;
    .registers 7

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_b
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlRef;->getNamespace()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_25

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_25
    instance-of v1, p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    if-eqz v1, :cond_3d

    check-cast p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlPropRef;->getPropName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_3d
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    check-cast p2, Lorg/mozilla/javascript/ast/XmlElemRef;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlElemRef;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/IRFactory;->createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_19

    :cond_11
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_19
    if-eqz v0, :cond_29

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {v1, v2, v0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    return-object v1

    :cond_29
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/mozilla/javascript/Node;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method decompile(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x24

    if-eq v0, v1, :cond_77

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_6d

    const/16 v1, 0x81

    if-eq v0, v1, :cond_82

    const/16 v1, 0x42

    if-eq v0, v1, :cond_67

    const/16 v1, 0x43

    if-eq v0, v1, :cond_61

    packed-switch v0, :pswitch_data_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_82

    :pswitch_3d  #0x29
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Decompiler;->addString(Ljava/lang/String;)V

    goto :goto_82

    :pswitch_49  #0x28
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Decompiler;->addNumber(D)V

    goto :goto_82

    :pswitch_55  #0x27
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_82

    :cond_61
    check-cast p1, Lorg/mozilla/javascript/ast/ObjectLiteral;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)V

    goto :goto_82

    :cond_67
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)V

    goto :goto_82

    :cond_6d
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_82

    :cond_77
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileElementGet(Lorg/mozilla/javascript/ast/ElementGet;)V

    goto :goto_82

    :cond_7d
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompilePropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)V

    :cond_82
    :goto_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x27
        :pswitch_55  #00000027
        :pswitch_49  #00000028
        :pswitch_3d  #00000029
    .end packed-switch
.end method

.method decompileArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_29

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_29
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v0, 0x55

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    return-void
.end method

.method decompileElementGet(Lorg/mozilla/javascript/ast/ElementGet;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v0, 0x55

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    return-void
.end method

.method decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .registers 10

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_1f

    :cond_10
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    :goto_20
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_37

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getLp()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    if-nez v2, :cond_41

    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x58

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_41
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getParams()Ljava/util/List;

    move-result-object v5

    :goto_45
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_65

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_62

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x5a

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_65
    if-nez v2, :cond_6e

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_6e
    if-eqz v1, :cond_77

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0xa5

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_77
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result p1

    if-nez p1, :cond_84

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    :cond_84
    return-object v0
.end method

.method decompileObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)V
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_49

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/ObjectProperty;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v4, 0x1a

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    if-nez v3, :cond_3b

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_3b
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_46

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_49
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    return-void
.end method

.method decompilePropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method isDestructuring(Lorg/mozilla/javascript/Node;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    invoke-interface {p1}, Lorg/mozilla/javascript/ast/DestructuringForm;->isDestructuring()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_178

    const/16 v1, 0x43

    if-eq v0, v1, :cond_171

    const/16 v1, 0x81

    if-eq v0, v1, :cond_170

    const/16 v1, 0x82

    if-eq v0, v1, :cond_16c

    sparse-switch v0, :sswitch_data_180

    packed-switch v0, :pswitch_data_1ca

    packed-switch v0, :pswitch_data_1de

    instance-of v0, p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_28

    check-cast p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_28
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v0, :cond_33

    check-cast p1, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_33
    instance-of v0, p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    if-eqz v0, :cond_3e

    check-cast p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_3e
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    if-eqz v0, :cond_49

    check-cast p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_49
    instance-of v0, p1, Lorg/mozilla/javascript/ast/InfixExpression;

    if-eqz v0, :cond_54

    check-cast p1, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_54
    instance-of v0, p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v0, :cond_5f

    check-cast p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_5f
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_6a

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_6a
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_75

    check-cast p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_75
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LetNode;

    if-eqz v0, :cond_80

    check-cast p1, Lorg/mozilla/javascript/ast/LetNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_80
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlRef;

    if-eqz v0, :cond_8b

    check-cast p1, Lorg/mozilla/javascript/ast/XmlRef;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_8b
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    if-eqz v0, :cond_96

    check-cast p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ad  #0x7a
    check-cast p1, Lorg/mozilla/javascript/ast/ContinueStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_b4  #0x79
    check-cast p1, Lorg/mozilla/javascript/ast/BreakStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_bb  #0x78
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ForInLoop;

    if-eqz v0, :cond_c6

    check-cast p1, Lorg/mozilla/javascript/ast/ForInLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_c6
    check-cast p1, Lorg/mozilla/javascript/ast/ForLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_cd  #0x77
    check-cast p1, Lorg/mozilla/javascript/ast/DoLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_d4  #0x76
    check-cast p1, Lorg/mozilla/javascript/ast/WhileLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_db  #0x29
    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_e2  #0x28
    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_e9  #0x27
    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_f0  #0x26
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionCall;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_f7
    check-cast p1, Lorg/mozilla/javascript/ast/GeneratorExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformGenExpr(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_fe  #0x2a, 0x2b, 0x2c, 0x2d
    :sswitch_fe
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_103
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayComprehension;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_10a
    check-cast p1, Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_111
    check-cast p1, Lorg/mozilla/javascript/ast/WithStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_118
    check-cast p1, Lorg/mozilla/javascript/ast/SwitchStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_11f
    check-cast p1, Lorg/mozilla/javascript/ast/IfStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_126
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_12d
    check-cast p1, Lorg/mozilla/javascript/ast/ConditionalExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_134
    check-cast p1, Lorg/mozilla/javascript/ast/TryStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_13b
    check-cast p1, Lorg/mozilla/javascript/ast/Yield;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_142
    check-cast p1, Lorg/mozilla/javascript/ast/ThrowStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_149
    check-cast p1, Lorg/mozilla/javascript/ast/RegExpLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_150
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_157
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_15e
    check-cast p1, Lorg/mozilla/javascript/ast/NewExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_165
    check-cast p1, Lorg/mozilla/javascript/ast/ReturnStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_16c
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    :cond_170
    return-object p1

    :cond_171
    check-cast p1, Lorg/mozilla/javascript/ast/ObjectLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_178
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_180
    .sparse-switch
        0x4 -> :sswitch_165
        0x1e -> :sswitch_15e
        0x21 -> :sswitch_157
        0x24 -> :sswitch_150
        0x30 -> :sswitch_149
        0x32 -> :sswitch_142
        0x49 -> :sswitch_13b
        0x52 -> :sswitch_134
        0x67 -> :sswitch_12d
        0x6e -> :sswitch_126
        0x71 -> :sswitch_11f
        0x73 -> :sswitch_118
        0x7c -> :sswitch_111
        0x89 -> :sswitch_10a
        0x9e -> :sswitch_103
        0xa1 -> :sswitch_fe
        0xa3 -> :sswitch_f7
        0xa6 -> :sswitch_13b
    .end sparse-switch

    :pswitch_data_1ca
    .packed-switch 0x26
        :pswitch_f0  #00000026
        :pswitch_e9  #00000027
        :pswitch_e2  #00000028
        :pswitch_db  #00000029
        :pswitch_fe  #0000002a
        :pswitch_fe  #0000002b
        :pswitch_fe  #0000002c
        :pswitch_fe  #0000002d
    .end packed-switch

    :pswitch_data_1de
    .packed-switch 0x76
        :pswitch_d4  #00000076
        :pswitch_cd  #00000077
        :pswitch_bb  #00000078
        :pswitch_b4  #00000079
        :pswitch_ad  #0000007a
    .end packed-switch
.end method

.method public transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;
    .registers 4

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/ScriptNode;

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGeneratingSource()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Decompiler;->getEncodedSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSource(Ljava/lang/String;)V

    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    return-object p1
.end method
