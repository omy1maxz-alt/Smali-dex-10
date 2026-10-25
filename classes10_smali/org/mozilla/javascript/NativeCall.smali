.class public final Lorg/mozilla/javascript/NativeCall;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeCall.java"


# static fields
.field private static final CALL_TAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x1

.field private static final serialVersionUID:J = -0x67aff2d47ec02d36L


# instance fields
.field private arguments:Lorg/mozilla/javascript/Arguments;

.field function:Lorg/mozilla/javascript/NativeFunction;

.field isStrict:Z

.field originalArgs:[Ljava/lang/Object;

.field transient parentActivationCall:Lorg/mozilla/javascript/NativeCall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Call"

    sput-object v0, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZ)V
    .registers 10

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-nez p3, :cond_d

    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_e

    :cond_d
    move-object p2, p3

    :goto_e
    iput-object p2, p0, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    iput-boolean p5, p0, Lorg/mozilla/javascript/NativeCall;->isStrict:Z

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeFunction;->getParamAndVarCount()I

    move-result p2

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result p5

    const/4 v0, 0x4

    if-eqz p2, :cond_32

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, p5, :cond_32

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v2

    array-length v3, p3

    if-ge v1, v3, :cond_2a

    aget-object v3, p3, v1

    goto :goto_2c

    :cond_2a
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2c
    invoke-virtual {p0, v2, v3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    const-string p3, "arguments"

    invoke-super {p0, p3, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_46

    if-nez p4, :cond_46

    new-instance p4, Lorg/mozilla/javascript/Arguments;

    invoke-direct {p4, p0}, Lorg/mozilla/javascript/Arguments;-><init>(Lorg/mozilla/javascript/NativeCall;)V

    iput-object p4, p0, Lorg/mozilla/javascript/NativeCall;->arguments:Lorg/mozilla/javascript/Arguments;

    invoke-virtual {p0, p3, p4, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_46
    if-eqz p2, :cond_77

    :goto_48
    if-ge p5, p2, :cond_77

    invoke-virtual {p1, p5}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p3, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p4

    if-nez p4, :cond_74

    invoke-virtual {p1, p5}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarConst(I)Z

    move-result p4

    if-eqz p4, :cond_62

    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-virtual {p0, p3, p4, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_74

    :cond_62
    instance-of p4, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz p4, :cond_6f

    move-object p4, p1

    check-cast p4, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-virtual {p4, p3}, Lorg/mozilla/javascript/InterpretedFunction;->hasFunctionNamed(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_74

    :cond_6f
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_74
    :goto_74
    add-int/lit8 p5, p5, 0x1

    goto :goto_48

    :cond_77
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeCall;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeCall;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method public defineAttributesForArguments()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCall;->arguments:Lorg/mozilla/javascript/Arguments;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/mozilla/javascript/Arguments;->defineAttributesForStrictMode()V

    :cond_7
    return-void
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    const/4 p5, 0x1

    if-ne p1, p5, :cond_2f

    const-string p1, "Call"

    if-nez p4, :cond_28

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V

    new-instance p1, Lorg/mozilla/javascript/NativeCall;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeCall;-><init>()V

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1

    :cond_28
    const-string p2, "msg.only.from.new"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_2f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 3

    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Call"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    sget-object v1, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    const-string v2, "constructor"

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
