.class public abstract Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"


# direct methods
.method public static flatMapWithCombiner(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/functions/Function;
    .registers 3

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;-><init>(Lio/reactivex/rxjava3/functions/BiFunction;Lio/reactivex/rxjava3/functions/Function;)V

    return-object v0
.end method
