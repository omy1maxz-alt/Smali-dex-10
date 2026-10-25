.class public Lorg/mozilla/javascript/IdFunctionObject;
.super Lorg/mozilla/javascript/BaseFunction;
.source "IdFunctionObject.java"


# static fields
.field private static final serialVersionUID:J = -0x4a002e39945f012bL


# instance fields
.field private arity:I

.field private functionName:Ljava/lang/String;

.field private final idcall:Lorg/mozilla/javascript/IdFunctionCall;

.field private final methodId:I

.field private final tag:Ljava/lang/Object;

.field private useCallAsConstructor:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;II)V
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    if-ltz p4, :cond_e

    iput-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    iput-object p2, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    iput p3, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    iput p4, p0, Lorg/mozilla/javascript/IdFunctionObject;->arity:I

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lorg/mozilla/javascript/BaseFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    if-ltz p5, :cond_19

    if-eqz p4, :cond_13

    iput-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    iput-object p2, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    iput p3, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    iput p5, p0, Lorg/mozilla/javascript/IdFunctionObject;->arity:I

    iput-object p4, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static equalObjectGraphs(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/EqualObjectGraphs;)Z
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    iget v1, p1, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    if-ne v0, v1, :cond_1a

    iget-object v0, p1, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    iget-object p1, p1, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    invoke-virtual {p2, p0, p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method


# virtual methods
.method public final addAsProperty(Lorg/mozilla/javascript/Scriptable;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/IdFunctionCall;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    iget-boolean p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->useCallAsConstructor:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    iget-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    const-string p2, "msg.not.ctor"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method decompile(II)Ljava/lang/String;
    .registers 5

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

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() { "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string p2, "[native code for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    instance-of v1, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_37

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", arity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getArity()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4f

    const-string p2, "]\n"

    goto :goto_51

    :cond_4f
    const-string p2, "] }\n"

    :goto_51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public exportAsScopeProperty()V
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->addAsProperty(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public getArity()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->arity:I

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getLength()I
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getArity()I

    move-result v0

    return v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_11
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasTag(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_10

    :cond_8
    const/4 p1, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_10
    return p1
.end method

.method public initFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    if-eqz p1, :cond_10

    if-eqz p2, :cond_a

    iput-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->useCallAsConstructor:Z

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    return-void
.end method

.method public final methodId()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    return v0
.end method

.method public final unknown()Ljava/lang/RuntimeException;
    .registers 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BAD FUNCTION ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MASTER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
