.class abstract Ljj$/sun/nio/cs/UnicodeDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UnicodeDecoder.java"


# static fields
.field protected static final BIG:I = 0x1

.field protected static final BYTE_ORDER_MARK:C = '\ufeff'

.field protected static final LITTLE:I = 0x2

.field protected static final NONE:I = 0x0

.field protected static final REVERSED_MARK:C = '\ufffe'


# instance fields
.field private currentByteOrder:I

.field private defaultByteOrder:I

.field private final expectedByteOrder:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .registers 5

    const/high16 v0, 0x3f000000  # 0.5f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 v0, 0x1

    iput v0, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    iput p2, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    iput p2, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->expectedByteOrder:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/UnicodeDecoder;-><init>(Ljava/nio/charset/Charset;I)V

    iput p3, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    return-void
.end method

.method private decode(II)C
    .registers 5

    iget v0, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p2

    int-to-char v0, v0

    return v0

    :cond_a
    shl-int/lit8 v0, p2, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    const v5, 0xfffe

    const/4 v6, 0x2

    if-nez v4, :cond_38

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v3

    int-to-char v4, v4

    const v7, 0xfeff

    if-ne v4, v7, :cond_2d

    iput v2, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_2d
    if-ne v4, v5, :cond_34

    iput v6, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_34
    iget v2, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    iput v2, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    :cond_38
    invoke-direct {p0, v1, v3}, Ljj$/sun/nio/cs/UnicodeDecoder;->decode(II)C

    move-result v2

    if-ne v2, v5, :cond_49

    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_ca

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_49
    :try_start_49
    invoke-static {v2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v6, :cond_64

    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_ca

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_64
    :try_start_64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-direct {p0, v4, v5}, Ljj$/sun/nio/cs/UnicodeDecoder;->decode(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_86

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v5
    :try_end_7f
    .catchall {:try_start_64 .. :try_end_7f} :catchall_ca

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :cond_86
    :try_start_86
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_95

    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_ca

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    return-object v5

    :cond_95
    add-int/lit8 v0, v0, 0x4

    :try_start_97
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_4

    :cond_9f
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_a3
    .catchall {:try_start_97 .. :try_end_a3} :catchall_ca

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_aa
    :try_start_aa
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_b9

    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_ca

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    return-object v4

    :cond_b9
    add-int/lit8 v0, v0, 0x2

    :try_start_bb
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    nop

    goto/16 :goto_4

    :cond_c1
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_c3
    .catchall {:try_start_bb .. :try_end_c3} :catchall_ca

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_ca
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method

.method protected implReset()V
    .registers 2

    iget v0, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->expectedByteOrder:I

    iput v0, p0, Ljj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    return-void
.end method
