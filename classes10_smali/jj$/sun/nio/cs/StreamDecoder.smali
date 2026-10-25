.class public Ljj$/sun/nio/cs/StreamDecoder;
.super Ljava/io/Reader;
.source "StreamDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000

.field private static final MIN_BYTE_BUFFER_SIZE:I = 0x20

.field private static volatile channelsAvailable:Z


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/ReadableByteChannel;

.field private volatile closed:Z

.field private cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private haveLeftoverChar:Z

.field private in:Ljava/io/InputStream;

.field private leftoverChar:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const/4 v0, 0x1

    sput-boolean v0, Ljj$/sun/nio/cs/StreamDecoder;->channelsAvailable:Z

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .registers 6

    nop

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V
    .registers 5

    invoke-direct {p0, p2}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    iput-object p3, p0, Ljj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-nez v0, :cond_1f

    iput-object p1, p0, Ljj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    :cond_1f
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    iput-object p1, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    iput-object p2, p0, Ljj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    if-gez p3, :cond_18

    const/16 v0, 0x2000

    goto :goto_1e

    :cond_18
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, p3

    :goto_1e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-void
.end method

.method private ensureOpen()V
    .registers 3

    iget-boolean v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->closed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljj$/sun/nio/cs/StreamDecoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Ljj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Ljj$/sun/nio/cs/StreamDecoder;
    .registers 6

    move-object v0, p2

    if-nez v0, :cond_b

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Ljj$/sun/nio/cs/StreamDecoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Ljj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_1a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_b .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    move-exception v1

    :cond_1c
    nop

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljj$/sun/nio/cs/StreamDecoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Ljj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Ljj$/sun/nio/cs/StreamDecoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Ljj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method private static getChannel(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;
    .registers 4

    sget-boolean v0, Ljj$/sun/nio/cs/StreamDecoder;->channelsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-static {p0}, Ljj$/sun/nio/cs/StreamDecoder$$ExternalSyntheticAPIConversion0;->m(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const/4 v2, 0x0

    sput-boolean v2, Ljj$/sun/nio/cs/StreamDecoder;->channelsAvailable:Z

    return-object v1
.end method

.method private inReady()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_d

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_13

    :cond_d
    iget-object v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/FileChannel;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    return v0

    :catch_15
    move-exception v1

    return v0
.end method

.method private isOpen()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private read0()I
    .registers 7

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iput-boolean v2, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    iget-char v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->leftoverChar:C

    monitor-exit v0

    return v1

    :cond_e
    const/4 v1, 0x2

    new-array v3, v1, [C

    invoke-virtual {p0, v3, v2, v1}, Ljj$/sun/nio/cs/StreamDecoder;->read([CII)I

    move-result v1

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_2c

    :pswitch_19  #0x0
    goto :goto_27

    :pswitch_1a  #0x2
    const/4 v4, 0x1

    aget-char v5, v3, v4

    iput-char v5, p0, Ljj$/sun/nio/cs/StreamDecoder;->leftoverChar:C

    iput-boolean v4, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    :pswitch_21  #0x1
    aget-char v2, v3, v2

    monitor-exit v0

    return v2

    :pswitch_25  #0xffffffff
    monitor-exit v0

    return v4

    :goto_27
    monitor-exit v0

    return v4

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_25  #ffffffff
        :pswitch_19  #00000000
        :pswitch_21  #00000001
        :pswitch_1a  #00000002
    .end packed-switch
.end method

.method private readBytes()I
    .registers 7

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :try_start_5
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_77

    if-gez v0, :cond_1d

    nop

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return v0

    :cond_1d
    goto :goto_5e

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    nop

    if-gt v1, v0, :cond_30

    sub-int v2, v0, v1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    nop

    iget-object v3, p0, Ljj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_45
    .catchall {:try_start_1e .. :try_end_45} :catchall_77

    if-gez v3, :cond_51

    nop

    iget-object v4, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return v3

    :cond_51
    if-eqz v3, :cond_6f

    nop

    :try_start_54
    iget-object v4, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    add-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_77

    :goto_5e
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    nop

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    nop

    return v0

    :cond_6f
    :try_start_6f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Underlying input stream returned zero bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamDecoder;->implClose()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->closed:Z

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method encodingName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Ljj$/sun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Ljj$/sun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Ljj$/sun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamDecoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method implClose()V
    .registers 2

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_f
    return-void
.end method

.method implRead([CII)I
    .registers 9

    nop

    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    iget-object v2, p0, Ljj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_53

    if-eqz v1, :cond_23

    goto :goto_5a

    :cond_23
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_5a

    :cond_2a
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-lez v3, :cond_37

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->inReady()Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_5a

    :cond_37
    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->readBytes()I

    move-result v3

    if-gez v3, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_5a

    :cond_4d
    iget-object v4, p0, Ljj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    goto :goto_12

    :cond_53
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_71

    nop

    :goto_5a
    if-eqz v1, :cond_61

    iget-object v2, p0, Ljj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :cond_61
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-nez v2, :cond_6c

    if-eqz v1, :cond_6b

    const/4 v2, -0x1

    return v2

    :cond_6b
    nop

    :cond_6c
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    return v2

    :cond_71
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_12
.end method

.method implReady()Z
    .registers 2

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->inReady()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public read()I
    .registers 2

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->read0()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 10

    move v0, p2

    move v1, p3

    iget-object v2, p0, Ljj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->ensureOpen()V

    if-ltz v0, :cond_57

    array-length v3, p1

    if-gt v0, v3, :cond_57

    if-ltz v1, :cond_57

    add-int v3, v0, v1

    array-length v4, p1

    if-gt v3, v4, :cond_57

    add-int v3, v0, v1

    if-ltz v3, :cond_57

    const/4 v3, 0x0

    if-nez v1, :cond_1d

    monitor-exit v2

    return v3

    :cond_1d
    const/4 v4, 0x0

    iget-boolean v5, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-eqz v5, :cond_37

    iget-char v5, p0, Ljj$/sun/nio/cs/StreamDecoder;->leftoverChar:C

    aput-char v5, p1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    iput-boolean v3, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamDecoder;->implReady()Z

    move-result v3

    if-nez v3, :cond_37

    :cond_35
    monitor-exit v2

    return v4

    :cond_37
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4e

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->read0()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_47

    if-nez v4, :cond_44

    goto :goto_45

    :cond_44
    move v5, v4

    :goto_45
    monitor-exit v2

    return v5

    :cond_47
    int-to-char v5, v3

    aput-char v5, p1, v0

    add-int/lit8 v5, v4, 0x1

    monitor-exit v2

    return v5

    :cond_4e
    add-int v3, v0, v1

    invoke-virtual {p0, p1, v0, v3}, Ljj$/sun/nio/cs/StreamDecoder;->implRead([CII)I

    move-result v3

    add-int/2addr v3, v4

    monitor-exit v2

    return v3

    :cond_57
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :catchall_5d
    move-exception v3

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method public ready()Z
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamDecoder;->ensureOpen()V

    iget-boolean v1, p0, Ljj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamDecoder;->implReady()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method
