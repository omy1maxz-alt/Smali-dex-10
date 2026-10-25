.class Lcom/gold/youtube/om7753/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/om7753/App;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/App;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/App$1;->this$0:Lcom/gold/youtube/om7753/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isThrowableCritical(Ljava/lang/Throwable;)Z
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/NullPointerException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/IllegalArgumentException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lio/reactivex/rxjava3/exceptions/OnErrorNotImplementedException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/lang/IllegalStateException;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/ktx/ExceptionUtils;->hasAssignableCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method private isThrowableIgnored(Ljava/lang/Throwable;)Z
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/IOException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/net/SocketException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/InterruptedException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/io/InterruptedIOException;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/ktx/ExceptionUtils;->hasAssignableCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method private reportException(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/App$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .registers 5

    instance-of v0, p1, Lio/reactivex/rxjava3/exceptions/UndeliverableException;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_8
    instance-of v0, p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v0

    goto :goto_18

    :cond_14
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/App$1;->isThrowableIgnored(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-void

    :cond_2f
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/App$1;->isThrowableCritical(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/App$1;->reportException(Ljava/lang/Throwable;)V

    return-void

    :cond_39
    iget-object v0, p0, Lcom/gold/youtube/om7753/App$1;->this$0:Lcom/gold/youtube/om7753/App;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/App;->isDisposedRxExceptionsReported()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/App$1;->reportException(Ljava/lang/Throwable;)V

    goto :goto_45

    :cond_45
    :goto_45
    return-void
.end method
