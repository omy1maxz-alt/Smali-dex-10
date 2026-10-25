.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromObservable;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "FlowableFromObservable.java"


# instance fields
.field private final upstream:Lio/reactivex/rxjava3/core/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/ObservableSource;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromObservable;->upstream:Lio/reactivex/rxjava3/core/ObservableSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromObservable;->upstream:Lio/reactivex/rxjava3/core/ObservableSource;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
