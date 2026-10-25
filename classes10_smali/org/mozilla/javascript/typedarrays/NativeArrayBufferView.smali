.class public abstract Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeArrayBufferView.java"


# static fields
.field private static final Id_buffer:I = 0x1

.field private static final Id_byteLength:I = 0x3

.field private static final Id_byteOffset:I = 0x2

.field protected static final MAX_INSTANCE_ID:I = 0x3

.field private static final serialVersionUID:J = 0x5f8a921134035913L

.field private static useLittleEndian:Ljava/lang/Boolean;


# instance fields
.field protected final arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

.field protected final byteLength:I

.field protected final offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    iput p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-void
.end method

.method protected static isArg([Ljava/lang/Object;I)Z
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

.method protected static useLittleEndian()Z
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->useLittleEndian:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->useLittleEndian:Ljava/lang/Boolean;

    :cond_18
    sget-object v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->useLittleEndian:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    const-string v2, "buffer"

    goto :goto_27

    :cond_c
    const/16 v2, 0xa

    if-ne v0, v2, :cond_25

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_1d

    const/4 v0, 0x3

    const-string v2, "byteLength"

    goto :goto_27

    :cond_1d
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_25

    const/4 v0, 0x2

    const-string v2, "byteOffset"

    goto :goto_27

    :cond_25
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_27
    if-eqz v2, :cond_32

    if-eq v2, p1, :cond_32

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_33

    :cond_32
    move v1, v0

    :goto_33
    if-nez v1, :cond_3a

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3a
    const/4 p1, 0x5

    invoke-static {p1, v1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method public getBuffer()Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    return v0
.end method

.method public getByteOffset()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    return v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p1, "byteLength"

    return-object p1

    :cond_11
    const-string p1, "byteOffset"

    return-object p1

    :cond_14
    const-string p1, "buffer"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_15
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1c
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
