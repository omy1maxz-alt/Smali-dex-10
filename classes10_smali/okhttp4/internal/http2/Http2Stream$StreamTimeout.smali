.class Lokhttp4/internal/http2/Http2Stream$StreamTimeout;
.super Lokin/AsyncTimeout;
.source "Http2Stream.java"


# instance fields
.field final synthetic this$0:Lokhttp4/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Lokhttp4/internal/http2/Http2Stream;)V
    .registers 2

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp4/internal/http2/Http2Stream;

    invoke-direct {p0}, Lokin/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .registers 2

    invoke-virtual {p0}, Lokin/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_d
    return-object v0
.end method

.method protected timedOut()V
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp4/internal/http2/Http2Stream;

    sget-object v1, Lokhttp4/internal/http2/ErrorCode;->CANCEL:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp4/internal/http2/Http2Stream;->closeLater(Lokhttp4/internal/http2/ErrorCode;)V

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Stream$StreamTimeout;->this$0:Lokhttp4/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Stream;->connection:Lokhttp4/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp4/internal/http2/Http2Connection;->sendDegradedPingLater()V

    return-void
.end method
