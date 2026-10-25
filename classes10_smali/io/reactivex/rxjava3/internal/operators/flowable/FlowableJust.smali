.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "FlowableJust.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/ScalarSupplier;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/subscriptions/ScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
