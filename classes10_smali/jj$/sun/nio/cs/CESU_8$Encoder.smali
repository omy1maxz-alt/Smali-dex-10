.class Ljj$/sun/nio/cs/CESU_8$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "CESU_8.java"

# interfaces
.implements Ljj$/sun/nio/cs/ArrayEncoder;


# instance fields
.field private c2:[C

.field private sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 4

    const v0, 0x3f8ccccd  # 1.1f

    const/high16 v1, 0x40400000  # 3.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/CESU_8-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/CESU_8$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 16

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
    if-ge v1, v2, :cond_d3

    aget-char v8, v0, v1

    if-ge v8, v7, :cond_5d

    if-lt v4, v5, :cond_56

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_56
    add-int/lit8 v9, v4, 0x1

    int-to-byte v10, v8

    aput-byte v10, v3, v4

    move v4, v9

    goto :goto_ce

    :cond_5d
    const/16 v9, 0x800

    if-ge v8, v9, :cond_7d

    sub-int v9, v5, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_6b

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_6b
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

    goto :goto_ce

    :cond_7d
    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_c0

    iget-object v9, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v9, :cond_8f

    new-instance v9, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v9}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v9, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_8f
    iget-object v9, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9, v8, v0, v1, v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v9

    if-gez v9, :cond_a1

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    iget-object v7, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_a1
    sub-int v11, v5, v4

    const/4 v12, 0x6

    if-ge v11, v12, :cond_ab

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_ab
    invoke-static {v9}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v11

    invoke-static {v3, v4, v11}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    add-int/lit8 v4, v4, 0x3

    invoke-static {v9}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v11

    invoke-static {v3, v4, v11}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    add-int/2addr v4, v10

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_c0
    sub-int v9, v5, v4

    if-ge v9, v10, :cond_c9

    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    :cond_c9
    invoke-static {v3, v4, v8}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    add-int/lit8 v4, v4, 0x3

    :goto_ce
    nop

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_49

    :cond_d3
    invoke-static {p1, v1, p2, v4}, Ljj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    sget-object v7, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v7
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 8

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_23

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    :cond_1d
    int-to-byte v2, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_96

    :cond_23
    const/16 v3, 0x800

    if-ge v1, v3, :cond_43

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_33

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

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

    goto :goto_96

    :cond_43
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v2, :cond_54

    new-instance v2, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v2}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v2, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_54
    iget-object v2, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v2

    if-gez v2, :cond_69

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    iget-object v3, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_69
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_75

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    :cond_75
    invoke-static {v2}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v3

    invoke-static {p2, v3}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes(Ljava/nio/ByteBuffer;C)V

    invoke-static {v2}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v3

    invoke-static {p2, v3}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes(Ljava/nio/ByteBuffer;C)V

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    :cond_87
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_93

    invoke-static {p1, v0}, Ljj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    :cond_93
    invoke-static {p2, v1}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes(Ljava/nio/ByteBuffer;C)V

    :goto_96
    nop

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_9b
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

    invoke-static {p0, p1, p2, p3}, Ljj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private static to3Bytes(Ljava/nio/ByteBuffer;C)V
    .registers 3

    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static to3Bytes([BIC)V
    .registers 5

    shr-int/lit8 v0, p2, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    and-int/lit8 v1, p2, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public encode([CII[B)I
    .registers 14

    add-int v0, p2, p3

    const/4 v1, 0x0

    array-length v2, p4

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    :goto_9
    const/16 v3, 0x80

    if-ge v1, v2, :cond_1d

    aget-char v4, p1, p2

    if-ge v4, v3, :cond_1d

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, p2, 0x1

    aget-char p2, p1, p2

    int-to-byte p2, p2

    aput-byte p2, p4, v1

    move v1, v3

    move p2, v4

    goto :goto_9

    :cond_1d
    :goto_1d
    if-ge p2, v0, :cond_93

    add-int/lit8 v4, p2, 0x1

    aget-char p2, p1, p2

    if-ge p2, v3, :cond_2d

    add-int/lit8 v5, v1, 0x1

    int-to-byte v6, p2

    aput-byte v6, p4, v1

    move p2, v4

    move v1, v5

    goto :goto_92

    :cond_2d
    const/16 v5, 0x800

    if-ge p2, v5, :cond_44

    add-int/lit8 v5, v1, 0x1

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, p4, v1

    add-int/lit8 v1, v5, 0x1

    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    move p2, v4

    goto :goto_92

    :cond_44
    invoke-static {p2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8c

    iget-object v5, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v5, :cond_55

    new-instance v5, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v5}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v5, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_55
    iget-object v5, p0, Ljj$/sun/nio/cs/CESU_8$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, p2, p1, v6, v0}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v5

    if-gez v5, :cond_75

    invoke-virtual {p0}, Ljj$/sun/nio/cs/CESU_8$Encoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-eq v6, v7, :cond_69

    const/4 v3, -0x1

    return v3

    :cond_69
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljj$/sun/nio/cs/CESU_8$Encoder;->replacement()[B

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    aput-byte v7, p4, v1

    goto :goto_89

    :cond_75
    invoke-static {v5}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v6

    invoke-static {p4, v1, v6}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    add-int/lit8 v1, v1, 0x3

    invoke-static {v5}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v6

    invoke-static {p4, v1, v6}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    add-int/lit8 v6, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    :goto_89
    move p2, v4

    move v1, v6

    goto :goto_92

    :cond_8c
    invoke-static {p4, v1, p2}, Ljj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    add-int/lit8 v1, v1, 0x3

    move p2, v4

    :goto_92
    goto :goto_1d

    :cond_93
    return v1
.end method

.method public synthetic encodeFromLatin1([BII[B)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljj$/sun/nio/cs/ArrayEncoder$-CC;->$default$encodeFromLatin1(Ljj$/sun/nio/cs/ArrayEncoder;[BII[B)I

    move-result p1

    return p1
.end method

.method public synthetic encodeFromUTF16([BII[B)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljj$/sun/nio/cs/ArrayEncoder$-CC;->$default$encodeFromUTF16(Ljj$/sun/nio/cs/ArrayEncoder;[BII[B)I

    move-result p1

    return p1
.end method

.method protected final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/CESU_8$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/CESU_8$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isASCIICompatible()Z
    .registers 2

    invoke-static {p0}, Ljj$/sun/nio/cs/ArrayEncoder$-CC;->$default$isASCIICompatible(Ljj$/sun/nio/cs/ArrayEncoder;)Z

    move-result v0

    return v0
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
