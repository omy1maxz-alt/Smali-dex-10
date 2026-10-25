.class public abstract Ljj$/sun/nio/cs/UnicodeEncoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UnicodeEncoder.java"


# static fields
.field protected static final BIG:I = 0x0

.field protected static final BYTE_ORDER_MARK:C = '\ufeff'

.field protected static final LITTLE:I = 0x1

.field protected static final REVERSED_MARK:C = '\ufffe'


# instance fields
.field private byteOrder:I

.field private needsMark:Z

.field private final sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

.field private usesMark:Z


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;IZ)V
    .registers 11

    nop

    const/high16 v0, 0x40000000  # 2.0f

    if-eqz p3, :cond_8

    const/high16 v1, 0x40800000  # 4.0f

    goto :goto_a

    :cond_8
    const/high16 v1, 0x40000000  # 2.0f

    :goto_a
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, -0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez p2, :cond_18

    new-array v6, v6, [B

    aput-byte v2, v6, v5

    aput-byte v4, v6, v3

    goto :goto_1e

    :cond_18
    new-array v6, v6, [B

    aput-byte v4, v6, v5

    aput-byte v2, v6, v3

    :goto_1e
    invoke-direct {p0, p1, v0, v1, v6}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    new-instance v0, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    iput-boolean p3, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    iput-boolean p3, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->usesMark:Z

    iput p2, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->byteOrder:I

    return-void
.end method

.method private put(CLjava/nio/ByteBuffer;)V
    .registers 4

    iget v0, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->byteOrder:I

    if-nez v0, :cond_11

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1d

    :cond_11
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1d
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

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 9

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-boolean v1, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v2, :cond_18

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1

    :cond_18
    const v1, 0xfeff

    invoke-direct {p0, v1, p2}, Ljj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_40

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_85

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_40
    add-int/lit8 v0, v0, 0x1

    :try_start_42
    invoke-direct {p0, v1, p2}, Ljj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    goto :goto_21

    :cond_46
    iget-object v3, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_5b

    iget-object v2, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_85

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v2

    :cond_5b
    :try_start_5b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_6b

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_85

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    return-object v2

    :cond_6b
    add-int/lit8 v0, v0, 0x2

    :try_start_6d
    invoke-static {v3}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v4

    invoke-direct {p0, v4, p2}, Ljj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    invoke-static {v3}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v4

    invoke-direct {p0, v4, p2}, Ljj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    goto :goto_21

    :cond_7c
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7e
    .catchall {:try_start_6d .. :try_end_7e} :catchall_85

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_85
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method

.method protected implReset()V
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->usesMark:Z

    iput-boolean v0, p0, Ljj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    return-void
.end method
