.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;
.super Lio/reactivex/rxjava3/core/Completable;
.source "MaybeFlatMapCompletable.java"


# instance fields
.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final source:Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable$FlatMapCompletableObserver;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable$FlatMapCompletableObserver;-><init>(Lio/reactivex/rxjava3/core/CompletableObserver;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    return-void
.end method
