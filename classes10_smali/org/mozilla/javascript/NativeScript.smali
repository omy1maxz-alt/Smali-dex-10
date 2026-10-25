.class Lorg/mozilla/javascript/NativeScript;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeScript.java"


# static fields
.field private static final Id_compile:I = 0x3

.field private static final Id_constructor:I = 0x1

.field private static final Id_exec:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final MAX_PROTOTYPE_ID:I = 0x4

.field private static final SCRIPT_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x5e4d0c813cab5264L


# instance fields
.field private script:Lorg/mozilla/javascript/Script;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Script"

    sput-object v0, Lorg/mozilla/javascript/NativeScript;->SCRIPT_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/javascript/Script;)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    return-void
.end method

.method private static compile(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;
    .registers 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    aput v0, v1, v2

    const-string v3, "<Script object>"

    :cond_10
    move-object v8, v3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v7

    const/4 v6, 0x0

    aget v9, v1, v2

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p0

    return-object p0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeScript;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeScript;-><init>(Lorg/mozilla/javascript/Script;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/NativeScript;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/NativeScript;

    return-object p0

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object p3, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    if-eqz p3, :cond_9

    invoke-interface {p3, p1, p2}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    const-string p1, "msg.script.is.not.constructor"

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method decompile(II)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    instance-of v1, v0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->decompile(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lorg/mozilla/javascript/NativeScript;->SCRIPT_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/BaseFunction;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-eq v0, v1, :cond_50

    const/4 p3, 0x2

    if-eq v0, p3, :cond_42

    const/4 p3, 0x3

    if-eq v0, p3, :cond_33

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const-string p1, "msg.cant.call.indirect"

    const-string p2, "exec"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_33
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeScript;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;

    move-result-object p1

    invoke-static {p5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeScript;->compile(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;

    move-result-object p2

    iput-object p2, p1, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    return-object p1

    :cond_42
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeScript;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;

    move-result-object p1

    iget-object p1, p1, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    if-nez p1, :cond_4b

    return-object v2

    :cond_4b
    invoke-virtual {p2, p1, v3}, Lorg/mozilla/javascript/Context;->decompileScript(Lorg/mozilla/javascript/Script;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_50
    array-length p1, p5

    if-nez p1, :cond_54

    goto :goto_5a

    :cond_54
    aget-object p1, p5, v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_5a
    invoke-static {p2, v2}, Lorg/mozilla/javascript/NativeScript;->compile(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/NativeScript;

    invoke-direct {p2, p1}, Lorg/mozilla/javascript/NativeScript;-><init>(Lorg/mozilla/javascript/Script;)V

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    return-object p2
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_23

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_25

    :cond_16
    const/4 v1, 0x2

    const-string/jumbo v0, "toString"

    goto :goto_25

    :cond_1b
    const/4 v1, 0x3

    const-string v0, "compile"

    goto :goto_25

    :cond_1f
    const/4 v1, 0x1

    const-string v0, "constructor"

    goto :goto_25

    :cond_23
    const-string v0, "exec"

    :goto_25
    if-eqz v0, :cond_30

    if-eq v0, p1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    return v2
.end method

.method public getArity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Script"

    return-object v0
.end method

.method public getLength()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1a

    const/4 v1, 0x4

    if-ne p1, v1, :cond_10

    const-string v1, "exec"

    goto :goto_25

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const-string v0, "compile"

    goto :goto_23

    :cond_1d
    const-string/jumbo v1, "toString"

    goto :goto_25

    :cond_21
    const-string v0, "constructor"

    :goto_23
    move-object v1, v0

    const/4 v0, 0x1

    :goto_25
    sget-object v2, Lorg/mozilla/javascript/NativeScript;->SCRIPT_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
