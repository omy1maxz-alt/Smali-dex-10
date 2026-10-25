.class public final Lokhttp4/internal/http2/StreamResetException;
.super Ljava/io/IOException;
.source "StreamResetException.java"


# instance fields
.field public final errorCode:Lokhttp4/internal/http2/ErrorCode;


# direct methods
.method public constructor <init>(Lokhttp4/internal/http2/ErrorCode;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stream was reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp4/internal/http2/StreamResetException;->errorCode:Lokhttp4/internal/http2/ErrorCode;

    return-void
.end method
