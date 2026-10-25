.class public Lorg/mozilla/javascript/tools/debugger/Dim;
.super Ljava/lang/Object;
.source "Dim.java"


# static fields
.field public static final BREAK:I = 0x4

.field public static final EXIT:I = 0x5

.field public static final GO:I = 0x3

.field private static final IPROXY_COMPILE_SCRIPT:I = 0x2

.field private static final IPROXY_DEBUG:I = 0x0

.field private static final IPROXY_EVAL_SCRIPT:I = 0x3

.field private static final IPROXY_LISTEN:I = 0x1

.field private static final IPROXY_OBJECT_IDS:I = 0x7

.field private static final IPROXY_OBJECT_PROPERTY:I = 0x6

.field private static final IPROXY_OBJECT_TO_STRING:I = 0x5

.field private static final IPROXY_STRING_IS_COMPILABLE:I = 0x4

.field public static final STEP_INTO:I = 0x1

.field public static final STEP_OUT:I = 0x2

.field public static final STEP_OVER:I


# instance fields
.field private breakFlag:Z

.field private breakOnEnter:Z

.field private breakOnExceptions:Z

.field private breakOnReturn:Z

.field private callback:Lorg/mozilla/javascript/tools/debugger/GuiCallback;

.field private contextFactory:Lorg/mozilla/javascript/ContextFactory;

.field private evalFrame:Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

.field private evalRequest:Ljava/lang/String;

.field private evalResult:Ljava/lang/String;

.field private eventThreadMonitor:Ljava/lang/Object;

.field private frameIndex:I

.field private final functionNames:Ljava/util/Map;

.field private final functionToSource:Ljava/util/Map;

.field private insideInterruptLoop:Z

.field private volatile interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

.field private listener:Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

.field private monitor:Ljava/lang/Object;

.field private volatile returnValue:I

.field private scopeProvider:Lorg/mozilla/javascript/tools/debugger/ScopeProvider;

.field private sourceProvider:Lorg/mozilla/javascript/tools/debugger/SourceProvider;

.field private final urlToSourceInfo:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->frameIndex:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->eventThreadMonitor:Ljava/lang/Object;

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->urlToSourceInfo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionToSource:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1800(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/tools/debugger/ScopeProvider;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->scopeProvider:Lorg/mozilla/javascript/tools/debugger/ScopeProvider;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/Dim;->getObjectPropertyImpl(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->getObjectIdsImpl(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/ContextFactory;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->contextFactory:Lorg/mozilla/javascript/ContextFactory;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->getFunctionSource(Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->registerTopScript(Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/mozilla/javascript/tools/debugger/Dim;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakOnEnter:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Lorg/mozilla/javascript/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->handleBreakpointHit(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Lorg/mozilla/javascript/Context;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/mozilla/javascript/tools/debugger/Dim;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakFlag:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/Dim;->handleExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/mozilla/javascript/tools/debugger/Dim;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakOnReturn:Z

    return p0
.end method

.method private static collectFunctions_r(Lorg/mozilla/javascript/debug/DebuggableScript;Lorg/mozilla/javascript/ObjArray;)V
    .registers 4

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    invoke-interface {p0}, Lorg/mozilla/javascript/debug/DebuggableScript;->getFunctionCount()I

    move-result v1

    if-eq v0, v1, :cond_14

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/debug/DebuggableScript;->getFunction(I)Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->collectFunctions_r(Lorg/mozilla/javascript/debug/DebuggableScript;Lorg/mozilla/javascript/ObjArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private static do_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getDebugger()Lorg/mozilla/javascript/debug/Debugger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getDebuggerContextData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getOptimizationLevel()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4}, Lorg/mozilla/javascript/Context;->setDebugger(Lorg/mozilla/javascript/debug/Debugger;Ljava/lang/Object;)V

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    const/4 v6, 0x1

    :try_start_1b
    invoke-virtual {p0, p2, v0, v5, v4}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p2

    check-cast p2, Lorg/mozilla/javascript/Callable;

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->access$1600(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->access$1700(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p2, p0, v4, p1, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_34

    goto :goto_40

    :cond_34
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_38} :catch_3b
    .catchall {:try_start_1b .. :try_end_38} :catchall_39

    goto :goto_40

    :catchall_39
    move-exception p1

    goto :goto_4e

    :catch_3b
    move-exception p1

    :try_start_3c
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_39

    :goto_40
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/Context;->setDebugger(Lorg/mozilla/javascript/debug/Debugger;Ljava/lang/Object;)V

    if-nez v0, :cond_4d

    const-string v0, "null"

    :cond_4d
    return-object v0

    :goto_4e
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/Context;->setDebugger(Lorg/mozilla/javascript/debug/Debugger;Ljava/lang/Object;)V

    throw p1
.end method

.method private functionSource(Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionToSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    return-object p1
.end method

.method private static getAllFunctions(Lorg/mozilla/javascript/debug/DebuggableScript;)[Lorg/mozilla/javascript/debug/DebuggableScript;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    invoke-static {p0, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->collectFunctions_r(Lorg/mozilla/javascript/debug/DebuggableScript;Lorg/mozilla/javascript/ObjArray;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p0

    new-array p0, p0, [Lorg/mozilla/javascript/debug/DebuggableScript;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    return-object p0
.end method

.method private getFunctionSource(Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;
    .registers 5

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->functionSource(Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object v0

    if-nez v0, :cond_2d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->getNormalizedUrl(Lorg/mozilla/javascript/debug/DebuggableScript;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->sourceInfo(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v2

    if-nez v2, :cond_2d

    invoke-interface {p1}, Lorg/mozilla/javascript/debug/DebuggableScript;->isGeneratedScript()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->loadSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    move-object v0, p1

    :goto_1d
    invoke-interface {v0}, Lorg/mozilla/javascript/debug/DebuggableScript;->getParent()Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object v2

    if-nez v2, :cond_2b

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->registerTopScript(Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->functionSource(Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object v0

    goto :goto_2d

    :cond_2b
    move-object v0, v2

    goto :goto_1d

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private getNormalizedUrl(Lorg/mozilla/javascript/debug/DebuggableScript;)Ljava/lang/String;
    .registers 13

    invoke-interface {p1}, Lorg/mozilla/javascript/debug/DebuggableScript;->getSourceName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "<stdin>"

    goto :goto_50

    :cond_9
    const/16 v0, 0x23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    :goto_13
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-gez v6, :cond_1a

    goto :goto_41

    :cond_1a
    add-int/lit8 v7, v6, 0x1

    move v8, v7

    :goto_1d
    if-eq v8, v1, :cond_2f

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-gt v10, v9, :cond_2f

    const/16 v10, 0x39

    if-le v9, v10, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_2f
    :goto_2f
    const-string v9, "(eval)"

    if-eq v8, v7, :cond_3e

    const/4 v7, 0x6

    invoke-virtual {v9, v3, p1, v8, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3e

    add-int/lit8 v8, v8, 0x6

    move v4, v8

    goto :goto_3f

    :cond_3e
    move-object v9, v2

    :goto_3f
    if-nez v9, :cond_51

    :goto_41
    if-eqz v5, :cond_50

    if-eq v4, v1, :cond_4c

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_50
    :goto_50
    return-object p1

    :cond_51
    if-nez v5, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13
.end method

.method private getObjectIdsImpl(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9

    instance-of p1, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_48

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, p1, :cond_9

    goto :goto_48

    :cond_9
    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    instance-of p1, p2, Lorg/mozilla/javascript/debug/DebuggableObject;

    if-eqz p1, :cond_17

    move-object p1, p2

    check-cast p1, Lorg/mozilla/javascript/debug/DebuggableObject;

    invoke-interface {p1}, Lorg/mozilla/javascript/debug/DebuggableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object p1

    goto :goto_1b

    :cond_17
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object p1

    :goto_1b
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    if-eqz p2, :cond_2e

    add-int/lit8 v3, v3, 0x1

    :cond_2e
    if-eqz v3, :cond_47

    array-length v4, p1

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p1

    invoke-static {p1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_3f

    const-string p1, "__proto__"

    aput-object p1, v4, v2

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    if-eqz p2, :cond_46

    const-string p1, "__parent__"

    aput-object p1, v4, v1

    :cond_46
    move-object p1, v4

    :cond_47
    return-object p1

    :cond_48
    :goto_48
    sget-object p1, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    return-object p1
.end method

.method private getObjectPropertyImpl(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_37

    check-cast p3, Ljava/lang/String;

    const-string/jumbo p1, "this"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_47

    :cond_12
    const-string p1, "__proto__"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    goto :goto_47

    :cond_1f
    const-string p1, "__parent__"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    goto :goto_47

    :cond_2c
    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, p1, :cond_47

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_47

    :cond_37
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p2

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, p1, :cond_47

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_47
    :goto_47
    return-object p2
.end method

.method private handleBreakpointHit(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Lorg/mozilla/javascript/Context;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakFlag:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->interrupted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V
    .registers 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakOnExceptions:Z

    if-eqz v0, :cond_14

    invoke-virtual {p3}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$300(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;)Ljava/lang/Throwable;

    move-result-object v1

    if-eq v1, p2, :cond_14

    invoke-direct {p0, p1, p3, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->interrupted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/Throwable;)V

    invoke-static {v0, p2}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$302(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_14
    return-void
.end method

.method private interrupted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/Throwable;)V
    .registers 12

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->callback:Lorg/mozilla/javascript/tools/debugger/GuiCallback;

    invoke-interface {v1}, Lorg/mozilla/javascript/tools/debugger/GuiCallback;->isGuiEventThread()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$402(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;Z)Z

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->eventThreadMonitor:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1b

    :try_start_14
    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    if-eqz v5, :cond_27

    monitor-exit v2

    const/4 v2, 0x1

    goto :goto_2b

    :cond_1b
    :goto_1b
    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_105

    if-eqz v5, :cond_27

    :try_start_1f
    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->eventThreadMonitor:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_25
    .catchall {:try_start_1f .. :try_end_24} :catchall_105

    goto :goto_1b

    :catch_25
    :try_start_25
    monitor-exit v2

    return-void

    :cond_27
    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_105

    const/4 v2, 0x0

    :goto_2b
    if-eqz v2, :cond_2e

    return-void

    :cond_2e
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    if-nez v2, :cond_35

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_35
    const/4 v2, 0x0

    :try_start_36
    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->frameIndex:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez p3, :cond_49

    move-object p3, v2

    goto :goto_4d

    :cond_49
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_4d
    const/4 v6, -0x1

    if-nez v1, :cond_a8

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_f5

    :try_start_53
    iget-boolean v7, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->insideInterruptLoop:Z

    if-eqz v7, :cond_5a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5a
    iput-boolean v4, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->insideInterruptLoop:Z

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalRequest:Ljava/lang/String;

    iput v6, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    iget-object v7, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->callback:Lorg/mozilla/javascript/tools/debugger/GuiCallback;

    invoke-interface {v7, p2, v5, p3}, Lorg/mozilla/javascript/tools/debugger/GuiCallback;->enterInterrupt(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_53 .. :try_end_65} :catchall_a5

    :cond_65
    :goto_65
    :try_start_65
    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6a} :catch_96
    .catchall {:try_start_65 .. :try_end_6a} :catchall_94

    :try_start_6a
    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalRequest:Ljava/lang/String;

    if-eqz p2, :cond_8d

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalResult:Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_94

    :try_start_70
    iget-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalFrame:Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->do_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalResult:Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_82

    :try_start_78
    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalRequest:Ljava/lang/String;

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalFrame:Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    goto :goto_65

    :catchall_82
    move-exception p1

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalRequest:Ljava/lang/String;

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalFrame:Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    throw p1

    :cond_8d
    iget p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    if-eq p2, v6, :cond_65

    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    goto :goto_9e

    :catchall_94
    move-exception p1

    goto :goto_a2

    :catch_96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_9d
    .catchall {:try_start_78 .. :try_end_9d} :catchall_94

    const/4 p1, -0x1

    :goto_9e
    :try_start_9e
    iput-boolean v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->insideInterruptLoop:Z

    monitor-exit v1

    goto :goto_bb

    :goto_a2
    iput-boolean v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->insideInterruptLoop:Z

    throw p1

    :catchall_a5
    move-exception p1

    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw p1

    :cond_a8
    iput v6, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->callback:Lorg/mozilla/javascript/tools/debugger/GuiCallback;

    invoke-interface {p1, p2, v5, p3}, Lorg/mozilla/javascript/tools/debugger/GuiCallback;->enterInterrupt(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V

    :catch_af
    :goto_af
    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_f5

    if-ne p1, v6, :cond_b9

    :try_start_b3
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->callback:Lorg/mozilla/javascript/tools/debugger/GuiCallback;

    invoke-interface {p1}, Lorg/mozilla/javascript/tools/debugger/GuiCallback;->dispatchNextGuiEvent()V
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_b8} :catch_af
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_f5

    goto :goto_af

    :cond_b9
    :try_start_b9
    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    :goto_bb
    if-eqz p1, :cond_dc

    if-eq p1, v4, :cond_d5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_c3

    goto :goto_e6

    :cond_c3
    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result p1

    if-le p1, v4, :cond_e6

    invoke-static {v0, v4}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1402(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;Z)Z

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1502(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;I)I

    goto :goto_e6

    :cond_d5
    invoke-static {v0, v4}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1402(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;Z)Z

    invoke-static {v0, v6}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1502(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;I)I

    goto :goto_e6

    :cond_dc
    invoke-static {v0, v4}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1402(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;Z)Z

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result p1

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1502(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;I)I
    :try_end_e6
    .catchall {:try_start_b9 .. :try_end_e6} :catchall_f5

    :cond_e6
    :goto_e6
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->eventThreadMonitor:Ljava/lang/Object;

    monitor-enter p1

    :try_start_e9
    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->eventThreadMonitor:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_f2
    move-exception p2

    monitor-exit p1
    :try_end_f4
    .catchall {:try_start_e9 .. :try_end_f4} :catchall_f2

    throw p2

    :catchall_f5
    move-exception p1

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->eventThreadMonitor:Ljava/lang/Object;

    monitor-enter p2

    :try_start_f9
    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    iget-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->eventThreadMonitor:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_102

    throw p1

    :catchall_102
    move-exception p1

    :try_start_103
    monitor-exit p2
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    throw p1

    :catchall_105
    move-exception p1

    :try_start_106
    monitor-exit v2
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    goto :goto_109

    :goto_108
    throw p1

    :goto_109
    goto :goto_108
.end method

.method private loadSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_d
    const/16 v0, 0x3a

    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_b5

    if-gez v0, :cond_9a

    :try_start_16
    const-string/jumbo v0, "~/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "user.home"

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_a3

    :cond_43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_55

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_53} :catch_55
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_53} :catch_b5

    move-object v0, v2

    goto :goto_a3

    :catch_55
    :cond_55
    :try_start_55
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9a

    :cond_6f
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9a

    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9a
    :goto_9a
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_a3} :catch_b5

    :goto_a3
    :try_start_a3
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_b0

    :try_start_ac
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_d4

    :catchall_b0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b5} :catch_b5

    :catch_b5
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load source from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_d4
    return-object v1
.end method

.method private registerTopScript(Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V
    .registers 9

    invoke-interface {p1}, Lorg/mozilla/javascript/debug/DebuggableScript;->isTopLevel()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->getNormalizedUrl(Lorg/mozilla/javascript/debug/DebuggableScript;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->getAllFunctions(Lorg/mozilla/javascript/debug/DebuggableScript;)[Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->sourceProvider:Lorg/mozilla/javascript/tools/debugger/SourceProvider;

    if-eqz v2, :cond_19

    invoke-interface {v2, p1}, Lorg/mozilla/javascript/tools/debugger/SourceProvider;->getSource(Lorg/mozilla/javascript/debug/DebuggableScript;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    move-object p2, p1

    :cond_19
    new-instance p1, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v0, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;-><init>(Ljava/lang/String;[Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;Lorg/mozilla/javascript/tools/debugger/Dim$1;)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->urlToSourceInfo:Ljava/util/Map;

    monitor-enter p2

    :try_start_22
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->urlToSourceInfo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    if-eqz v2, :cond_2f

    invoke-static {p1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->access$200(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    :cond_2f
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->urlToSourceInfo:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_36
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->functionSourcesTop()I

    move-result v3

    if-eq v2, v3, :cond_52

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->functionSource(I)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionNames:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_52
    monitor-exit p2
    :try_end_53
    .catchall {:try_start_22 .. :try_end_53} :catchall_71

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionToSource:Ljava/util/Map;

    monitor-enter v2

    :goto_56
    :try_start_56
    array-length p2, v1

    if-eq v0, p2, :cond_67

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->functionSource(I)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object p2

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionToSource:Ljava/util/Map;

    aget-object v4, v1, v0

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_6e

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->callback:Lorg/mozilla/javascript/tools/debugger/GuiCallback;

    invoke-interface {p2, p1}, Lorg/mozilla/javascript/tools/debugger/GuiCallback;->updateSourceText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    return-void

    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1

    :catchall_71
    move-exception p1

    :try_start_72
    monitor-exit p2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p1

    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_7b

    :goto_7a
    throw p1

    :goto_7b
    goto :goto_7a
.end method


# virtual methods
.method public attachTo(Lorg/mozilla/javascript/ContextFactory;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->detach()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->contextFactory:Lorg/mozilla/javascript/ContextFactory;

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->listener:Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ContextFactory;->addListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V

    return-void
.end method

.method public clearAllBreakpoints()V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->urlToSourceInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->removeAllBreakpoints()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public compileScript(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$502(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$602(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$700(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)V

    return-void
.end method

.method public contextSwitch(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->frameIndex:I

    return-void
.end method

.method public currentContextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->interruptedContextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    return-object v0
.end method

.method public detach()V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->listener:Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->contextFactory:Lorg/mozilla/javascript/ContextFactory;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ContextFactory;->removeListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->contextFactory:Lorg/mozilla/javascript/ContextFactory;

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->listener:Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    :cond_e
    return-void
.end method

.method public dispose()V
    .registers 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->detach()V

    return-void
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "undefined"

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->currentContextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object v1

    if-eqz v1, :cond_53

    iget v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->frameIndex:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result v3

    if-lt v2, v3, :cond_15

    goto :goto_53

    :cond_15
    iget v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->frameIndex:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->getFrame(I)Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    move-result-object v2

    invoke-static {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$400(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0, v2, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->do_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    :cond_2a
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2d
    iget-boolean v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->insideInterruptLoop:Z

    if-eqz v3, :cond_4d

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalRequest:Ljava/lang/String;

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalFrame:Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_50

    :cond_3a
    :try_start_3a
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3f} :catch_44
    .catchall {:try_start_3a .. :try_end_3f} :catchall_50

    :try_start_3f
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalRequest:Ljava/lang/String;

    if-nez p1, :cond_3a

    goto :goto_4b

    :catch_44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_4b
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->evalResult:Ljava/lang/String;

    :cond_4d
    monitor-exit v1

    move-object p1, v0

    :goto_4f
    return-object p1

    :catchall_50
    move-exception p1

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_50

    throw p1

    :cond_53
    :goto_53
    return-object v0
.end method

.method public evalScript(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$502(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$602(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$700(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)V

    return-void
.end method

.method public functionNames()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->urlToSourceInfo:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public functionSourceByName(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->functionNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    return-object p1
.end method

.method public getObjectIds(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$802(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$700(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)V

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$1300(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$802(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$1102(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$700(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)V

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$1200(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public go()V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_4
    iput v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$802(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$700(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)V

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$900(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBreak()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakFlag:Z

    return-void
.end method

.method public setBreakOnEnter(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakOnEnter:Z

    return-void
.end method

.method public setBreakOnExceptions(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakOnExceptions:Z

    return-void
.end method

.method public setBreakOnReturn(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->breakOnReturn:Z

    return-void
.end method

.method public setGuiCallback(Lorg/mozilla/javascript/tools/debugger/GuiCallback;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->callback:Lorg/mozilla/javascript/tools/debugger/GuiCallback;

    return-void
.end method

.method public setReturnValue(I)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->returnValue:I

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->monitor:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setScopeProvider(Lorg/mozilla/javascript/tools/debugger/ScopeProvider;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->scopeProvider:Lorg/mozilla/javascript/tools/debugger/ScopeProvider;

    return-void
.end method

.method public setSourceProvider(Lorg/mozilla/javascript/tools/debugger/SourceProvider;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->sourceProvider:Lorg/mozilla/javascript/tools/debugger/SourceProvider;

    return-void
.end method

.method public sourceInfo(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim;->urlToSourceInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    return-object p1
.end method

.method public stringIsCompilableUnit(Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$602(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$700(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)V

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->access$1000(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)Z

    move-result p1

    return p1
.end method
