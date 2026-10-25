.class public final Lokhttp4/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final listenerExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private awaitPingsSent:J

.field private awaitPongsReceived:J

.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;

.field private degradedPingsSent:J

.field private degradedPongDeadlineNs:J

.field private degradedPongsReceived:J

.field final hostname:Ljava/lang/String;

.field private intervalPingsSent:J

.field private intervalPongsReceived:J

.field lastGoodStreamId:I

.field final listener:Lokhttp4/internal/http2/Http2Connection$Listener;

.field nextStreamId:I

.field okHttpSettings:Lokhttp4/internal/http2/Settings;

.field final peerSettings:Lokhttp4/internal/http2/Settings;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lokhttp4/internal/http2/PushObserver;

.field final readerRunnable:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;

.field unacknowledgedBytesRead:J

.field final writer:Lokhttp4/internal/http2/Http2Writer;

.field private final writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-class v0, Lokhttp4/internal/http2/Http2Connection;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    invoke-static {v8, v1}, Lokhttp4/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp4/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lokhttp4/internal/http2/Http2Connection$Builder;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->intervalPingsSent:J

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->intervalPongsReceived:J

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->degradedPingsSent:J

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->degradedPongsReceived:J

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->awaitPingsSent:J

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->awaitPongsReceived:J

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    iput-wide v2, v0, Lokhttp4/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    new-instance v2, Lokhttp4/internal/http2/Settings;

    invoke-direct {v2}, Lokhttp4/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Lokhttp4/internal/http2/Http2Connection;->okHttpSettings:Lokhttp4/internal/http2/Settings;

    new-instance v2, Lokhttp4/internal/http2/Settings;

    invoke-direct {v2}, Lokhttp4/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lokhttp4/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget-object v3, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp4/internal/http2/PushObserver;

    iput-object v3, v0, Lokhttp4/internal/http2/Http2Connection;->pushObserver:Lokhttp4/internal/http2/PushObserver;

    iget-boolean v3, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v3, v0, Lokhttp4/internal/http2/Http2Connection;->client:Z

    iget-object v4, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->listener:Lokhttp4/internal/http2/Http2Connection$Listener;

    iput-object v4, v0, Lokhttp4/internal/http2/Http2Connection;->listener:Lokhttp4/internal/http2/Http2Connection$Listener;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_47

    const/4 v6, 0x1

    goto :goto_48

    :cond_47
    const/4 v6, 0x2

    :goto_48
    iput v6, v0, Lokhttp4/internal/http2/Http2Connection;->nextStreamId:I

    if-eqz v3, :cond_4f

    add-int/2addr v6, v4

    iput v6, v0, Lokhttp4/internal/http2/Http2Connection;->nextStreamId:I

    :cond_4f
    const/4 v4, 0x7

    if-eqz v3, :cond_59

    iget-object v6, v0, Lokhttp4/internal/http2/Http2Connection;->okHttpSettings:Lokhttp4/internal/http2/Settings;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v4, v7}, Lokhttp4/internal/http2/Settings;->set(II)Lokhttp4/internal/http2/Settings;

    :cond_59
    iget-object v6, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v6, v0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v8, v14

    const-string v9, "OkHttp %s Writer"

    invoke-static {v9, v8}, Lokhttp4/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lokhttp4/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lokhttp4/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget v8, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    if-eqz v8, :cond_88

    new-instance v8, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;

    invoke-direct {v8, v0}, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;-><init>(Lokhttp4/internal/http2/Http2Connection;)V

    iget v9, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    int-to-long v10, v9

    int-to-long v12, v9

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v10

    move-wide v11, v12

    move-object v13, v15

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_88
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v14

    const-string v6, "OkHttp %s Push Observer"

    invoke-static {v6, v8}, Lokhttp4/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lokhttp4/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v23

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lokhttp4/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    const v5, 0xffff

    invoke-virtual {v2, v4, v5}, Lokhttp4/internal/http2/Settings;->set(II)Lokhttp4/internal/http2/Settings;

    const/4 v4, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v2, v4, v5}, Lokhttp4/internal/http2/Settings;->set(II)Lokhttp4/internal/http2/Settings;

    invoke-virtual {v2}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lokhttp4/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    iget-object v2, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v2, v0, Lokhttp4/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    new-instance v2, Lokhttp4/internal/http2/Http2Writer;

    iget-object v4, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->sink:Lokin/BufferedSink;

    invoke-direct {v2, v4, v3}, Lokhttp4/internal/http2/Http2Writer;-><init>(Lokin/BufferedSink;Z)V

    iput-object v2, v0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    new-instance v2, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v4, Lokhttp4/internal/http2/Http2Reader;

    iget-object v1, v1, Lokhttp4/internal/http2/Http2Connection$Builder;->source:Lokin/BufferedSource;

    invoke-direct {v4, v1, v3}, Lokhttp4/internal/http2/Http2Reader;-><init>(Lokin/BufferedSource;Z)V

    invoke-direct {v2, v0, v4}, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp4/internal/http2/Http2Connection;Lokhttp4/internal/http2/Http2Reader;)V

    iput-object v2, v0, Lokhttp4/internal/http2/Http2Connection;->readerRunnable:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

    return-void
.end method

.method static synthetic access$000(Lokhttp4/internal/http2/Http2Connection;)V
    .registers 1

    invoke-direct {p0}, Lokhttp4/internal/http2/Http2Connection;->failConnection()V

    return-void
.end method

.method static synthetic access$100(Lokhttp4/internal/http2/Http2Connection;)J
    .registers 3

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$108(Lokhttp4/internal/http2/Http2Connection;)J
    .registers 5

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->intervalPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$200(Lokhttp4/internal/http2/Http2Connection;)J
    .registers 3

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method static synthetic access$208(Lokhttp4/internal/http2/Http2Connection;)J
    .registers 5

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->intervalPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method static synthetic access$300(Lokhttp4/internal/http2/Http2Connection;)Z
    .registers 1

    iget-boolean p0, p0, Lokhttp4/internal/http2/Http2Connection;->shutdown:Z

    return p0
.end method

.method static synthetic access$302(Lokhttp4/internal/http2/Http2Connection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokhttp4/internal/http2/Http2Connection;->shutdown:Z

    return p1
.end method

.method static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lokhttp4/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lokhttp4/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lokhttp4/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$608(Lokhttp4/internal/http2/Http2Connection;)J
    .registers 5

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$708(Lokhttp4/internal/http2/Http2Connection;)J
    .registers 5

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->awaitPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->awaitPongsReceived:J

    return-wide v0
.end method

.method private failConnection()V
    .registers 2

    :try_start_0
    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v0}, Lokhttp4/internal/http2/Http2Connection;->close(Lokhttp4/internal/http2/ErrorCode;Lokhttp4/internal/http2/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private newStream(ILjava/util/List;Z)Lokhttp4/internal/http2/Http2Stream;
    .registers 14

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    monitor-enter v7

    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_76

    :try_start_7
    iget v0, p0, Lokhttp4/internal/http2/Http2Connection;->nextStreamId:I

    const v1, 0x3fffffff  # 1.9999999f

    if-le v0, v1, :cond_13

    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp4/internal/http2/Http2Connection;->shutdown(Lokhttp4/internal/http2/ErrorCode;)V

    :cond_13
    iget-boolean v0, p0, Lokhttp4/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_6d

    iget v8, p0, Lokhttp4/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v8, 0x2

    iput v0, p0, Lokhttp4/internal/http2/Http2Connection;->nextStreamId:I

    new-instance v9, Lokhttp4/internal/http2/Http2Stream;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lokhttp4/internal/http2/Http2Stream;-><init>(ILokhttp4/internal/http2/Http2Connection;ZZLokhttp4/Headers;)V

    if-eqz p3, :cond_3a

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3a

    iget-wide v0, v9, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p3, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 p3, 0x1

    :goto_3b
    invoke-virtual {v9}, Lokhttp4/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_73

    if-nez p1, :cond_53

    :try_start_4d
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {v0, v6, v8, p1, p2}, Lokhttp4/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    goto :goto_5c

    :cond_53
    iget-boolean v0, p0, Lokhttp4/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_65

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, v8, p2}, Lokhttp4/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V

    :goto_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_76

    if-eqz p3, :cond_64

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Writer;->flush()V

    :cond_64
    return-object v9

    :cond_65
    :try_start_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_76

    :cond_6d
    :try_start_6d
    new-instance p1, Lokhttp4/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp4/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_73
    move-exception p1

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_73

    :try_start_75
    throw p1

    :catchall_76
    move-exception p1

    monitor-exit v7
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_76

    throw p1
.end method

.method private declared-synchronized pushExecutorExecute(Lokhttp4/internal/NamedRunnable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp4/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
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


# virtual methods
.method public close()V
    .registers 3

    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->NO_ERROR:Lokhttp4/internal/http2/ErrorCode;

    sget-object v1, Lokhttp4/internal/http2/ErrorCode;->CANCEL:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lokhttp4/internal/http2/Http2Connection;->close(Lokhttp4/internal/http2/ErrorCode;Lokhttp4/internal/http2/ErrorCode;)V

    return-void
.end method

.method close(Lokhttp4/internal/http2/ErrorCode;Lokhttp4/internal/http2/ErrorCode;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lokhttp4/internal/http2/Http2Connection;->shutdown(Lokhttp4/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-object p1, v0

    goto :goto_7

    :catch_6
    move-exception p1

    :goto_7
    monitor-enter p0

    :try_start_8
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp4/internal/http2/Http2Stream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp4/internal/http2/Http2Stream;

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_5c

    if-eqz v0, :cond_3d

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    :try_start_32
    invoke-virtual {v3, p2}, Lokhttp4/internal/http2/Http2Stream;->close(Lokhttp4/internal/http2/ErrorCode;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v3

    if-eqz p1, :cond_3a

    move-object p1, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3d
    :try_start_3d
    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {p2}, Lokhttp4/internal/http2/Http2Writer;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p2

    if-nez p1, :cond_47

    move-object p1, p2

    :cond_47
    :goto_47
    :try_start_47
    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception p1

    :goto_4e
    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_5b

    return-void

    :cond_5b
    throw p1

    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    goto :goto_60

    :goto_5f
    throw p1

    :goto_60
    goto :goto_5f
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method declared-synchronized getStream(I)Lokhttp4/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp4/internal/http2/Http2Stream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isHealthy(J)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp4/internal/http2/Http2Connection;->shutdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_8
    iget-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v4, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    iget-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPongDeadlineNs:J
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1b

    cmp-long v0, p1, v2

    if-ltz v0, :cond_18

    monitor-exit p0

    return v1

    :cond_18
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp4/internal/http2/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lokhttp4/internal/http2/Http2Stream;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lokhttp4/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp4/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1
.end method

.method pushDataLater(ILokin/BufferedSource;IZ)V
    .registers 13

    new-instance v5, Lokin/Buffer;

    invoke-direct {v5}, Lokin/Buffer;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokin/BufferedSource;->require(J)V

    invoke-interface {p2, v5, v0, v1}, Lokin/Source;->read(Lokin/Buffer;J)J

    invoke-virtual {v5}, Lokin/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_33

    new-instance p2, Lokhttp4/internal/http2/Http2Connection$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp4/internal/http2/Http2Connection$6;-><init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokin/Buffer;IZ)V

    invoke-direct {p0, p2}, Lokhttp4/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp4/internal/NamedRunnable;)V

    return-void

    :cond_33
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokin/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .registers 12

    :try_start_0
    new-instance v7, Lokhttp4/internal/http2/Http2Connection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp4/internal/http2/Http2Connection$5;-><init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-direct {p0, v7}, Lokhttp4/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp4/internal/NamedRunnable;)V
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p2, Lokhttp4/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lokhttp4/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp4/internal/http2/ErrorCode;)V

    monitor-exit p0

    return-void

    :cond_14
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3c

    :try_start_1e
    new-instance v0, Lokhttp4/internal/http2/Http2Connection$4;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lokhttp4/internal/http2/Http2Connection$4;-><init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-direct {p0, v0}, Lokhttp4/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp4/internal/NamedRunnable;)V
    :try_end_3b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1e .. :try_end_3b} :catch_3b

    :catch_3b
    return-void

    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method pushResetLater(ILokhttp4/internal/http2/ErrorCode;)V
    .registers 10

    new-instance v6, Lokhttp4/internal/http2/Http2Connection$7;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp4/internal/http2/Http2Connection$7;-><init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp4/internal/http2/ErrorCode;)V

    invoke-direct {p0, v6}, Lokhttp4/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp4/internal/NamedRunnable;)V

    return-void
.end method

.method pushedStream(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method declared-synchronized removeStream(I)Lokhttp4/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendDegradedPingLater()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPingsSent:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_30

    :try_start_1b
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp4/internal/http2/Http2Connection$3;

    const-string v2, "OkHttp %s ping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lokhttp4/internal/http2/Http2Connection$3;-><init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_2f} :catch_2f

    :catch_2f
    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public shutdown(Lokhttp4/internal/http2/ErrorCode;)V
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    monitor-enter v0

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    :try_start_4
    iget-boolean v1, p0, Lokhttp4/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_b

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lokhttp4/internal/http2/Http2Connection;->shutdown:Z

    iget v1, p0, Lokhttp4/internal/http2/Http2Connection;->lastGoodStreamId:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    :try_start_11
    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    sget-object v3, Lokhttp4/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v1, p1, v3}, Lokhttp4/internal/http2/Http2Writer;->goAway(ILokhttp4/internal/http2/ErrorCode;[B)V

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp4/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method

.method start(Z)V
    .registers 7

    if-eqz p1, :cond_21

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Writer;->connectionPreface()V

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->okHttpSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p1, v0}, Lokhttp4/internal/http2/Http2Writer;->settings(Lokhttp4/internal/http2/Settings;)V

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection;->okHttpSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_21

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp4/internal/http2/Http2Writer;->windowUpdate(IJ)V

    :cond_21
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->readerRunnable:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized updateConnectionFlowControl(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection;->okHttpSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1d

    const/4 p1, 0x0

    iget-wide v0, p0, Lokhttp4/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    invoke-virtual {p0, p1, v0, v1}, Lokhttp4/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lokhttp4/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeData(IZLokin/Buffer;J)V
    .registers 14

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_d

    iget-object p4, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {p4, p2, p1, p3, v0}, Lokhttp4/internal/http2/Http2Writer;->data(ZILokin/Buffer;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v3, p4, v1

    if-lez v3, :cond_68

    monitor-enter p0

    :goto_12
    :try_start_12
    iget-wide v3, p0, Lokhttp4/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_31

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_31} :catch_59
    .catchall {:try_start_12 .. :try_end_31} :catchall_57

    :cond_31
    :try_start_31
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {v3}, Lokhttp4/internal/http2/Http2Writer;->maxDataLength()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lokhttp4/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp4/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_57

    sub-long/2addr p4, v6

    iget-object v4, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    if-eqz p2, :cond_52

    cmp-long v5, p4, v1

    if-nez v5, :cond_52

    const/4 v5, 0x1

    goto :goto_53

    :cond_52
    const/4 v5, 0x0

    :goto_53
    invoke-virtual {v4, v5, p1, p3, v3}, Lokhttp4/internal/http2/Http2Writer;->data(ZILokin/Buffer;I)V

    goto :goto_d

    :catchall_57
    move-exception p1

    goto :goto_66

    :catch_59
    :try_start_59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_57

    throw p1

    :cond_68
    return-void
.end method

.method writePing(ZII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp4/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_9

    :catch_6
    invoke-direct {p0}, Lokhttp4/internal/http2/Http2Connection;->failConnection()V

    :goto_9
    return-void
.end method

.method writeSynReset(ILokhttp4/internal/http2/ErrorCode;)V
    .registers 4

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lokhttp4/internal/http2/Http2Writer;->rstStream(ILokhttp4/internal/http2/ErrorCode;)V

    return-void
.end method

.method writeSynResetLater(ILokhttp4/internal/http2/ErrorCode;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lokhttp4/internal/http2/Http2Connection$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp4/internal/http2/Http2Connection$1;-><init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp4/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 13

    :try_start_0
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lokhttp4/internal/http2/Http2Connection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp4/internal/http2/Http2Connection$2;-><init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
