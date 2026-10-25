.class Ljj$/sun/nio/cs/US_ASCII$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "US_ASCII.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sgp:Ljj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/US_ASCII;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    new-instance v0, Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Ljj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Ljj$/sun/nio/cs/US_ASCII$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/US_ASCII-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/US_ASCII$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 12

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

    nop

    if-gt v1, v2, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

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

    nop

    if-gt v4, v5, :cond_37

    move v6, v4

    goto :goto_38

    :cond_37
    move v6, v5

    :goto_38
    if-ge v3, v2, :cond_ab

    :try_start_3a
    aget-char v4, v0, v3

    const/16 v7, 0x80

    if-ge v4, v7, :cond_65

    if-lt v6, v5, :cond_5d

    sget-object v7, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_c6

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p1, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    return-object v7

    :cond_5d
    int-to-byte v7, v4

    :try_start_5e
    aput-byte v7, v1, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_65
    iget-object v7, p0, Ljj$/sun/nio/cs/US_ASCII$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7, v4, v0, v3, v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v7

    if-gez v7, :cond_8c

    iget-object v7, p0, Ljj$/sun/nio/cs/US_ASCII$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v7
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_c6

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p1, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    return-object v7

    :cond_8c
    :try_start_8c
    iget-object v7, p0, Ljj$/sun/nio/cs/US_ASCII$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v7
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_c6

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p1, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    return-object v7

    :cond_ab
    :try_start_ab
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_ad
    .catchall {:try_start_ab .. :try_end_ad} :catchall_c6

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    return-object v4

    :catchall_c6
    move-exception v4

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    throw v4
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_28

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_21

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_21
    int-to-byte v2, v1

    :try_start_22
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_28
    iget-object v2, p0, Ljj$/sun/nio/cs/US_ASCII$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2, v1, p1}, Ljj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v2

    if-gez v2, :cond_3d

    iget-object v2, p0, Ljj$/sun/nio/cs/US_ASCII$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Ljj$/sun/nio/cs/US_ASCII$Encoder;->sgp:Ljj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Ljj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    return-object v2

    :cond_4a
    :try_start_4a
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_53

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    return-object v1

    :catchall_53
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
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

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/US_ASCII$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/US_ASCII$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public isLegalReplacement([B)Z
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    aget-byte v0, p1, v1

    if-gez v0, :cond_f

    :cond_9
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method
