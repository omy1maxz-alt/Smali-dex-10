.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;
.source "FlowableCreate.java"


# static fields
.field private static final serialVersionUID:J = 0x4b43427a9c2e580L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method onOverflow()V
    .registers 3

    new-instance v0, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const-string v1, "create: Could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
