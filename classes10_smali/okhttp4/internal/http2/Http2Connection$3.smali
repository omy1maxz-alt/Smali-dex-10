.class Lokhttp4/internal/http2/Http2Connection$3;
.super Lokhttp4/internal/NamedRunnable;
.source "Http2Connection.java"


# instance fields
.field final synthetic this$0:Lokhttp4/internal/http2/Http2Connection;


# direct methods
.method varargs constructor <init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$3;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-direct {p0, p2, p3}, Lokhttp4/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$3;->this$0:Lokhttp4/internal/http2/Http2Connection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lokhttp4/internal/http2/Http2Connection;->writePing(ZII)V

    return-void
.end method
