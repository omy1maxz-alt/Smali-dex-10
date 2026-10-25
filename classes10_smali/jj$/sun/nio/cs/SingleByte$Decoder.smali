.class public final Ljj$/sun/nio/cs/SingleByte$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "SingleByte.java"

# interfaces
.implements Ljj$/sun/nio/cs/ArrayDecoder;


# instance fields
.field private final b2c:[C

.field private final isASCIICompatible:Z

.field private repl:C


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[C)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const v0, 0xfffd

    iput-char v0, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    iput-object p2, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->b2c:[C

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->isASCIICompatible:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[CZ)V
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const v0, 0xfffd

    iput-char v0, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    iput-object p2, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->b2c:[C

    iput-boolean p3, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->isASCIICompatible:Z

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

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

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

    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    sub-int v7, v5, v4

    sub-int v8, v2, v1

    if-ge v7, v8, :cond_3a

    sub-int v7, v5, v4

    add-int v2, v1, v7

    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    :cond_3a
    :goto_3a
    if-ge v1, v2, :cond_5a

    aget-byte v7, v0, v1

    invoke-virtual {p0, v7}, Ljj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result v7

    const v8, 0xfffd

    if-ne v7, v8, :cond_51

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v8

    invoke-static {v8, p1, v1, p2, v4}, Ljj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v8

    return-object v8

    :cond_51
    add-int/lit8 v8, v4, 0x1

    aput-char v7, v3, v4

    nop

    add-int/lit8 v1, v1, 0x1

    move v4, v8

    goto :goto_3a

    :cond_5a
    invoke-static {v6, p1, v1, p2, v4}, Ljj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Ljj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result v1

    const v2, 0xfffd

    if-ne v1, v2, :cond_23

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_42

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_23
    :try_start_23
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_32

    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_42

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-object v2

    :cond_32
    :try_start_32
    invoke-virtual {p2, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_39
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_42

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_42
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method


# virtual methods
.method public final decode(I)C
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->b2c:[C

    add-int/lit16 v1, p1, 0x80

    aget-char v0, v0, v1

    return v0
.end method

.method public decode([BII[C)I
    .registers 8

    array-length v0, p4

    if-le p3, v0, :cond_4

    array-length p3, p4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p3, :cond_20

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Ljj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result p2

    aput-char p2, p4, v0

    aget-char p2, p4, v0

    const v2, 0xfffd

    if-ne p2, v2, :cond_1c

    iget-char p2, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    aput-char p2, p4, v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_5

    :cond_20
    return v0
.end method

.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/SingleByte$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0, p1, p2}, Ljj$/sun/nio/cs/SingleByte$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    return-void
.end method

.method public isASCIICompatible()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/SingleByte$Decoder;->isASCIICompatible:Z

    return v0
.end method
