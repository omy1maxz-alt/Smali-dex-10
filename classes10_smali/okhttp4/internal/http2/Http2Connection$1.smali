.class Lokhttp4/internal/http2/Http2Connection$1;
.super Lokhttp4/internal/NamedRunnable;
.source "Http2Connection.java"


# instance fields
.field final synthetic this$0:Lokhttp4/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lokhttp4/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lokhttp4/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp4/internal/http2/ErrorCode;)V
    .registers 6

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$1;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iput p4, p0, Lokhttp4/internal/http2/Http2Connection$1;->val$streamId:I

    iput-object p5, p0, Lokhttp4/internal/http2/Http2Connection$1;->val$errorCode:Lokhttp4/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lokhttp4/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$1;->this$0:Lokhttp4/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp4/internal/http2/Http2Connection$1;->val$streamId:I

    iget-object v2, p0, Lokhttp4/internal/http2/Http2Connection$1;->val$errorCode:Lokhttp4/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lokhttp4/internal/http2/Http2Connection;->writeSynReset(ILokhttp4/internal/http2/ErrorCode;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    iget-object v0, p0, Lokhttp4/internal/http2/Http2Connection$1;->this$0:Lokhttp4/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp4/internal/http2/Http2Connection;->access$000(Lokhttp4/internal/http2/Http2Connection;)V

    :goto_f
    return-void
.end method
