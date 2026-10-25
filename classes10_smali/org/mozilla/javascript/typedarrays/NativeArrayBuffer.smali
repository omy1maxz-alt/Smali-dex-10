.class public Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeArrayBuffer.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "ArrayBuffer"

.field private static final ConstructorId_isView:I = -0x1

.field private static final EMPTY_BUF:[B

.field private static final Id_byteLength:I = 0x1

.field private static final Id_constructor:I = 0x1

.field private static final Id_slice:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x2

.field private static final serialVersionUID:J = 0x2b2a67072621073dL


# instance fields
.field final buffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->EMPTY_BUF:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->EMPTY_BUF:[B

    iput-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    return-void
.end method

.method public constructor <init>(D)V
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const-wide v0, 0x41dfffffffc00000L  # 2.147483647E9

    cmpl-double v2, p1, v0

    if-gez v2, :cond_68

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    const-string v2, "Negative array length "

    cmpl-double v3, p1, v0

    if-eqz v3, :cond_54

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    cmpg-double v3, p1, v0

    if-lez v3, :cond_40

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    if-ltz v0, :cond_2c

    if-nez v0, :cond_27

    sget-object p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->EMPTY_BUF:[B

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    goto :goto_2b

    :cond_27
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    :goto_2b
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length parameter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ") is too large "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static isArg([Ljava/lang/Object;I)Z
    .registers 3

    array-length v0, p0

    if-le v0, p1, :cond_f

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p0

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const-string v0, "ArrayBuffer"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    const/4 p3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p3, :cond_5f

    const-wide/16 v2, 0x0

    if-eq p2, v0, :cond_4d

    const/4 p3, 0x2

    if-ne p2, p3, :cond_43

    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    invoke-static {p5, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_2d

    aget-object p2, p5, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    :cond_2d
    invoke-static {p5, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_3a

    aget-object p2, p5, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p2

    goto :goto_3e

    :cond_3a
    iget-object p2, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length p2, p2

    int-to-double p2, p2

    :goto_3e
    invoke-virtual {p1, v2, v3, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->slice(DD)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    return-object p1

    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    invoke-static {p5, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_59

    aget-object p1, p5, v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    :cond_59
    new-instance p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p1, v2, v3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    return-object p1

    :cond_5f
    invoke-static {p5, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->isArg([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_6c

    aget-object p1, p5, v1

    instance-of p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v0, 0x0

    :goto_6d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 8

    const-string v2, "ArrayBuffer"

    const/4 v3, -0x1

    const-string v4, "isView"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 3

    const-string v0, "byteLength"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p1, 0x5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_f
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_d

    const/4 v0, 0x2

    const-string/jumbo v2, "slice"

    goto :goto_17

    :cond_d
    const/16 v2, 0xb

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    const-string v2, "constructor"

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_17
    if-eqz v2, :cond_22

    if-eq v2, p1, :cond_22

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    return v1
.end method

.method public getBuffer()[B
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "ArrayBuffer"

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "byteLength"

    return-object p1

    :cond_6
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length p1, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    if-ne p1, v0, :cond_a

    const-string/jumbo v1, "slice"

    goto :goto_18

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string v0, "constructor"

    move-object v1, v0

    const/4 v0, 0x1

    :goto_18
    const-string v2, "ArrayBuffer"

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public slice(DD)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .registers 12

    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length v1, v0

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpg-double v5, p3, v3

    if-gez v5, :cond_10

    array-length v0, v0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p3, v5

    :cond_10
    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p3

    int-to-double v0, p3

    cmpg-double p4, p1, v3

    if-gez p4, :cond_29

    iget-object p4, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length p4, p4

    int-to-double v5, p4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v5

    :cond_29
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p1

    sub-int/2addr p3, p1

    new-instance p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    int-to-double v0, p3

    invoke-direct {p2, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    iget-object p4, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget-object v0, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p4, p1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
