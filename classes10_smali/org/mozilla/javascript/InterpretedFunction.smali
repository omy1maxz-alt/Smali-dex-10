.class final Lorg/mozilla/javascript/InterpretedFunction;
.super Lorg/mozilla/javascript/NativeFunction;
.source "InterpretedFunction.java"

# interfaces
.implements Lorg/mozilla/javascript/Script;


# static fields
.field private static final serialVersionUID:J = 0x783b5432cd0d5acL


# instance fields
.field idata:Lorg/mozilla/javascript/InterpreterData;

.field securityController:Lorg/mozilla/javascript/SecurityController;

.field securityDomain:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/InterpretedFunction;I)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    iget-object v0, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    aget-object p2, v0, p2

    iput-object p2, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p1, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    iput-object p2, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getSecurityController()Lorg/mozilla/javascript/SecurityController;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/SecurityController;->getDynamicSecurityDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17

    :cond_14
    if-nez p2, :cond_1c

    const/4 p2, 0x0

    :goto_17
    iput-object p1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    iput-object p2, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v0, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;-><init>(Lorg/mozilla/javascript/InterpretedFunction;I)V

    iget-object p2, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->isES6Generator:Z

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    return-object v0
.end method

.method static createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v0, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;-><init>(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)V

    iget-object p2, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->isES6Generator:Z

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    return-object v0
.end method

.method static createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/InterpretedFunction;-><init>(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v6, v0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Interpreter;->interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 10

    invoke-virtual {p0}, Lorg/mozilla/javascript/InterpretedFunction;->isScript()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v6, v0, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {p0, p1, p2, p2, v0}, Lorg/mozilla/javascript/Interpreter;->interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getDebuggableView()Lorg/mozilla/javascript/debug/DebuggableScript;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter;->getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    return-object v0
.end method

.method protected getLanguageVersion()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->languageVersion:I

    return v0
.end method

.method protected getParamAndVarCount()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method protected getParamCount()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    return v0
.end method

.method protected getParamOrVarConst(I)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method protected getParamOrVarName(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method hasFunctionNamed(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v2}, Lorg/mozilla/javascript/InterpreterData;->getFunctionCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/InterpreterData;->getFunction(I)Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v3, v2, Lorg/mozilla/javascript/InterpreterData;->declaredAsFunctionExpression:Z

    if-nez v3, :cond_21

    invoke-virtual {v2}, Lorg/mozilla/javascript/InterpreterData;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method public isScript()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/Interpreter;->resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
