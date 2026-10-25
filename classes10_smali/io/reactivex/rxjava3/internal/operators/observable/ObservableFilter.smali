.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter;
.super Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableFilter.java"


# instance fields
.field final predicate:Lio/reactivex/rxjava3/functions/Predicate;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/Predicate;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter$FilterObserver;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter;->predicate:Lio/reactivex/rxjava3/functions/Predicate;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFilter$FilterObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Lio/reactivex/rxjava3/functions/Predicate;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
