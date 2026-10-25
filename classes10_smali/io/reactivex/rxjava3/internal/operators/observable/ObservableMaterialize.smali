.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize;
.super Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableMaterialize.java"


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/ObservableSource;)V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMaterialize$MaterializeObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
