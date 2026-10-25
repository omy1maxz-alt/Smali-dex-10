.class public Ljj$/sun/nio/cs/UTF_32Coder$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF_32Coder.java"


# instance fields
.field private currentBO:I

.field private expectedBO:I


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;I)V
    .registers 5

    const/high16 v0, 0x3e800000  # 0.25f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    iput p2, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    const/4 v0, 0x0

    iput v0, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    return-void
.end method

.method private getCP(Ljava/nio/ByteBuffer;)I
    .registers 4

    iget v0, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_48

    :cond_27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    :goto_48
    return v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_a

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_e
    iget v2, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    const/4 v3, 0x2

    if-nez v2, :cond_61

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    const v4, 0xfeff

    const/4 v5, 0x1

    if-ne v2, v4, :cond_43

    iget v4, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    if-eq v4, v3, :cond_43

    iput v5, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    add-int/lit8 v0, v0, 0x4

    goto :goto_61

    :cond_43
    const/high16 v4, -0x20000

    if-ne v2, v4, :cond_50

    iget v4, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    if-eq v4, v5, :cond_50

    iput v3, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    add-int/lit8 v0, v0, 0x4

    goto :goto_61

    :cond_50
    iget v4, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    if-nez v4, :cond_57

    iput v5, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    goto :goto_5b

    :cond_57
    iget v4, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    iput v4, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    :goto_5b
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    :cond_61
    :goto_61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_b8

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->getCP(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_80

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_79
    .catchall {:try_start_e .. :try_end_79} :catchall_c1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v1

    :cond_80
    add-int/lit8 v0, v0, 0x4

    int-to-char v4, v2

    :try_start_83
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_61

    :cond_87
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_9c

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_95
    .catchall {:try_start_83 .. :try_end_95} :catchall_c1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v1

    :cond_9c
    add-int/lit8 v0, v0, 0x4

    :try_start_9e
    invoke-static {v2}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-static {v2}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_61

    :cond_ad
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_b1
    .catchall {:try_start_9e .. :try_end_b1} :catchall_c1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v1

    :cond_b8
    :try_start_b8
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_c1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_c1
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method

.method protected implReset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ljj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    return-void
.end method
