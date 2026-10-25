.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableZip.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# static fields
.field private static final serialVersionUID:J = 0x296842a962149c03L


# instance fields
.field volatile cancelled:Z

.field final delayError:Z

.field final downstream:Lio/reactivex/rxjava3/core/Observer;

.field final observers:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

.field final row:[Ljava/lang/Object;

.field final zipper:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Function;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/Observer;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->zipper:Lio/reactivex/rxjava3/functions/Function;

    new-array p1, p3, [Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->row:[Ljava/lang/Object;

    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->delayError:Z

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->clear()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelSources()V

    return-void
.end method

.method cancelSources()V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method checkTerminated(ZZLio/reactivex/rxjava3/core/Observer;ZLio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;)Z
    .registers 8

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    return v1

    :cond_9
    if-eqz p1, :cond_38

    if-eqz p4, :cond_20

    if-eqz p2, :cond_38

    iget-object p1, p5, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    if-eqz p1, :cond_1c

    invoke-interface {p3, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_1c
    invoke-interface {p3}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    :goto_1f
    return v1

    :cond_20
    iget-object p1, p5, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_2d

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    invoke-interface {p3, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2d
    if-eqz p2, :cond_38

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    invoke-interface {p3}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    return v1

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method clear()V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    iget-object v3, v3, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-virtual {v3}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public dispose()V
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelSources()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->clear()V

    :cond_13
    return-void
.end method

.method public drain()V
    .registers 21

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

    iget-object v8, v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/Observer;

    iget-object v9, v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->row:[Ljava/lang/Object;

    iget-boolean v10, v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->delayError:Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    :cond_13
    :goto_13
    array-length v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1a
    if-ge v15, v13, :cond_5e

    aget-object v6, v0, v15

    aget-object v1, v9, v17

    if-nez v1, :cond_46

    iget-boolean v2, v6, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    iget-object v1, v6, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_2f

    const/16 v19, 0x1

    goto :goto_31

    :cond_2f
    const/16 v19, 0x0

    :goto_31
    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object v4, v8

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->checkTerminated(ZZLio/reactivex/rxjava3/core/Observer;ZLio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;)Z

    move-result v1

    if-eqz v1, :cond_3e

    return-void

    :cond_3e
    if-nez v19, :cond_43

    aput-object v18, v9, v17

    goto :goto_59

    :cond_43
    add-int/lit8 v16, v16, 0x1

    goto :goto_59

    :cond_46
    iget-boolean v1, v6, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    if-eqz v1, :cond_59

    if-nez v10, :cond_59

    iget-object v1, v6, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_59

    iput-boolean v11, v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    invoke-interface {v8, v1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_59
    :goto_59
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    :cond_5e
    if-eqz v16, :cond_68

    neg-int v1, v12

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v12

    if-nez v12, :cond_13

    return-void

    :cond_68
    :try_start_68
    iget-object v1, v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->zipper:Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {v9}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The zipper returned a null value"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_7f

    invoke-interface {v8, v1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v9, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :catchall_7f
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    invoke-interface {v8, v0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    return v0
.end method

.method public subscribe([Lio/reactivex/rxjava3/core/ObservableSource;I)V
    .registers 8

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_11

    new-instance v4, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;

    invoke-direct {v4, p0, p2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipObserver;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;I)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->downstream:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p2, p0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    :goto_19
    if-ge v2, v1, :cond_2a

    iget-boolean p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    if-eqz p2, :cond_20

    return-void

    :cond_20
    aget-object p2, p1, v2

    aget-object v3, v0, v2

    invoke-interface {p2, v3}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2a
    return-void
.end method
