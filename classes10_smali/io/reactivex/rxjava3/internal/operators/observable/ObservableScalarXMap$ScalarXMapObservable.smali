.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableScalarXMap.java"


# instance fields
.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->value:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->mapper:Lio/reactivex/rxjava3/functions/Function;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lio/reactivex/rxjava3/core/ObservableSource;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_37

    instance-of v1, v0, Lio/reactivex/rxjava3/functions/Supplier;

    if-eqz v1, :cond_33

    :try_start_13
    check-cast v0, Lio/reactivex/rxjava3/functions/Supplier;

    invoke-interface {v0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2b

    if-nez v0, :cond_1f

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_1f
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    invoke-direct {v1, p1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    goto :goto_36

    :catchall_2b
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    :cond_33
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    :goto_36
    return-void

    :catchall_37
    move-exception v0

    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
