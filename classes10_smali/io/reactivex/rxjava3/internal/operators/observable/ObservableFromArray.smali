.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableFromArray.java"


# instance fields
.field final array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray;->array:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-boolean p1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->fusionMode:Z

    if-eqz p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->run()V

    return-void
.end method
