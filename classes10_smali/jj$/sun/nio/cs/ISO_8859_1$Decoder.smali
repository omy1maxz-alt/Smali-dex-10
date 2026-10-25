.class Ljj$/sun/nio/cs/ISO_8859_1$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "ISO_8859_1.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/sun/nio/cs/ISO_8859_1;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljj$/sun/nio/cs/ISO_8859_1-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/ISO_8859_1$Decoder;-><init>(Ljava/nio/charset/Charset;)V

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
    if-ge v3, v2, :cond_68

    :try_start_3a
    aget-byte v4, v0, v3

    if-lt v6, v5, :cond_59

    sget-object v7, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_83

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

    :cond_59
    add-int/lit8 v7, v6, 0x1

    and-int/lit16 v8, v4, 0xff

    int-to-char v8, v8

    :try_start_5e
    aput-char v8, v1, v6
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_65

    nop

    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_38

    :catchall_65
    move-exception v4

    move v6, v7

    goto :goto_84

    :cond_68
    :try_start_68
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_83

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

    :catchall_83
    move-exception v4

    :goto_84
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

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_30

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_1d
    and-int/lit16 v2, v1, 0xff

    int-to-char v2, v2

    :try_start_20
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_27
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_30

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_30
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

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/ISO_8859_1$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/ISO_8859_1$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
