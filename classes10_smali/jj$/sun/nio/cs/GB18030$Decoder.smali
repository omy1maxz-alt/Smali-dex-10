.class Ljj$/sun/nio/cs/GB18030$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "GB18030.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final REPLACE_CHAR:C = '\ufffd'


# instance fields
.field private currentState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/GB18030;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    const/high16 v1, 0x40000000  # 2.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 v0, 0x2

    iput v0, p0, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/GB18030-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/GB18030$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    nop

    if-gt v0, v5, :cond_21

    move v6, v0

    goto :goto_22

    :cond_21
    move v6, v5

    :goto_22
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    nop

    if-gt v0, v8, :cond_3d

    move v9, v0

    goto :goto_3e

    :cond_3d
    move v9, v8

    :goto_3e
    const/4 v0, 0x1

    move v10, v9

    move v9, v6

    move v6, v0

    :goto_42
    if-ge v9, v5, :cond_311

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_48
    aget-byte v14, v4, v9
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_30b

    const/16 v15, 0xff

    and-int/lit16 v0, v14, 0xff

    const/4 v6, 0x1

    and-int/lit8 v14, v0, -0x80

    const/4 v15, 0x1

    if-nez v14, :cond_61

    :try_start_54
    iput v15, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    const/16 v21, 0x1

    goto/16 :goto_15b

    :catchall_5a
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_331

    :cond_61
    const/16 v14, 0x81

    if-lt v0, v14, :cond_2e8

    const/16 v14, 0xfe

    if-le v0, v14, :cond_6f

    move-object/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_2ec

    :cond_6f
    const/16 v21, 0x1

    sub-int v15, v5, v9

    const/4 v14, 0x2

    if-ge v15, v14, :cond_91

    sget-object v14, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_78
    .catchall {:try_start_54 .. :try_end_78} :catchall_5a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    return-object v14

    :cond_91
    add-int/lit8 v14, v9, 0x1

    :try_start_93
    aget-byte v14, v4, v14
    :try_end_95
    .catchall {:try_start_93 .. :try_end_95} :catchall_30b

    const/16 v15, 0xff

    and-int/lit16 v11, v14, 0xff

    const/4 v6, 0x2

    const/16 v14, 0x30

    if-ge v11, v14, :cond_bb

    :try_start_9e
    invoke-static/range {v21 .. v21}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_5a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    return-object v14

    :cond_bb
    const/16 v14, 0x30

    if-lt v11, v14, :cond_146

    const/16 v14, 0x39

    if-gt v11, v14, :cond_146

    const/4 v15, 0x3

    :try_start_c4
    iput v15, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    const/16 v22, 0x3

    sub-int v15, v5, v9

    const/4 v14, 0x4

    if-ge v15, v14, :cond_e8

    sget-object v14, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_cf
    .catchall {:try_start_c4 .. :try_end_cf} :catchall_5a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    return-object v14

    :cond_e8
    add-int/lit8 v14, v9, 0x2

    :try_start_ea
    aget-byte v14, v4, v14

    const/16 v15, 0xff

    and-int/lit16 v12, v14, 0xff

    const/16 v14, 0x81

    if-lt v12, v14, :cond_129

    const/16 v14, 0xfe

    if-le v12, v14, :cond_f9

    goto :goto_129

    :cond_f9
    add-int/lit8 v14, v9, 0x3

    aget-byte v14, v4, v14

    const/16 v15, 0xff

    and-int/lit16 v13, v14, 0xff

    const/4 v6, 0x4

    const/16 v14, 0x30

    if-lt v13, v14, :cond_10a

    const/16 v14, 0x39

    if-le v13, v14, :cond_15b

    :cond_10a
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_110
    .catchall {:try_start_ea .. :try_end_110} :catchall_5a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    return-object v14

    :cond_129
    :goto_129
    :try_start_129
    invoke-static/range {v22 .. v22}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_5a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    return-object v14

    :cond_146
    const/16 v14, 0x7f

    if-eq v11, v14, :cond_2c5

    const/16 v15, 0xff

    if-eq v11, v15, :cond_2c5

    const/16 v14, 0x40

    if-ge v11, v14, :cond_158

    move-object/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_2c9

    :cond_158
    const/4 v14, 0x2

    :try_start_159
    iput v14, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I
    :try_end_15b
    .catchall {:try_start_159 .. :try_end_15b} :catchall_30b

    :cond_15b
    :goto_15b
    sub-int v14, v8, v10

    const/4 v15, 0x1

    if-ge v14, v15, :cond_17b

    :try_start_160
    sget-object v14, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_162
    .catchall {:try_start_160 .. :try_end_162} :catchall_5a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v10, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    return-object v14

    :cond_17b
    :try_start_17b
    iget v14, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I
    :try_end_17d
    .catchall {:try_start_17b .. :try_end_17d} :catchall_30b

    packed-switch v14, :pswitch_data_34a

    move-object/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_2be

    :pswitch_186  #0x3
    add-int/lit16 v14, v0, -0x81

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v11, -0x30

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x7e

    add-int/2addr v14, v12

    const/16 v15, 0x81

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v13

    const/16 v19, 0x30

    add-int/lit8 v14, v14, -0x30

    shr-int/lit8 v15, v14, 0x8

    move-object/from16 v18, v4

    const/16 v4, 0xff

    and-int/2addr v4, v15

    and-int/lit16 v15, v14, 0xff

    move/from16 v16, v4

    const/16 v4, 0x4a62

    if-gt v14, v4, :cond_1bc

    add-int/lit8 v4, v10, 0x1

    :try_start_1ab
    invoke-direct {v1, v14}, Ljj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v17

    aput-char v17, v7, v10
    :try_end_1b1
    .catchall {:try_start_1ab .. :try_end_1b1} :catchall_1b6

    move v10, v4

    move/from16 v19, v5

    goto/16 :goto_2be

    :catchall_1b6
    move-exception v0

    move v10, v4

    move/from16 v19, v5

    goto/16 :goto_331

    :cond_1bc
    if-le v14, v4, :cond_1d9

    const v4, 0x82bc

    if-gt v14, v4, :cond_1d9

    add-int/lit8 v4, v10, 0x1

    move/from16 v17, v4

    add-int/lit16 v4, v14, 0x5543

    int-to-char v4, v4

    :try_start_1ca
    aput-char v4, v7, v10
    :try_end_1cc
    .catchall {:try_start_1ca .. :try_end_1cc} :catchall_1d2

    move/from16 v19, v5

    move/from16 v10, v17

    goto/16 :goto_2be

    :catchall_1d2
    move-exception v0

    move/from16 v19, v5

    move/from16 v10, v17

    goto/16 :goto_331

    :cond_1d9
    const v4, 0x82bd

    move/from16 v19, v5

    const v5, 0x830d

    if-lt v14, v4, :cond_1f0

    if-gt v14, v5, :cond_1f0

    add-int/lit8 v4, v10, 0x1

    :try_start_1e7
    invoke-direct {v1, v14}, Ljj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v5

    aput-char v5, v7, v10

    move v10, v4

    goto/16 :goto_2be

    :cond_1f0
    if-lt v14, v5, :cond_201

    const v4, 0x93a8

    if-gt v14, v4, :cond_201

    add-int/lit8 v4, v10, 0x1

    add-int/lit16 v5, v14, 0x6557

    int-to-char v5, v5

    aput-char v5, v7, v10

    move v10, v4

    goto/16 :goto_2be

    :cond_201
    const v4, 0x93a9

    if-lt v14, v4, :cond_216

    const v4, 0x99fb

    if-gt v14, v4, :cond_216

    add-int/lit8 v4, v10, 0x1

    invoke-direct {v1, v14}, Ljj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v5

    aput-char v5, v7, v10
    :try_end_213
    .catchall {:try_start_1e7 .. :try_end_213} :catchall_2ba

    move v10, v4

    goto/16 :goto_2be

    :cond_216
    const v4, 0x2e248

    if-lt v14, v4, :cond_284

    const v4, 0x12e248

    if-ge v14, v4, :cond_284

    if-lt v14, v4, :cond_241

    const/16 v17, 0x4

    :try_start_224
    invoke-static/range {v17 .. v17}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_228
    .catchall {:try_start_224 .. :try_end_228} :catchall_330

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_241
    const v4, 0x1e248

    sub-int/2addr v14, v4

    sub-int v4, v8, v10

    const/4 v5, 0x2

    if-ge v4, v5, :cond_265

    :try_start_24a
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_24c
    .catchall {:try_start_24a .. :try_end_24c} :catchall_330

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_265
    add-int/lit8 v4, v10, 0x1

    const/high16 v17, 0x10000

    sub-int v5, v14, v17

    :try_start_26b
    div-int/lit16 v5, v5, 0x400

    const v20, 0xd800

    add-int v5, v5, v20

    int-to-char v5, v5

    aput-char v5, v7, v10
    :try_end_275
    .catchall {:try_start_26b .. :try_end_275} :catchall_2ba

    add-int/lit8 v10, v4, 0x1

    sub-int v5, v14, v17

    :try_start_279
    rem-int/lit16 v5, v5, 0x400

    const v17, 0xdc00

    add-int v5, v5, v17

    int-to-char v5, v5

    aput-char v5, v7, v4

    goto :goto_2be

    :cond_284
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_288
    .catchall {:try_start_279 .. :try_end_288} :catchall_330

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :pswitch_2a1  #0x2
    move-object/from16 v18, v4

    move/from16 v19, v5

    add-int/lit8 v4, v10, 0x1

    :try_start_2a7
    invoke-virtual {v1, v0, v11}, Ljj$/sun/nio/cs/GB18030$Decoder;->decodeDouble(II)C

    move-result v5

    aput-char v5, v7, v10

    move v10, v4

    goto :goto_2be

    :pswitch_2af  #0x1
    move-object/from16 v18, v4

    move/from16 v19, v5

    add-int/lit8 v4, v10, 0x1

    int-to-char v5, v0

    aput-char v5, v7, v10
    :try_end_2b8
    .catchall {:try_start_2a7 .. :try_end_2b8} :catchall_2ba

    move v10, v4

    goto :goto_2be

    :catchall_2ba
    move-exception v0

    move v10, v4

    goto/16 :goto_331

    :goto_2be
    add-int/2addr v9, v6

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto/16 :goto_42

    :cond_2c5
    move-object/from16 v18, v4

    move/from16 v19, v5

    :goto_2c9
    const/16 v20, 0x2

    :try_start_2cb
    invoke-static/range {v20 .. v20}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_2cf
    .catchall {:try_start_2cb .. :try_end_2cf} :catchall_330

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :cond_2e8
    move-object/from16 v18, v4

    move/from16 v19, v5

    :goto_2ec
    const/16 v21, 0x1

    :try_start_2ee
    invoke-static/range {v21 .. v21}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_2f2
    .catchall {:try_start_2ee .. :try_end_2f2} :catchall_330

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    return-object v4

    :catchall_30b
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    goto :goto_331

    :cond_311
    move-object/from16 v18, v4

    move/from16 v19, v5

    :try_start_315
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_317
    .catchall {:try_start_315 .. :try_end_317} :catchall_330

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v9, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v10, v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v0

    :catchall_330
    move-exception v0

    :goto_331
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v9, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v10, v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    throw v0

    :pswitch_data_34a
    .packed-switch 0x1
        :pswitch_2af  #00000001
        :pswitch_2a1  #00000002
        :pswitch_186  #00000003
    .end packed-switch
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v4, v0

    :goto_b
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1a1

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v0, v8, 0xff

    const/4 v8, 0x1

    and-int/lit8 v10, v0, -0x80

    const/4 v12, 0x2

    const/16 v13, 0x81

    const/16 v14, 0x30

    const/4 v15, 0x1

    if-nez v10, :cond_2e

    iput v15, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    const/16 v16, 0x4

    goto/16 :goto_af

    :cond_2e
    if-lt v0, v13, :cond_194

    const/16 v10, 0xfe

    if-le v0, v10, :cond_36

    goto/16 :goto_194

    :cond_36
    const/16 v16, 0x4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-ge v11, v15, :cond_47

    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_47
    :try_start_47
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v5, v11, 0xff

    const/4 v8, 0x2

    if-ge v5, v14, :cond_5b

    invoke-static {v15}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_5b
    if-lt v5, v14, :cond_a1

    const/16 v11, 0x39

    if-gt v5, v11, :cond_a1

    const/4 v15, 0x3

    :try_start_62
    iput v15, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    const/16 v18, 0x3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    if-ge v15, v12, :cond_75

    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_75
    :try_start_75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v6, v15, 0xff

    if-lt v6, v13, :cond_96

    if-le v6, v10, :cond_80

    goto :goto_96

    :cond_80
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v7, v10, 0xff

    const/4 v8, 0x4

    if-lt v7, v14, :cond_8b

    if-le v7, v11, :cond_af

    :cond_8b
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_96
    :goto_96
    :try_start_96
    invoke-static/range {v18 .. v18}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_a1
    const/16 v10, 0x7f

    if-eq v5, v10, :cond_189

    if-eq v5, v9, :cond_189

    const/16 v10, 0x40

    if-ge v5, v10, :cond_ad

    goto/16 :goto_189

    :cond_ad
    :try_start_ad
    iput v12, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    :cond_af
    :goto_af
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_bf

    sget-object v9, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_b8
    .catchall {:try_start_ad .. :try_end_b8} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_bf
    :try_start_bf
    iget v10, v1, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    packed-switch v10, :pswitch_data_1b2

    goto/16 :goto_186

    :pswitch_c6  #0x3
    add-int/lit16 v10, v0, -0x81

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v5, -0x30

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x7e

    add-int/2addr v10, v6

    sub-int/2addr v10, v13

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v7

    sub-int/2addr v10, v14

    shr-int/lit8 v11, v10, 0x8

    and-int/2addr v9, v11

    and-int/lit16 v11, v10, 0xff

    const/16 v13, 0x4a62

    if-gt v10, v13, :cond_e7

    invoke-direct {v1, v10}, Ljj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_186

    :cond_e7
    if-le v10, v13, :cond_f6

    const v13, 0x82bc

    if-gt v10, v13, :cond_f6

    add-int/lit16 v12, v10, 0x5543

    int-to-char v12, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_186

    :cond_f6
    const v13, 0x82bd

    const v14, 0x830d

    if-lt v10, v13, :cond_109

    if-gt v10, v14, :cond_109

    invoke-direct {v1, v10}, Ljj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_186

    :cond_109
    if-lt v10, v14, :cond_117

    const v13, 0x93a8

    if-gt v10, v13, :cond_117

    add-int/lit16 v12, v10, 0x6557

    int-to-char v12, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_186

    :cond_117
    const v13, 0x93a9

    if-lt v10, v13, :cond_129

    const v13, 0x99fb

    if-gt v10, v13, :cond_129

    invoke-direct {v1, v10}, Ljj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_186

    :cond_129
    const v13, 0x2e248

    if-lt v10, v13, :cond_16e

    const v13, 0x12e248

    if-ge v10, v13, :cond_16e

    if-lt v10, v13, :cond_140

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_139
    .catchall {:try_start_bf .. :try_end_139} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_140
    const v13, 0x1e248

    sub-int/2addr v10, v13

    :try_start_144
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v13

    if-ge v13, v12, :cond_153

    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_14c
    .catchall {:try_start_144 .. :try_end_14c} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :cond_153
    const/high16 v12, 0x10000

    sub-int v13, v10, v12

    :try_start_157
    div-int/lit16 v13, v13, 0x400

    const v14, 0xd800

    add-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    sub-int v12, v10, v12

    rem-int/lit16 v12, v12, 0x400

    const v13, 0xdc00

    add-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_186

    :cond_16e
    invoke-static {v8}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_172
    .catchall {:try_start_157 .. :try_end_172} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    return-object v12

    :pswitch_179  #0x2
    :try_start_179
    invoke-virtual {v1, v0, v5}, Ljj$/sun/nio/cs/GB18030$Decoder;->decodeDouble(II)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_186

    :pswitch_181  #0x1
    int-to-char v9, v0

    invoke-virtual {v3, v9}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    nop

    :goto_186
    add-int/2addr v4, v8

    goto/16 :goto_b

    :cond_189
    :goto_189
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_18d
    .catchall {:try_start_179 .. :try_end_18d} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_194
    :goto_194
    const/16 v17, 0x1

    :try_start_196
    invoke-static/range {v17 .. v17}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_19a
    .catchall {:try_start_196 .. :try_end_19a} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    return-object v9

    :cond_1a1
    :try_start_1a1
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1a3
    .catchall {:try_start_1a1 .. :try_end_1a3} :catchall_1aa

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_1aa
    move-exception v0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    throw v0

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_181  #00000001
        :pswitch_179  #00000002
        :pswitch_c6  #00000003
    .end packed-switch
.end method

.method private getChar(I)C
    .registers 9

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, p1, 0xff

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-ltz v0, :cond_39

    invoke-static {}, Ljj$/sun/nio/cs/GB18030;->-$$Nest$sfgetdecoderIndex1()[S

    move-result-object v4

    array-length v4, v4

    if-gt v0, v4, :cond_39

    if-lt v1, v2, :cond_39

    if-le v1, v3, :cond_17

    goto :goto_39

    :cond_17
    invoke-static {}, Ljj$/sun/nio/cs/GB18030;->-$$Nest$sfgetdecoderIndex1()[S

    move-result-object v4

    aget-short v4, v4, v0

    and-int/lit8 v4, v4, 0xf

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    mul-int v4, v4, v5

    sub-int v5, v1, v2

    add-int/2addr v4, v5

    sget-object v5, Ljj$/sun/nio/cs/GB18030;->decoderIndex2:[Ljava/lang/String;

    invoke-static {}, Ljj$/sun/nio/cs/GB18030;->-$$Nest$sfgetdecoderIndex1()[S

    move-result-object v6

    aget-short v6, v6, v0

    shr-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    return v5

    :cond_39
    :goto_39
    const v4, 0xfffd

    return v4
.end method


# virtual methods
.method protected decodeDouble(II)C
    .registers 8

    const/16 v0, 0x40

    const/16 v1, 0xfe

    if-ltz p1, :cond_2e

    sget-object v2, Ljj$/sun/nio/cs/GB18030;->index1:[S

    array-length v2, v2

    if-gt p1, v2, :cond_2e

    if-lt p2, v0, :cond_2e

    if-le p2, v1, :cond_10

    goto :goto_2e

    :cond_10
    sget-object v2, Ljj$/sun/nio/cs/GB18030;->index1:[S

    aget-short v2, v2, p1

    and-int/lit8 v2, v2, 0xf

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    sub-int v3, p2, v0

    add-int/2addr v2, v3

    sget-object v3, Ljj$/sun/nio/cs/GB18030;->index2:[Ljava/lang/String;

    sget-object v4, Ljj$/sun/nio/cs/GB18030;->index1:[S

    aget-short v4, v4, p1

    shr-int/lit8 v4, v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    return v3

    :cond_2e
    :goto_2e
    const v2, 0xfffd

    return v2
.end method

.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/GB18030$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/GB18030$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReset()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Ljj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    return-void
.end method
