.class Ljj$/sun/nio/cs/GB18030$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "GB18030.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentState:I

.field private final sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/GB18030;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x40800000  # 4.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 v0, 0x2

    iput v0, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    new-instance v0, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/GB18030-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/GB18030$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 24

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

    const/4 v11, 0x0

    const/4 v12, 0x2

    iput v12, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    move v13, v11

    move v11, v10

    move v10, v9

    move v9, v6

    move v6, v0

    :goto_49
    if-ge v9, v5, :cond_1d9

    const/4 v0, 0x1

    :try_start_4c
    aget-char v14, v4, v9

    invoke-static {v14}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v15

    const/4 v12, 0x1

    if-eqz v15, :cond_8f

    iget-object v15, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v15, v14, v4, v9, v5}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v15

    move v6, v15

    if-gez v15, :cond_7d

    iget-object v12, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v12}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_1f4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_7d
    const v15, 0x1e248

    add-int/2addr v6, v15

    const/4 v15, 0x3

    :try_start_82
    iput v15, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    iget-object v15, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v15}, Ljj$/sun/nio/cs/Surrogate$Parser;->increment()I

    move-result v15

    move v0, v15

    const/16 v18, 0x1

    goto/16 :goto_11b

    :cond_8f
    if-ltz v14, :cond_9b

    const/16 v15, 0x7f

    if-gt v14, v15, :cond_9b

    iput v12, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    const/16 v18, 0x1

    goto/16 :goto_11b

    :cond_9b
    const v15, 0xa4c6

    const/16 v18, 0x1

    const v12, 0xe000

    if-le v14, v15, :cond_b8

    if-lt v14, v12, :cond_a8

    goto :goto_b8

    :cond_a8
    const v12, 0xa4c7

    if-lt v14, v12, :cond_11b

    const v12, 0xd7ff

    if-gt v14, v12, :cond_11b

    add-int/lit16 v6, v14, -0x5543

    const/4 v15, 0x3

    iput v15, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_11b

    :cond_b8
    :goto_b8
    invoke-static {}, Ljj$/sun/nio/cs/GB18030;->-$$Nest$sfgetencoderIndex1()[S

    move-result-object v15

    sget-object v12, Ljj$/sun/nio/cs/GB18030;->encoderIndex2:[Ljava/lang/String;

    invoke-direct {v1, v15, v12, v14}, Ljj$/sun/nio/cs/GB18030$Encoder;->getGB18030([S[Ljava/lang/String;C)I

    move-result v12

    const v15, 0xfffd

    if-ne v12, v15, :cond_e6

    invoke-static/range {v18 .. v18}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v15
    :try_end_cb
    .catchall {:try_start_82 .. :try_end_cb} :catchall_1f4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v16

    move/from16 v20, v0

    sub-int v0, v9, v16

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v15

    :cond_e6
    move/from16 v20, v0

    const v0, 0xff00

    and-int/2addr v0, v12

    shr-int/lit8 v11, v0, 0x8

    and-int/lit16 v13, v12, 0xff

    add-int/lit8 v0, v11, -0x20

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v13

    const v6, 0xf900

    const v15, 0xe000

    if-lt v14, v15, :cond_105

    if-ge v14, v6, :cond_105

    const v6, 0x82bd

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_10e

    :cond_105
    if-lt v14, v6, :cond_10d

    const v6, 0x93a9

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_10e

    :cond_10d
    move v6, v0

    :goto_10e
    const/16 v0, 0x80

    if-le v11, v0, :cond_116

    const/4 v0, 0x2

    :try_start_113
    iput v0, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_119

    :cond_116
    const/4 v15, 0x3

    iput v15, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    :goto_119
    move/from16 v0, v20

    :cond_11b
    :goto_11b
    iget v12, v1, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    packed-switch v12, :pswitch_data_20e

    move/from16 v19, v0

    const/4 v12, 0x2

    goto/16 :goto_1d5

    :pswitch_125  #0x3
    sub-int v12, v8, v10

    const/4 v15, 0x4

    if-ge v12, v15, :cond_145

    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_12c
    .catchall {:try_start_113 .. :try_end_12c} :catchall_1f4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_145
    :try_start_145
    rem-int/lit8 v12, v6, 0xa

    add-int/lit8 v12, v12, 0x30

    int-to-byte v12, v12

    div-int/lit8 v15, v6, 0xa

    move v6, v15

    rem-int/lit8 v15, v6, 0x7e

    add-int/lit16 v15, v15, 0x81

    int-to-byte v15, v15

    div-int/lit8 v17, v6, 0x7e

    move/from16 v6, v17

    rem-int/lit8 v17, v6, 0xa

    move/from16 v19, v0

    add-int/lit8 v0, v17, 0x30

    int-to-byte v0, v0

    move/from16 v17, v0

    div-int/lit8 v0, v6, 0xa
    :try_end_161
    .catchall {:try_start_145 .. :try_end_161} :catchall_1f4

    add-int/lit16 v0, v0, 0x81

    int-to-byte v0, v0

    add-int/lit8 v18, v10, 0x1

    :try_start_166
    aput-byte v0, v7, v10
    :try_end_168
    .catchall {:try_start_166 .. :try_end_168} :catchall_176

    add-int/lit8 v10, v18, 0x1

    :try_start_16a
    aput-byte v17, v7, v18
    :try_end_16c
    .catchall {:try_start_16a .. :try_end_16c} :catchall_1f4

    add-int/lit8 v18, v10, 0x1

    :try_start_16e
    aput-byte v15, v7, v10
    :try_end_170
    .catchall {:try_start_16e .. :try_end_170} :catchall_176

    add-int/lit8 v10, v18, 0x1

    :try_start_172
    aput-byte v12, v7, v18

    const/4 v12, 0x2

    goto :goto_1d5

    :catchall_176
    move-exception v0

    move/from16 v10, v18

    goto/16 :goto_1f5

    :pswitch_17b  #0x2
    move/from16 v19, v0

    sub-int v0, v8, v10

    const/4 v12, 0x2

    if-ge v0, v12, :cond_19d

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_184
    .catchall {:try_start_172 .. :try_end_184} :catchall_1f4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v2, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v10, v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_19d
    add-int/lit8 v15, v10, 0x1

    int-to-byte v0, v11

    :try_start_1a0
    aput-byte v0, v7, v10
    :try_end_1a2
    .catchall {:try_start_1a0 .. :try_end_1a2} :catchall_1d2

    add-int/lit8 v10, v15, 0x1

    int-to-byte v0, v13

    :try_start_1a5
    aput-byte v0, v7, v15

    goto :goto_1d5

    :pswitch_1a8  #0x1
    move/from16 v19, v0

    const/4 v12, 0x2

    sub-int v0, v8, v10

    const/4 v15, 0x1

    if-ge v0, v15, :cond_1cb

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1b2
    .catchall {:try_start_1a5 .. :try_end_1b2} :catchall_1f4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v2, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v10, v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1cb
    add-int/lit8 v15, v10, 0x1

    int-to-byte v0, v14

    :try_start_1ce
    aput-byte v0, v7, v10
    :try_end_1d0
    .catchall {:try_start_1ce .. :try_end_1d0} :catchall_1d2

    move v10, v15

    goto :goto_1d5

    :catchall_1d2
    move-exception v0

    move v10, v15

    goto :goto_1f5

    :goto_1d5
    add-int v9, v9, v19

    goto/16 :goto_49

    :cond_1d9
    :try_start_1d9
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1db
    .catchall {:try_start_1d9 .. :try_end_1db} :catchall_1f4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v2, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v10, v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_1f4
    move-exception v0

    :goto_1f5
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v2, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v10, v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    throw v0

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_1a8  #00000001
        :pswitch_17b  #00000002
        :pswitch_125  #00000003
    .end packed-switch
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    iput v3, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    :goto_a
    :try_start_a
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_113

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_3c

    iget-object v7, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7, v5, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v7

    move v0, v7

    if-gez v7, :cond_33

    iget-object v3, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_11c

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v3

    :cond_33
    const v7, 0x1e248

    add-int/2addr v0, v7

    :try_start_37
    iput v8, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    const/4 v6, 0x2

    goto/16 :goto_a6

    :cond_3c
    if-ltz v5, :cond_45

    const/16 v7, 0x7f

    if-gt v5, v7, :cond_45

    iput v9, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_a6

    :cond_45
    const v7, 0xa4c6

    const v10, 0xe000

    if-le v5, v7, :cond_5f

    if-lt v5, v10, :cond_50

    goto :goto_5f

    :cond_50
    const v7, 0xa4c7

    if-lt v5, v7, :cond_a6

    const v7, 0xd7ff

    if-gt v5, v7, :cond_a6

    add-int/lit16 v0, v5, -0x5543

    iput v8, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_a6

    :cond_5f
    :goto_5f
    invoke-static {}, Ljj$/sun/nio/cs/GB18030;->-$$Nest$sfgetencoderIndex1()[S

    move-result-object v7

    sget-object v11, Ljj$/sun/nio/cs/GB18030;->encoderIndex2:[Ljava/lang/String;

    invoke-direct {p0, v7, v11, v5}, Ljj$/sun/nio/cs/GB18030$Encoder;->getGB18030([S[Ljava/lang/String;C)I

    move-result v7

    const v11, 0xfffd

    if-ne v7, v11, :cond_79

    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_37 .. :try_end_72} :catchall_11c

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    return-object v3

    :cond_79
    const v11, 0xff00

    and-int/2addr v11, v7

    shr-int/lit8 v1, v11, 0x8

    and-int/lit16 v2, v7, 0xff

    add-int/lit8 v11, v1, -0x20

    mul-int/lit16 v11, v11, 0x100

    add-int/2addr v11, v2

    const v0, 0xf900

    if-lt v5, v10, :cond_93

    if-ge v5, v0, :cond_93

    const v0, 0x82bd

    add-int/2addr v11, v0

    move v0, v11

    goto :goto_9c

    :cond_93
    if-lt v5, v0, :cond_9b

    const v0, 0x93a9

    add-int/2addr v11, v0

    move v0, v11

    goto :goto_9c

    :cond_9b
    move v0, v11

    :goto_9c
    const/16 v10, 0x80

    if-le v1, v10, :cond_a3

    :try_start_a0
    iput v3, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_a5

    :cond_a3
    iput v8, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    :goto_a5
    nop

    :cond_a6
    :goto_a6
    iget v7, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    if-ne v7, v9, :cond_be

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v9, :cond_b9

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_b2
    .catchall {:try_start_a0 .. :try_end_b2} :catchall_11c

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v3

    :cond_b9
    int-to-byte v7, v5

    :try_start_ba
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_110

    :cond_be
    iget v7, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    if-ne v7, v3, :cond_da

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v3, :cond_d1

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_ca
    .catchall {:try_start_ba .. :try_end_ca} :catchall_11c

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v3

    :cond_d1
    int-to-byte v7, v1

    :try_start_d2
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v7, v2

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_110

    :cond_da
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_ea

    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_e3
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_11c

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v3

    :cond_ea
    :try_start_ea
    rem-int/lit8 v7, v0, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    div-int/lit8 v8, v0, 0xa

    move v0, v8

    rem-int/lit8 v8, v0, 0x7e

    add-int/lit16 v8, v8, 0x81

    int-to-byte v8, v8

    div-int/lit8 v9, v0, 0x7e

    move v0, v9

    rem-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-byte v9, v9

    div-int/lit8 v10, v0, 0xa

    add-int/lit16 v10, v10, 0x81

    int-to-byte v10, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_110
    add-int/2addr v4, v6

    goto/16 :goto_a

    :cond_113
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_115
    .catchall {:try_start_ea .. :try_end_115} :catchall_11c

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v3

    :catchall_11c
    move-exception v3

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    throw v3
.end method

.method private getGB18030([S[Ljava/lang/String;C)I
    .registers 8

    const v0, 0xff00

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x8

    aget-short v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0xc

    aget-object v1, p2, v1

    and-int/lit16 v2, v0, 0xfff

    and-int/lit16 v3, p3, 0xff

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/GB18030$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/GB18030$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReset()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Ljj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    return-void
.end method
