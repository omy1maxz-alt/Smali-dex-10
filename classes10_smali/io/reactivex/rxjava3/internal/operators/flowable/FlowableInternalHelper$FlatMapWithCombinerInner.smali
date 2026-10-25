.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field private final combiner:Lio/reactivex/rxjava3/functions/BiFunction;

.field private final t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/functions/BiFunction;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;->combiner:Lio/reactivex/rxjava3/functions/BiFunction;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;->combiner:Lio/reactivex/rxjava3/functions/BiFunction;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;->t:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lio/reactivex/rxjava3/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
