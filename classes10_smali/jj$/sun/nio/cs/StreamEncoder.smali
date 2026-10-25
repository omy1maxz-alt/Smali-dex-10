.class public Ljj$/sun/nio/cs/StreamEncoder;
.super Ljava/io/Writer;
.source "StreamEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/WritableByteChannel;

.field private volatile closed:Z

.field private cs:Ljava/nio/charset/Charset;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private haveLeftoverChar:Z

.field private lcb:Ljava/nio/CharBuffer;

.field private leftoverChar:C

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .registers 6

    nop

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V
    .registers 5

    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iput-object p1, p0, Ljj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    iput-object p3, p0, Ljj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_21

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    :cond_21
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iput-object p1, p0, Ljj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    iput-object p2, p0, Ljj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-gez p3, :cond_1a

    const/16 v0, 0x2000

    goto :goto_1b

    :cond_1a
    move v0, p3

    :goto_1b
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private ensureOpen()V
    .registers 3

    iget-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->closed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushLeftoverChar(Ljava/nio/CharBuffer;Z)V
    .registers 6

    iget-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-nez v0, :cond_7

    if-nez p2, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    if-nez v0, :cond_13

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    goto :goto_1b

    :cond_13
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    :goto_1b
    iget-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-char v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    :cond_26
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    :cond_37
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    :goto_3f
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_49

    if-eqz p2, :cond_91

    :cond_49
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-object v2, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iput-char v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-char v2, p0, Ljj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    goto :goto_3f

    :cond_90
    return-void

    :cond_91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    return-void

    :cond_95
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_a0

    nop

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_3f

    :cond_a0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_3f
.end method

.method public static forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljj$/sun/nio/cs/StreamEncoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Ljj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Ljj$/sun/nio/cs/StreamEncoder;
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

    new-instance v1, Ljj$/sun/nio/cs/StreamEncoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Ljj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
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

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljj$/sun/nio/cs/StreamEncoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Ljj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Ljj$/sun/nio/cs/StreamEncoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Ljj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0
.end method

.method private isOpen()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeBytes()V
    .registers 7

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    nop

    if-gt v1, v0, :cond_1a

    sub-int v2, v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-lez v2, :cond_3e

    iget-object v3, p0, Ljj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Ljj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-eq v3, v2, :cond_3e

    goto :goto_3e

    :cond_2c
    iget-object v3, p0, Ljj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_3e
    :goto_3e
    iget-object v3, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamEncoder;->implClose()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->closed:Z

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

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Ljj$/sun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Ljj$/sun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Ljj$/sun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public flush()V
    .registers 3

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->ensureOpen()V

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamEncoder;->implFlush()V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public flushBuffer()V
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamEncoder;->implFlushBuffer()V

    monitor-exit v0

    return-void

    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamEncoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method implClose()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljj$/sun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    :goto_5
    :try_start_5
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_30

    nop

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    :cond_1f
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    goto :goto_2e

    :cond_29
    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_2e
    nop

    return-void

    :cond_30
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_3b

    nop

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_5

    :cond_3b
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3e} :catch_3f

    goto :goto_5

    :catch_3f
    move-exception v0

    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    throw v0
.end method

.method implFlush()V
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/nio/cs/StreamEncoder;->implFlushBuffer()V

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_c
    return-void
.end method

.method implFlushBuffer()V
    .registers 2

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_b

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    :cond_b
    return-void
.end method

.method implWrite(Ljava/nio/CharBuffer;)V
    .registers 5

    iget-boolean v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v1}, Ljj$/sun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_2d

    nop

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    iput-boolean v2, p0, Ljj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iput-char v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    goto :goto_3c

    :cond_2d
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_38

    nop

    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    goto :goto_8

    :cond_38
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_8

    :cond_3c
    :goto_3c
    return-void
.end method

.method implWrite([CII)V
    .registers 5

    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/sun/nio/cs/StreamEncoder;->implWrite(Ljava/nio/CharBuffer;)V

    return-void
.end method

.method public write(I)V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [C

    int-to-char v2, p1

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-virtual {p0, v1, v3, v0}, Ljj$/sun/nio/cs/StreamEncoder;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 7

    if-ltz p3, :cond_e

    new-array v0, p3, [C

    add-int v1, p2, p3

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v2, p3}, Ljj$/sun/nio/cs/StreamEncoder;->write([CII)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/CharBuffer;)V
    .registers 5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    :try_start_4
    iget-object v1, p0, Ljj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_19

    :try_start_7
    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->ensureOpen()V

    invoke-virtual {p0, p1}, Ljj$/sun/nio/cs/StreamEncoder;->implWrite(Ljava/nio/CharBuffer;)V

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_16

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    nop

    return-void

    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    throw v1
.end method

.method public write([CII)V
    .registers 7

    iget-object v0, p0, Ljj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Ljj$/sun/nio/cs/StreamEncoder;->ensureOpen()V

    if-ltz p2, :cond_1f

    array-length v1, p1

    if-gt p2, v1, :cond_1f

    if-ltz p3, :cond_1f

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1f

    add-int v1, p2, p3

    if-ltz v1, :cond_1f

    if-nez p3, :cond_1a

    monitor-exit v0

    return-void

    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Ljj$/sun/nio/cs/StreamEncoder;->implWrite([CII)V

    monitor-exit v0

    return-void

    :cond_1f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
