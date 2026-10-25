.class abstract Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "AbstractDirectTask.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field protected static final DISPOSED:Ljava/util/concurrent/FutureTask;

.field protected static final FINISHED:Ljava/util/concurrent/FutureTask;

.field private static final serialVersionUID:J = 0x1924f211b909b42fL


# instance fields
.field protected final interruptOnCancel:Z

.field protected final runnable:Ljava/lang/Runnable;

.field protected runner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runnable:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->interruptOnCancel:Z

    return-void
.end method

.method private cancelFuture(Ljava/util/concurrent/Future;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_12

    :cond_d
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->interruptOnCancel:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_12
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    if-eq v0, v1, :cond_19

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    if-eq v0, v1, :cond_19

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->cancelFuture(Ljava/util/concurrent/Future;)V

    :cond_19
    return-void
.end method

.method public final isDisposed()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    if-eq v0, v1, :cond_11

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public final setFuture(Ljava/util/concurrent/Future;)V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_b

    goto :goto_19

    :cond_b
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_13

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->cancelFuture(Ljava/util/concurrent/Future;)V

    goto :goto_19

    :cond_13
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->FINISHED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_d

    const-string v0, "Finished"

    goto :goto_2e

    :cond_d
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->DISPOSED:Ljava/util/concurrent/FutureTask;

    if-ne v0, v1, :cond_14

    const-string v0, "Disposed"

    goto :goto_2e

    :cond_14
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/AbstractDirectTask;->runner:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2c
    const-string v0, "Waiting"

    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
