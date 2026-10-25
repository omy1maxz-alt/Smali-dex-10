.class Ljj$/sun/nio/cs/US_ASCII$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "US_ASCII.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/US_ASCII;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/US_ASCII-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/US_ASCII$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    nop

    if-gt v1, v2, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    nop

    if-gt v4, v5, :cond_37

    move v6, v4

    goto :goto_38

    :cond_37
    move v6, v5

    :goto_38
    if-ge v3, v2, :cond_85

    :try_start_3a
    aget-byte v4, v0, v3

    if-ltz v4, :cond_67

    if-lt v6, v5, :cond_5b

    sget-object v7, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_a0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p2, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    return-object v7

    :cond_5b
    add-int/lit8 v7, v6, 0x1

    int-to-char v8, v4

    :try_start_5e
    aput-char v8, v1, v6
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_64

    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_38

    :catchall_64
    move-exception v4

    move v6, v7

    goto :goto_a1

    :cond_67
    const/4 v7, 0x1

    :try_start_68
    invoke-static {v7}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v7
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_a0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p2, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    return-object v7

    :cond_85
    :try_start_85
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_a0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    return-object v4

    :catchall_a0
    move-exception v4

    :goto_a1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    throw v4
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-ltz v1, :cond_26

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_3b

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_1f
    int-to-char v2, v1

    :try_start_20
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_26
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_3b

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_32
    :try_start_32
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_3b

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_3b
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/US_ASCII$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/US_ASCII$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
