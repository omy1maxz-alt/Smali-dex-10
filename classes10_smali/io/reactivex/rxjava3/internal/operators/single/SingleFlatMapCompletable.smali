.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable;
.super Lio/reactivex/rxjava3/core/Completable;
.source "SingleFlatMapCompletable.java"


# instance fields
.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final source:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable;->source:Lio/reactivex/rxjava3/core/SingleSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable$FlatMapCompletableObserver;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable$FlatMapCompletableObserver;-><init>(Lio/reactivex/rxjava3/core/CompletableObserver;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapCompletable;->source:Lio/reactivex/rxjava3/core/SingleSource;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
