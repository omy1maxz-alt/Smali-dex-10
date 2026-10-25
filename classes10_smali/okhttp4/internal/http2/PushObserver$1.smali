.class Lokhttp4/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lokhttp4/internal/http2/PushObserver;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILokin/BufferedSource;IZ)Z
    .registers 5

    int-to-long p3, p3

    invoke-interface {p2, p3, p4}, Lokin/BufferedSource;->skip(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public onRequest(ILjava/util/List;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public onReset(ILokhttp4/internal/http2/ErrorCode;)V
    .registers 3

    return-void
.end method
