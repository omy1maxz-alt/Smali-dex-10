.class public Lorg/mozilla/javascript/BaseFunction;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "BaseFunction.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field private static final FUNCTION_CLASS:Ljava/lang/String; = "Function"

.field private static final FUNCTION_TAG:Ljava/lang/Object;

.field static final GENERATOR_FUNCTION_CLASS:Ljava/lang/String; = "__GeneratorFunction"

.field private static final Id_apply:I = 0x4

.field private static final Id_arguments:I = 0x5

.field private static final Id_arity:I = 0x2

.field private static final Id_bind:I = 0x6

.field private static final Id_call:I = 0x5

.field private static final Id_constructor:I = 0x1

.field private static final Id_length:I = 0x1

.field private static final Id_name:I = 0x3

.field private static final Id_prototype:I = 0x4

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x5

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field private static final serialVersionUID:J = 0x49b5dd1bb05c2ae3L


# instance fields
.field private argumentsAttributes:I

.field private argumentsObj:Ljava/lang/Object;

.field private isGeneratorFunction:Z

.field private prototypeProperty:Ljava/lang/Object;

.field private prototypePropertyAttributes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Function"

    sput-object v0, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsObj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/BaseFunction;->isGeneratorFunction:Z

    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    iput v0, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsAttributes:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsObj:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/javascript/BaseFunction;->isGeneratorFunction:Z

    const/4 p1, 0x6

    iput p1, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    iput p1, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsAttributes:I

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsObj:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    iput v0, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsAttributes:I

    iput-boolean p1, p0, Lorg/mozilla/javascript/BaseFunction;->isGeneratorFunction:Z

    return-void
.end method

.method private getArguments()Ljava/lang/Object;
    .registers 4

    const-string v0, "arguments"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->defaultHas(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->defaultGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f

    :cond_d
    iget-object v1, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsObj:Ljava/lang/Object;

    :goto_f
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_14

    return-object v1

    :cond_14
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->findFunctionActivation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/NativeCall;

    move-result-object v1

    if-nez v1, :cond_20

    const/4 v0, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    :goto_24
    return-object v0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/BaseFunction;

    invoke-direct {v0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method static initAsGeneratorFunction(Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/BaseFunction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/BaseFunction;-><init>(Z)V

    const/4 v1, 0x5

    iput v1, v0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    const-string p1, "__GeneratorFunction"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method static isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method private jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    array-length v0, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->isGeneratorFunction()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_23

    const-string v2, "anonymous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2a
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_41

    if-lez v3, :cond_35

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_35
    aget-object v4, p3, v3

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_41
    const-string v3, ") {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_51

    aget-object p3, p3, v4

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    const-string p3, "\n}"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 p3, 0x1

    new-array v0, p3, [I

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_67

    aput p3, v0, v2

    const-string v1, "<eval\'ed string>"

    :cond_67
    aget p3, v0, v2

    invoke-static {v2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->makeUrlForGeneratedScript(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v7

    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v6

    if-eqz v6, :cond_87

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lorg/mozilla/javascript/Context;->compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    return-object p1

    :cond_87
    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    aget p2, v0, v2

    const-string p3, "Interpreter not present"

    invoke-direct {p1, p3, v1, p2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_92

    :goto_91
    throw p1

    :goto_92
    goto :goto_91
.end method

.method private static realFunction(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/BaseFunction;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/Delegator;

    if-eqz v0, :cond_10

    check-cast p0, Lorg/mozilla/javascript/Delegator;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :cond_10
    instance-of v0, p0, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v0, :cond_17

    check-cast p0, Lorg/mozilla/javascript/BaseFunction;

    return-object p0

    :cond_17
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.incompat.call"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private declared-synchronized setupDefaultPrototype()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_7
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    const-string v1, "constructor"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    if-eq v1, v0, :cond_1d

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/BaseFunction;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_3c

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    goto :goto_3c

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/BaseFunction;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_3d

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-eq v0, p1, :cond_2d

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_2d
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-nez p1, :cond_3c

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-eq v0, p1, :cond_3c

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    :cond_3c
    :goto_3c
    return-object v0

    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad implementaion of call as constructor, name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    new-instance p1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1
.end method

.method decompile(II)Ljava/lang/String;
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_1e

    const-string p2, "function "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() {\n\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string p2, "[native code, arity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getArity()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_37

    const-string/jumbo p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_80

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_20  #0x6
    instance-of p1, p4, Lorg/mozilla/javascript/Callable;

    if-eqz p1, :cond_47

    move-object v6, p4

    check-cast v6, Lorg/mozilla/javascript/Callable;

    array-length p1, p5

    if-lez p1, :cond_39

    aget-object p4, p5, v2

    invoke-static {p2, p4, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    sub-int/2addr p1, v1

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p5, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, p4

    move-object v8, v0

    goto :goto_3e

    :cond_39
    const/4 p1, 0x0

    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object v7, p1

    move-object v8, p4

    :goto_3e
    new-instance p1, Lorg/mozilla/javascript/BoundFunction;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lorg/mozilla/javascript/BoundFunction;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    return-object p1

    :cond_47
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_4c  #0x4, 0x5
    const/4 p1, 0x4

    if-ne v0, p1, :cond_50

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    invoke-static {v1, p2, p3, p4, p5}, Lorg/mozilla/javascript/ScriptRuntime;->applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_56  #0x3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/BaseFunction;->realFunction(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object p1

    const/4 p2, 0x2

    array-length p3, p5

    if-eqz p3, :cond_68

    aget-object p3, p5, v2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_68

    move v2, p3

    const/4 p2, 0x0

    :cond_68
    invoke-virtual {p1, v2, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6d  #0x2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/BaseFunction;->realFunction(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object p1

    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result p2

    invoke-virtual {p1, p2, v2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7a  #0x1
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/BaseFunction;->jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_7a  #00000001
        :pswitch_6d  #00000002
        :pswitch_56  #00000003
        :pswitch_4c  #00000004
        :pswitch_4c  #00000005
        :pswitch_20  #00000006
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 2

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v0, v5, :cond_35

    if-eq v0, v4, :cond_31

    const/4 v7, 0x6

    if-eq v0, v7, :cond_2d

    const/16 v7, 0x9

    if-eq v0, v7, :cond_16

    goto :goto_2a

    :cond_16
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x61

    if-ne v0, v7, :cond_22

    const-string v0, "arguments"

    const/4 v7, 0x5

    goto :goto_38

    :cond_22
    const/16 v7, 0x70

    if-ne v0, v7, :cond_2a

    const-string v0, "prototype"

    const/4 v7, 0x4

    goto :goto_38

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_38

    :cond_2d
    const-string v0, "length"

    const/4 v7, 0x1

    goto :goto_38

    :cond_31
    const-string v0, "arity"

    const/4 v7, 0x2

    goto :goto_38

    :cond_35
    const-string v0, "name"

    const/4 v7, 0x3

    :goto_38
    if-eqz v0, :cond_43

    if-eq v0, p1, :cond_43

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v7, 0x0

    :cond_43
    if-nez v7, :cond_4a

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4a
    if-eq v7, v1, :cond_67

    if-eq v7, v2, :cond_67

    if-eq v7, v3, :cond_67

    if-eq v7, v5, :cond_5d

    if-ne v7, v4, :cond_57

    iget p1, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsAttributes:I

    goto :goto_68

    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5d
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->hasPrototypeProperty()Z

    move-result p1

    if-nez p1, :cond_64

    return v6

    :cond_64
    iget p1, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    goto :goto_68

    :cond_67
    const/4 p1, 0x7

    :goto_68
    invoke-static {p1, v7}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_32

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x8

    if-eq v0, v2, :cond_19

    const/16 v1, 0xb

    if-eq v0, v1, :cond_15

    goto :goto_46

    :cond_15
    const/4 v1, 0x1

    const-string v0, "constructor"

    goto :goto_48

    :cond_19
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_25

    const-string/jumbo v0, "toSource"

    goto :goto_48

    :cond_25
    const/16 v1, 0x74

    if-ne v0, v1, :cond_46

    const/4 v1, 0x2

    const-string/jumbo v0, "toString"

    goto :goto_48

    :cond_2e
    const-string v0, "apply"

    const/4 v1, 0x4

    goto :goto_48

    :cond_32
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x62

    if-ne v0, v1, :cond_3e

    const/4 v1, 0x6

    const-string v0, "bind"

    goto :goto_48

    :cond_3e
    const/16 v1, 0x63

    if-ne v0, v1, :cond_46

    const-string v0, "call"

    const/4 v1, 0x5

    goto :goto_48

    :cond_46
    :goto_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_48
    if-eqz v0, :cond_53

    if-eq v0, p1, :cond_53

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_54

    :cond_53
    move v4, v1

    :goto_54
    return v4
.end method

.method public getArity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->isGeneratorFunction()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "__GeneratorFunction"

    goto :goto_b

    :cond_9
    const-string v0, "Function"

    :goto_b
    return-object v0
.end method

.method protected getClassPrototype()Lorg/mozilla/javascript/Scriptable;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    return-object v0

    :cond_b
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    const-string p1, "arguments"

    return-object p1

    :cond_17
    const-string p1, "prototype"

    return-object p1

    :cond_1a
    const-string p1, "name"

    return-object p1

    :cond_1d
    const-string p1, "arity"

    return-object p1

    :cond_20
    const-string p1, "length"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;->getArguments()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1e
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getArity()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2c
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getLength()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLength()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method protected getPrototypeProperty()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    if-nez v0, :cond_10

    instance-of v0, p0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;->setupDefaultPrototype()Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_d
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_15

    :cond_10
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    :cond_15
    :goto_15
    return-object v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "undefined"

    goto :goto_c

    :cond_a
    const-string v0, "function"

    :goto_c
    return-object v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    const-string v0, "prototype"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_11

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->jsDelegatesTo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_11
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.instanceof.bad.prototype"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method protected hasPrototypeProperty()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    if-nez v0, :cond_b

    instance-of v0, p0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e  #0x6
    const-string v1, "bind"

    goto :goto_23

    :pswitch_11  #0x5
    const-string v1, "call"

    goto :goto_23

    :pswitch_14  #0x4
    const/4 v0, 0x2

    const-string v1, "apply"

    goto :goto_23

    :pswitch_18  #0x3
    const-string/jumbo v1, "toSource"

    goto :goto_23

    :pswitch_1c  #0x2
    const/4 v0, 0x0

    const-string/jumbo v1, "toString"

    goto :goto_23

    :pswitch_21  #0x1
    const-string v1, "constructor"

    :goto_23
    sget-object v2, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_21  #00000001
        :pswitch_1c  #00000002
        :pswitch_18  #00000003
        :pswitch_14  #00000004
        :pswitch_11  #00000005
        :pswitch_e  #00000006
    .end packed-switch
.end method

.method protected isGeneratorFunction()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/BaseFunction;->isGeneratorFunction:Z

    return v0
.end method

.method public setImmunePrototypeProperty(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_11

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :goto_b
    iput-object p1, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected setInstanceIdAttributes(II)V
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdAttributes(II)V

    return-void

    :cond_a
    iput p2, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsAttributes:I

    return-void

    :cond_d
    iput p2, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    return-void
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x5

    if-eq p1, v1, :cond_13

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    return-void

    :cond_13
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, p1, :cond_1a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1a
    const-string p1, "arguments"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->defaultHas(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->defaultPut(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_26
    iget p1, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsAttributes:I

    and-int/2addr p1, v0

    if-nez p1, :cond_2d

    iput-object p2, p0, Lorg/mozilla/javascript/BaseFunction;->argumentsObj:Ljava/lang/Object;

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget p1, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    and-int/2addr p1, v0

    if-nez p1, :cond_3a

    if-eqz p2, :cond_36

    goto :goto_38

    :cond_36
    sget-object p2, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :goto_38
    iput-object p2, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    :cond_3a
    return-void
.end method
