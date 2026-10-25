.class Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;
.super Lokhttp4/internal/NamedRunnable;
.source "Http2Connection.java"


# instance fields
.field final synthetic this$1:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$clearPrevious:Z

.field final synthetic val$settings:Lokhttp4/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLokhttp4/internal/http2/Settings;)V
    .registers 6

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

    iput-boolean p4, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;->val$clearPrevious:Z

    iput-object p5, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;->val$settings:Lokhttp4/internal/http2/Settings;

    invoke-direct {p0, p2, p3}, Lokhttp4/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;

    iget-boolean v1, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;->val$clearPrevious:Z

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable$2;->val$settings:Lokhttp4/internal/http2/Settings;

    invoke-virtual {v0, v1, v2}, Lokhttp4/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLokhttp4/internal/http2/Settings;)V

    return-void
.end method
