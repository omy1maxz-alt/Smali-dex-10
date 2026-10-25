.class public Ljj$/sun/nio/cs/HKSCS$Encoder;
.super Ljj$/sun/nio/cs/DoubleByte$Encoder;
.source "HKSCS.java"


# static fields
.field static C2B_UNMAPPABLE:[C


# instance fields
.field private big5Enc:Ljj$/sun/nio/cs/DoubleByte$Encoder;

.field private c2bBmp:[[C

.field private c2bSupp:[[C

.field private repl:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Ljj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    sget-object v0, Ljj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    const v1, 0xfffd

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/DoubleByte$Encoder;[[C[[C)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    invoke-virtual {p0}, Ljj$/sun/nio/cs/HKSCS$Encoder;->replacement()[B

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    iput-object p2, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->big5Enc:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    iput-object p3, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->c2bBmp:[[C

    iput-object p4, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->c2bSupp:[[C

    return-void
.end method

.method public static initc2b([[C[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/16 v0, 0x40

    sget-object v1, Ljj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_8
    const/16 v2, 0x100

    const v3, 0xfffd

    if-ge v1, v2, :cond_45

    aget-object v4, p1, v1

    if-nez v4, :cond_14

    goto :goto_42

    :cond_14
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_42

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_22

    goto :goto_3f

    :cond_22
    shr-int/lit8 v7, v6, 0x8

    aget-object v8, p0, v7

    sget-object v9, Ljj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    if-ne v8, v9, :cond_33

    new-array v8, v2, [C

    aput-object v8, p0, v7

    aget-object v8, p0, v7

    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([CC)V

    :cond_33
    aget-object v8, p0, v7

    and-int/lit16 v9, v6, 0xff

    shl-int/lit8 v10, v1, 0x8

    add-int v11, v5, v0

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v8, v9

    :goto_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_45
    if-eqz p2, :cond_74

    const v1, 0xe000

    const/4 v4, 0x0

    :goto_4b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_74

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_6e

    shr-int/lit8 v6, v1, 0x8

    aget-object v7, p0, v6

    sget-object v8, Ljj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    if-ne v7, v8, :cond_68

    new-array v7, v2, [C

    aput-object v7, p0, v6

    aget-object v7, p0, v6

    invoke-static {v7, v3}, Ljava/util/Arrays;->fill([CC)V

    :cond_68
    aget-object v7, p0, v6

    and-int/lit16 v8, v1, 0xff

    aput-char v5, v7, v8

    :cond_6e
    add-int/lit8 v6, v1, 0x1

    int-to-char v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_74
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

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
    .registers 12

    const/4 v0, 0x0

    add-int v1, p2, p3

    :goto_3
    if-ge p2, v1, :cond_6a

    add-int/lit8 v2, p2, 0x1

    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v3

    const v4, 0xfffd

    if-ne v3, v4, :cond_51

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_35

    if-eq v2, v1, :cond_35

    aget-char v5, p1, v2

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_35

    add-int/lit8 v5, v2, 0x1

    aget-char v2, p1, v2

    invoke-static {p2, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {p0, v2}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v2

    move v3, v2

    if-ne v2, v4, :cond_33

    move v2, v5

    goto :goto_35

    :cond_33
    move v2, v5

    goto :goto_51

    :cond_35
    :goto_35
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    array-length v0, v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_4e

    add-int/lit8 v0, v4, 0x1

    iget-object v6, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    aget-byte v5, v6, v5

    aput-byte v5, p4, v4

    move p2, v2

    goto :goto_3

    :cond_4e
    move p2, v2

    move v0, v4

    goto :goto_3

    :cond_51
    :goto_51
    const/16 v4, 0xff

    if-le v3, v4, :cond_62

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v0

    add-int/lit8 v0, v4, 0x1

    int-to-byte v5, v3

    aput-byte v5, p4, v4

    goto :goto_68

    :cond_62
    add-int/lit8 v4, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move v0, v4

    :goto_68
    move p2, v2

    goto :goto_3

    :cond_6a
    return v0
.end method

.method protected encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v7

    move v7, v0

    :goto_34
    if-ge v7, v5, :cond_116

    :try_start_36
    aget-char v0, v4, v7

    const/4 v10, 0x1

    invoke-virtual {v1, v0}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v11

    const/4 v12, 0x2

    const v13, 0xfffd

    const/4 v14, 0x1

    if-ne v11, v13, :cond_bb

    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v15

    if-eqz v15, :cond_9e

    invoke-virtual {v1}, Ljj$/sun/nio/cs/HKSCS$Encoder;->sgp()Ljj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v15

    invoke-virtual {v15, v0, v4, v7, v5}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v15

    move/from16 v16, v15

    if-gez v15, :cond_75

    iget-object v12, v1, Ljj$/sun/nio/cs/HKSCS$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v12}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_5c
    .catchall {:try_start_36 .. :try_end_5c} :catchall_131

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_75
    move/from16 v15, v16

    :try_start_77
    invoke-virtual {v1, v15}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v16

    move/from16 v11, v16

    if-ne v11, v13, :cond_9c

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_131

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_9c
    const/4 v10, 0x2

    goto :goto_bb

    :cond_9e
    :try_start_9e
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_131

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_bb
    :goto_bb
    const/16 v13, 0xff

    if-le v11, v13, :cond_eb

    sub-int v13, v8, v9

    if-ge v13, v12, :cond_de

    :try_start_c3
    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_c5
    .catchall {:try_start_c3 .. :try_end_c5} :catchall_131

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_de
    add-int/lit8 v12, v9, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    :try_start_e3
    aput-byte v13, v6, v9
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_113

    add-int/lit8 v9, v12, 0x1

    int-to-byte v13, v11

    :try_start_e8
    aput-byte v13, v6, v12

    goto :goto_110

    :cond_eb
    sub-int v12, v8, v9

    if-ge v12, v14, :cond_10a

    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_f1
    .catchall {:try_start_e8 .. :try_end_f1} :catchall_131

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_10a
    add-int/lit8 v12, v9, 0x1

    int-to-byte v13, v11

    :try_start_10d
    aput-byte v13, v6, v9
    :try_end_10f
    .catchall {:try_start_10d .. :try_end_10f} :catchall_113

    move v9, v12

    :goto_110
    add-int/2addr v7, v10

    goto/16 :goto_34

    :catchall_113
    move-exception v0

    move v9, v12

    goto :goto_132

    :cond_116
    :try_start_116
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_118
    .catchall {:try_start_116 .. :try_end_118} :catchall_131

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_131
    move-exception v0

    :goto_132
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    throw v0
.end method

.method public encodeBig5(C)I
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->big5Enc:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v0, p1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    return v0
.end method

.method protected encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 12

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_8b

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {p0, v2}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0xfffd

    if-ne v3, v6, :cond_57

    invoke-static {v2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-virtual {p0}, Ljj$/sun/nio/cs/HKSCS$Encoder;->sgp()Ljj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v7

    invoke-virtual {v7, v2, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v7

    move v8, v7

    if-gez v7, :cond_38

    iget-object v4, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v4}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_94

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_38
    :try_start_38
    invoke-virtual {p0, v8}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v7

    move v3, v7

    if-ne v3, v6, :cond_4a

    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_94

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_4a
    const/4 v1, 0x2

    goto :goto_57

    :cond_4c
    :try_start_4c
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_94

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_57
    :goto_57
    const/16 v6, 0xff

    if-le v3, v6, :cond_75

    :try_start_5b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_6a

    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_94

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_6a
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    :try_start_6d
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v4, v3

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_88

    :cond_75
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v5, :cond_84

    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_94

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_84
    int-to-byte v4, v3

    :try_start_85
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_88
    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_8b
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_94

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_94
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method

.method public encodeChar(C)I
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->c2bBmp:[[C

    shr-int/lit8 v1, p1, 0x8

    aget-object v0, v0, v1

    and-int/lit16 v1, p1, 0xff

    aget-char v0, v0, v1

    const v1, 0xfffd

    if-ne v0, v1, :cond_14

    invoke-virtual {p0, p1}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeBig5(C)I

    move-result v1

    return v1

    :cond_14
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .registers 13

    const/4 v0, 0x0

    add-int v1, p2, p3

    array-length v2, p4

    :goto_4
    if-ge p2, v1, :cond_71

    add-int/lit8 v3, p2, 0x1

    invoke-static {p1, p2}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v4

    const v5, 0xfffd

    if-ne v4, v5, :cond_58

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3c

    if-eq v3, v1, :cond_3c

    invoke-static {p1, v3}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3c

    add-int/lit8 v6, v3, 0x1

    invoke-static {p1, v3}, Ljj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    invoke-virtual {p0, v3}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v3

    move v4, v3

    if-ne v3, v5, :cond_3a

    move v3, v6

    goto :goto_3c

    :cond_3a
    move v3, v6

    goto :goto_58

    :cond_3c
    :goto_3c
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, p4, v0

    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    array-length v0, v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_55

    add-int/lit8 v0, v5, 0x1

    iget-object v7, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    aget-byte v6, v7, v6

    aput-byte v6, p4, v5

    move p2, v3

    goto :goto_4

    :cond_55
    move p2, v3

    move v0, v5

    goto :goto_4

    :cond_58
    :goto_58
    const/16 v5, 0xff

    if-le v4, v5, :cond_69

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p4, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v6, v4

    aput-byte v6, p4, v5

    goto :goto_6f

    :cond_69
    add-int/lit8 v5, v0, 0x1

    int-to-byte v6, v4

    aput-byte v6, p4, v0

    move v0, v5

    :goto_6f
    move p2, v3

    goto :goto_4

    :cond_71
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

    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/HKSCS$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public encodeSupp(I)I
    .registers 4

    const/high16 v0, 0xf0000

    and-int/2addr v0, p1

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_b

    const v0, 0xfffd

    return v0

    :cond_b
    iget-object v0, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->c2bSupp:[[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    aget-object v0, v0, v1

    and-int/lit16 v1, p1, 0xff

    aget-char v0, v0, v1

    return v0
.end method

.method protected implReplaceWith([B)V
    .registers 2

    iput-object p1, p0, Ljj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    return-void
.end method
