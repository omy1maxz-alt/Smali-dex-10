.class public final Ljj$/sun/nio/cs/SingleByte$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "SingleByte.java"

# interfaces
.implements Ljj$/sun/nio/cs/ArrayEncoder;


# instance fields
.field private final c2b:[C

.field private final c2bIndex:[C

.field private final isASCIICompatible:Z

.field private repl:B

.field private sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[C[CZ)V
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/16 v0, 0x3f

    iput-byte v0, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    iput-object p2, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->c2b:[C

    iput-object p3, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->c2bIndex:[C

    iput-boolean p4, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->isASCIICompatible:Z

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 14

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

    sub-int v6, v5, v4

    sub-int v7, v2, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_34
    add-int/lit8 v7, v6, -0x1

    if-lez v6, :cond_87

    aget-char v6, v0, v1

    invoke-virtual {p0, v6}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v8

    const v9, 0xfffd

    if-ne v8, v9, :cond_7c

    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_72

    iget-object v9, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v9, :cond_54

    new-instance v9, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v9}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v9, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_54
    iget-object v9, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9, v6, v0, v1, v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v9

    if-gez v9, :cond_67

    iget-object v9, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v9

    invoke-static {v9, p1, v1, p2, v4}, Ljj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    return-object v9

    :cond_67
    iget-object v9, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v9

    invoke-static {v9, p1, v1, p2, v4}, Ljj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    return-object v9

    :cond_72
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    invoke-static {v9, p1, v1, p2, v4}, Ljj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    return-object v9

    :cond_7c
    add-int/lit8 v9, v4, 0x1

    int-to-byte v10, v8

    aput-byte v10, v3, v4

    nop

    add-int/lit8 v1, v1, 0x1

    move v6, v7

    move v4, v9

    goto :goto_34

    :cond_87
    if-ge v1, v2, :cond_8c

    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_8e

    :cond_8c
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_8e
    invoke-static {v6, p1, v1, p2, v4}, Ljj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v6

    return-object v6
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 8

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p0, v1}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v2

    const v3, 0xfffd

    if-ne v2, v3, :cond_56

    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v3, :cond_28

    new-instance v3, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v3, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_28
    iget-object v3, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_3d

    iget-object v3, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_76

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_3d
    :try_start_3d
    iget-object v3, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_76

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_4a
    const/4 v3, 0x1

    :try_start_4b
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_76

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_56
    :try_start_56
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_65

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_76

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_65
    int-to-byte v3, v2

    :try_start_66
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6d
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_76

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_76
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v0

    const v1, 0xfffd

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final encode(C)I
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->c2bIndex:[C

    shr-int/lit8 v1, p1, 0x8

    aget-char v0, v0, v1

    const v1, 0xfffd

    if-ne v0, v1, :cond_c

    return v1

    :cond_c
    iget-object v1, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->c2b:[C

    and-int/lit16 v2, p1, 0xff

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    return v1
.end method

.method public encode([CII[B)I
    .registers 11

    const/4 v0, 0x0

    array-length v1, p4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p2

    :goto_7
    if-ge p2, v1, :cond_40

    add-int/lit8 v2, p2, 0x1

    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v3

    const v4, 0xfffd

    if-eq v3, v4, :cond_1e

    add-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move p2, v2

    move v0, v4

    goto :goto_7

    :cond_1e
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_37

    if-ge v2, v1, :cond_37

    aget-char v4, p1, v2

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_37

    array-length v4, p4

    if-le p3, v4, :cond_35

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    :cond_37
    add-int/lit8 v4, v0, 0x1

    iget-byte v5, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    aput-byte v5, p4, v0

    move p2, v2

    move v0, v4

    goto :goto_7

    :cond_40
    return v0
.end method

.method public encodeFromLatin1([BII[B)I
    .registers 11

    const/4 v0, 0x0

    array-length v1, p4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p2

    :goto_7
    if-ge p2, v1, :cond_29

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v3

    const v4, 0xfffd

    if-ne v3, v4, :cond_21

    add-int/lit8 v4, v0, 0x1

    iget-byte v5, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    aput-byte v5, p4, v0

    move v0, v4

    goto :goto_27

    :cond_21
    add-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move v0, v4

    :goto_27
    move p2, v2

    goto :goto_7

    :cond_29
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .registers 11

    const/4 v0, 0x0

    array-length v1, p4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p2

    :goto_7
    if-ge p2, v1, :cond_44

    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, p2}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v3

    const v4, 0xfffd

    if-eq v3, v4, :cond_20

    add-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move p2, v2

    move v0, v4

    goto :goto_7

    :cond_20
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3b

    if-ge v2, v1, :cond_3b

    invoke-static {p1, v2}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3b

    array-length v4, p4

    if-le p3, v4, :cond_39

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    :cond_3b
    add-int/lit8 v4, v0, 0x1

    iget-byte v5, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    aput-byte v5, p4, v0

    move p2, v2

    move v0, v4

    goto :goto_7

    :cond_44
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

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReplaceWith([B)V
    .registers 3

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    return-void
.end method

.method public isASCIICompatible()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/SingleByte$Encoder;->isASCIICompatible:Z

    return v0
.end method

.method public isLegalReplacement([B)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    aget-byte v0, p1, v1

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_11

    :cond_b
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method
