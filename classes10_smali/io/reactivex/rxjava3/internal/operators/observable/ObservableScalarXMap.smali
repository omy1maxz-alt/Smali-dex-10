.class public abstract Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap;
.super Ljava/lang/Object;
.source "ObservableScalarXMap.java"


# direct methods
.method public static scalarXMap(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;
    .registers 3

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static tryScalarXMapSubscribe(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Function;)Z
    .registers 4

    instance-of v0, p0, Lio/reactivex/rxjava3/functions/Supplier;

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    :try_start_5
    check-cast p0, Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_4c

    if-nez p0, :cond_11

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/Observer;)V

    return v0

    :cond_11
    :try_start_11
    invoke-interface {p2, p0}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The mapper returned a null ObservableSource"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lio/reactivex/rxjava3/core/ObservableSource;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_44

    instance-of p2, p0, Lio/reactivex/rxjava3/functions/Supplier;

    if-eqz p2, :cond_40

    :try_start_20
    check-cast p0, Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_38

    if-nez p0, :cond_2c

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/Observer;)V

    return v0

    :cond_2c
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    invoke-direct {p2, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {p2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    goto :goto_43

    :catchall_38
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/Observer;)V

    return v0

    :cond_40
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    :goto_43
    return v0

    :catchall_44
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/Observer;)V

    return v0

    :catchall_4c
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/Observer;)V

    return v0

    :cond_54
    const/4 p0, 0x0

    return p0
.end method
