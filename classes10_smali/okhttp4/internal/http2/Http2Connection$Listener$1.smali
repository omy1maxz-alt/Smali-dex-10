.class Lokhttp4/internal/http2/Http2Connection$Listener$1;
.super Lokhttp4/internal/http2/Http2Connection$Listener;
.source "Http2Connection.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokhttp4/internal/http2/Http2Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Lokhttp4/internal/http2/Http2Stream;)V
    .registers 3

    sget-object v0, Lokhttp4/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp4/internal/http2/Http2Stream;->close(Lokhttp4/internal/http2/ErrorCode;)V

    return-void
.end method
