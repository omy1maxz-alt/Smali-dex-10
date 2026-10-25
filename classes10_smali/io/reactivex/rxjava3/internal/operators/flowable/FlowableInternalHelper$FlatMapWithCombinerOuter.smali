.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field private final combiner:Lio/reactivex/rxjava3/functions/BiFunction;

.field private final mapper:Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/functions/BiFunction;Lio/reactivex/rxjava3/functions/Function;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/rxjava3/functions/BiFunction;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/rxjava3/functions/Function;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Lorg/reactivestreams/Publisher;
    .registers 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->mapper:Lio/reactivex/rxjava3/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lorg/reactivestreams/Publisher;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;->combiner:Lio/reactivex/rxjava3/functions/BiFunction;

    invoke-direct {v2, v3, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;-><init>(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;)V

    return-object v1
.end method
