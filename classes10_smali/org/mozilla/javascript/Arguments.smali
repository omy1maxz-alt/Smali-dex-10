.class final Lorg/mozilla/javascript/Arguments;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "Arguments.java"


# static fields
.field private static final FTAG:Ljava/lang/String; = "Arguments"

.field private static final Id_callee:I = 0x1

.field private static final Id_caller:I = 0x3

.field private static final Id_length:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x3

.field private static iteratorMethod:Lorg/mozilla/javascript/BaseFunction; = null

.field private static final serialVersionUID:J = 0x3b55a7e02ae0c5a1L


# instance fields
.field private activation:Lorg/mozilla/javascript/NativeCall;

.field private args:[Ljava/lang/Object;

.field private calleeAttr:I

.field private calleeObj:Ljava/lang/Object;

.field private callerAttr:I

.field private callerObj:Ljava/lang/Object;

.field private lengthAttr:I

.field private lengthObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/Arguments$1;

    invoke-direct {v0}, Lorg/mozilla/javascript/Arguments$1;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/Arguments;->iteratorMethod:Lorg/mozilla/javascript/BaseFunction;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/NativeCall;)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/Arguments;->callerAttr:I

    iput v0, p0, Lorg/mozilla/javascript/Arguments;->calleeAttr:I

    iput v0, p0, Lorg/mozilla/javascript/Arguments;->lengthAttr:I

    iput-object p1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    iget-object v1, p1, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/Arguments;->lengthObj:Ljava/lang/Object;

    iget-object p1, p1, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    iput-object p1, p0, Lorg/mozilla/javascript/Arguments;->calleeObj:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeFunction;->getLanguageVersion()I

    move-result p1

    const/16 v1, 0x82

    if-gt p1, v1, :cond_37

    if-eqz p1, :cond_37

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    goto :goto_3b

    :cond_37
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    :goto_3b
    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    sget-object v1, Lorg/mozilla/javascript/Arguments;->iteratorMethod:Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void
.end method

.method private arg(I)Ljava/lang/Object;
    .registers 4

    if-ltz p1, :cond_b

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v1, v0

    if-gt v1, p1, :cond_8

    goto :goto_b

    :cond_8
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    :goto_b
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method private getFromActivation(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {v0, p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private putIntoActivation(ILjava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {v0, p1, v0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method private removeArg(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    if-ne v0, v1, :cond_17

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    aput-object v2, v0, p1

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private replaceArg(ILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->sharedWithActivation(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Arguments;->putIntoActivation(ILjava/lang/Object;)V

    :cond_9
    monitor-enter p0

    :try_start_a
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    if-ne v0, v1, :cond_1a

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    :cond_1a
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    aput-object p2, v0, p1

    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw p1
.end method

.method private sharedWithActivation(I)Z
    .registers 8

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result v2

    if-ge p1, v2, :cond_31

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-ge p1, v3, :cond_30

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr p1, v4

    :goto_20
    if-ge p1, v2, :cond_30

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_30
    return v4

    :cond_31
    return v1
.end method


# virtual methods
.method defineAttributesForStrictMode()V
    .registers 6

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;

    const-string v1, "caller"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Arguments$ThrowTypeError;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V

    new-instance v0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Arguments$ThrowTypeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V

    new-instance v0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;

    const-string v4, "callee"

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/Arguments$ThrowTypeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V

    new-instance v0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/Arguments$ThrowTypeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(Ljava/lang/String;I)V

    invoke-virtual {p0, v4, v0}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->calleeObj:Ljava/lang/Object;

    return-void
.end method

.method protected defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    double-to-int p4, p1

    int-to-double v0, p4

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_15

    return-void

    :cond_15
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, p2, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/Arguments;->removeArg(I)V

    return-void

    :cond_28
    const-string/jumbo p1, "value"

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_32

    return-void

    :cond_32
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/Arguments;->replaceArg(ILjava/lang/Object;)V

    const-string/jumbo p1, "writable"

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->isFalse(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/Arguments;->removeArg(I)V

    :cond_45
    return-void
.end method

.method public delete(I)V
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->removeArg(I)V

    :cond_a
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-ne v0, v5, :cond_28

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x65

    if-ne v0, v5, :cond_18

    const-string v0, "callee"

    const/4 v5, 0x1

    goto :goto_2a

    :cond_18
    const/16 v5, 0x68

    if-ne v0, v5, :cond_20

    const-string v0, "length"

    const/4 v5, 0x2

    goto :goto_2a

    :cond_20
    const/16 v5, 0x72

    if-ne v0, v5, :cond_28

    const-string v0, "caller"

    const/4 v5, 0x3

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2a
    if-eqz v0, :cond_35

    if-eq v0, p1, :cond_35

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    move v2, v5

    :goto_36
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_49

    if-eq v2, v4, :cond_44

    if-ne v2, v3, :cond_49

    :cond_44
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_49
    if-nez v2, :cond_50

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_50
    if-eq v2, v4, :cond_62

    if-eq v2, v1, :cond_5f

    if-ne v2, v3, :cond_59

    iget p1, p0, Lorg/mozilla/javascript/Arguments;->callerAttr:I

    goto :goto_64

    :cond_59
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5f
    iget p1, p0, Lorg/mozilla/javascript/Arguments;->lengthAttr:I

    goto :goto_64

    :cond_62
    iget p1, p0, Lorg/mozilla/javascript/Arguments;->calleeAttr:I

    :goto_64
    invoke-static {p1, v2}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->sharedWithActivation(I)Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->getFromActivation(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_18
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Arguments"

    return-object v0
.end method

.method getIds(ZZ)[Ljava/lang/Object;
    .registers 11

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v1, v0

    if-eqz v1, :cond_6c

    array-length v1, v0

    new-array v2, v1, [Z

    array-length v0, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    array-length v5, p2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_31

    aget-object v5, p2, v4

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_2e

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2e

    iget-object v7, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v5, v7, :cond_2e

    aget-boolean v7, v2, v5

    if-nez v7, :cond_2e

    aput-boolean v6, v2, v5

    add-int/lit8 v0, v0, -0x1

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_31
    if-nez p1, :cond_47

    const/4 p1, 0x0

    :goto_34
    if-ge p1, v1, :cond_47

    aget-boolean v4, v2, p1

    if-nez v4, :cond_44

    invoke-super {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v4

    if-eqz v4, :cond_44

    aput-boolean v6, v2, p1

    add-int/lit8 v0, v0, -0x1

    :cond_44
    add-int/lit8 p1, p1, 0x1

    goto :goto_34

    :cond_47
    if-eqz v0, :cond_6c

    array-length p1, p2

    add-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/Object;

    array-length v1, p2

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x0

    :goto_52
    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v3, v1, :cond_66

    aget-boolean v1, v2, v3

    if-nez v1, :cond_63

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_66
    if-eq p2, v0, :cond_6b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6b
    move-object p2, p1

    :cond_6c
    return-object p2
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    const-string p1, "caller"

    return-object p1

    :cond_e
    const-string p1, "length"

    return-object p1

    :cond_11
    const-string p1, "callee"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    iget-object p1, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x0

    goto :goto_24

    :cond_16
    if-nez p1, :cond_24

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-eqz v0, :cond_24

    const-string p1, "arguments"

    invoke-virtual {v0, p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    :cond_24
    :goto_24
    return-object p1

    :cond_25
    iget-object p1, p0, Lorg/mozilla/javascript/Arguments;->lengthObj:Ljava/lang/Object;

    return-object p1

    :cond_28
    iget-object p1, p0, Lorg/mozilla/javascript/Arguments;->calleeObj:Ljava/lang/Object;

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 9

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_b

    goto :goto_4f

    :cond_b
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1a

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_27

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_27
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Arguments;->sharedWithActivation(I)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Arguments;->getFromActivation(I)Ljava/lang/Object;

    move-result-object v0

    :cond_31
    invoke-super {p0, v2, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    const-string/jumbo p2, "value"

    invoke-virtual {p1, p2, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object p1

    :cond_42
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-nez p1, :cond_49

    move-object p1, p0

    :cond_49
    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_4f
    :goto_4f
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 5

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_f

    :cond_c
    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/Arguments;->replaceArg(ILjava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method protected setInstanceIdAttributes(II)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdAttributes(II)V

    return-void

    :cond_d
    iput p2, p0, Lorg/mozilla/javascript/Arguments;->callerAttr:I

    return-void

    :cond_10
    iput p2, p0, Lorg/mozilla/javascript/Arguments;->lengthAttr:I

    return-void

    :cond_13
    iput p2, p0, Lorg/mozilla/javascript/Arguments;->calleeAttr:I

    return-void
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    return-void

    :cond_d
    if-eqz p2, :cond_10

    goto :goto_12

    :cond_10
    sget-object p2, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :goto_12
    iput-object p2, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    return-void

    :cond_15
    iput-object p2, p0, Lorg/mozilla/javascript/Arguments;->lengthObj:Ljava/lang/Object;

    return-void

    :cond_18
    iput-object p2, p0, Lorg/mozilla/javascript/Arguments;->calleeObj:Ljava/lang/Object;

    return-void
.end method
