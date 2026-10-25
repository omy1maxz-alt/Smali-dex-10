.class public interface abstract Lokhttp4/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final CANCEL:Lokhttp4/internal/http2/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp4/internal/http2/PushObserver$1;

    invoke-direct {v0}, Lokhttp4/internal/http2/PushObserver$1;-><init>()V

    sput-object v0, Lokhttp4/internal/http2/PushObserver;->CANCEL:Lokhttp4/internal/http2/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILokin/BufferedSource;IZ)Z
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
.end method

.method public abstract onRequest(ILjava/util/List;)Z
.end method

.method public abstract onReset(ILokhttp4/internal/http2/ErrorCode;)V
.end method
