.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "SingleFlatMapPublisher.java"


# instance fields
.field final mapper:Lio/reactivex/rxjava3/functions/Function;

.field final source:Lio/reactivex/rxjava3/core/SingleSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleSource;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher;->source:Lio/reactivex/rxjava3/core/SingleSource;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher;->source:Lio/reactivex/rxjava3/core/SingleSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher$SingleFlatMapPublisherObserver;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleFlatMapPublisher$SingleFlatMapPublisherObserver;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleSource;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    return-void
.end method
