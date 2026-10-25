.class public abstract Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.super Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.source "NativeTypedArrayView.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lorg/mozilla/javascript/ExternalArrayData;


# static fields
.field private static final Id_BYTES_PER_ELEMENT:I = 0x5

.field private static final Id_constructor:I = 0x1

.field private static final Id_get:I = 0x3

.field private static final Id_length:I = 0x4

.field private static final Id_set:I = 0x4

.field private static final Id_subarray:I = 0x5

.field private static final Id_toString:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x5

.field protected static final MAX_PROTOTYPE_ID:I = 0x6

.field private static final SymbolId_iterator:I = 0x6

.field private static final serialVersionUID:J = -0x44e04f1c7de6ed8aL


# instance fields
.field protected final length:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    iput p3, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return-void
.end method

.method private js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    invoke-virtual {p0, p1, v0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1

    :cond_11
    aget-object v1, p3, v0

    if-nez v1, :cond_1f

    new-instance p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-direct {p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;-><init>()V

    invoke-virtual {p0, p1, v0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1

    :cond_1f
    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_129

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_29

    goto/16 :goto_129

    :cond_29
    instance-of v2, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz v2, :cond_4a

    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget p3, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    iget p2, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    :goto_3b
    iget p2, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, p2, :cond_49

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_49
    return-object p1

    :cond_4a
    instance-of v2, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v2, :cond_ba

    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 p1, 0x1

    invoke-static {p3, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_5d

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    :cond_5d
    const/4 p1, 0x2

    invoke-static {p3, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_71

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p2

    mul-int p1, p1, p2

    goto :goto_76

    :cond_71
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_76
    if-ltz v0, :cond_b3

    iget-object p2, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    array-length p3, p2

    if-gt v0, p3, :cond_b3

    if-ltz p1, :cond_ac

    add-int p3, v0, p1

    array-length p2, p2

    if-gt p3, p2, :cond_ac

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p2

    rem-int p2, v0, p2

    if-nez p2, :cond_a5

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p2

    rem-int p2, p1, p2

    if-nez p2, :cond_9e

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p2

    div-int/2addr p1, p2

    invoke-virtual {p0, v1, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1

    :cond_9e
    const-string p1, "offset and buffer must be a multiple of the byte size"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_a5
    const-string p1, "offset must be a multiple of the byte size"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_ac
    const-string p1, "length out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_b3
    const-string p1, "offset out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_ba
    instance-of p3, v1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p3, :cond_fe

    check-cast v1, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    :goto_d0
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_fd

    invoke-virtual {v1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p2, p3, :cond_f5

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, p3, :cond_e3

    goto :goto_f5

    :cond_e3
    instance-of p3, p2, Lorg/mozilla/javascript/Wrapper;

    if-eqz p3, :cond_f1

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_fa

    :cond_f1
    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_fa

    :cond_f5
    :goto_f5
    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_fa
    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    :cond_fd
    return-object p1

    :cond_fe
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isArrayObject(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_120

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->getArrayElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p3

    array-length v1, p3

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    array-length p2, p3

    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    :goto_114
    array-length p2, p3

    if-ge v0, p2, :cond_11f

    aget-object p2, p3, v0

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    :cond_11f
    return-object p1

    :cond_120
    const-string p1, "Error"

    const-string p2, "invalid argument"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_129
    :goto_129
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1
.end method

.method private js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Ljava/lang/Object;
    .registers 9

    if-gez p3, :cond_5

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr p3, v0

    :cond_5
    if-gez p4, :cond_a

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/2addr p4, v0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int/2addr p4, p3

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v1

    mul-int p3, p3, v1

    iget-object v1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    const/4 p3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, p3

    invoke-virtual {p1, p2, v1, v2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method private makeArrayBuffer(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;
    .registers 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    int-to-double v1, p3

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p3

    int-to-double v3, p3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "ArrayBuffer"

    invoke-virtual {p1, p2, p3, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    return-object p1
.end method

.method private setRange(Lorg/mozilla/javascript/NativeArray;I)V
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt p2, v0, :cond_29

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-gt v0, v1, :cond_22

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_21
    return-void

    :cond_22
    const-string p1, "offset + length out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_29
    const-string p1, "offset out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method

.method private setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge p2, v0, :cond_47

    iget v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    sub-int/2addr v0, p2

    if-gt v1, v0, :cond_3f

    iget-object v0, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object v2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2e

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_13
    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_20

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_20
    :goto_20
    iget v1, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v3, v1, :cond_3e

    add-int v1, v3, p2

    aget-object v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2e
    :goto_2e
    iget v0, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v3, v0, :cond_3e

    add-int v0, v3, p2

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3e
    return-void

    :cond_3f
    const-string/jumbo p1, "source array too long"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_47
    const-string p1, "offset out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    goto :goto_4f

    :goto_4e
    throw p1

    :goto_4f
    goto :goto_4e
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected checkIndex(I)Z
    .registers 3

    if-ltz p1, :cond_9

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public delete(I)V
    .registers 2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    check-cast p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    iget v2, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-eq v1, v2, :cond_d

    return v0

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_24

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_1e} :catch_26

    if-nez v2, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    const/4 p1, 0x1

    return p1

    :catch_26
    return v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const-string v1, "invalid arguments"

    const-string v2, "Error"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_120

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_26  #0x6
    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p2, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p3, p4, p2}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1

    :pswitch_2e  #0x5
    array-length v0, p5

    if-lez v0, :cond_4f

    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    aget-object p4, p5, v4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p4

    invoke-static {p5, v3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_48

    aget-object p5, p5, v3

    invoke-static {p5}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p5

    goto :goto_4a

    :cond_48
    iget p5, p1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    :goto_4a
    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_subarray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4f
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_54  #0x4
    array-length p2, p5

    if-lez p2, :cond_b4

    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    aget-object p2, p5, v4

    instance-of p2, p2, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    if-eqz p2, :cond_79

    invoke-static {p5, v3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_6e

    aget-object p2, p5, v3

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_6f

    :cond_6e
    const/4 p2, 0x0

    :goto_6f
    aget-object p3, p5, v4

    check-cast p3, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_79
    aget-object p2, p5, v4

    instance-of p2, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz p2, :cond_97

    invoke-static {p5, v3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_8c

    aget-object p2, p5, v3

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    goto :goto_8d

    :cond_8c
    const/4 p2, 0x0

    :goto_8d
    aget-object p3, p5, v4

    check-cast p3, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->setRange(Lorg/mozilla/javascript/NativeArray;I)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_97
    aget-object p2, p5, v4

    instance-of p2, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_a0

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_a0
    const/4 p2, 0x2

    invoke-static {p5, p2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_b4

    aget-object p2, p5, v4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    aget-object p3, p5, v3

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b4
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_b9  #0x3
    array-length p2, p5

    if-lez p2, :cond_cb

    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    aget-object p2, p5, v4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_cb
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_d0  #0x2
    invoke-virtual {p0, p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getArrayLength()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p2, :cond_ea

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ea
    :goto_ea
    if-ge v3, p2, :cond_ff

    const/16 p4, 0x2c

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_ea

    :cond_ff
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_104  #0x1
    if-eqz p4, :cond_11a

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 p4, 0xc8

    if-ge p1, p4, :cond_10f

    goto :goto_11a

    :cond_10f
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.only.from.new"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_11a
    :goto_11a
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_104  #00000001
        :pswitch_d0  #00000002
        :pswitch_b9  #00000003
        :pswitch_54  #00000004
        :pswitch_2e  #00000005
        :pswitch_26  #00000006
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BYTES_PER_ELEMENT"

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-ne v0, v3, :cond_d

    const/4 v0, 0x4

    const-string v3, "length"

    goto :goto_17

    :cond_d
    const/16 v3, 0x11

    if-ne v0, v3, :cond_15

    const-string v3, "BYTES_PER_ELEMENT"

    const/4 v0, 0x5

    goto :goto_17

    :cond_15
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_17
    if-eqz v3, :cond_22

    if-eq v3, p1, :cond_22

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    if-nez v1, :cond_2a

    invoke-super {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2a
    if-ne v1, v2, :cond_32

    const/4 p1, 0x7

    invoke-static {p1, v1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_32
    invoke-static {v2, v1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x73

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0x74

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v0, v2, :cond_35

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x67

    const/16 v8, 0x65

    if-ne v0, v7, :cond_25

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_54

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_54

    goto :goto_61

    :cond_25
    if-ne v0, v1, :cond_54

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_54

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_54

    const/4 v2, 0x4

    goto :goto_61

    :cond_35
    const/16 v2, 0x8

    if-ne v0, v2, :cond_4c

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_45

    const/4 v0, 0x5

    const-string/jumbo v1, "subarray"

    const/4 v2, 0x5

    goto :goto_56

    :cond_45
    if-ne v0, v4, :cond_54

    const-string/jumbo v1, "toString"

    const/4 v2, 0x2

    goto :goto_56

    :cond_4c
    const/16 v1, 0xb

    if-ne v0, v1, :cond_54

    const-string v1, "constructor"

    const/4 v2, 0x1

    goto :goto_56

    :cond_54
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_56
    if-eqz v1, :cond_61

    if-eq v1, p1, :cond_61

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    const/4 v2, 0x0

    :cond_61
    :goto_61
    return v2
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x6

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayElement(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayLength()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public abstract getBytesPerElement()I
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_b

    invoke-super {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, "BYTES_PER_ELEMENT"

    return-object p1

    :cond_e
    const-string p1, "length"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-eq p1, v0, :cond_b

    invoke-super {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->getBytesPerElement()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_14
    iget p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v2, :cond_12

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method protected initPrototypeId(I)V
    .registers 15

    const/4 v0, 0x6

    if-ne p1, v0, :cond_12

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    const/4 v6, 0x0

    const-string v5, "[Symbol.iterator]"

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_12
    const/4 v11, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_41

    if-eq p1, v2, :cond_3a

    if-eq p1, v0, :cond_35

    const/4 v0, 0x4

    if-eq p1, v0, :cond_30

    const/4 v0, 0x5

    if-ne p1, v0, :cond_26

    const-string/jumbo v0, "subarray"

    goto :goto_32

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const-string v0, "set"

    :goto_32
    move-object v10, v0

    const/4 v12, 0x2

    goto :goto_45

    :cond_35
    const-string v0, "get"

    move-object v10, v0

    const/4 v12, 0x1

    goto :goto_45

    :cond_3a
    const/4 v0, 0x0

    const-string/jumbo v1, "toString"

    move-object v10, v1

    const/4 v12, 0x0

    goto :goto_45

    :cond_41
    const-string v1, "constructor"

    move-object v10, v1

    const/4 v12, 0x3

    :goto_45
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getClassName()Ljava/lang/String;

    move-result-object v8

    move-object v7, p0

    move v9, p1

    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method protected abstract js_get(I)Ljava/lang/Object;
.end method

.method protected abstract js_set(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->checkIndex(I)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;-><init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V

    return-object v0

    :cond_c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setArrayElement(ILjava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v1, v2, :cond_12

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    array-length v0, p1

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-lt v0, v1, :cond_6

    goto :goto_16

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_16
    const/4 v0, 0x0

    :goto_17
    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_2a

    :try_start_1b
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_21} :catch_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catch_24
    new-instance p1, Ljava/lang/ArrayStoreException;

    invoke-direct {p1}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p1

    :cond_2a
    return-object p1
.end method
