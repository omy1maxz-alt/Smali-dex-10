.class final Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;
.super Lokhttp4/internal/NamedRunnable;
.source "Http2Connection.java"


# instance fields
.field final synthetic this$0:Lokhttp4/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp4/internal/http2/Http2Connection;)V
    .registers 4

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lokhttp4/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping"

    invoke-direct {p0, p1, v0}, Lokhttp4/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 9

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp4/internal/http2/Http2Connection;->access$100(Lokhttp4/internal/http2/Http2Connection;)J

    move-result-wide v1

    iget-object v3, p0, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v3}, Lokhttp4/internal/http2/Http2Connection;->access$200(Lokhttp4/internal/http2/Http2Connection;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_17

    const/4 v1, 0x1

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp4/internal/http2/Http2Connection;->access$208(Lokhttp4/internal/http2/Http2Connection;)J

    const/4 v1, 0x0

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c

    if-eqz v1, :cond_26

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Connection;->access$000(Lokhttp4/internal/http2/Http2Connection;)V

    goto :goto_2b

    :cond_26
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0, v6, v5, v6}, Lokhttp4/internal/http2/Http2Connection;->writePing(ZII)V

    :goto_2b
    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method
