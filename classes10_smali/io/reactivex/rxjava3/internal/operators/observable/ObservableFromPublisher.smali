.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher;
.super Lio/reactivex/rxjava3/core/Observable;
.source "ObservableFromPublisher.java"


# instance fields
.field final source:Lorg/reactivestreams/Publisher;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher;->source:Lorg/reactivestreams/Publisher;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher;->source:Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
