.class Ljj$/sun/nio/cs/EUC_JP$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "EUC_JP.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ENC0201:Ljj$/sun/nio/cs/SingleByte$Encoder;

.field static final ENC0208:Ljj$/sun/nio/cs/DoubleByte$Encoder;

.field static final ENC0212:Ljj$/sun/nio/cs/DoubleByte$Encoder;


# instance fields
.field private final enc0201:Ljj$/sun/nio/cs/SingleByte$Encoder;

.field private final enc0208:Ljj$/sun/nio/cs/DoubleByte$Encoder;

.field private final enc0212:Ljj$/sun/nio/cs/DoubleByte$Encoder;

.field private final sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/EUC_JP;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0201;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0201;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0201;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/SingleByte$Encoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->ENC0201:Ljj$/sun/nio/cs/SingleByte$Encoder;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0208;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0208;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0208;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->ENC0208:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0212;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0212;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0212;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->ENC0212:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 9

    sget-object v4, Ljj$/sun/nio/cs/EUC_JP$Encoder;->ENC0201:Ljj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v5, Ljj$/sun/nio/cs/EUC_JP$Encoder;->ENC0208:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    sget-object v6, Ljj$/sun/nio/cs/EUC_JP$Encoder;->ENC0212:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    const/high16 v2, 0x40400000  # 3.0f

    const/high16 v3, 0x40400000  # 3.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljj$/sun/nio/cs/EUC_JP$Encoder;-><init>(Ljava/nio/charset/Charset;FFLjj$/sun/nio/cs/SingleByte$Encoder;Ljj$/sun/nio/cs/DoubleByte$Encoder;Ljj$/sun/nio/cs/DoubleByte$Encoder;)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FFLjj$/sun/nio/cs/SingleByte$Encoder;Ljj$/sun/nio/cs/DoubleByte$Encoder;Ljj$/sun/nio/cs/DoubleByte$Encoder;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    new-instance v0, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    iput-object p4, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->enc0201:Ljj$/sun/nio/cs/SingleByte$Encoder;

    iput-object p5, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->enc0208:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    iput-object p6, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->enc0212:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 22

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

    nop

    if-gt v0, v5, :cond_21

    move v6, v0

    goto :goto_22

    :cond_21
    move v6, v5

    :goto_22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    nop

    if-gt v0, v8, :cond_3d

    move v9, v0

    goto :goto_3e

    :cond_3d
    move v9, v8

    :goto_3e
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [B

    move v12, v9

    move v9, v6

    move v6, v0

    :goto_46
    if-ge v9, v5, :cond_12e

    move-object v0, v11

    :try_start_49
    aget-char v13, v4, v9

    invoke-static {v13}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_97

    iget-object v14, v1, Ljj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v14, v13, v4, v9, v5}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v14

    if-gez v14, :cond_78

    iget-object v14, v1, Ljj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v14}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_149

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v12, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v14

    :cond_78
    :try_start_78
    iget-object v14, v1, Ljj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v14}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_149

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v12, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v14

    :cond_97
    :try_start_97
    invoke-virtual {v1, v13, v0}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeSingle(C[B)I

    move-result v14

    move v6, v14

    if-nez v6, :cond_f8

    invoke-virtual {v1, v13}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v14

    const v15, 0xfffd

    const/16 v16, 0x1

    if-eq v14, v15, :cond_d9

    const/high16 v15, 0xff0000

    and-int/2addr v15, v14

    const v17, 0xff00

    const/16 v18, 0x0

    if-nez v15, :cond_c3

    and-int v15, v14, v17

    shr-int/lit8 v15, v15, 0x8

    int-to-byte v15, v15

    aput-byte v15, v0, v18

    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    aput-byte v15, v0, v16

    const/4 v6, 0x2

    move-object/from16 v17, v0

    goto :goto_fa

    :cond_c3
    const/16 v15, -0x71

    aput-byte v15, v0, v18

    and-int v15, v14, v17

    shr-int/lit8 v15, v15, 0x8

    int-to-byte v15, v15

    aput-byte v15, v0, v16

    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    const/16 v16, 0x2

    aput-byte v15, v0, v16

    const/4 v6, 0x3

    move-object/from16 v17, v0

    goto :goto_fa

    :cond_d9
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v15
    :try_end_dd
    .catchall {:try_start_97 .. :try_end_dd} :catchall_149

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v16

    move-object/from16 v17, v0

    sub-int v0, v9, v16

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, v12, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v15

    :cond_f8
    move-object/from16 v17, v0

    :goto_fa
    sub-int v0, v8, v12

    if-ge v0, v6, :cond_119

    :try_start_fe
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_100
    .catchall {:try_start_fe .. :try_end_100} :catchall_149

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v12, v14

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_119
    const/4 v0, 0x0

    :goto_11a
    if-ge v0, v6, :cond_129

    add-int/lit8 v14, v12, 0x1

    :try_start_11e
    aget-byte v15, v17, v0

    aput-byte v15, v7, v12
    :try_end_122
    .catchall {:try_start_11e .. :try_end_122} :catchall_126

    add-int/lit8 v0, v0, 0x1

    move v12, v14

    goto :goto_11a

    :catchall_126
    move-exception v0

    move v12, v14

    goto :goto_14a

    :cond_129
    nop

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_46

    :cond_12e
    :try_start_12e
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_130
    .catchall {:try_start_12e .. :try_end_130} :catchall_149

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v12, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_149
    move-exception v0

    :goto_14a
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v12, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    throw v0
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [B

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    :goto_9
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_a1

    move-object v4, v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3c

    iget-object v6, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v6, v5, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v6

    if-gez v6, :cond_2f

    iget-object v6, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v6}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_aa

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v6

    :cond_2f
    :try_start_2f
    iget-object v6, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v6}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_aa

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v6

    :cond_3c
    :try_start_3c
    invoke-virtual {p0, v5, v4}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeSingle(C[B)I

    move-result v6

    move v0, v6

    if-nez v0, :cond_82

    invoke-virtual {p0, v5}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v6

    const v7, 0xfffd

    const/4 v8, 0x1

    if-eq v6, v7, :cond_77

    const/high16 v7, 0xff0000

    and-int/2addr v7, v6

    const v9, 0xff00

    const/4 v10, 0x0

    if-nez v7, :cond_64

    and-int v7, v6, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    const/4 v0, 0x2

    goto :goto_82

    :cond_64
    const/16 v7, -0x71

    aput-byte v7, v4, v10

    and-int v7, v6, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v4, v8

    const/4 v0, 0x3

    goto :goto_82

    :cond_77
    invoke-static {v8}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v7
    :try_end_7b
    .catchall {:try_start_3c .. :try_end_7b} :catchall_aa

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    return-object v7

    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v0, :cond_91

    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_aa

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v6

    :cond_91
    const/4 v6, 0x0

    :goto_92
    if-ge v6, v0, :cond_9c

    :try_start_94
    aget-byte v7, v4, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_92

    :cond_9c
    nop

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_a1
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_aa

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :catchall_aa
    move-exception v4

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    throw v4
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeSingle(C[B)I

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p1}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v1

    const v2, 0xfffd

    if-eq v1, v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method protected encodeDouble(C)I
    .registers 5

    iget-object v0, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->enc0208:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v0, p1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    const v1, 0xfffd

    if-eq v0, v1, :cond_10

    const v1, 0x8080

    add-int/2addr v1, v0

    return v1

    :cond_10
    iget-object v2, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->enc0212:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    if-eqz v2, :cond_20

    iget-object v2, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->enc0212:Ljj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v2, p1}, Ljj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    if-eq v0, v1, :cond_20

    const v1, 0x8f8080

    add-int/2addr v0, v1

    :cond_20
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

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_JP$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected encodeSingle(C[B)I
    .registers 7

    iget-object v0, p0, Ljj$/sun/nio/cs/EUC_JP$Encoder;->enc0201:Ljj$/sun/nio/cs/SingleByte$Encoder;

    invoke-virtual {v0, p1}, Ljj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v0

    const v1, 0xfffd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    return v2

    :cond_d
    const/4 v1, 0x1

    if-ltz v0, :cond_18

    const/16 v3, 0x80

    if-ge v0, v3, :cond_18

    int-to-byte v3, v0

    aput-byte v3, p2, v2

    return v1

    :cond_18
    const/16 v3, -0x72

    aput-byte v3, p2, v2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    const/4 v1, 0x2

    return v1
.end method
