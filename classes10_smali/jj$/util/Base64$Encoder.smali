.class public Ljj$/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CRLF:[B

.field private static final MIMELINEMAX:I = 0x4c

.field static final RFC2045:Ljj$/util/Base64$Encoder;

.field static final RFC4648:Ljj$/util/Base64$Encoder;

.field static final RFC4648_URLSAFE:Ljj$/util/Base64$Encoder;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static bridge synthetic -$$Nest$sfgettoBase64()[C
    .registers 1

    sget-object v0, Ljj$/util/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettoBase64URL()[C
    .registers 1

    sget-object v0, Ljj$/util/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_3c

    sput-object v0, Ljj$/util/Base64$Encoder;->toBase64:[C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_80

    sput-object v0, Ljj$/util/Base64$Encoder;->toBase64URL:[C

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_c4

    sput-object v0, Ljj$/util/Base64$Encoder;->CRLF:[B

    new-instance v0, Ljj$/util/Base64$Encoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljj$/util/Base64$Encoder;->RFC4648:Ljj$/util/Base64$Encoder;

    new-instance v0, Ljj$/util/Base64$Encoder;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v4, v1, v2, v4}, Ljj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljj$/util/Base64$Encoder;->RFC4648_URLSAFE:Ljj$/util/Base64$Encoder;

    new-instance v0, Ljj$/util/Base64$Encoder;

    const/4 v1, 0x0

    sget-object v2, Ljj$/util/Base64$Encoder;->CRLF:[B

    const/16 v3, 0x4c

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljj$/util/Base64$Encoder;->RFC2045:Ljj$/util/Base64$Encoder;

    return-void

    nop

    :array_3c
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_80
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_c4
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljj$/util/Base64$Encoder;->isURL:Z

    iput-object p2, p0, Ljj$/util/Base64$Encoder;->newline:[B

    iput p3, p0, Ljj$/util/Base64$Encoder;->linemax:I

    iput-boolean p4, p0, Ljj$/util/Base64$Encoder;->doPadding:Z

    return-void
.end method

.method synthetic constructor <init>(Z[BIZLjj$/util/Base64-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method private encode0([BII[B)I
    .registers 19

    move/from16 v0, p3

    iget-boolean v1, p0, Ljj$/util/Base64$Encoder;->isURL:Z

    if-eqz v1, :cond_9

    sget-object v1, Ljj$/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_b

    :cond_9
    sget-object v1, Ljj$/util/Base64$Encoder;->toBase64:[C

    :goto_b
    move/from16 v2, p2

    sub-int v3, v0, p2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int v4, p2, v3

    iget v5, p0, Ljj$/util/Base64$Encoder;->linemax:I

    if-lez v5, :cond_27

    iget v5, p0, Ljj$/util/Base64$Encoder;->linemax:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x3

    if-le v3, v5, :cond_27

    iget v5, p0, Ljj$/util/Base64$Encoder;->linemax:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v3, v5, 0x3

    :cond_27
    const/4 v5, 0x0

    move v8, v2

    move v11, v5

    :goto_2a
    if-ge v8, v4, :cond_5a

    add-int v2, v8, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-boolean v12, p0, Ljj$/util/Base64$Encoder;->isURL:Z

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p4

    invoke-direct/range {v6 .. v12}, Ljj$/util/Base64$Encoder;->encodeBlock([BII[BIZ)V

    sub-int v2, v9, v8

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v11, v2

    move v8, v9

    iget v5, p0, Ljj$/util/Base64$Encoder;->linemax:I

    if-ne v2, v5, :cond_59

    if-ge v8, v0, :cond_59

    iget-object v5, p0, Ljj$/util/Base64$Encoder;->newline:[B

    array-length v7, v5

    const/4 v10, 0x0

    :goto_4d
    if-ge v10, v7, :cond_59

    aget-byte v12, v5, v10

    add-int/lit8 v13, v11, 0x1

    aput-byte v12, p4, v11

    add-int/lit8 v10, v10, 0x1

    move v11, v13

    goto :goto_4d

    :cond_59
    goto :goto_2a

    :cond_5a
    if-ge v8, v0, :cond_b5

    add-int/lit8 v2, v8, 0x1

    aget-byte v5, p1, v8

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v11, 0x1

    shr-int/lit8 v8, v5, 0x2

    aget-char v8, v1, v8

    int-to-byte v8, v8

    aput-byte v8, p4, v11

    const/16 v8, 0x3d

    if-ne v2, v0, :cond_8a

    add-int/lit8 v11, v7, 0x1

    shl-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v1, v9

    int-to-byte v9, v9

    aput-byte v9, p4, v7

    iget-boolean v7, p0, Ljj$/util/Base64$Encoder;->doPadding:Z

    if-eqz v7, :cond_88

    add-int/lit8 v7, v11, 0x1

    aput-byte v8, p4, v11

    add-int/lit8 v11, v7, 0x1

    aput-byte v8, p4, v7

    move v8, v2

    goto :goto_b5

    :cond_88
    move v8, v2

    goto :goto_b5

    :cond_8a
    add-int/lit8 v9, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v10, v7, 0x1

    shl-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0x3f

    shr-int/lit8 v12, v2, 0x4

    or-int/2addr v11, v12

    aget-char v11, v1, v11

    int-to-byte v11, v11

    aput-byte v11, p4, v7

    add-int/lit8 v11, v10, 0x1

    shl-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v1, v7

    int-to-byte v7, v7

    aput-byte v7, p4, v10

    iget-boolean v7, p0, Ljj$/util/Base64$Encoder;->doPadding:Z

    if-eqz v7, :cond_b4

    add-int/lit8 v7, v11, 0x1

    aput-byte v8, p4, v11

    move v11, v7

    move v8, v9

    goto :goto_b5

    :cond_b4
    move v8, v9

    :cond_b5
    :goto_b5
    return v11
.end method

.method private encodeBlock([BII[BIZ)V
    .registers 13

    if-eqz p6, :cond_5

    sget-object v0, Ljj$/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_7

    :cond_5
    sget-object v0, Ljj$/util/Base64$Encoder;->toBase64:[C

    :goto_7
    move v1, p2

    move v2, p5

    :goto_9
    if-ge v1, p3, :cond_4f

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v1, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    add-int/lit8 v2, v4, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v5, v1, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    move v1, v3

    goto :goto_9

    :cond_4f
    return-void
.end method

.method private final outLength(I)I
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljj$/util/Base64$Encoder;->doPadding:Z

    if-eqz v1, :cond_c

    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    goto :goto_1b

    :cond_c
    rem-int/lit8 v1, p1, 0x3

    div-int/lit8 v2, p1, 0x3

    mul-int/lit8 v2, v2, 0x4

    if-nez v1, :cond_16

    const/4 v3, 0x0

    goto :goto_18

    :cond_16
    add-int/lit8 v3, v1, 0x1

    :goto_18
    add-int v0, v2, v3

    move v1, v0

    :goto_1b
    iget v0, p0, Ljj$/util/Base64$Encoder;->linemax:I

    if-lez v0, :cond_2a

    add-int/lit8 v0, v1, -0x1

    iget v2, p0, Ljj$/util/Base64$Encoder;->linemax:I

    div-int/2addr v0, v2

    iget-object v2, p0, Ljj$/util/Base64$Encoder;->newline:[B

    array-length v2, v2

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    :cond_2a
    return v1
.end method


# virtual methods
.method public encode([B[B)I
    .registers 6

    array-length v0, p1

    invoke-direct {p0, v0}, Ljj$/util/Base64$Encoder;->outLength(I)I

    move-result v0

    array-length v1, p2

    if-lt v1, v0, :cond_f

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Ljj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Ljj$/util/Base64$Encoder;->outLength(I)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v3, v4, v5, v1}, Ljj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    goto :goto_45

    :cond_36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {p0, v3, v4, v5, v1}, Ljj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    :goto_45
    array-length v3, v1

    if-eq v2, v3, :cond_4c

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_4c
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3
.end method

.method public encode([B)[B
    .registers 6

    array-length v0, p1

    invoke-direct {p0, v0}, Ljj$/util/Base64$Encoder;->outLength(I)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {p0, p1, v2, v3, v1}, Ljj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    array-length v3, v1

    if-eq v2, v3, :cond_15

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    :cond_15
    return-object v1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Ljj$/util/Base64$Encoder;->encode([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v0, v2, v2, v3}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method

.method public withoutPadding()Ljj$/util/Base64$Encoder;
    .registers 6

    iget-boolean v0, p0, Ljj$/util/Base64$Encoder;->doPadding:Z

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljj$/util/Base64$Encoder;

    iget-boolean v1, p0, Ljj$/util/Base64$Encoder;->isURL:Z

    iget-object v2, p0, Ljj$/util/Base64$Encoder;->newline:[B

    iget v3, p0, Ljj$/util/Base64$Encoder;->linemax:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-object v0
.end method

.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Base64$EncOutputStream;

    iget-boolean v1, p0, Ljj$/util/Base64$Encoder;->isURL:Z

    if-eqz v1, :cond_c

    sget-object v1, Ljj$/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_e

    :cond_c
    sget-object v1, Ljj$/util/Base64$Encoder;->toBase64:[C

    :goto_e
    move-object v2, v1

    iget-object v3, p0, Ljj$/util/Base64$Encoder;->newline:[B

    iget v4, p0, Ljj$/util/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Ljj$/util/Base64$Encoder;->doPadding:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v0
.end method
