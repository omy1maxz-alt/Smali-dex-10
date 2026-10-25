.class public final Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;
.super Ljava/lang/Object;
.source "ListCompositeDisposable.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lio/reactivex/rxjava3/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 3

    const-string v0, "d is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_24

    monitor-enter p0

    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    :cond_19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 4

    const-string v0, "Disposable item is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_12

    monitor-exit p0

    return v1

    :cond_12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_20

    :cond_1d
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_20
    :goto_20
    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p1
.end method

.method public dispose()V
    .registers 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method dispose(Ljava/util/List;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/disposables/Disposable;

    :try_start_14
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_8

    :catchall_18
    move-exception v1

    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_27
    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3c

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3c
    new-instance p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_42
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/rxjava3/disposables/Disposable;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/ListCompositeDisposable;->delete(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
