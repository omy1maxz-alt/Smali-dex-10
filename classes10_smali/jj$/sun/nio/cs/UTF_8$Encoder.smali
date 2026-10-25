.class final Ljj$/sun/nio/cs/UTF_8$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UTF_8.java"


# instance fields
.field private sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 4

    const v0, 0x3f8ccccd  # 1.1f

    const/high16 v1, 0x40400000  # 3.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/UTF_8-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/UTF_8$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 15

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, v2, v1

    sub-int v7, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v4

    :goto_35
    const/16 v7, 0x80

    if-ge v4, v6, :cond_49

    aget-char v8, v0, v1

    if-ge v8, v7, :cond_49

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v1, 0x1

    aget-char v1, v0, v1

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    move v4, v7

    move v1, v8

    goto :goto_35

    :cond_49
    :goto_49
    if-ge v1, v2, :cond_100

    aget-char v8, v0, v1

    if-ge v8, v7, :cond_5e

    if-lt v4, v5, :cond_56

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_56
    add-int/lit8 v9, v4, 0x1

    int-to-byte v10, v8

    aput-byte v10, v3, v4

    move v4, v9

    goto/16 :goto_fb

    :cond_5e
    const/16 v9, 0x800

    if-ge v8, v9, :cond_7f

    sub-int v9, v5, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_6c

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_6c
    add-int/lit8 v9, v4, 0x1

    shr-int/lit8 v10, v8, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x1

    and-int/lit8 v10, v8, 0x3f

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    goto/16 :goto_fb

    :cond_7f
    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_d5

    iget-object v9, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v9, :cond_90

    new-instance v9, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v9}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v9, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_90
    iget-object v9, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9, v8, v0, v1, v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v9

    if-gez v9, :cond_a2

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    iget-object v7, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_a2
    sub-int v10, v5, v4

    const/4 v11, 0x4

    if-ge v10, v11, :cond_ac

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_ac
    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v9, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    add-int/lit8 v4, v10, 0x1

    shr-int/lit8 v11, v9, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v7

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v10, v4, 0x1

    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v7

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    add-int/lit8 v4, v10, 0x1

    and-int/lit8 v11, v9, 0x3f

    or-int/2addr v11, v7

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    :cond_d5
    sub-int v9, v5, v4

    const/4 v10, 0x3

    if-ge v9, v10, :cond_df

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_df
    add-int/lit8 v9, v4, 0x1

    shr-int/lit8 v10, v8, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    add-int/lit8 v4, v9, 0x1

    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v9, v4, 0x1

    and-int/lit8 v10, v8, 0x3f

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    move v4, v9

    :goto_fb
    nop

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_49

    :cond_100
    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    sget-object v7, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v7
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 9

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_23

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    :cond_1d
    int-to-byte v2, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_bf

    :cond_23
    const/16 v3, 0x800

    if-ge v1, v3, :cond_44

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_33

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    :cond_33
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_bf

    :cond_44
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_9b

    iget-object v3, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v3, :cond_55

    new-instance v3, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v3, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_55
    iget-object v3, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_6a

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    iget-object v2, p0, Ljj$/sun/nio/cs/UTF_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    :cond_6a
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_76

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    :cond_76
    shr-int/lit8 v4, v3, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v4, v3, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :cond_9b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_a7

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    :cond_a7
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_bf
    nop

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_c4
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method private static overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;
    .registers 3

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private static overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Ljj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/UTF_8$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/UTF_8$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public isLegalReplacement([B)Z
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    aget-byte v0, p1, v1

    if-gez v0, :cond_f

    :cond_9
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method
