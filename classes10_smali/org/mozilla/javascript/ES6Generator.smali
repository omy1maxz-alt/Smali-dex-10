.class public final Lorg/mozilla/javascript/ES6Generator;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "ES6Generator.java"


# static fields
.field private static final GENERATOR_TAG:Ljava/lang/Object;

.field private static final Id_next:I = 0x1

.field private static final Id_return:I = 0x2

.field private static final Id_throw:I = 0x3

.field private static final MAX_PROTOTYPE_ID:I = 0x4

.field private static final SymbolId_iterator:I = 0x4

.field private static final serialVersionUID:J = 0x16d762746ec522c9L


# instance fields
.field private delegee:Ljava/lang/Object;

.field private function:Lorg/mozilla/javascript/NativeFunction;

.field private lineNumber:I

.field private lineSource:Ljava/lang/String;

.field private savedState:Ljava/lang/Object;

.field private state:Lorg/mozilla/javascript/ES6Generator$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Generator"

    sput-object v0, Lorg/mozilla/javascript/ES6Generator;->GENERATOR_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_START:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v0, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_START:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v0, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->function:Lorg/mozilla/javascript/NativeFunction;

    iput-object p3, p0, Lorg/mozilla/javascript/ES6Generator;->savedState:Ljava/lang/Object;

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    sget-object p2, Lorg/mozilla/javascript/ES6Generator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ES6Generator;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private callReturnOptionally(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_12

    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    move-object p3, v1

    :goto_12
    iget-object v1, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    const-string v2, "return"

    invoke-static {v1, v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    instance-of v0, v1, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_31

    check-cast v1, Lorg/mozilla/javascript/Callable;

    iget-object v0, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_31
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.isnt.function"

    invoke-static {p2, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ES6Generator;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/ES6Generator;

    invoke-direct {v0}, Lorg/mozilla/javascript/ES6Generator;-><init>()V

    if-eqz p0, :cond_11

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_11
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    if-eqz p1, :cond_1a

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_1a
    if-eqz p0, :cond_21

    sget-object p1, Lorg/mozilla/javascript/ES6Generator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method

.method private resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 18

    move-object v1, p0

    move-object v0, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v2, p4

    const-string/jumbo v8, "value"

    iget-object v3, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    sget-object v6, Lorg/mozilla/javascript/ES6Generator$State;->EXECUTING:Lorg/mozilla/javascript/ES6Generator$State;

    if-eq v3, v6, :cond_de

    sget-object v7, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_START:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne v3, v7, :cond_18

    sget-object v3, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v3, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    :cond_18
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v3}, Lorg/mozilla/javascript/ES6Iterator;->makeIteratorResult(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Boolean;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    iget-object v3, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    sget-object v10, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    const-string v11, "done"

    if-ne v3, v10, :cond_39

    const/4 v0, 0x1

    if-eq v5, v0, :cond_2f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v9

    :cond_2f
    new-instance v0, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v3, v1, Lorg/mozilla/javascript/ES6Generator;->lineSource:Ljava/lang/String;

    iget v4, v1, Lorg/mozilla/javascript/ES6Generator;->lineNumber:I

    invoke-direct {v0, v2, v3, v4}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw v0

    :cond_39
    iput-object v6, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    const/4 v3, 0x2

    if-ne v5, v3, :cond_48

    instance-of v3, v2, Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;

    if-nez v3, :cond_5d

    new-instance v2, Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;

    invoke-direct {v2}, Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;-><init>()V

    goto :goto_5d

    :cond_48
    instance-of v3, v2, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v3, :cond_53

    check-cast v2, Lorg/mozilla/javascript/JavaScriptException;

    invoke-virtual {v2}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_5d

    :cond_53
    instance-of v3, v2, Lorg/mozilla/javascript/RhinoException;

    if-eqz v3, :cond_5d

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapException(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    :cond_5d
    :goto_5d
    move-object v7, v2

    const/4 v12, 0x0

    :try_start_5f
    iget-object v2, v1, Lorg/mozilla/javascript/ES6Generator;->function:Lorg/mozilla/javascript/NativeFunction;

    iget-object v6, v1, Lorg/mozilla/javascript/ES6Generator;->savedState:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/NativeFunction;->resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_YIELD:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v0, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;
    :try_end_72
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_5f .. :try_end_72} :catch_c4
    .catch Lorg/mozilla/javascript/JavaScriptException; {:try_start_5f .. :try_end_72} :catch_89
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_5f .. :try_end_72} :catch_77
    .catchall {:try_start_5f .. :try_end_72} :catchall_75

    if-ne v0, v10, :cond_cf

    goto :goto_c8

    :catchall_75
    move-exception v0

    goto :goto_d0

    :catch_77
    move-exception v0

    :try_start_78
    sget-object v2, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v2, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v2

    iput v2, v1, Lorg/mozilla/javascript/ES6Generator;->lineNumber:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mozilla/javascript/ES6Generator;->lineSource:Ljava/lang/String;

    throw v0

    :catch_89
    move-exception v0

    sget-object v2, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v2, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    invoke-virtual {v0}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    if-eqz v3, :cond_a8

    invoke-virtual {v0}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeIterator$StopIteration;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a3
    .catchall {:try_start_78 .. :try_end_a3} :catchall_75

    iget-object v0, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne v0, v2, :cond_cf

    goto :goto_c8

    :cond_a8
    :try_start_a8
    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v2

    iput v2, v1, Lorg/mozilla/javascript/ES6Generator;->lineNumber:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mozilla/javascript/ES6Generator;->lineSource:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/mozilla/javascript/RhinoException;

    if-eqz v2, :cond_c3

    invoke-virtual {v0}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/RhinoException;

    throw v0

    :cond_c3
    throw v0

    :catch_c4
    sget-object v0, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v0, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;
    :try_end_c8
    .catchall {:try_start_a8 .. :try_end_c8} :catchall_75

    :goto_c8
    iput-object v12, v1, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_cf
    return-object v9

    :goto_d0
    iget-object v2, v1, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    sget-object v3, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne v2, v3, :cond_dd

    iput-object v12, v1, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_dd
    throw v0

    :cond_de
    const-string v0, "msg.generator.executing"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method private resumeDelegee(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_13

    :cond_d
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    move-object p3, v2

    :goto_13
    iget-object v2, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    const-string v3, "next"

    invoke-static {v2, v3, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->isIteratorDone(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iput-object v1, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    const-string/jumbo v2, "value"

    invoke-static {p3, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1
    :try_end_3a
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_3a} :catch_3c

    return-object p1

    :cond_3b
    return-object p3

    :catch_3c
    move-exception p3

    iput-object v1, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method private resumeDelegeeReturn(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/ES6Generator;->callReturnOptionally(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_21

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->isIteratorDone(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1c

    iput-object v0, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    const-string/jumbo p3, "value"

    invoke-static {v1, p3, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, v2, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_21
    iput-object v0, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1
    :try_end_27
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p3

    iput-object v0, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method private resumeDelegeeThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    const-string/jumbo v4, "throw"

    invoke-static {v3, v4, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p3, v5, v0

    invoke-interface {v3, p1, p2, v4, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->isIteratorDone(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1c
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_3 .. :try_end_1c} :catch_3d

    if-eqz v3, :cond_38

    :try_start_1e
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/ES6Generator;->callReturnOptionally(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_31

    :try_start_23
    iput-object v2, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    const-string/jumbo v0, "value"

    invoke-static {p3, v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :catchall_31
    move-exception p3

    iput-object v2, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    throw p3
    :try_end_35
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_23 .. :try_end_35} :catch_35

    :catch_35
    move-exception p3

    const/4 v0, 0x1

    goto :goto_3e

    :cond_38
    :try_start_38
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1
    :try_end_3c
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_38 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p3

    :goto_3e
    if-nez v0, :cond_53

    :try_start_40
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/ES6Generator;->callReturnOptionally(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_40 .. :try_end_45} :catch_48
    .catchall {:try_start_40 .. :try_end_45} :catchall_46

    goto :goto_53

    :catchall_46
    move-exception p1

    goto :goto_50

    :catch_48
    move-exception p3

    :try_start_49
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    iput-object v2, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    return-object p1

    :goto_50
    iput-object v2, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    throw p1

    :cond_53
    :goto_53
    iput-object v2, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method private resumeLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 15

    const-string/jumbo v0, "value"

    const-string v1, "done"

    iget-object v2, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    sget-object v3, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne v2, v3, :cond_12

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ES6Iterator;->makeIteratorResult(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Boolean;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_12
    sget-object v4, Lorg/mozilla/javascript/ES6Generator$State;->EXECUTING:Lorg/mozilla/javascript/ES6Generator$State;

    if-eq v2, v4, :cond_eb

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v2}, Lorg/mozilla/javascript/ES6Iterator;->makeIteratorResult(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Boolean;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    iput-object v4, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    :try_start_1e
    iget-object v5, p0, Lorg/mozilla/javascript/ES6Generator;->function:Lorg/mozilla/javascript/NativeFunction;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/mozilla/javascript/ES6Generator;->savedState:Ljava/lang/Object;

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lorg/mozilla/javascript/NativeFunction;->resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of v5, p3, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;

    if-eqz v5, :cond_78

    sget-object v5, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_YIELD:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object v5, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    check-cast p3, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;
    :try_end_34
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_1e .. :try_end_34} :catch_d0
    .catch Lorg/mozilla/javascript/JavaScriptException; {:try_start_1e .. :try_end_34} :catch_95
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1e .. :try_end_34} :catch_87
    .catchall {:try_start_1e .. :try_end_34} :catchall_85

    :try_start_34
    invoke-virtual {p3}, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;
    :try_end_3e
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_34 .. :try_end_3e} :catch_61
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_34 .. :try_end_3e} :catch_d0
    .catchall {:try_start_34 .. :try_end_3e} :catchall_85

    :try_start_3e
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeDelegee(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_5b

    :try_start_44
    iput-object v4, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->isIteratorDone(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iput-object v3, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;
    :try_end_4e
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_44 .. :try_end_4e} :catch_d0
    .catch Lorg/mozilla/javascript/JavaScriptException; {:try_start_44 .. :try_end_4e} :catch_95
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_44 .. :try_end_4e} :catch_87
    .catchall {:try_start_44 .. :try_end_4e} :catchall_85

    :cond_4e
    iget-object p1, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne p1, v3, :cond_58

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5a

    :cond_58
    iput-object v5, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    :goto_5a
    return-object p2

    :catchall_5b
    move-exception p1

    :try_start_5c
    sget-object p2, Lorg/mozilla/javascript/ES6Generator$State;->EXECUTING:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    throw p1

    :catch_61
    move-exception p3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3, p3}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1
    :try_end_67
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_5c .. :try_end_67} :catch_d0
    .catch Lorg/mozilla/javascript/JavaScriptException; {:try_start_5c .. :try_end_67} :catch_95
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_5c .. :try_end_67} :catch_87
    .catchall {:try_start_5c .. :try_end_67} :catchall_85

    iget-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    sget-object p3, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne p2, p3, :cond_73

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_77

    :cond_73
    sget-object p2, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_YIELD:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    :goto_77
    return-object p1

    :cond_78
    :try_start_78
    invoke-static {v2, v0, p3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7b
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_78 .. :try_end_7b} :catch_d0
    .catch Lorg/mozilla/javascript/JavaScriptException; {:try_start_78 .. :try_end_7b} :catch_95
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_78 .. :try_end_7b} :catch_87
    .catchall {:try_start_78 .. :try_end_7b} :catchall_85

    iget-object p1, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne p1, v3, :cond_80

    goto :goto_d4

    :cond_80
    sget-object p1, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_YIELD:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object p1, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    goto :goto_d9

    :catchall_85
    move-exception p1

    goto :goto_da

    :catch_87
    move-exception p1

    :try_start_88
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result p2

    iput p2, p0, Lorg/mozilla/javascript/ES6Generator;->lineNumber:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->lineSource:Ljava/lang/String;

    throw p1

    :catch_95
    move-exception p1

    sget-object p2, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    invoke-virtual {p1}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    if-eqz p3, :cond_b4

    invoke-virtual {p1}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeIterator$StopIteration;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_88 .. :try_end_af} :catchall_85

    iget-object p1, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne p1, p2, :cond_80

    goto :goto_d4

    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result p2

    iput p2, p0, Lorg/mozilla/javascript/ES6Generator;->lineNumber:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->lineSource:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lorg/mozilla/javascript/RhinoException;

    if-eqz p2, :cond_cf

    invoke-virtual {p1}, Lorg/mozilla/javascript/JavaScriptException;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/RhinoException;

    throw p1

    :cond_cf
    throw p1

    :catch_d0
    sget-object p1, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object p1, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;
    :try_end_d4
    .catchall {:try_start_b4 .. :try_end_d4} :catchall_85

    :goto_d4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_d9
    return-object v2

    :goto_da
    iget-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    sget-object p3, Lorg/mozilla/javascript/ES6Generator$State;->COMPLETED:Lorg/mozilla/javascript/ES6Generator$State;

    if-ne p2, p3, :cond_e6

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ea

    :cond_e6
    sget-object p2, Lorg/mozilla/javascript/ES6Generator$State;->SUSPENDED_YIELD:Lorg/mozilla/javascript/ES6Generator$State;

    iput-object p2, p0, Lorg/mozilla/javascript/ES6Generator;->state:Lorg/mozilla/javascript/ES6Generator$State;

    :goto_ea
    throw p1

    :cond_eb
    const-string p1, "msg.generator.executing"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    goto :goto_f3

    :goto_f2
    throw p1

    :goto_f3
    goto :goto_f2
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lorg/mozilla/javascript/ES6Generator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    instance-of v1, p4, Lorg/mozilla/javascript/ES6Generator;

    if-eqz v1, :cond_62

    move-object p1, p4

    check-cast p1, Lorg/mozilla/javascript/ES6Generator;

    array-length v1, p5

    const/4 v2, 0x1

    if-lt v1, v2, :cond_20

    const/4 v1, 0x0

    aget-object p5, p5, v1

    goto :goto_22

    :cond_20
    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_22
    if-eq v0, v2, :cond_54

    const/4 v1, 0x2

    if-eq v0, v1, :cond_46

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    const/4 p1, 0x4

    if-ne v0, p1, :cond_2e

    return-object p4

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object p4, p1, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    if-nez p4, :cond_41

    invoke-direct {p1, p2, p3, v2, p5}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_41
    invoke-direct {p1, p2, p3, p5}, Lorg/mozilla/javascript/ES6Generator;->resumeDelegeeThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_46
    iget-object p4, p1, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    if-nez p4, :cond_4f

    invoke-direct {p1, p2, p3, v1, p5}, Lorg/mozilla/javascript/ES6Generator;->resumeAbruptLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_4f
    invoke-direct {p1, p2, p3, p5}, Lorg/mozilla/javascript/ES6Generator;->resumeDelegeeReturn(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_54
    iget-object p4, p1, Lorg/mozilla/javascript/ES6Generator;->delegee:Ljava/lang/Object;

    if-nez p4, :cond_5d

    invoke-direct {p1, p2, p3, p5}, Lorg/mozilla/javascript/ES6Generator;->resumeLocal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_5d
    invoke-direct {p1, p2, p3, p5}, Lorg/mozilla/javascript/ES6Generator;->resumeDelegee(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_62
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    const-string v2, "next"

    goto :goto_1d

    :cond_c
    const/4 v2, 0x5

    if-ne v0, v2, :cond_14

    const/4 v0, 0x3

    const-string/jumbo v2, "throw"

    goto :goto_1d

    :cond_14
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1b

    const/4 v0, 0x2

    const-string v2, "return"

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1d
    if-eqz v2, :cond_28

    if-eq v2, p1, :cond_28

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_29

    :cond_28
    move v1, v0

    :goto_29
    return v1
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x4

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Generator"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    sget-object v2, Lorg/mozilla/javascript/ES6Generator;->GENERATOR_TAG:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    const/4 v6, 0x0

    const-string v5, "[Symbol.iterator]"

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_10
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_27

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1d

    const-string/jumbo v1, "throw"

    goto :goto_2c

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const-string v1, "return"

    goto :goto_2c

    :cond_2a
    const-string v1, "next"

    :goto_2c
    sget-object v2, Lorg/mozilla/javascript/ES6Generator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
