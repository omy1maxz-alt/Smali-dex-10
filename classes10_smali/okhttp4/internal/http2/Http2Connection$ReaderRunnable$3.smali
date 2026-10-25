.class Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lokhttp4/internal/NamedRunnable;
.source "Http2Connection.java"


# instance fields
.field final synthetic this$1:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Lokhttp4/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget-object v1, v0, Lokhttp4/internal/http2/Http2Connection;->listener:Lokhttp4/internal/http2/Http2Connection$Listener;

    invoke-virtual {v1, v0}, Lokhttp4/internal/http2/Http2Connection$Listener;->onSettings(Lokhttp4/internal/http2/Http2Connection;)V

    return-void
.end method
