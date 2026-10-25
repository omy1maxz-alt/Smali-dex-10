.class public Lorg/mozilla/javascript/typedarrays/NativeDataView;
.super Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;
.source "NativeDataView.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "DataView"

.field private static final Id_constructor:I = 0x1

.field private static final Id_getFloat32:I = 0x8

.field private static final Id_getFloat64:I = 0x9

.field private static final Id_getInt16:I = 0x4

.field private static final Id_getInt32:I = 0x6

.field private static final Id_getInt8:I = 0x2

.field private static final Id_getUint16:I = 0x5

.field private static final Id_getUint32:I = 0x7

.field private static final Id_getUint8:I = 0x3

.field private static final Id_setFloat32:I = 0x10

.field private static final Id_setFloat64:I = 0x11

.field private static final Id_setInt16:I = 0xc

.field private static final Id_setInt32:I = 0xe

.field private static final Id_setInt8:I = 0xa

.field private static final Id_setUint16:I = 0xd

.field private static final Id_setUint32:I = 0xf

.field private static final Id_setUint8:I = 0xb

.field private static final MAX_PROTOTYPE_ID:I = 0x11

.field private static final serialVersionUID:J = 0x13d128f92f39bdf8L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-void
.end method

.method private static determinePos([Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0

    :cond_18
    const-string p0, "offset out of range"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1f
    return v0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance p0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    invoke-direct {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;-><init>()V

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static js_constructor([Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeDataView;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_70

    aget-object v1, p0, v0

    instance-of v1, v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    if-eqz v1, :cond_70

    aget-object v1, p0, v0

    check-cast v1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const-string v4, "offset out of range"

    if-eqz v3, :cond_30

    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    goto :goto_30

    :cond_2b
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_30
    :goto_30
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_48

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    goto :goto_52

    :cond_48
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4d
    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_52
    if-ltz p0, :cond_69

    if-ltz v0, :cond_64

    add-int v2, v0, p0

    invoke-virtual {v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->getLength()I

    move-result v3

    if-gt v2, v3, :cond_64

    new-instance v2, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    invoke-direct {v2, v1, v0, p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v2

    :cond_64
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_69
    const-string p0, "length out of range"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_70
    const-string p0, "TypeError"

    const-string v0, "Missing parameters"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->rangeCheck(II)V

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_19

    if-le p1, v1, :cond_19

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const/4 p2, 0x4

    if-eq p1, p2, :cond_33

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2d

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readFloat64([BIZ)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_33
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readFloat32([BIZ)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->rangeCheck(II)V

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-le p1, v1, :cond_1a

    aget-object p3, p3, v1

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    const/4 p3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p3, 0x0

    :goto_1b
    if-eq p1, v1, :cond_59

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3f

    const/4 v1, 0x4

    if-ne p1, v1, :cond_39

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    if-eqz p2, :cond_31

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt32([BIZ)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_38

    :cond_31
    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint32([BIZ)Ljava/lang/Object;

    move-result-object p1

    :goto_38
    return-object p1

    :cond_39
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3f
    if-eqz p2, :cond_4d

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt16([BIZ)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_4d
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint16([BIZ)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_59
    if-eqz p2, :cond_67

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readInt8([BI)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_67
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->readUint8([BI)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private js_setFloat(I[Ljava/lang/Object;)V
    .registers 10

    invoke-static {p2}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    const-string v1, "offset out of range"

    if-ltz v0, :cond_56

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    if-le p1, v4, :cond_1c

    aget-object v2, p2, v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    const-wide/high16 v5, 0x7ff8000000000000L  # Double.NaN

    array-length v3, p2

    if-le v3, v4, :cond_28

    aget-object p2, p2, v4

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v5

    :cond_28
    add-int p2, v0, p1

    iget v3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p2, v3, :cond_51

    const/4 p2, 0x4

    if-eq p1, p2, :cond_46

    const/16 p2, 0x8

    if-ne p1, p2, :cond_40

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v5, v6, v2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeFloat64([BIDZ)V

    goto :goto_50

    :cond_40
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_46
    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p2, v0

    invoke-static {p1, p2, v5, v6, v2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeFloat32([BIDZ)V

    :goto_50
    return-void

    :cond_51
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_56
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private js_setInt(IZ[Ljava/lang/Object;)V
    .registers 11

    invoke-static {p3}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->determinePos([Ljava/lang/Object;)I

    move-result v0

    const-string v1, "offset out of range"

    if-ltz v0, :cond_ce

    const/4 v2, 0x2

    invoke-static {p3, v2}, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->isArg([Ljava/lang/Object;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    if-le p1, v4, :cond_1c

    aget-object v3, p3, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    array-length v6, p3

    if-le v6, v4, :cond_24

    aget-object v5, p3, v4

    :cond_24
    if-eq p1, v4, :cond_9a

    if-eq p1, v2, :cond_66

    const/4 p3, 0x4

    if-ne p1, p3, :cond_60

    if-eqz p2, :cond_47

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt32(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_42

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt32([BIIZ)V

    goto/16 :goto_c8

    :cond_42
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_47
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide p2

    add-int/2addr p1, v0

    iget v2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, v2, :cond_5b

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr v1, v0

    invoke-static {p1, v1, p2, p3, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint32([BIJZ)V

    goto :goto_c8

    :cond_5b
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_60
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_66
    if-eqz p2, :cond_81

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt16(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_7c

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt16([BIIZ)V

    goto :goto_c8

    :cond_7c
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_81
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint16(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_95

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2, v3}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint16([BIIZ)V

    goto :goto_c8

    :cond_95
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_9a
    if-eqz p2, :cond_b5

    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toInt8(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_b0

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeInt8([BII)V

    goto :goto_c8

    :cond_b0
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_b5
    invoke-static {v5}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint8(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, v0

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p3, :cond_c9

    iget-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->arrayBuffer:Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;

    iget-object p1, p1, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->buffer:[B

    iget p3, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->offset:I

    add-int/2addr p3, v0

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/typedarrays/ByteIo;->writeUint8([BII)V

    :goto_c8
    return-void

    :cond_c9
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_ce
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private rangeCheck(II)V
    .registers 3

    if-ltz p1, :cond_8

    add-int/2addr p1, p2

    iget p2, p0, Lorg/mozilla/javascript/typedarrays/NativeArrayBufferView;->byteLength:I

    if-gt p1, p2, :cond_8

    return-void

    :cond_8
    const-string p1, "offset out of range"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/typedarrays/NativeDataView;

    return-object p0

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_c4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_26  #0x11
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, p3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setFloat(I[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_30  #0x10
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setFloat(I[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_3a  #0xf
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v1, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_44  #0xe
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v1, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_4e  #0xd
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_58  #0xc
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_62  #0xb
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_6c  #0xa
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_setInt(IZ[Ljava/lang/Object;)V

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_76  #0x9
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, p3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7f  #0x8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v1, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getFloat(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_88  #0x7
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v1, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_91  #0x6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v1, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9a  #0x5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a3  #0x4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v0, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_ac  #0x3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v2, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b5  #0x2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    invoke-direct {p1, v3, v3, p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_getInt(IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_be  #0x1
    invoke-static {p5}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->js_constructor([Ljava/lang/Object;)Lorg/mozilla/javascript/typedarrays/NativeDataView;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_be  #00000001
        :pswitch_b5  #00000002
        :pswitch_ac  #00000003
        :pswitch_a3  #00000004
        :pswitch_9a  #00000005
        :pswitch_91  #00000006
        :pswitch_88  #00000007
        :pswitch_7f  #00000008
        :pswitch_76  #00000009
        :pswitch_6c  #0000000a
        :pswitch_62  #0000000b
        :pswitch_58  #0000000c
        :pswitch_4e  #0000000d
        :pswitch_44  #0000000e
        :pswitch_3a  #0000000f
        :pswitch_30  #00000010
        :pswitch_26  #00000011
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/16 v4, 0x32

    const/16 v5, 0x73

    const/16 v6, 0x67

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_e2

    goto/16 :goto_d3

    :pswitch_15  #0xb
    const/4 v1, 0x1

    const-string v0, "constructor"

    goto/16 :goto_d5

    :pswitch_1a  #0xa
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v6, :cond_36

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2e

    const-string v0, "getFloat32"

    const/16 v1, 0x8

    goto/16 :goto_d5

    :cond_2e
    if-ne v0, v1, :cond_d3

    const-string v0, "getFloat64"

    const/16 v1, 0x9

    goto/16 :goto_d5

    :cond_36
    if-ne v0, v5, :cond_d3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_44

    const/16 v1, 0x10

    const-string v0, "setFloat32"

    goto/16 :goto_d5

    :cond_44
    if-ne v0, v1, :cond_d3

    const/16 v1, 0x11

    const-string v0, "setFloat64"

    goto/16 :goto_d5

    :pswitch_4c  #0x9
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v6, :cond_66

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_5f

    const/4 v1, 0x7

    const-string v0, "getUint32"

    goto/16 :goto_d5

    :cond_5f
    if-ne v0, v1, :cond_d3

    const/4 v1, 0x5

    const-string v0, "getUint16"

    goto/16 :goto_d5

    :cond_66
    if-ne v0, v5, :cond_d3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_74

    const/16 v1, 0xf

    const-string/jumbo v0, "setUint32"

    goto :goto_d5

    :cond_74
    if-ne v0, v1, :cond_d3

    const/16 v1, 0xd

    const-string/jumbo v0, "setUint16"

    goto :goto_d5

    :pswitch_7c  #0x8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_96

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_8e

    const/4 v1, 0x4

    const-string v0, "getInt16"

    goto :goto_d5

    :cond_8e
    if-ne v0, v5, :cond_d3

    const/16 v1, 0xc

    const-string/jumbo v0, "setInt16"

    goto :goto_d5

    :cond_96
    const/16 v2, 0x33

    if-ne v0, v2, :cond_ab

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_a3

    const-string v0, "getInt32"

    goto :goto_d5

    :cond_a3
    if-ne v0, v5, :cond_d3

    const/16 v1, 0xe

    const-string/jumbo v0, "setInt32"

    goto :goto_d5

    :cond_ab
    const/16 v1, 0x74

    if-ne v0, v1, :cond_d3

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_b9

    const/4 v1, 0x3

    const-string v0, "getUint8"

    goto :goto_d5

    :cond_b9
    if-ne v0, v5, :cond_d3

    const/16 v1, 0xb

    const-string/jumbo v0, "setUint8"

    goto :goto_d5

    :pswitch_c1  #0x7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_cb

    const/4 v1, 0x2

    const-string v0, "getInt8"

    goto :goto_d5

    :cond_cb
    if-ne v0, v5, :cond_d3

    const/16 v1, 0xa

    const-string/jumbo v0, "setInt8"

    goto :goto_d5

    :cond_d3
    :goto_d3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d5
    if-eqz v0, :cond_e0

    if-eq v0, p1, :cond_e0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e0

    goto :goto_e1

    :cond_e0
    move v7, v1

    :goto_e1
    return v7

    :pswitch_data_e2
    .packed-switch 0x7
        :pswitch_c1  #00000007
        :pswitch_7c  #00000008
        :pswitch_4c  #00000009
        :pswitch_1a  #0000000a
        :pswitch_15  #0000000b
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "DataView"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_52

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f  #0x11
    const-string v1, "setFloat64"

    goto :goto_4a

    :pswitch_12  #0x10
    const-string v1, "setFloat32"

    goto :goto_4a

    :pswitch_15  #0xf
    const-string/jumbo v1, "setUint32"

    goto :goto_4a

    :pswitch_19  #0xe
    const-string/jumbo v1, "setInt32"

    goto :goto_4a

    :pswitch_1d  #0xd
    const-string/jumbo v1, "setUint16"

    goto :goto_4a

    :pswitch_21  #0xc
    const-string/jumbo v1, "setInt16"

    goto :goto_4a

    :pswitch_25  #0xb
    const-string/jumbo v1, "setUint8"

    goto :goto_4a

    :pswitch_29  #0xa
    const-string/jumbo v1, "setInt8"

    goto :goto_4a

    :pswitch_2d  #0x9
    const-string v0, "getFloat64"

    goto :goto_44

    :pswitch_30  #0x8
    const-string v0, "getFloat32"

    goto :goto_44

    :pswitch_33  #0x7
    const-string v0, "getUint32"

    goto :goto_44

    :pswitch_36  #0x6
    const-string v0, "getInt32"

    goto :goto_44

    :pswitch_39  #0x5
    const-string v0, "getUint16"

    goto :goto_44

    :pswitch_3c  #0x4
    const-string v0, "getInt16"

    goto :goto_44

    :pswitch_3f  #0x3
    const-string v0, "getUint8"

    goto :goto_44

    :pswitch_42  #0x2
    const-string v0, "getInt8"

    :goto_44
    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_4a

    :pswitch_47  #0x1
    const/4 v0, 0x3

    const-string v1, "constructor"

    :goto_4a
    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_42  #00000002
        :pswitch_3f  #00000003
        :pswitch_3c  #00000004
        :pswitch_39  #00000005
        :pswitch_36  #00000006
        :pswitch_33  #00000007
        :pswitch_30  #00000008
        :pswitch_2d  #00000009
        :pswitch_29  #0000000a
        :pswitch_25  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1d  #0000000d
        :pswitch_19  #0000000e
        :pswitch_15  #0000000f
        :pswitch_12  #00000010
        :pswitch_f  #00000011
    .end packed-switch
.end method
