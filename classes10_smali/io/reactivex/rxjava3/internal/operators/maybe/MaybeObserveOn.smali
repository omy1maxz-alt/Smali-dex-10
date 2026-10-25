.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;
.super Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "MaybeObserveOn.java"


# instance fields
.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/Scheduler;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/rxjava3/core/MaybeSource;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/rxjava3/core/MaybeSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/MaybeSource;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    return-void
.end method
