.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "MaybeConcatArray.java"


# instance fields
.field final sources:[Lio/reactivex/rxjava3/core/MaybeSource;


# direct methods
.method public constructor <init>([Lio/reactivex/rxjava3/core/MaybeSource;)V
    .registers 2

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;->sources:[Lio/reactivex/rxjava3/core/MaybeSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .registers 4

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;->sources:[Lio/reactivex/rxjava3/core/MaybeSource;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;-><init>(Lorg/reactivestreams/Subscriber;[Lio/reactivex/rxjava3/core/MaybeSource;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray$ConcatMaybeObserver;->drain()V

    return-void
.end method
