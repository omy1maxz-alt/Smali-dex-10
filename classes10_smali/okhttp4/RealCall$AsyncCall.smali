.class final Lokhttp4/RealCall$AsyncCall;
.super Lokhttp4/internal/NamedRunnable;
.source "RealCall.java"


# instance fields
.field private final responseCallback:Lokhttp4/Callback;

.field final synthetic this$0:Lokhttp4/RealCall;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lokhttp4/RealCall;

    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 6

    iget-object v0, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    iget-object v0, v0, Lokhttp4/RealCall;->timeout:Lokin/AsyncTimeout;

    invoke-virtual {v0}, Lokin/AsyncTimeout;->enter()V

    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-virtual {v1}, Lokhttp4/RealCall;->getResponseWithInterceptorChain()Lokhttp4/Response;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_4e
    .catchall {:try_start_8 .. :try_end_e} :catchall_26

    const/4 v1, 0x1

    :try_start_f
    iget-object v2, p0, Lokhttp4/RealCall$AsyncCall;->responseCallback:Lokhttp4/Callback;

    iget-object v3, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-interface {v2, v3, v0}, Lokhttp4/Callback;->onResponse(Lokhttp4/Call;Lokhttp4/Response;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :goto_16
    iget-object v0, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    iget-object v0, v0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->dispatcher()Lokhttp4/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp4/Dispatcher;->finished(Lokhttp4/RealCall$AsyncCall;)V

    goto :goto_8c

    :catchall_22
    move-exception v0

    goto :goto_29

    :catch_24
    move-exception v0

    goto :goto_51

    :catchall_26
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_29
    :try_start_29
    iget-object v2, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-virtual {v2}, Lokhttp4/RealCall;->cancel()V

    if-nez v1, :cond_4d

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp4/RealCall$AsyncCall;->responseCallback:Lokhttp4/Callback;

    iget-object v3, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-interface {v2, v3, v1}, Lokhttp4/Callback;->onFailure(Lokhttp4/Call;Ljava/io/IOException;)V

    :cond_4d
    throw v0

    :catch_4e
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_51
    iget-object v2, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-virtual {v2, v0}, Lokhttp4/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_79

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-virtual {v4}, Lokhttp4/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp4/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_79
    iget-object v1, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-static {v1}, Lokhttp4/RealCall;->access$000(Lokhttp4/RealCall;)Lokhttp4/EventListener;

    move-result-object v1

    iget-object v2, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-virtual {v1, v2, v0}, Lokhttp4/EventListener;->callFailed(Lokhttp4/Call;Ljava/io/IOException;)V

    iget-object v1, p0, Lokhttp4/RealCall$AsyncCall;->responseCallback:Lokhttp4/Callback;

    iget-object v2, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-interface {v1, v2, v0}, Lokhttp4/Callback;->onFailure(Lokhttp4/Call;Ljava/io/IOException;)V
    :try_end_8b
    .catchall {:try_start_29 .. :try_end_8b} :catchall_8d

    goto :goto_16

    :goto_8c
    return-void

    :catchall_8d
    move-exception v0

    iget-object v1, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    iget-object v1, v1, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v1}, Lokhttp4/OkHttpClient;->dispatcher()Lokhttp4/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp4/Dispatcher;->finished(Lokhttp4/RealCall$AsyncCall;)V

    goto :goto_9b

    :goto_9a
    throw v0

    :goto_9b
    goto :goto_9a
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_2e

    :catchall_4
    move-exception p1

    goto :goto_2f

    :catch_6
    move-exception p1

    :try_start_7
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-static {p1}, Lokhttp4/RealCall;->access$000(Lokhttp4/RealCall;)Lokhttp4/EventListener;

    move-result-object p1

    iget-object v1, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-virtual {p1, v1, v0}, Lokhttp4/EventListener;->callFailed(Lokhttp4/Call;Ljava/io/IOException;)V

    iget-object p1, p0, Lokhttp4/RealCall$AsyncCall;->responseCallback:Lokhttp4/Callback;

    iget-object v1, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    invoke-interface {p1, v1, v0}, Lokhttp4/Callback;->onFailure(Lokhttp4/Call;Ljava/io/IOException;)V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_4

    iget-object p1, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    iget-object p1, p1, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {p1}, Lokhttp4/OkHttpClient;->dispatcher()Lokhttp4/Dispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp4/Dispatcher;->finished(Lokhttp4/RealCall$AsyncCall;)V

    :goto_2e
    return-void

    :goto_2f
    iget-object v0, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    iget-object v0, v0, Lokhttp4/RealCall;->client:Lokhttp4/OkHttpClient;

    invoke-virtual {v0}, Lokhttp4/OkHttpClient;->dispatcher()Lokhttp4/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp4/Dispatcher;->finished(Lokhttp4/RealCall$AsyncCall;)V

    throw p1
.end method

.method get()Lokhttp4/RealCall;
    .registers 2

    iget-object v0, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/RealCall$AsyncCall;->this$0:Lokhttp4/RealCall;

    iget-object v0, v0, Lokhttp4/RealCall;->originalRequest:Lokhttp4/Request;

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
