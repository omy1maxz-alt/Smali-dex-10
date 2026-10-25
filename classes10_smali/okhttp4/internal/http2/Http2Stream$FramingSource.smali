.class final Lokhttp4/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokin/Source;


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokin/Buffer;

.field private final receiveBuffer:Lokin/Buffer;

.field final synthetic this$0:Lokhttp4/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lokhttp4/internal/http2/Http2Stream;J)V
    .registers 4

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokin/Buffer;

    invoke-direct {p1}, Lokin/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokin/Buffer;

    new-instance p1, Lokin/Buffer;

    invoke-direct {p1}, Lokin/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    iput-wide p2, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    return-void
.end method

.method private updateConnectionFlowControl(J)V
    .registers 4

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp4/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 9

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->closed:Z

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    invoke-virtual {v1}, Lokin/Buffer;->size()J

    move-result-wide v1

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    invoke-virtual {v3}, Lokin/Buffer;->clear()V

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v3}, Lokhttp4/internal/http2/Http2Stream;->access$000(Lokhttp4/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_44

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v3}, Lokhttp4/internal/http2/Http2Stream;->access$100(Lokhttp4/internal/http2/Http2Stream;)Lokhttp4/internal/http2/Header$Listener;

    move-result-object v3

    if-eqz v3, :cond_44

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v3}, Lokhttp4/internal/http2/Http2Stream;->access$000(Lokhttp4/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v3}, Lokhttp4/internal/http2/Http2Stream;->access$000(Lokhttp4/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v3}, Lokhttp4/internal/http2/Http2Stream;->access$100(Lokhttp4/internal/http2/Http2Stream;)Lokhttp4/internal/http2/Header$Listener;

    move-result-object v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_45

    :cond_44
    move-object v3, v4

    :goto_45
    iget-object v5, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_70

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_54

    invoke-direct {p0, v1, v2}, Lokhttp4/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    :cond_54
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp4/Headers;

    invoke-interface {v4, v1}, Lokhttp4/internal/http2/Header$Listener;->onHeaders(Lokhttp4/Headers;)V

    goto :goto_5f

    :cond_6f
    return-void

    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    goto :goto_74

    :goto_73
    throw v1

    :goto_74
    goto :goto_73
.end method

.method public read(Lokin/Buffer;J)J
    .registers 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_e1

    :goto_a
    iget-object v6, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v6

    :try_start_d
    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_de

    :try_start_14
    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v7, v0, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    if-eqz v7, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v7, 0x0

    :goto_1c
    iget-boolean v9, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v9, :cond_cc

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Stream;->access$000(Lokhttp4/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Stream;->access$100(Lokhttp4/internal/http2/Http2Stream;)Lokhttp4/internal/http2/Header$Listener;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Stream;->access$000(Lokhttp4/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lokhttp4/Headers;

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Stream;->access$100(Lokhttp4/internal/http2/Http2Stream;)Lokhttp4/internal/http2/Header$Listener;

    move-result-object v0

    move-object/from16 v13, p1

    move-object v10, v0

    goto :goto_a6

    :cond_49
    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->size()J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-lez v0, :cond_8d

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->size()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v11, v12}, Lokin/Buffer;->read(Lokin/Buffer;J)J

    move-result-wide v11

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-wide v14, v0, Lokhttp4/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v14, v11

    iput-wide v14, v0, Lokhttp4/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    if-nez v7, :cond_8a

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Connection;->okHttpSettings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v8, v0

    cmp-long v0, v14, v8

    if-ltz v0, :cond_8a

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v8, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v9, v0, Lokhttp4/internal/http2/Http2Stream;->id:I

    iget-wide v14, v0, Lokhttp4/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v8, v9, v14, v15}, Lokhttp4/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iput-wide v4, v0, Lokhttp4/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    :cond_8a
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_a8

    :cond_8d
    move-object/from16 v13, p1

    iget-boolean v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_a4

    if-nez v7, :cond_a4

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream;->waitForIo()V
    :try_end_9a
    .catchall {:try_start_14 .. :try_end_9a} :catchall_d5

    :try_start_9a
    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v6

    goto/16 :goto_a

    :cond_a4
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_a6
    const-wide/16 v11, -0x1

    :goto_a8
    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v6
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_de

    if-eqz v8, :cond_b9

    if-eqz v10, :cond_b9

    invoke-interface {v10, v8}, Lokhttp4/internal/http2/Header$Listener;->onHeaders(Lokhttp4/Headers;)V

    goto/16 :goto_a

    :cond_b9
    const-wide/16 v2, -0x1

    cmp-long v0, v11, v2

    if-eqz v0, :cond_c3

    invoke-direct {v1, v11, v12}, Lokhttp4/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    return-wide v11

    :cond_c3
    if-nez v7, :cond_c6

    return-wide v2

    :cond_c6
    new-instance v0, Lokhttp4/internal/http2/StreamResetException;

    invoke-direct {v0, v7}, Lokhttp4/internal/http2/StreamResetException;-><init>(Lokhttp4/internal/http2/ErrorCode;)V

    throw v0

    :cond_cc
    :try_start_cc
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception v0

    :try_start_d6
    iget-object v2, v1, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v2, v2, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    :catchall_de
    move-exception v0

    monitor-exit v6
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_de

    throw v0

    :cond_e1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_f9

    :goto_f8
    throw v0

    :goto_f9
    goto :goto_f8
.end method

.method receive(Lokin/BufferedSource;J)V
    .registers 15

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_81

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v2

    :try_start_9
    iget-boolean v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->finished:Z

    iget-object v4, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    invoke-virtual {v4}, Lokin/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_7e

    if-eqz v4, :cond_2b

    invoke-interface {p1, p2, p3}, Lokin/BufferedSource;->skip(J)V

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    sget-object p2, Lokhttp4/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lokhttp4/internal/http2/Http2Stream;->closeLater(Lokhttp4/internal/http2/ErrorCode;)V

    return-void

    :cond_2b
    if-eqz v3, :cond_31

    invoke-interface {p1, p2, p3}, Lokin/BufferedSource;->skip(J)V

    return-void

    :cond_31
    iget-object v2, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokin/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_78

    sub-long/2addr p2, v2

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v2

    :try_start_41
    iget-boolean v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v3, :cond_51

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokin/Buffer;

    invoke-virtual {v3}, Lokin/Buffer;->size()J

    move-result-wide v3

    iget-object v5, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokin/Buffer;

    invoke-virtual {v5}, Lokin/Buffer;->clear()V

    goto :goto_6c

    :cond_51
    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    invoke-virtual {v3}, Lokin/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v8, 0x0

    :goto_5d
    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokin/Buffer;

    iget-object v4, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokin/Buffer;

    invoke-virtual {v3, v4}, Lokin/Buffer;->writeAll(Lokin/Source;)J

    if-eqz v8, :cond_6b

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_6b
    move-wide v3, v0

    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_75

    cmp-long v2, v3, v0

    if-lez v2, :cond_0

    invoke-direct {p0, v3, v4}, Lokhttp4/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    goto :goto_0

    :catchall_75
    move-exception p1

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1

    :cond_78
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_7e
    move-exception p1

    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p1

    :cond_81
    return-void
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->readTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
