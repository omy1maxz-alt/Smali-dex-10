.class Ljj$/sun/nio/cs/ISO_8859_1$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "ISO_8859_1.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/ISO_8859_1;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    new-instance v0, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/ISO_8859_1-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v6, v5

    nop

    if-gt v0, v6, :cond_1d

    move v7, v0

    goto :goto_1e

    :cond_1d
    move v7, v6

    :goto_1e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    add-int/2addr v10, v9

    nop

    if-gt v0, v10, :cond_35

    move v11, v0

    goto :goto_36

    :cond_35
    move v11, v10

    :goto_36
    sub-int v12, v10, v11

    sub-int v13, v6, v7

    if-ge v12, v13, :cond_3e

    move v0, v12

    goto :goto_3f

    :cond_3e
    move v0, v13

    :goto_3f
    move v14, v0

    :try_start_40
    invoke-static {v4, v7, v8, v11, v14}, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeISOArray([CI[BII)I

    move-result v0

    add-int/2addr v7, v0

    add-int/2addr v11, v0

    if-eq v0, v14, :cond_82

    iget-object v15, v1, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    move/from16 v16, v0

    aget-char v0, v4, v7

    invoke-virtual {v15, v0, v4, v7, v6}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v0

    if-gez v0, :cond_6b

    iget-object v0, v1, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_ac

    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_6b
    :try_start_6b
    iget-object v0, v1, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_ac

    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_82
    move/from16 v16, v0

    if-ge v14, v13, :cond_99

    :try_start_86
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_ac

    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_99
    :try_start_99
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_ac

    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_ac
    move-exception v0

    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    throw v0
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_28

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_21
    int-to-byte v2, v1

    :try_start_22
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_28
    iget-object v2, p0, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v2

    if-gez v2, :cond_3d

    iget-object v2, p0, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_4a
    :try_start_4a
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_53
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method

.method private static encodeISOArray([CI[BII)I
    .registers 6

    if-gtz p4, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeISOArrayCheck([CI[BII)V

    invoke-static {p0, p1, p2, p3, p4}, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->implEncodeISOArray([CI[BII)I

    move-result v0

    return v0
.end method

.method private static encodeISOArrayCheck([CI[BII)V
    .registers 8

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_35

    array-length v0, p0

    if-ge p1, v0, :cond_35

    if-ltz p3, :cond_2f

    array-length v0, p2

    if-ge p3, v0, :cond_2f

    add-int v0, p1, p4

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_29

    array-length v1, p0

    if-ge v0, v1, :cond_29

    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_23

    array-length v2, p2

    if-ge v1, v2, :cond_23

    return-void

    :cond_23
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    :cond_29
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_2f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_35
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method private static implEncodeISOArray([CI[BII)I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_17

    add-int/lit8 v1, p1, 0x1

    aget-char p1, p0, p1

    const/16 v2, 0xff

    if-le p1, v2, :cond_d

    move p1, v1

    goto :goto_17

    :cond_d
    add-int/lit8 v2, p3, 0x1

    int-to-byte v3, p1

    aput-byte v3, p2, p3

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p3, v2

    goto :goto_1

    :cond_17
    :goto_17
    return v0
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3

    const/16 v0, 0xff

    if-gt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public isLegalReplacement([B)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
