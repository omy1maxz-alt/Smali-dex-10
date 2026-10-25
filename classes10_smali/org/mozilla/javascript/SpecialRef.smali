.class Lorg/mozilla/javascript/SpecialRef;
.super Lorg/mozilla/javascript/Ref;
.source "SpecialRef.java"


# static fields
.field private static final SPECIAL_NONE:I = 0x0

.field private static final SPECIAL_PARENT:I = 0x2

.field private static final SPECIAL_PROTO:I = 0x1

.field private static final serialVersionUID:J = -0x686214493d5c9e97L


# instance fields
.field private name:Ljava/lang/String;

.field private target:Lorg/mozilla/javascript/Scriptable;

.field private type:I


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/Ref;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iput p2, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    iput-object p3, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    return-void
.end method

.method static createSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Ref;
    .registers 5

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-eqz p1, :cond_2d

    const-string p2, "__proto__"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_19

    :cond_10
    const-string p2, "__parent__"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    const/4 p2, 0x2

    :goto_19
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p2, 0x0

    :cond_21
    new-instance p0, Lorg/mozilla/javascript/SpecialRef;

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/SpecialRef;-><init>(Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;)V

    return-object p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public delete(Lorg/mozilla/javascript/Context;)Z
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->deleteObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-eqz v0, :cond_1d

    const/4 p1, 0x1

    if-eq v0, p1, :cond_16

    const/4 p1, 0x2

    if-ne v0, p1, :cond_11

    iget-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_16
    iget-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_1d
    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public has(Lorg/mozilla/javascript/Context;)Z
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method public set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-eqz v0, :cond_6f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_10

    :cond_b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_10
    :goto_10
    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    if-eqz p2, :cond_34

    move-object v0, p2

    :cond_17
    iget-object v2, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    if-eq v0, v2, :cond_2b

    iget v2, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-ne v2, v1, :cond_24

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_28

    :cond_24
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :goto_28
    if-nez v0, :cond_17

    goto :goto_34

    :cond_2b
    iget-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    const-string p2, "msg.cyclic.value"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_34
    :goto_34
    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-ne v0, v1, :cond_69

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_63

    const-string p1, "object"

    if-eqz p3, :cond_4e

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5a

    :cond_4e
    iget-object p3, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    :cond_5a
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_5d
    iget-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_6e

    :cond_63
    iget-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_6e

    :cond_69
    iget-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    :goto_6e
    return-object p2

    :cond_6f
    iget-object p2, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {p2, v0, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
