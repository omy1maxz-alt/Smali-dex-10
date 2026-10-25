.class public Lorg/mozilla/javascript/optimizer/ClassCompiler;
.super Ljava/lang/Object;
.source "ClassCompiler.java"


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private mainMethodClassName:Ljava/lang/String;

.field private targetExtends:Ljava/lang/Class;

.field private targetImplements:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    const-string p1, "org.mozilla.javascript.optimizer.OptRuntime"

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public compileToClassFiles(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;
    .registers 16

    new-instance v0, Lorg/mozilla/javascript/Parser;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/IRFactory;

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {p2, p3}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/IRFactory;->transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->getTargetExtends()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->getTargetImplements()[Ljava/lang/Class;

    move-result-object p3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p3, :cond_26

    if-nez p2, :cond_26

    const/4 v8, 0x1

    goto :goto_27

    :cond_26
    const/4 v8, 0x0

    :goto_27
    if-eqz v8, :cond_2b

    move-object v9, p4

    goto :goto_32

    :cond_2b
    const-string v0, "1"

    invoke-virtual {p0, p4, v0}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->makeAuxiliaryClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_32
    new-instance v0, Lorg/mozilla/javascript/optimizer/Codegen;

    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/Codegen;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->setMainMethodClass(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSource()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/Codegen;->compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v8, :cond_53

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v9, p1, v7

    aput-object v0, p1, v6

    return-object p1

    :cond_53
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v2

    new-instance v3, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_5d
    if-eq v4, v2, :cond_79

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_76

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_76

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v5

    invoke-virtual {v3, v8, v5}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_79
    if-nez p2, :cond_7d

    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    :cond_7d
    invoke-static {v3, p4, p2, p3, v9}, Lorg/mozilla/javascript/JavaAdapter;->createAdapterCode(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v7

    aput-object p1, p2, v6

    aput-object v9, p2, v1

    const/4 p1, 0x3

    aput-object v0, p2, p1

    return-object p2
.end method

.method public getCompilerEnv()Lorg/mozilla/javascript/CompilerEnvirons;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    return-object v0
.end method

.method public getMainMethodClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetExtends()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetExtends:Ljava/lang/Class;

    return-object v0
.end method

.method public getTargetImplements()[Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetImplements:[Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    :goto_c
    return-object v0
.end method

.method protected makeAuxiliaryClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setMainMethodClass(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    return-void
.end method

.method public setTargetExtends(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetExtends:Ljava/lang/Class;

    return-void
.end method

.method public setTargetImplements([Ljava/lang/Class;)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    :goto_a
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetImplements:[Ljava/lang/Class;

    return-void
.end method
