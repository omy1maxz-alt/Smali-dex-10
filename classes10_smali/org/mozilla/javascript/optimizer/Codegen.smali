.class public Lorg/mozilla/javascript/optimizer/Codegen;
.super Ljava/lang/Object;
.source "Codegen.java"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# static fields
.field static final DEFAULT_MAIN_METHOD_CLASS:Ljava/lang/String; = "org.mozilla.javascript.optimizer.OptRuntime"

.field static final FUNCTION_CONSTRUCTOR_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

.field static final FUNCTION_INIT_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

.field static final ID_FIELD_NAME:Ljava/lang/String; = "_id"

.field static final REGEXP_INIT_METHOD_NAME:Ljava/lang/String; = "_reInit"

.field static final REGEXP_INIT_METHOD_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Context;)V"

.field private static final SUPER_CLASS_NAME:Ljava/lang/String; = "org.mozilla.javascript.NativeFunction"

.field private static final globalLock:Ljava/lang/Object;

.field private static globalSerialClassCounter:I


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private directCallTargets:Lorg/mozilla/javascript/ObjArray;

.field private itsConstantList:[D

.field private itsConstantListSize:I

.field mainClassName:Ljava/lang/String;

.field mainClassSignature:Ljava/lang/String;

.field private mainMethodClass:Ljava/lang/String;

.field private scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

.field scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/optimizer/Codegen;->globalLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "org.mozilla.javascript.optimizer.OptRuntime"

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    return-void
.end method

.method private static addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 5

    const/16 v0, 0xb8

    const-string v1, "org/mozilla/javascript/optimizer/OptRuntime"

    const-string/jumbo v2, "wrapDouble"

    const-string v3, "(D)Ljava/lang/Double;"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static badTree()Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad tree in codegen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V
    .registers 5

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-eq v1, v0, :cond_14

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method private defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;
    .registers 5

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    check-cast p1, [B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/mozilla/javascript/SecurityController;->createLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object p2

    :try_start_18
    invoke-interface {p2, v0, p1}, Lorg/mozilla/javascript/GeneratedClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mozilla/javascript/GeneratedClassLoader;->linkClass(Ljava/lang/Class;)V
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1f} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1f} :catch_20

    return-object p1

    :catch_20
    move-exception p1

    goto :goto_23

    :catch_22
    move-exception p1

    :goto_23
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed optimizer package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private emitConstantDudeInitializers(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 14

    iget v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x18

    const-string v2, "<clinit>"

    const-string v3, "()V"

    invoke-virtual {p1, v2, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-eq v3, v0, :cond_56

    aget-wide v4, v1, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_k"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->getStaticConstantWrapperType(D)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {p1, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    double-to-int v8, v4

    int-to-double v9, v8

    cmpl-double v11, v9, v4

    if-nez v11, :cond_46

    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v4, 0xb8

    const-string v5, "java/lang/Integer"

    const-string/jumbo v8, "valueOf"

    const-string v9, "(I)Ljava/lang/Integer;"

    invoke-virtual {p1, v4, v5, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_46
    invoke-virtual {p1, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    :goto_4c
    const/16 v4, 0xb3

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_56
    const/16 v0, 0xb1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private emitDirectConstructor(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .registers 13

    iget-object v0, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    iget-object v0, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v6, 0xb6

    const-string v7, "org/mozilla/javascript/BaseFunction"

    const-string v8, "createObject"

    const-string v9, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p1, v6, v7, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_43
    if-ge v3, v0, :cond_54

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v5, 0x4

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_54
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v0, 0xb8

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    iget-object v3, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, v3, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p2

    const/16 v0, 0x59

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v0, 0xc1

    const-string v1, "org/mozilla/javascript/Scriptable"

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v0, 0x99

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 v0, 0xc0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/2addr v2, v4

    int-to-short p2, v2

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private emitRegExpInit(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v6, v5

    if-eq v3, v6, :cond_16

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    if-nez v4, :cond_19

    return-void

    :cond_19
    const-string v3, "_reInit"

    const-string v4, "(Lorg/mozilla/javascript/Context;)V"

    const/16 v5, 0xa

    invoke-virtual {v1, v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v3, 0x4a

    const-string v4, "_reInitDone"

    const-string v6, "Z"

    invoke-virtual {v1, v4, v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v3, 0xb2

    iget-object v7, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v1, v3, v7, v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    const/16 v7, 0x99

    invoke-virtual {v1, v7, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 v7, 0xb1

    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v3, 0xb8

    const-string v8, "org/mozilla/javascript/ScriptRuntime"

    const-string v9, "checkRegExpProxy"

    const-string v10, "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;"

    invoke-virtual {v1, v3, v8, v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    const/4 v8, 0x0

    :goto_56
    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v10, v9

    const/16 v11, 0xb3

    if-eq v8, v10, :cond_a9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_64
    if-eq v12, v10, :cond_a1

    invoke-virtual {v0, v9, v12}, Lorg/mozilla/javascript/optimizer/Codegen;->getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Ljava/lang/Object;"

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v13, v14, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    if-nez v7, :cond_86

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_89

    :cond_86
    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    :goto_89
    const/16 v7, 0xb9

    const-string v15, "org/mozilla/javascript/RegExpProxy"

    const-string v2, "compileRegExp"

    const-string v5, "(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-virtual {v1, v7, v15, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v1, v11, v2, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/16 v5, 0xa

    const/16 v7, 0xb1

    goto :goto_64

    :cond_a1
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/16 v5, 0xa

    const/16 v7, 0xb1

    goto :goto_56

    :cond_a9
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v1, v11, v2, v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateCallMethod(Lorg/mozilla/classfile/ClassFileWriter;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "call"

    const-string v3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v4, 0xb8

    const-string v5, "org/mozilla/javascript/ScriptRuntime"

    const-string v6, "hasTopCall"

    const-string v7, "(Lorg/mozilla/javascript/Context;)Z"

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x9a

    invoke-virtual {v1, v6, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual/range {p1 .. p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    const-string v10, "doTopCall"

    const-string v11, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;"

    invoke-virtual {v1, v4, v5, v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb0

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v2, v2

    if-gt v7, v2, :cond_60

    const/4 v7, 0x1

    goto :goto_61

    :cond_60
    const/4 v7, 0x0

    :goto_61
    if-eqz v7, :cond_7a

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/16 v8, 0xb4

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_id"

    const-string v12, "I"

    invoke-virtual {v1, v8, v10, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v1, v3, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v3

    goto :goto_7b

    :cond_7a
    const/4 v3, 0x0

    :goto_7b
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_7d
    if-eq v8, v2, :cond_104

    iget-object v11, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v11, v11, v8

    if-eqz v7, :cond_94

    if-nez v8, :cond_8f

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v10

    goto :goto_94

    :cond_8f
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v1, v3, v12, v10}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :cond_94
    :goto_94
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    const/16 v13, 0x6e

    if-ne v12, v13, :cond_ef

    invoke-static {v11}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v13

    if-eqz v13, :cond_ef

    iget-object v12, v12, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v12

    if-eqz v12, :cond_ef

    const/4 v13, 0x0

    :goto_af
    if-eq v13, v12, :cond_ef

    const/16 v14, 0xbe

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v15

    const/16 v6, 0xa4

    invoke-virtual {v1, v6, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v6, 0xa7

    invoke-virtual {v1, v6, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop(I)V

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v14, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_af

    :cond_ef
    iget-object v6, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v4, v6, v12, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_7d

    :cond_104
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateCode(Ljava/lang/String;)[B
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x89

    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v4, v3

    if-gt v4, v2, :cond_1a

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :cond_1a
    :goto_1a
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v4

    :cond_31
    new-instance v5, Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v7, "org.mozilla.javascript.NativeFunction"

    invoke-direct {v5, v6, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const-string v6, "_id"

    const-string v7, "I"

    invoke-virtual {v5, v6, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    if-eqz v2, :cond_47

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateFunctionConstructor(Lorg/mozilla/classfile/ClassFileWriter;)V

    :cond_47
    if-eqz v0, :cond_57

    const-string v0, "org/mozilla/javascript/Script"

    invoke-virtual {v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInterface(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateScriptCtor(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateMain(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-static {v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateExecute(Lorg/mozilla/classfile/ClassFileWriter;)V

    :cond_57
    invoke-direct {p0, v5, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->generateCallMethod(Lorg/mozilla/classfile/ClassFileWriter;Z)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateResumeGenerator(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-direct {p0, v5, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateNativeFunctionOverrides(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length p1, p1

    :goto_63
    if-eq v1, p1, :cond_98

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v0, v0, v1

    new-instance v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;

    invoke-direct {v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;-><init>()V

    iput-object v5, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iput-object p0, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v3, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v0, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    iput v1, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFnIndex:I

    invoke-virtual {v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateBodyCode()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_95

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->generateFunctionInit(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->emitDirectConstructor(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_98
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->emitRegExpInit(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->emitConstantDudeInitializers(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private static generateExecute(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 5

    const-string v0, "exec"

    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v1, 0x59

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb6

    const-string v2, "call"

    const-string v3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateFunctionConstructor(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 12

    const-string v0, "<init>"

    const-string v1, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v3, 0xb7

    const-string v4, "org.mozilla.javascript.NativeFunction"

    const-string v5, "()V"

    invoke-virtual {p1, v3, v4, v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb5

    const-string v6, "_id"

    const-string v7, "I"

    invoke-virtual {p1, v5, v4, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x89

    if-ne v5, v6, :cond_41

    const/4 v5, 0x1

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    :goto_42
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v6, v6

    if-eq v5, v6, :cond_91

    sub-int v7, v6, v5

    if-gt v4, v7, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    if-eqz v2, :cond_5b

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {p1, v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v0

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    move v4, v5

    :goto_5d
    if-eq v4, v6, :cond_8c

    if-eqz v2, :cond_71

    if-ne v4, v5, :cond_6b

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v1

    goto :goto_71

    :cond_6b
    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {p1, v0, v7, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :cond_71
    :goto_71
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v7, v7, v4

    invoke-static {v7}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v7

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/optimizer/Codegen;->getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    invoke-virtual {p1, v3, v8, v7, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xb1

    invoke-virtual {p1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_8c
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void

    :cond_91
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_97

    :goto_96
    throw p1

    :goto_97
    goto :goto_96
.end method

.method private generateFunctionInit(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .registers 8

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v2, 0xb6

    const-string v3, "org/mozilla/javascript/NativeFunction"

    const-string v4, "initScriptFunction"

    invoke-virtual {p1, v2, v3, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 p2, 0xb8

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v1, "_reInit"

    const-string v2, "(Lorg/mozilla/javascript/Context;)V"

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    const/16 p2, 0xb1

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateMain(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 7

    const-string v0, "main"

    const-string v1, "([Ljava/lang/String;)V"

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {p1, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb7

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-virtual {p1, v2, v1, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    const/16 v2, 0xb8

    const-string v3, "(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V"

    invoke-virtual {p1, v2, v1, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateNativeFunctionOverrides(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "getLanguageVersion"

    const-string v3, "()I"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1f
    const/4 v7, 0x7

    if-eq v6, v7, :cond_1ba

    const/4 v7, 0x4

    if-ne v6, v7, :cond_29

    if-nez p2, :cond_29

    goto/16 :goto_1b5

    :cond_29
    const/4 v8, 0x3

    const-string v9, "()Ljava/lang/String;"

    packed-switch v6, :pswitch_data_1bc

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_34  #0x6
    const-string v9, "isGeneratorFunction"

    const-string v10, "()Z"

    invoke-virtual {v1, v9, v10, v7}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_68

    :pswitch_3c  #0x5
    const-string v7, "getParamOrVarConst"

    const-string v9, "(I)Z"

    invoke-virtual {v1, v7, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/4 v7, 0x3

    goto :goto_69

    :pswitch_45  #0x4
    const-string v7, "getEncodedSource"

    invoke-virtual {v1, v7, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual/range {p1 .. p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_68

    :pswitch_4e  #0x3
    const/4 v7, 0x2

    const-string v9, "getParamOrVarName"

    const-string v10, "(I)Ljava/lang/String;"

    invoke-virtual {v1, v9, v10, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_69

    :pswitch_57  #0x2
    const-string v7, "getParamAndVarCount"

    invoke-virtual {v1, v7, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_68

    :pswitch_5d  #0x1
    const-string v7, "getParamCount"

    invoke-virtual {v1, v7, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_68

    :pswitch_63  #0x0
    const-string v7, "getFunctionName"

    invoke-virtual {v1, v7, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    :goto_68
    const/4 v7, 0x1

    :goto_69
    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v9, v9

    if-le v9, v4, :cond_85

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/16 v10, 0xb4

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_id"

    const-string v13, "I"

    invoke-virtual {v1, v10, v11, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v1, v4, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v10

    goto :goto_86

    :cond_85
    const/4 v10, 0x0

    :goto_86
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_88
    if-eq v11, v9, :cond_1b2

    iget-object v13, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v13, v13, v11

    if-nez v11, :cond_9a

    if-le v9, v4, :cond_9f

    invoke-virtual {v1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v12

    goto :goto_9f

    :cond_9a
    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v1, v10, v14, v12}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :cond_9f
    :goto_9f
    const/16 v14, 0xb0

    packed-switch v6, :pswitch_data_1ce

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_a9  #0x6
    instance-of v14, v13, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v14, :cond_b7

    check-cast v13, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result v13

    invoke-virtual {v1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    goto :goto_ba

    :cond_b7
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    :goto_ba
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_1ac

    :pswitch_bf  #0x5
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v14

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v13

    if-nez v14, :cond_d1

    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_1ac

    :cond_d1
    if-ne v14, v4, :cond_dd

    aget-boolean v13, v13, v5

    invoke-virtual {v1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_1ac

    :cond_dd
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    add-int/lit8 v15, v14, -0x1

    invoke-virtual {v1, v4, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v15

    const/4 v8, 0x0

    :goto_e7
    if-eq v8, v14, :cond_1ac

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v16

    if-eqz v16, :cond_f2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_f2
    if-nez v8, :cond_f8

    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    goto :goto_fd

    :cond_f8
    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v1, v15, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :goto_fd
    aget-boolean v4, v13, v8

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto :goto_e7

    :pswitch_109  #0x4
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceStart()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceEnd()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v4, 0xb6

    const-string v8, "java/lang/String"

    const-string/jumbo v13, "substring"

    const-string v15, "(II)Ljava/lang/String;"

    invoke-virtual {v1, v4, v8, v13, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_1ac

    :pswitch_128  #0x3
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v4

    if-nez v4, :cond_137

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_1ac

    :cond_137
    const/4 v8, 0x1

    if-ne v4, v8, :cond_145

    invoke-virtual {v13, v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1ac

    :cond_145
    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    add-int/lit8 v15, v4, -0x1

    invoke-virtual {v1, v8, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v15

    const/4 v8, 0x0

    :goto_14f
    if-eq v8, v4, :cond_1ac

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v17

    if-eqz v17, :cond_15a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_15a
    invoke-virtual {v13, v8}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v2

    if-nez v8, :cond_164

    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    goto :goto_169

    :cond_164
    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v1, v15, v14, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :goto_169
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v8, v8, 0x1

    const/16 v2, 0xac

    const/16 v14, 0xb0

    goto :goto_14f

    :pswitch_178  #0x2
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1ac

    :pswitch_185  #0x1
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_1ac

    :pswitch_190  #0x0
    invoke-virtual {v13}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v8, 0x89

    if-ne v4, v8, :cond_19e

    const-string v4, ""

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_1a7

    :cond_19e
    check-cast v13, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    :goto_1a7
    const/16 v4, 0xb0

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_1ac
    :goto_1ac
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x3

    goto/16 :goto_88

    :cond_1b2
    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    :goto_1b5
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto/16 :goto_1f

    :cond_1ba
    return-void

    nop

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_63  #00000000
        :pswitch_5d  #00000001
        :pswitch_57  #00000002
        :pswitch_4e  #00000003
        :pswitch_45  #00000004
        :pswitch_3c  #00000005
        :pswitch_34  #00000006
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_190  #00000000
        :pswitch_185  #00000001
        :pswitch_178  #00000002
        :pswitch_128  #00000003
        :pswitch_109  #00000004
        :pswitch_bf  #00000005
        :pswitch_a9  #00000006
    .end packed-switch
.end method

.method private generateResumeGenerator(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_15

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    if-nez v2, :cond_18

    return-void

    :cond_18
    const/16 v1, 0x11

    const-string v2, "resumeGenerator"

    const-string v3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {p1, v2, v3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/16 v1, 0xb4

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    const-string v4, "I"

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v1, v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    :goto_56
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v4, v3

    const/4 v5, 0x6

    const/16 v6, 0xb0

    if-ge v0, v4, :cond_a9

    aget-object v3, v3, v0

    invoke-virtual {p1, v1, v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    invoke-static {v3}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    move-result v4

    if-eqz v4, :cond_a1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb8

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_gen"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v7, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_a6

    :cond_a1
    const/16 v3, 0xa7

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_a9
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateScriptCtor(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 6

    const-string v0, "<init>"

    const-string v1, "()V"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/16 v3, 0xb7

    const-string v4, "org.mozilla.javascript.NativeFunction"

    invoke-virtual {p0, v3, v4, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb5

    const-string v3, "_id"

    const-string v4, "I"

    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static getStaticConstantWrapperType(D)Ljava/lang/String;
    .registers 5

    double-to-int v0, p0

    int-to-double v0, v0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_9

    const-string p0, "Ljava/lang/Integer;"

    return-object p0

    :cond_9
    const-string p0, "Ljava/lang/Double;"

    return-object p0
.end method

.method private static initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-eq v1, v0, :cond_16

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;-><init>(Lorg/mozilla/javascript/ast/FunctionNode;)V

    invoke-static {v2}, Lorg/mozilla/javascript/optimizer/Codegen;->initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method private initScriptNodesData(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    invoke-static {p1, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    new-array v1, p1, [Lorg/mozilla/javascript/ast/ScriptNode;

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v0, 0x0

    :goto_1b
    if-eq v0, p1, :cond_29

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    return-void
.end method

.method static isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_12

    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method static pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V
    .registers 5

    const/16 v0, 0xb2

    const-string v1, "org/mozilla/javascript/Undefined"

    const-string v2, "instance"

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private transform(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .registers 9

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getOptimizationLevel()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_41

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x89

    if-ne v2, v3, :cond_41

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_19
    if-eq v3, v2, :cond_41

    invoke-static {p1, v3}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v4

    iget-object v5, v4, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3e

    iget-object v5, v4, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3e

    if-nez v1, :cond_3b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_3b
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_41
    if-eqz v1, :cond_4a

    new-instance v2, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    :cond_4a
    new-instance v2, Lorg/mozilla/javascript/optimizer/OptTransformer;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2, v1, v3}, Lorg/mozilla/javascript/optimizer/OptTransformer;-><init>(Ljava/util/Map;Lorg/mozilla/javascript/ObjArray;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2, p1, v1}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V

    if-lez v0, :cond_60

    new-instance v0, Lorg/mozilla/javascript/optimizer/Optimizer;

    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/Optimizer;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/Optimizer;->optimize(Lorg/mozilla/javascript/ast/ScriptNode;)V

    :cond_60
    return-void
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method cleanName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "anonymous"

    goto :goto_16

    :cond_f
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_14
    const-string p1, "script"

    :goto_16
    return-object p1
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 16

    sget-object v0, Lorg/mozilla/javascript/optimizer/Codegen;->globalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lorg/mozilla/javascript/optimizer/Codegen;->globalSerialClassCounter:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lorg/mozilla/javascript/optimizer/Codegen;->globalSerialClassCounter:I

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_69

    const-string v0, "c"

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3e

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\W"

    const-string v5, "_"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "org.mozilla.javascript.gen."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lorg/mozilla/javascript/optimizer/Codegen;->compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v4

    aput-object p1, p2, v2

    return-object p2

    :catchall_69
    move-exception p1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p1
.end method

.method public compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B
    .registers 6

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    if-eqz p5, :cond_c

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p3

    :cond_c
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->initScriptNodesData(Lorg/mozilla/javascript/ast/ScriptNode;)V

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-static {p2}, Lorg/mozilla/classfile/ClassFileWriter;->classNameToSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/optimizer/Codegen;->generateCode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .registers 6

    invoke-direct {p0, p3, p4}, Lorg/mozilla/javascript/optimizer/Codegen;->defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p4

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeFunction;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to instantiate compiled class:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Script;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate compiled class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_c_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->cleanName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_37

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_2d
    if-eq v1, p1, :cond_37

    const-string v2, "Ljava/lang/Object;D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_37
    const-string p1, "[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_re"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->getExisting(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method pushNumberAsObject(Lorg/mozilla/classfile/ClassFileWriter;D)V
    .registers 12

    const-string v0, "org/mozilla/javascript/ScriptRuntime"

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    const-wide/16 v3, 0x0

    const-string v5, "Ljava/lang/Double;"

    const/16 v6, 0xb2

    cmpl-double v7, p2, v3

    if-nez v7, :cond_23

    div-double/2addr v1, p2

    cmpl-double v7, v1, v3

    if-lez v7, :cond_1b

    const-string/jumbo p2, "zeroObj"

    invoke-virtual {p1, v6, v0, p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9f

    :cond_1b
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto/16 :goto_9f

    :cond_23
    const-string v3, "org/mozilla/javascript/optimizer/OptRuntime"

    cmpl-double v4, p2, v1

    if-nez v4, :cond_2f

    const-string p2, "oneObj"

    invoke-virtual {p1, v6, v3, p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    const-wide/high16 v1, -0x4010000000000000L  # -1.0

    cmpl-double v4, p2, v1

    if-nez v4, :cond_3b

    const-string p2, "minusOneObj"

    invoke-virtual {p1, v6, v3, p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_3b
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string p2, "NaNobj"

    invoke-virtual {p1, v6, v0, p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_47
    iget v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_54

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto :goto_9f

    :cond_54
    const/4 v1, 0x0

    if-nez v0, :cond_5e

    const/16 v2, 0x40

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    goto :goto_7b

    :cond_5e
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    const/4 v3, 0x0

    :goto_61
    if-eq v3, v0, :cond_6c

    aget-wide v4, v2, v3

    cmpl-double v7, v4, p2

    if-eqz v7, :cond_6c

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_6c
    array-length v2, v2

    if-ne v0, v2, :cond_7a

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    :cond_7a
    move v1, v3

    :goto_7b
    if-ne v1, v0, :cond_85

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    aput-wide p2, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_k"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->getStaticConstantWrapperType(D)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p1, v6, p3, v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9f
    return-void
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setMainMethodClass(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    return-void
.end method
