.class final Lokhttp4/internal/http2/Http2Stream$FramingSink;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokin/Sink;


# instance fields
.field closed:Z

.field finished:Z

.field private final sendBuffer:Lokin/Buffer;

.field final synthetic this$0:Lokhttp4/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lokhttp4/internal/http2/Http2Stream;)V
    .registers 2

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokin/Buffer;

    invoke-direct {p1}, Lokin/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    return-void
.end method

.method private emitFrame(Z)V
    .registers 13

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokin/AsyncTimeout;->enter()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_7f

    :goto_a
    :try_start_a
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-wide v2, v1, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_24

    iget-boolean v2, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_24

    iget-boolean v2, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v2, :cond_24

    iget-object v2, v1, Lokhttp4/internal/http2/Http2Stream;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    if-nez v2, :cond_24

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream;->waitForIo()V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_76

    goto :goto_a

    :cond_24
    :try_start_24
    iget-object v1, v1, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream;->checkOutNotClosed()V

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-wide v1, v1, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual {v3}, Lokin/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-wide v2, v1, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lokhttp4/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_7f

    iget-object v0, v1, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V

    :try_start_49
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v5, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v6, v0, Lokhttp4/internal/http2/Http2Stream;->id:I

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual {p1}, Lokin/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_5e

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_60

    :cond_5e
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_60
    iget-object v8, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual/range {v5 .. v10}, Lokhttp4/internal/http2/Http2Connection;->writeData(IZLokin/Buffer;J)V
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_6d

    iget-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object p1, p1, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {p1}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_6d
    move-exception p1

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_76
    move-exception p1

    :try_start_77
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_7f
    move-exception p1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7f

    goto :goto_83

    :goto_82
    throw p1

    :goto_83
    goto :goto_82
.end method


# virtual methods
.method public close()V
    .registers 9

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_50

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->sink:Lokhttp4/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2d

    :goto_1f
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3a

    invoke-direct {p0, v1}, Lokhttp4/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_1f

    :cond_2d
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v2, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    iget v3, v0, Lokhttp4/internal/http2/Http2Stream;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lokhttp4/internal/http2/Http2Connection;->writeData(IZLokin/Buffer;J)V

    :cond_3a
    iget-object v2, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v2

    :try_start_3d
    iput-boolean v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->closed:Z

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4d

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Connection;->flush()V

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    return-void

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    goto :goto_54

    :goto_53
    throw v1

    :goto_54
    goto :goto_53
.end method

.method public flush()V
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lokhttp4/internal/http2/Http2Stream;->checkOutNotClosed()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    :goto_9
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp4/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Connection;->flush()V

    goto :goto_9

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    goto :goto_26

    :goto_25
    throw v1

    :goto_26
    goto :goto_25
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->writeTimeout:Lokhttp4/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method public write(Lokin/Buffer;J)V
    .registers 6

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokin/Buffer;->write(Lokin/Buffer;J)V

    :goto_5
    iget-object p1, p0, Lokhttp4/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lokin/Buffer;

    invoke-virtual {p1}, Lokin/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_16

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lokhttp4/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_5

    :cond_16
    return-void
.end method
