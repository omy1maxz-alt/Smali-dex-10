.class Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;
.super Lokhttp4/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lokhttp4/internal/http2/Http2Reader$Handler;


# instance fields
.field final reader:Lokhttp4/internal/http2/Http2Reader;

.field final synthetic this$0:Lokhttp4/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp4/internal/http2/Http2Connection;Lokhttp4/internal/http2/Http2Reader;)V
    .registers 5

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lokhttp4/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp4/internal/http2/Http2Reader;

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    return-void
.end method

.method applyAndAckSettings(ZLokhttp4/internal/http2/Settings;)V
    .registers 8

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_96

    :try_start_8
    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {v2}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    if-eqz p1, :cond_19

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Settings;->clear()V

    :cond_19
    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p1, p2}, Lokhttp4/internal/http2/Settings;->merge(Lokhttp4/internal/http2/Settings;)V

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const/4 p2, -0x1

    const/4 v3, 0x0

    if-eq p1, p2, :cond_54

    if-eq p1, v2, :cond_54

    sub-int/2addr p1, v2

    int-to-long p1, p1

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v3, v3, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lokhttp4/internal/http2/Http2Stream;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lokhttp4/internal/http2/Http2Stream;

    move-object v3, v2

    goto :goto_56

    :cond_54
    const-wide/16 p1, 0x0

    :cond_56
    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_93

    :try_start_57
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v2, v1, Lokhttp4/internal/http2/Http2Connection;->writer:Lokhttp4/internal/http2/Http2Writer;

    iget-object v1, v1, Lokhttp4/internal/http2/Http2Connection;->peerSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {v2, v1}, Lokhttp4/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp4/internal/http2/Settings;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_61
    .catchall {:try_start_57 .. :try_end_60} :catchall_96

    goto :goto_66

    :catch_61
    :try_start_61
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp4/internal/http2/Http2Connection;->access$000(Lokhttp4/internal/http2/Http2Connection;)V

    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_96

    const/4 v0, 0x0

    if-eqz v3, :cond_7b

    array-length v1, v3

    const/4 v2, 0x0

    :goto_6c
    if-ge v2, v1, :cond_7b

    aget-object v4, v3, v2

    monitor-enter v4

    :try_start_71
    invoke-virtual {v4, p1, p2}, Lokhttp4/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :catchall_78
    move-exception p1

    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_78

    throw p1

    :cond_7b
    invoke-static {}, Lokhttp4/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v1, "OkHttp %s settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v3, v3, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-direct {p2, p0, v1, v2}, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_93
    move-exception p1

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw p1

    :catchall_96
    move-exception p1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_96

    goto :goto_9a

    :goto_99
    throw p1

    :goto_9a
    goto :goto_99
.end method

.method public data(ZILokin/BufferedSource;I)V
    .registers 7

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp4/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp4/internal/http2/Http2Connection;->pushDataLater(ILokin/BufferedSource;IZ)V

    return-void

    :cond_e
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp4/internal/http2/Http2Connection;->getStream(I)Lokhttp4/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_27

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lokhttp4/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp4/internal/http2/ErrorCode;)V

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lokhttp4/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    invoke-interface {p3, v0, v1}, Lokin/BufferedSource;->skip(J)V

    return-void

    :cond_27
    invoke-virtual {v0, p3, p4}, Lokhttp4/internal/http2/Http2Stream;->receiveData(Lokin/BufferedSource;I)V

    if-eqz p1, :cond_2f

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream;->receiveFin()V

    :cond_2f
    return-void
.end method

.method protected execute()V
    .registers 5

    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp4/internal/http2/ErrorCode;

    :try_start_2
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp4/internal/http2/Http2Reader;

    invoke-virtual {v1, p0}, Lokhttp4/internal/http2/Http2Reader;->readConnectionPreface(Lokhttp4/internal/http2/Http2Reader$Handler;)V

    :goto_7
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp4/internal/http2/Http2Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lokhttp4/internal/http2/Http2Reader;->nextFrame(ZLokhttp4/internal/http2/Http2Reader$Handler;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    sget-object v1, Lokhttp4/internal/http2/ErrorCode;->NO_ERROR:Lokhttp4/internal/http2/ErrorCode;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1e
    .catchall {:try_start_2 .. :try_end_13} :catchall_1b

    :try_start_13
    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->CANCEL:Lokhttp4/internal/http2/ErrorCode;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_15} :catch_1f
    .catchall {:try_start_13 .. :try_end_15} :catchall_2c

    :try_start_15
    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v2, v1, v0}, Lokhttp4/internal/http2/Http2Connection;->close(Lokhttp4/internal/http2/ErrorCode;Lokhttp4/internal/http2/ErrorCode;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_26

    goto :goto_26

    :catchall_1b
    move-exception v2

    move-object v1, v0

    goto :goto_2d

    :catch_1e
    move-object v1, v0

    :catch_1f
    :try_start_1f
    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp4/internal/http2/ErrorCode;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_2c

    :try_start_21
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v1, v0, v0}, Lokhttp4/internal/http2/Http2Connection;->close(Lokhttp4/internal/http2/ErrorCode;Lokhttp4/internal/http2/ErrorCode;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_26

    :catch_26
    :goto_26
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp4/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2c
    move-exception v2

    :goto_2d
    :try_start_2d
    iget-object v3, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v3, v1, v0}, Lokhttp4/internal/http2/Http2Connection;->close(Lokhttp4/internal/http2/ErrorCode;Lokhttp4/internal/http2/ErrorCode;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_32

    :catch_32
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->reader:Lokhttp4/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_39

    :goto_38
    throw v2

    :goto_39
    goto :goto_38
.end method

.method public goAway(ILokhttp4/internal/http2/ErrorCode;Lokin/ByteString;)V
    .registers 7

    invoke-virtual {p3}, Lokin/ByteString;->size()I

    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    monitor-enter p2

    :try_start_6
    iget-object p3, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object p3, p3, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lokhttp4/internal/http2/Http2Stream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lokhttp4/internal/http2/Http2Connection;->access$302(Lokhttp4/internal/http2/Http2Connection;Z)Z

    monitor-exit p2
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_49

    array-length p2, p3

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p2, :cond_48

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream;->getId()I

    move-result v2

    if-le v2, p1, :cond_45

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Lokhttp4/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp4/internal/http2/Http2Stream;->receiveRstStream(Lokhttp4/internal/http2/ErrorCode;)V

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp4/internal/http2/Http2Connection;->removeStream(I)Lokhttp4/internal/http2/Http2Stream;

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_48
    return-void

    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    goto :goto_4d

    :goto_4c
    throw p1

    :goto_4d
    goto :goto_4c
.end method

.method public headers(ZIILjava/util/List;)V
    .registers 14

    iget-object p3, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {p3, p2}, Lokhttp4/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {p3, p2, p4, p1}, Lokhttp4/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void

    :cond_e
    iget-object p3, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    monitor-enter p3

    :try_start_11
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp4/internal/http2/Http2Connection;->getStream(I)Lokhttp4/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Connection;->access$300(Lokhttp4/internal/http2/Http2Connection;)Z

    move-result v0

    if-eqz v0, :cond_23

    monitor-exit p3

    return-void

    :cond_23
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget v1, v0, Lokhttp4/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v1, :cond_2b

    monitor-exit p3

    return-void

    :cond_2b
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, Lokhttp4/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-ne v1, v0, :cond_35

    monitor-exit p3

    return-void

    :cond_35
    invoke-static {p4}, Lokhttp4/internal/Util;->toHeaders(Ljava/util/List;)Lokhttp4/Headers;

    move-result-object v8

    new-instance p4, Lokhttp4/internal/http2/Http2Stream;

    iget-object v5, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lokhttp4/internal/http2/Http2Stream;-><init>(ILokhttp4/internal/http2/Http2Connection;ZZLokhttp4/Headers;)V

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iput p2, p1, Lokhttp4/internal/http2/Http2Connection;->lastGoodStreamId:I

    iget-object p1, p1, Lokhttp4/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lokhttp4/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp4/internal/http2/Http2Stream;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit p3

    return-void

    :cond_71
    monitor-exit p3
    :try_end_72
    .catchall {:try_start_11 .. :try_end_72} :catchall_7b

    invoke-virtual {v0, p4}, Lokhttp4/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    if-eqz p1, :cond_7a

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream;->receiveFin()V

    :cond_7a
    return-void

    :catchall_7b
    move-exception p1

    :try_start_7c
    monitor-exit p3
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public ping(ZII)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    monitor-enter p1

    if-ne p2, v0, :cond_10

    :try_start_8
    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {p2}, Lokhttp4/internal/http2/Http2Connection;->access$108(Lokhttp4/internal/http2/Http2Connection;)J

    goto :goto_26

    :catchall_e
    move-exception p2

    goto :goto_28

    :cond_10
    const/4 p3, 0x2

    if-ne p2, p3, :cond_19

    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {p2}, Lokhttp4/internal/http2/Http2Connection;->access$608(Lokhttp4/internal/http2/Http2Connection;)J

    goto :goto_26

    :cond_19
    const/4 p3, 0x3

    if-ne p2, p3, :cond_26

    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {p2}, Lokhttp4/internal/http2/Http2Connection;->access$708(Lokhttp4/internal/http2/Http2Connection;)J

    iget-object p2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    :cond_26
    :goto_26
    monitor-exit p1

    goto :goto_3a

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_e

    throw p2

    :cond_2a
    :try_start_2a
    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {p1}, Lokhttp4/internal/http2/Http2Connection;->access$500(Lokhttp4/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v1, Lokhttp4/internal/http2/Http2Connection$PingRunnable;

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-direct {v1, v2, v0, p2, p3}, Lokhttp4/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp4/internal/http2/Http2Connection;ZII)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2a .. :try_end_3a} :catch_3a

    :catch_3a
    :goto_3a
    return-void
.end method

.method public priority(IIIZ)V
    .registers 5

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 4

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {p1, p2, p3}, Lokhttp4/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILokhttp4/internal/http2/ErrorCode;)V
    .registers 4

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp4/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp4/internal/http2/Http2Connection;->pushResetLater(ILokhttp4/internal/http2/ErrorCode;)V

    return-void

    :cond_e
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp4/internal/http2/Http2Connection;->removeStream(I)Lokhttp4/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1, p2}, Lokhttp4/internal/http2/Http2Stream;->receiveRstStream(Lokhttp4/internal/http2/ErrorCode;)V

    :cond_19
    return-void
.end method

.method public settings(ZLokhttp4/internal/http2/Settings;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Connection;->access$500(Lokhttp4/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v3, "OkHttp %s ACK Settings"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v2, v2, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLokhttp4/internal/http2/Settings;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public windowUpdate(IJ)V
    .registers 7

    if-nez p1, :cond_14

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    monitor-enter v0

    :try_start_5
    iget-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-wide v1, p1, Lokhttp4/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lokhttp4/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_25

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1

    :cond_14
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp4/internal/http2/Http2Connection;->getStream(I)Lokhttp4/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_25

    monitor-enter p1

    :try_start_1d
    invoke-virtual {p1, p2, p3}, Lokhttp4/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    monitor-exit p1

    goto :goto_25

    :catchall_22
    move-exception p2

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p2

    :cond_25
    :goto_25
    return-void
.end method
