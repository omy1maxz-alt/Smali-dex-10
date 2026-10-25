.class public abstract Lokhttp4/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# static fields
.field public static final NONE:Lokhttp4/EventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp4/EventListener$1;

    invoke-direct {v0}, Lokhttp4/EventListener$1;-><init>()V

    sput-object v0, Lokhttp4/EventListener;->NONE:Lokhttp4/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lokhttp4/EventListener;)Lokhttp4/EventListener$Factory;
    .registers 2

    new-instance v0, Lokhttp4/EventListener$2;

    invoke-direct {v0, p0}, Lokhttp4/EventListener$2;-><init>(Lokhttp4/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lokhttp4/Call;)V
    .registers 2

    return-void
.end method

.method public callFailed(Lokhttp4/Call;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method public callStart(Lokhttp4/Call;)V
    .registers 2

    return-void
.end method

.method public connectEnd(Lokhttp4/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp4/Protocol;)V
    .registers 5

    return-void
.end method

.method public connectFailed(Lokhttp4/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp4/Protocol;Ljava/io/IOException;)V
    .registers 6

    return-void
.end method

.method public connectStart(Lokhttp4/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    return-void
.end method

.method public connectionAcquired(Lokhttp4/Call;Lokhttp4/Connection;)V
    .registers 3

    return-void
.end method

.method public connectionReleased(Lokhttp4/Call;Lokhttp4/Connection;)V
    .registers 3

    return-void
.end method

.method public dnsEnd(Lokhttp4/Call;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    return-void
.end method

.method public dnsStart(Lokhttp4/Call;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public requestBodyEnd(Lokhttp4/Call;J)V
    .registers 4

    return-void
.end method

.method public requestBodyStart(Lokhttp4/Call;)V
    .registers 2

    return-void
.end method

.method public requestHeadersEnd(Lokhttp4/Call;Lokhttp4/Request;)V
    .registers 3

    return-void
.end method

.method public requestHeadersStart(Lokhttp4/Call;)V
    .registers 2

    return-void
.end method

.method public responseBodyEnd(Lokhttp4/Call;J)V
    .registers 4

    return-void
.end method

.method public responseBodyStart(Lokhttp4/Call;)V
    .registers 2

    return-void
.end method

.method public responseHeadersEnd(Lokhttp4/Call;Lokhttp4/Response;)V
    .registers 3

    return-void
.end method

.method public responseHeadersStart(Lokhttp4/Call;)V
    .registers 2

    return-void
.end method

.method public secureConnectEnd(Lokhttp4/Call;Lokhttp4/Handshake;)V
    .registers 3

    return-void
.end method

.method public secureConnectStart(Lokhttp4/Call;)V
    .registers 2

    return-void
.end method
