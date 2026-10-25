.class public final Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;
.source "BlockingFirstSubscriber.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;->error:Ljava/lang/Throwable;

    goto :goto_a

    :cond_7
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_a
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;->value:Ljava/lang/Object;

    if-nez v0, :cond_e

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;->value:Ljava/lang/Object;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BlockingBaseSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_e
    return-void
.end method
