.class public Ljj$/sun/nio/cs/DoubleByte$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "DoubleByte.java"

# interfaces
.implements Ljj$/sun/nio/cs/ArrayEncoder;


# instance fields
.field protected final MAX_SINGLEBYTE:I

.field private final c2b:[C

.field private final c2bIndex:[C

.field final isASCIICompatible:Z

.field protected repl:[B

.field protected sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;FF[B[C[CZ)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    const/16 v0, 0xff

    iput v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->MAX_SINGLEBYTE:I

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->replacement()[B

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    iput-object p5, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->c2b:[C

    iput-object p6, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->c2bIndex:[C

    iput-boolean p7, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->isASCIICompatible:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[C[C)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[C[CZ)V
    .registers 6

    const/high16 v0, 0x40000000  # 2.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/16 v0, 0xff

    iput v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->MAX_SINGLEBYTE:I

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->replacement()[B

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    iput-object p2, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->c2b:[C

    iput-object p3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->c2bIndex:[C

    iput-boolean p4, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->isASCIICompatible:Z

    return-void
.end method

.method public static initC2B([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[C[C)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const v4, 0xfffd

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    const/16 v5, 0x100

    array-length v6, v0

    new-array v6, v6, [[C

    const/4 v7, 0x0

    if-eqz p1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    :cond_1a
    const/4 v8, 0x0

    :goto_1b
    array-length v9, v0

    if-ge v8, v9, :cond_2e

    aget-object v9, v0, v8

    if-nez v9, :cond_23

    goto :goto_2b

    :cond_23
    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    aput-object v9, v6, v8

    :goto_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_2e
    if-eqz v1, :cond_68

    const/4 v8, 0x0

    :goto_31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_68

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x100

    if-ge v8, v11, :cond_50

    if-eqz v7, :cond_50

    aget-char v11, v7, v8

    if-ne v11, v9, :cond_66

    aput-char v4, v7, v8

    goto :goto_66

    :cond_50
    shr-int/lit8 v11, v8, 0x8

    aget-object v11, v6, v11

    and-int/lit16 v12, v8, 0xff

    sub-int v12, v12, p4

    aget-char v11, v11, v12

    if-ne v11, v9, :cond_66

    shr-int/lit8 v11, v8, 0x8

    aget-object v11, v6, v11

    and-int/lit16 v12, v8, 0xff

    sub-int v12, v12, p4

    aput-char v4, v11, v12

    :cond_66
    :goto_66
    move v8, v10

    goto :goto_31

    :cond_68
    if-eqz v7, :cond_8a

    const/4 v8, 0x0

    :goto_6b
    array-length v9, v7

    if-ge v8, v9, :cond_8a

    aget-char v9, v7, v8

    if-ne v9, v4, :cond_73

    goto :goto_87

    :cond_73
    shr-int/lit8 v10, v9, 0x8

    aget-char v10, p7, v10

    if-nez v10, :cond_81

    move v10, v5

    add-int/lit16 v5, v5, 0x100

    shr-int/lit8 v11, v9, 0x8

    int-to-char v12, v10

    aput-char v12, p7, v11

    :cond_81
    and-int/lit16 v11, v9, 0xff

    add-int/2addr v11, v10

    int-to-char v12, v8

    aput-char v12, v3, v11

    :goto_87
    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    :cond_8a
    const/4 v8, 0x0

    :goto_8b
    array-length v9, v0

    if-ge v8, v9, :cond_bf

    aget-object v9, v6, v8

    if-nez v9, :cond_95

    move/from16 v11, p5

    goto :goto_bc

    :cond_95
    move/from16 v10, p4

    :goto_97
    move/from16 v11, p5

    if-gt v10, v11, :cond_bc

    sub-int v12, v10, p4

    aget-char v12, v9, v12

    if-ne v12, v4, :cond_a2

    goto :goto_b9

    :cond_a2
    shr-int/lit8 v13, v12, 0x8

    aget-char v13, p7, v13

    if-nez v13, :cond_b0

    move v13, v5

    add-int/lit16 v5, v5, 0x100

    shr-int/lit8 v14, v12, 0x8

    int-to-char v15, v13

    aput-char v15, p7, v14

    :cond_b0
    and-int/lit16 v14, v12, 0xff

    add-int/2addr v14, v13

    shl-int/lit8 v15, v8, 0x8

    or-int/2addr v15, v10

    int-to-char v15, v15

    aput-char v15, v3, v14

    :goto_b9
    add-int/lit8 v10, v10, 0x1

    goto :goto_97

    :cond_bc
    :goto_bc
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    :cond_bf
    move/from16 v11, p5

    if-eqz v2, :cond_e9

    const/4 v4, 0x0

    :goto_c4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_e9

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    shr-int/lit8 v10, v9, 0x8

    aget-char v12, p7, v10

    if-nez v12, :cond_df

    int-to-char v12, v5

    aput-char v12, p7, v10

    add-int/lit16 v5, v5, 0x100

    :cond_df
    aget-char v12, p7, v10

    and-int/lit16 v13, v9, 0xff

    add-int/2addr v12, v13

    aput-char v8, v3, v12

    add-int/lit8 v4, v4, 0x2

    goto :goto_c4

    :cond_e9
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

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

.method public encode([CII[B)I
    .registers 13

    const/4 v0, 0x0

    add-int v1, p2, p3

    array-length v2, p4

    :goto_4
    if-ge p2, v1, :cond_5a

    add-int/lit8 v3, p2, 0x1

    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v4

    const v5, 0xfffd

    if-ne v4, v5, :cond_41

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_25

    if-ge v3, v1, :cond_25

    aget-char v5, p1, v3

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_25

    add-int/lit8 v3, v3, 0x1

    :cond_25
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    array-length v0, v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_3e

    add-int/lit8 v0, v5, 0x1

    iget-object v7, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    aget-byte v6, v7, v6

    aput-byte v6, p4, v5

    move p2, v3

    goto :goto_4

    :cond_3e
    move p2, v3

    move v0, v5

    goto :goto_4

    :cond_41
    const/16 v5, 0xff

    if-le v4, v5, :cond_52

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p4, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v6, v4

    aput-byte v6, p4, v5

    goto :goto_58

    :cond_52
    add-int/lit8 v5, v0, 0x1

    int-to-byte v6, v4

    aput-byte v6, p4, v0

    move v0, v5

    :goto_58
    move p2, v3

    goto :goto_4

    :cond_5a
    return v0
.end method

.method protected encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 13

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

    :goto_2c
    if-ge v1, v2, :cond_103

    :try_start_2e
    aget-char v6, v0, v1

    invoke-virtual {p0, v6}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v7

    const v8, 0xfffd

    const/4 v9, 0x1

    if-ne v7, v8, :cond_a5

    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp()Ljj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v8

    invoke-virtual {v8, v6, v0, v1, v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v8

    if-gez v8, :cond_69

    iget-object v8, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_11e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_69
    :try_start_69
    iget-object v8, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_11e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_88
    :try_start_88
    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_11e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_a5
    const/16 v8, 0xff

    if-le v7, v8, :cond_d6

    sub-int v8, v5, v4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_c9

    :try_start_ae
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_b0
    .catchall {:try_start_ae .. :try_end_b0} :catchall_11e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_c9
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    :try_start_ce
    aput-byte v9, v3, v4
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_100

    add-int/lit8 v4, v8, 0x1

    int-to-byte v9, v7

    :try_start_d3
    aput-byte v9, v3, v8

    goto :goto_fb

    :cond_d6
    sub-int v8, v5, v4

    if-ge v8, v9, :cond_f5

    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_dc
    .catchall {:try_start_d3 .. :try_end_dc} :catchall_11e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    return-object v8

    :cond_f5
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v7

    :try_start_f8
    aput-byte v9, v3, v4
    :try_end_fa
    .catchall {:try_start_f8 .. :try_end_fa} :catchall_100

    move v4, v8

    :goto_fb
    nop

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c

    :catchall_100
    move-exception v6

    move v4, v8

    goto :goto_11f

    :cond_103
    :try_start_103
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_105
    .catchall {:try_start_103 .. :try_end_105} :catchall_11e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    return-object v6

    :catchall_11e
    move-exception v6

    :goto_11f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    throw v6
.end method

.method protected encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 8

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p0, v1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v2

    const v3, 0xfffd

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4d

    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp()Ljj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_35

    iget-object v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_8c

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_35
    :try_start_35
    iget-object v3, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_8c

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_42
    :try_start_42
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_8c

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_4d
    const/16 v3, 0xff

    if-le v2, v3, :cond_6c

    :try_start_51
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_61

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_8c

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_61
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    :try_start_64
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7f

    :cond_6c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_7b

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_8c

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v3

    :cond_7b
    int-to-byte v3, v2

    :try_start_7c
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_7f
    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_83
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_8c

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_8c
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method

.method public encodeChar(C)I
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->c2b:[C

    iget-object v1, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->c2bIndex:[C

    shr-int/lit8 v2, p1, 0x8

    aget-char v1, v1, v2

    and-int/lit16 v2, p1, 0xff

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    return v0
.end method

.method public encodeFromLatin1([BII[B)I
    .registers 12

    const/4 v0, 0x0

    add-int v1, p2, p3

    :goto_3
    if-ge p2, v1, :cond_49

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    const/16 v3, 0xff

    and-int/2addr p2, v3

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v4

    const v5, 0xfffd

    if-ne v4, v5, :cond_32

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    array-length v0, v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_2f

    add-int/lit8 v0, v3, 0x1

    iget-object v6, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    aget-byte v5, v6, v5

    aput-byte v5, p4, v3

    move p2, v2

    goto :goto_3

    :cond_2f
    move p2, v2

    move v0, v3

    goto :goto_3

    :cond_32
    if-le v4, v3, :cond_41

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v5, v4

    aput-byte v5, p4, v3

    goto :goto_47

    :cond_41
    add-int/lit8 v3, v0, 0x1

    int-to-byte v5, v4

    aput-byte v5, p4, v0

    move v0, v3

    :goto_47
    move p2, v2

    goto :goto_3

    :cond_49
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .registers 12

    const/4 v0, 0x0

    add-int v1, p2, p3

    :goto_3
    if-ge p2, v1, :cond_5d

    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, p2}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v3

    const v4, 0xfffd

    if-ne v3, v4, :cond_44

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_28

    if-ge v2, v1, :cond_28

    invoke-static {p1, v2}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    array-length v0, v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_41

    add-int/lit8 v0, v4, 0x1

    iget-object v6, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    aget-byte v5, v6, v5

    aput-byte v5, p4, v4

    move p2, v2

    goto :goto_3

    :cond_41
    move p2, v2

    move v0, v4

    goto :goto_3

    :cond_44
    const/16 v4, 0xff

    if-le v3, v4, :cond_55

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v0

    add-int/lit8 v0, v4, 0x1

    int-to-byte v5, v3

    aput-byte v5, p4, v4

    goto :goto_5b

    :cond_55
    add-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move v0, v4

    :goto_5b
    move p2, v2

    goto :goto_3

    :cond_5d
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

    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReplaceWith([B)V
    .registers 2

    iput-object p1, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    return-void
.end method

.method public isASCIICompatible()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->isASCIICompatible:Z

    return v0
.end method

.method protected sgp()Ljj$/sun/nio/cs/Surrogate$Parser;
    .registers 2

    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    if-nez v0, :cond_b

    new-instance v0, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    :cond_b
    iget-object v0, p0, Ljj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    return-object v0
.end method
