.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;
.super Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableSkip.java"


# instance fields
.field final n:J


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;J)V
    .registers 4

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/ObservableSource;)V

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;->n:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip$SkipObserver;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;->n:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip$SkipObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;J)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
