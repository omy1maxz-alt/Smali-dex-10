.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;
.source "FlowableCreate.java"


# static fields
.field private static final serialVersionUID:J = 0x7404e4d77326a273L


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method onOverflow()V
    .registers 1

    return-void
.end method
