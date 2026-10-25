.class public final Lokhttp4/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lokhttp4/internal/http2/Http2Connection;

.field errorCode:Lokhttp4/internal/http2/ErrorCode;

.field private hasResponseHeaders:Z

.field private headersListener:Lokhttp4/internal/http2/Header$Listener;

.field private final headersQueue:Ljava/util/Deque;

.field final id:I

.field final readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

.field private final source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(ILokhttp4/internal/http2/Http2Connection;ZZLokhttp4/Headers;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp4/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    new-instance v1, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp4/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    new-instance v1, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp4/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    const-string v1, "connection == null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    iput-object p2, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget-object p1, p2, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    new-instance p1, Lokhttp4/internal/http2/Http2Stream$FramingSource;

    iget-object p2, p2, Lokhttp4/internal/http2/Http2Connection;->okHttpSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p2}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Lokhttp4/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp4/internal/http2/Http2Stream;J)V

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream;->source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

    new-instance p2, Lokhttp4/internal/http2/Http2Stream$FramingSink;

    invoke-direct {p2, p0}, Lokhttp4/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp4/internal/http2/Http2Stream;)V

    iput-object p2, p0, Lokhttp4/internal/http2/Http2Stream;->sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

    iput-boolean p4, p1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->finished:Z

    iput-boolean p3, p2, Lokhttp4/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz p5, :cond_4f

    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_4f
    invoke-virtual {p0}, Lokhttp4/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-eqz p1, :cond_60

    if-nez p5, :cond_58

    goto :goto_60

    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    :goto_60
    invoke-virtual {p0}, Lokhttp4/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-nez p1, :cond_71

    if-eqz p5, :cond_69

    goto :goto_71

    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    :goto_71
    return-void
.end method

.method static synthetic access$000(Lokhttp4/internal/http2/Http2Stream;)Ljava/util/Deque;
    .registers 1

    iget-object p0, p0, Lokhttp4/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$100(Lokhttp4/internal/http2/Http2Stream;)Lokhttp4/internal/http2/Header$Listener;
    .registers 1

    iget-object p0, p0, Lokhttp4/internal/http2/Http2Stream;->headersListener:Lokhttp4/internal/http2/Header$Listener;

    return-object p0
.end method

.method private closeInternal(Lokhttp4/internal/http2/ErrorCode;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_16

    monitor-exit p0

    return v1

    :cond_16
    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v0, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, v0}, Lokhttp4/internal/http2/Http2Connection;->removeStream(I)Lokhttp4/internal/http2/Http2Stream;

    const/4 p1, 0x1

    return p1

    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method cancelStreamIfNecessary()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v1, :cond_17

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_15

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p0}, Lokhttp4/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    if-eqz v0, :cond_25

    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->CANCEL:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp4/internal/http2/Http2Stream;->close(Lokhttp4/internal/http2/ErrorCode;)V

    goto :goto_2e

    :cond_25
    if-nez v1, :cond_2e

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp4/internal/http2/Http2Connection;->removeStream(I)Lokhttp4/internal/http2/Http2Stream;

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method checkOutNotClosed()V
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v1, :cond_20

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Lokhttp4/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp4/internal/http2/StreamResetException;-><init>(Lokhttp4/internal/http2/ErrorCode;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Lokhttp4/internal/http2/ErrorCode;)V
    .registers 4

    invoke-direct {p0, p1}, Lokhttp4/internal/http2/Http2Stream;->closeInternal(Lokhttp4/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp4/internal/http2/Http2Connection;->writeSynReset(ILokhttp4/internal/http2/ErrorCode;)V

    return-void
.end method

.method public closeLater(Lokhttp4/internal/http2/ErrorCode;)V
    .registers 4

    invoke-direct {p0, p1}, Lokhttp4/internal/http2/Http2Stream;->closeInternal(Lokhttp4/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp4/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp4/internal/http2/ErrorCode;)V

    return-void
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getSink()Lokin/Sink;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp4/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lokhttp4/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSource()Lokin/Source;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    iget v0, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lokhttp4/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

    iget-boolean v2, v0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v2, :cond_12

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_22

    :cond_12
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

    iget-boolean v2, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_1c

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_22

    :cond_1c
    iget-boolean v0, p0, Lokhttp4/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_22

    monitor-exit p0

    return v1

    :cond_22
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokin/BufferedSource;I)V
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokhttp4/internal/http2/Http2Stream$FramingSource;->receive(Lokin/BufferedSource;J)V

    return-void
.end method

.method receiveFin()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->source:Lokhttp4/internal/http2/Http2Stream$FramingSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->finished:Z

    invoke-virtual {p0}, Lokhttp4/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    if-nez v0, :cond_17

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lokhttp4/internal/http2/Http2Connection;->removeStream(I)Lokhttp4/internal/http2/Http2Stream;

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method receiveHeaders(Ljava/util/List;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp4/internal/http2/Http2Stream;->hasResponseHeaders:Z

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-static {p1}, Lokhttp4/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp4/Headers;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lokhttp4/internal/http2/Http2Stream;->isOpen()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1f

    if-nez p1, :cond_1e

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v0, p0, Lokhttp4/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, v0}, Lokhttp4/internal/http2/Http2Connection;->removeStream(I)Lokhttp4/internal/http2/Http2Stream;

    :cond_1e
    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method declared-synchronized receiveRstStream(Lokhttp4/internal/http2/ErrorCode;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    if-nez v0, :cond_a

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takeHeaders()Lokhttp4/Headers;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lokhttp4/internal/http2/Http2Stream;->waitForIo()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_35

    goto :goto_6

    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp4/Headers;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_3c

    monitor-exit p0

    return-object v0

    :cond_2d
    :try_start_2d
    new-instance v0, Lokhttp4/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp4/internal/http2/StreamResetException;-><init>(Lokhttp4/internal/http2/ErrorCode;)V

    throw v0

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    goto :goto_40

    :goto_3f
    throw v0

    :goto_40
    goto :goto_3f
.end method

.method waitForIo()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public writeTimeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
