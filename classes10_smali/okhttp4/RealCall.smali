.class final Lokhttp4/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp4/Call;


# instance fields
.field final client:Lokhttp4/OkHttpClient;

.field private eventListener:Lokhttp4/EventListener;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lokhttp4/Request;

.field final retryAndFollowUpInterceptor:Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

.field final timeout:Lokin/AsyncTimeout;


# direct methods
.method private constructor <init>(Lokhttp4/OkHttpClient;Lokhttp4/Request;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    iput-object p2, p0, Lokhttp4/RealCall;->originalRequest:Lokhttp4/Request;

    iput-boolean p3, p0, Lokhttp4/RealCall;->forWebSocket:Z

    new-instance p2, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {p2, p1, p3}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp4/OkHttpClient;Z)V

    iput-object p2, p0, Lokhttp4/RealCall;->retryAndFollowUpInterceptor:Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

    new-instance p2, Lokhttp4/RealCall$1;

    invoke-direct {p2, p0}, Lokhttp4/RealCall$1;-><init>(Lokhttp4/RealCall;)V

    iput-object p2, p0, Lokhttp4/RealCall;->timeout:Lokin/AsyncTimeout;

    invoke-virtual {p1}, Lokhttp4/OkHttpClient;->callTimeoutMillis()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lokin/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokin/Timeout;

    return-void
.end method

.method static synthetic access$000(Lokhttp4/RealCall;)Lokhttp4/EventListener;
    .registers 1

    iget-object p0, p0, Lokhttp4/RealCall;->eventListener:Lokhttp4/EventListener;

    return-object p0
.end method

.method private captureCallStackTrace()V
    .registers 3

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp4/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/RealCall;->retryAndFollowUpInterceptor:Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    return-void
.end method

.method static newRealCall(Lokhttp4/OkHttpClient;Lokhttp4/Request;Z)Lokhttp4/RealCall;
    .registers 4

    new-instance v0, Lokhttp4/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lokhttp4/RealCall;-><init>(Lokhttp4/OkHttpClient;Lokhttp4/Request;Z)V

    invoke-virtual {p0}, Lokhttp4/OkHttpClient;->eventListenerFactory()Lokhttp4/EventListener$Factory;

    move-result-object p0

    invoke-interface {p0, v0}, Lokhttp4/EventListener$Factory;->create(Lokhttp4/Call;)Lokhttp4/EventListener;

    move-result-object p0

    iput-object p0, v0, Lokhttp4/RealCall;->eventListener:Lokhttp4/EventListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lokhttp4/RealCall;->retryAndFollowUpInterceptor:Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lokhttp4/RealCall;->clone()Lokhttp4/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp4/RealCall;
    .registers 4

    iget-object v0, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    iget-object v1, p0, Lokhttp4/RealCall;->originalRequest:Lokhttp4/Request;

    iget-boolean v2, p0, Lokhttp4/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lokhttp4/RealCall;->newRealCall(Lokhttp4/OkHttpClient;Lokhttp4/Request;Z)Lokhttp4/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lokhttp4/Response;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp4/RealCall;->executed:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/RealCall;->executed:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_56

    invoke-direct {p0}, Lokhttp4/RealCall;->captureCallStackTrace()V

    iget-object v0, p0, Lokhttp4/RealCall;->timeout:Lokin/AsyncTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V

    iget-object v0, p0, Lokhttp4/RealCall;->eventListener:Lokhttp4/EventListener;

    invoke-virtual {v0, p0}, Lokhttp4/EventListener;->callStart(Lokhttp4/Call;)V

    :try_start_16
    iget-object v0, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->dispatcher()Lokhttp4/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp4/Dispatcher;->executed(Lokhttp4/RealCall;)V

    invoke-virtual {p0}, Lokhttp4/RealCall;->getResponseWithInterceptorChain()Lokhttp4/Response;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_39
    .catchall {:try_start_16 .. :try_end_23} :catchall_37

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v1}, Lokhttp4/OkHttpClient;->dispatcher()Lokhttp4/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp4/Dispatcher;->finished(Lokhttp4/RealCall;)V

    return-object v0

    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_39
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    goto :goto_44

    :catch_39
    move-exception v0

    :try_start_3a
    invoke-virtual {p0, v0}, Lokhttp4/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/RealCall;->eventListener:Lokhttp4/EventListener;

    invoke-virtual {v1, p0, v0}, Lokhttp4/EventListener;->callFailed(Lokhttp4/Call;Ljava/io/IOException;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_37

    :goto_44
    iget-object v1, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v1}, Lokhttp4/OkHttpClient;->dispatcher()Lokhttp4/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp4/Dispatcher;->finished(Lokhttp4/RealCall;)V

    throw v0

    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v0
.end method

.method getResponseWithInterceptorChain()Lokhttp4/Response;
    .registers 14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lokhttp4/RealCall;->retryAndFollowUpInterceptor:Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp4/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->cookieJar()Lokhttp4/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp4/internal/http/BridgeInterceptor;-><init>(Lokhttp4/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp4/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v2}, Lokhttp4/OkHttpClient;->internalCache()Lokhttp4/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp4/internal/cache/CacheInterceptor;-><init>(Lokhttp4/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp4/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp4/internal/connection/ConnectInterceptor;-><init>(Lokhttp4/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lokhttp4/RealCall;->forWebSocket:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_46
    new-instance v0, Lokhttp4/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lokhttp4/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lokhttp4/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lokhttp4/internal/http/RealInterceptorChain;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp4/RealCall;->originalRequest:Lokhttp4/Request;

    iget-object v8, p0, Lokhttp4/RealCall;->eventListener:Lokhttp4/EventListener;

    iget-object v0, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->connectTimeoutMillis()I

    move-result v9

    iget-object v0, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->readTimeoutMillis()I

    move-result v10

    iget-object v0, p0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->writeTimeoutMillis()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lokhttp4/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp4/internal/connection/StreamAllocation;Lokhttp4/internal/http/HttpCodec;Lokhttp4/internal/connection/RealConnection;ILokhttp4/Request;Lokhttp4/Call;Lokhttp4/EventListener;III)V

    iget-object v0, p0, Lokhttp4/RealCall;->originalRequest:Lokhttp4/Request;

    invoke-interface {v12, v0}, Lokhttp4/Interceptor$Chain;->proceed(Lokhttp4/Request;)Lokhttp4/Response;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/RealCall;->retryAndFollowUpInterceptor:Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_80

    return-object v0

    :cond_80
    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-object v0, p0, Lokhttp4/RealCall;->retryAndFollowUpInterceptor:Lokhttp4/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp4/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method redactedUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/RealCall;->originalRequest:Lokhttp4/Request;

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    iget-object v0, p0, Lokhttp4/RealCall;->timeout:Lokin/AsyncTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    :cond_9
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_16
    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp4/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp4/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "web socket"

    goto :goto_1d

    :cond_1b
    const-string v1, "call"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp4/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
