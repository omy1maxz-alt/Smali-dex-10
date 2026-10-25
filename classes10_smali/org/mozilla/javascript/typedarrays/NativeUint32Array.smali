.class public Lorg/mozilla/javascript/typedarrays/NativeUint32Array;
.super Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.source "NativeUint32Array.java"


# static fields
.field private static final BYTES_PER_ELEMENT:I = 0x4

.field private static final CLASS_NAME:Ljava/lang/String; = "Uint32Array"

.field private static final serialVersionUID:J = -0x6eda7a5b5f47b7f4L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4010000000000000L  # 4.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>(D)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V
    .registers 5

    mul-int/lit8 v0, p3, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;III)V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;-><init>()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method protected bridge synthetic construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    move-result-object p1

    return-object p1
.end method

.method protected construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeUint32Array;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Long;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getBytesPerElement()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Uint32Array"

    return-object v0
.end method

.method protected js_get(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object v0, v0, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    mul-int/lit8 p1, p1, 0x4

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p1, v1

    invoke-static {}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->useLittleEndian()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint32([BIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected js_set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_9
    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p2, p2, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    mul-int/lit8 p1, p1, 0x4

    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p1, v2

    invoke-static {}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->useLittleEndian()Z

    move-result v2

    invoke-static {p2, p1, v0, v1, v2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint32([BIJZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    move-result-object p1

    return-object p1
.end method

.method protected realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeUint32Array;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    return-object p1

    :cond_7
    invoke-static {p2}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
