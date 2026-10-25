.class Lorg/mozilla/javascript/Interpreter$CallFrame;
.super Ljava/lang/Object;
.source "Interpreter.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x27772e38498fb682L


# instance fields
.field final debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

.field final emptyStackTop:I

.field final fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

.field frameIndex:I

.field frozen:Z

.field final idata:Lorg/mozilla/javascript/InterpreterData;

.field isContinuationsTopFrame:Z

.field final localShift:I

.field parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field pc:I

.field pcPrevBranch:I

.field pcSourceLineStart:I

.field result:Ljava/lang/Object;

.field resultDbl:D

.field sDbl:[D

.field savedCallOp:I

.field savedStackTop:I

.field scope:Lorg/mozilla/javascript/Scriptable;

.field stack:[Ljava/lang/Object;

.field stackAttributes:[I

.field final thisObj:Lorg/mozilla/javascript/Scriptable;

.field throwable:Ljava/lang/Object;

.field final useActivation:Z

.field final varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;


# direct methods
.method public static synthetic $r8$lambda$7J5USje4ODl0iavEbJ5_1cPxuhg(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;Lorg/mozilla/javascript/EqualObjectGraphs;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->lambda$equalsInTopScope$1(Ljava/lang/Object;Lorg/mozilla/javascript/EqualObjectGraphs;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jLvmDhQ_YxdZ4SAl4rQ0-Nk9h1U(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/mozilla/javascript/Interpreter$CallFrame;->lambda$equals$0(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iput-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p1, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    if-eqz v1, :cond_10

    invoke-interface {v1, p1, v0}, Lorg/mozilla/javascript/debug/Debugger;->getFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/debug/DebugFrame;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iput-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    iget v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v4, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput-object p3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iput-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p4, :cond_36

    goto :goto_3a

    :cond_36
    iget p2, p4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/lit8 v2, p2, 0x1

    :goto_3a
    iput v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getMaximumInterpreterStackDepth()I

    move-result p1

    if-gt v2, p1, :cond_4d

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    iget p1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    iput p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    iput v4, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    return-void

    :cond_4d
    const-string p1, "Exceeded maximum stack depth"

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method private static equals(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/EqualObjectGraphs;)Ljava/lang/Boolean;
    .registers 4

    :goto_0
    if-ne p0, p1, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    if-eqz p0, :cond_18

    if-nez p1, :cond_a

    goto :goto_18

    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->fieldsEqual(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/EqualObjectGraphs;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_13
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_0

    :cond_18
    :goto_18
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private equalsInTopScope(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mozilla/javascript/EqualObjectGraphs;->withThreadLocal(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method private fieldsEqual(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/EqualObjectGraphs;)Z
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    if-ne v0, v1, :cond_52

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-ne v0, v1, :cond_52

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->access$200(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p2, v0, p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    const/4 p1, 0x1

    goto :goto_53

    :cond_52
    const/4 p1, 0x0

    :goto_53
    return p1
.end method

.method private isStrictTopFrame()Z
    .registers 3

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v1, :cond_a

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    return v0

    :cond_a
    move-object v0, v1

    goto :goto_1
.end method

.method private synthetic lambda$equals$0(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->equalsInTopScope(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$equalsInTopScope$1(Ljava/lang/Object;Lorg/mozilla/javascript/EqualObjectGraphs;)Ljava/lang/Boolean;
    .registers 3

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->equals(Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/EqualObjectGraphs;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_d} :catch_2f

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    return-object v0

    :catch_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    instance-of v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v0, :cond_3f

    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v2

    :try_start_8
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->equalsInTopScope(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_3a

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return p1

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    new-instance v1, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->isStrictTopFrame()Z

    move-result v6

    move-object v3, v4

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_3a

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return p1

    :catchall_3a
    move-exception p1

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    throw p1

    :cond_3f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    :goto_3
    mul-int/lit8 v0, v0, 0x1f

    iget v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v3}, Lorg/mozilla/javascript/InterpreterData;->icodeHashCode()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v2, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v2, :cond_1e

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x8

    if-lt v1, v4, :cond_1c

    goto :goto_1e

    :cond_1c
    move v1, v3

    goto :goto_3

    :cond_1e
    :goto_1e
    return v0
.end method

.method initializeArgs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DII)V
    .registers 11

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    if-eqz p4, :cond_b

    invoke-static {p3, p4, p5, p6}, Lorg/mozilla/javascript/Interpreter;->access$000([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p3

    :cond_b
    const/4 p4, 0x0

    const/4 p5, 0x0

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v0, :cond_3c

    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_31

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    invoke-static {v2, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->createArrowFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_49

    :cond_31
    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    invoke-static {v2, p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_49

    :cond_3c
    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v3, v3, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {v0, v2, p1, p2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    :cond_49
    :goto_49
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p2, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    const/4 v2, 0x1

    if-eqz v0, :cond_73

    iget v0, p2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v0, :cond_5b

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez p2, :cond_5b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5b
    const/4 p2, 0x0

    :goto_5c
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    array-length v3, v0

    if-ge p2, v3, :cond_73

    aget-object v0, v0, p2

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-ne v0, v2, :cond_70

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {p1, v0, v3, p2}, Lorg/mozilla/javascript/Interpreter;->access$100(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    :cond_70
    add-int/lit8 p2, p2, 0x1

    goto :goto_5c

    :cond_73
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p2, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v0, p1

    add-int/2addr v0, v2

    if-eq p2, v0, :cond_82

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_82
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    new-array p1, p2, [I

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    new-array p1, p2, [D

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {p1}, Lorg/mozilla/javascript/InterpreterData;->getParamAndVarCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_95
    if-ge p2, p1, :cond_a8

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/InterpreterData;->getParamOrVarConst(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/16 v2, 0xd

    aput v2, v0, p2

    :cond_a5
    add-int/lit8 p2, p2, 0x1

    goto :goto_95

    :cond_a8
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    if-le p1, p6, :cond_af

    goto :goto_b0

    :cond_af
    move p6, p1

    :goto_b0
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    invoke-static {p3, p5, p1, v1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_bc

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    invoke-static {p4, p5, p1, v1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_bc
    :goto_bc
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    if-eq p6, p1, :cond_cb

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object p2, p1, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_bc

    :cond_cb
    return-void
.end method
