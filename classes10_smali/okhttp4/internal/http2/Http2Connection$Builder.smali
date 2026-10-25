.class public Lokhttp4/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lokhttp4/internal/http2/Http2Connection$Listener;

.field pingIntervalMillis:I

.field pushObserver:Lokhttp4/internal/http2/PushObserver;

.field sink:Lokin/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lokin/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lokhttp4/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp4/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->listener:Lokhttp4/internal/http2/Http2Connection$Listener;

    sget-object v0, Lokhttp4/internal/http2/PushObserver;->CANCEL:Lokhttp4/internal/http2/PushObserver;

    iput-object v0, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp4/internal/http2/PushObserver;

    iput-boolean p1, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->client:Z

    return-void
.end method


# virtual methods
.method public build()Lokhttp4/internal/http2/Http2Connection;
    .registers 2

    new-instance v0, Lokhttp4/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lokhttp4/internal/http2/Http2Connection;-><init>(Lokhttp4/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lokhttp4/internal/http2/Http2Connection$Listener;)Lokhttp4/internal/http2/Http2Connection$Builder;
    .registers 2

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->listener:Lokhttp4/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public pingIntervalMillis(I)Lokhttp4/internal/http2/Http2Connection$Builder;
    .registers 2

    iput p1, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    return-object p0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lokin/BufferedSource;Lokin/BufferedSink;)Lokhttp4/internal/http2/Http2Connection$Builder;
    .registers 5

    iput-object p1, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object p3, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->source:Lokin/BufferedSource;

    iput-object p4, p0, Lokhttp4/internal/http2/Http2Connection$Builder;->sink:Lokin/BufferedSink;

    return-object p0
.end method
