.class Ljj$/sun/nio/cs/EUC_JP$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "EUC_JP.java"

# interfaces
.implements Ljj$/sun/nio/cs/DelegatableDecoder;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEC0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

.field static final DEC0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

.field static final DEC0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;


# instance fields
.field private final dec0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

.field private final dec0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

.field private final dec0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/EUC_JP;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0201;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0201;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0201;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/SingleByte$Decoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->DEC0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0208;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0208;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0208;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->DEC0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    new-instance v0, Ljj$/sun/nio/cs/JIS_X_0212;

    invoke-direct {v0}, Ljj$/sun/nio/cs/JIS_X_0212;-><init>()V

    invoke-virtual {v0}, Ljj$/sun/nio/cs/JIS_X_0212;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->DEC0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 9

    sget-object v4, Ljj$/sun/nio/cs/EUC_JP$Decoder;->DEC0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v5, Ljj$/sun/nio/cs/EUC_JP$Decoder;->DEC0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v6, Ljj$/sun/nio/cs/EUC_JP$Decoder;->DEC0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljj$/sun/nio/cs/EUC_JP$Decoder;-><init>(Ljava/nio/charset/Charset;FFLjj$/sun/nio/cs/SingleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FFLjj$/sun/nio/cs/SingleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;Ljj$/sun/nio/cs/DoubleByte$Decoder;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    iput-object p4, p0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

    iput-object p5, p0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    iput-object p6, p0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 19

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
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0xfffd

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v6

    move v6, v0

    :goto_4a
    if-ge v9, v5, :cond_12f

    :try_start_4c
    aget-byte v0, v4, v9

    and-int/lit16 v6, v0, 0xff

    const/4 v12, 0x1

    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_59

    int-to-char v0, v6

    move v13, v0

    goto/16 :goto_e3

    :cond_59
    const/16 v0, 0x8f

    if-ne v6, v0, :cond_b7

    add-int/lit8 v0, v9, 0x3

    if-le v0, v5, :cond_7c

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_14a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v0

    :cond_7c
    add-int/lit8 v0, v9, 0x1

    :try_start_7e
    aget-byte v0, v4, v0

    and-int/lit16 v6, v0, 0xff

    add-int/lit8 v0, v9, 0x2

    aget-byte v0, v4, v0

    and-int/lit16 v11, v0, 0xff

    add-int/lit8 v12, v12, 0x2

    iget-object v0, v1, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    if-nez v0, :cond_ab

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_14a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v0

    :cond_ab
    :try_start_ab
    iget-object v0, v1, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v14, v6, -0x80

    add-int/lit8 v15, v11, -0x80

    invoke-virtual {v0, v14, v15}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v0

    move v13, v0

    goto :goto_e3

    :cond_b7
    add-int/lit8 v0, v9, 0x2

    if-le v0, v5, :cond_d6

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_bd
    .catchall {:try_start_ab .. :try_end_bd} :catchall_14a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v0

    :cond_d6
    add-int/lit8 v0, v9, 0x1

    :try_start_d8
    aget-byte v0, v4, v0

    and-int/lit16 v11, v0, 0xff

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v6, v11}, Ljj$/sun/nio/cs/EUC_JP$Decoder;->decodeDouble(II)C

    move-result v0

    move v13, v0

    :goto_e3
    const v0, 0xfffd

    if-ne v13, v0, :cond_105

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_ec
    .catchall {:try_start_d8 .. :try_end_ec} :catchall_14a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v0

    :cond_105
    add-int/lit8 v0, v10, 0x1

    if-le v0, v8, :cond_124

    :try_start_109
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_10b
    .catchall {:try_start_109 .. :try_end_10b} :catchall_14a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v0

    :cond_124
    add-int/lit8 v14, v10, 0x1

    :try_start_126
    aput-char v13, v7, v10
    :try_end_128
    .catchall {:try_start_126 .. :try_end_128} :catchall_12c

    add-int/2addr v9, v12

    move v10, v14

    goto/16 :goto_4a

    :catchall_12c
    move-exception v0

    move v10, v14

    goto :goto_14b

    :cond_12f
    :try_start_12f
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_131
    .catchall {:try_start_12f .. :try_end_131} :catchall_14a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    return-object v0

    :catchall_14a
    move-exception v0

    :goto_14b
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    throw v0
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xfffd

    :goto_a
    :try_start_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    const/4 v3, 0x1

    and-int/lit16 v5, v1, 0x80

    const/4 v6, 0x1

    if-nez v5, :cond_1e

    int-to-char v4, v1

    goto :goto_77

    :cond_1e
    const/16 v5, 0x8f

    if-ne v1, v5, :cond_5b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v7, 0x2

    if-ge v5, v7, :cond_32

    sget-object v5, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_a5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :cond_32
    :try_start_32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    add-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    if-nez v5, :cond_4f

    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v5
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_a5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :cond_4f
    :try_start_4f
    iget-object v5, p0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v7, v1, -0x80

    add-int/lit8 v8, v2, -0x80

    invoke-virtual {v5, v7, v8}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v5

    move v4, v5

    goto :goto_77

    :cond_5b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_6a

    sget-object v5, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_a5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v2}, Ljj$/sun/nio/cs/EUC_JP$Decoder;->decodeDouble(II)C

    move-result v5

    move v4, v5

    :goto_77
    const v5, 0xfffd

    if-ne v4, v5, :cond_87

    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v5
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_a5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :cond_87
    :try_start_87
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_96

    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_a5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :cond_96
    :try_start_96
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/2addr v0, v3

    goto/16 :goto_a

    :cond_9c
    sget-object v5, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_a5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :catchall_a5
    move-exception v5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    throw v5
.end method


# virtual methods
.method protected decodeDouble(II)C
    .registers 6

    const/16 v0, 0x8e

    if-ne p1, v0, :cond_14

    const/16 v0, 0x80

    if-ge p2, v0, :cond_c

    const v0, 0xfffd

    return v0

    :cond_c
    iget-object v0, p0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0201:Ljj$/sun/nio/cs/SingleByte$Decoder;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Ljj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result v0

    return v0

    :cond_14
    iget-object v0, p0, Ljj$/sun/nio/cs/EUC_JP$Decoder;->dec0208:Ljj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v1, p1, -0x80

    add-int/lit8 v2, p2, -0x80

    invoke-virtual {v0, v1, v2}, Ljj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v0

    return v0
.end method

.method public decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_JP$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/EUC_JP$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3

    invoke-super {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public implReset()V
    .registers 1

    invoke-super {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    return-void
.end method
