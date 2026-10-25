.class Ljj$/util/stream/DoubleStream$1;
.super Ljj$/util/Spliterators$AbstractDoubleSpliterator;
.source "DoubleStream.java"


# instance fields
.field prev:D

.field started:Z

.field final synthetic val$f:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic val$seed:D


# direct methods
.method constructor <init>(JILjava/util/function/DoubleUnaryOperator;D)V
    .registers 7

    iput-object p4, p0, Ljj$/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Ljj$/util/stream/DoubleStream$1;->val$seed:D

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/DoubleStream$1;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/DoubleStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v2, p0, Ljj$/util/stream/DoubleStream$1;->prev:D

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    goto :goto_15

    :cond_11
    iget-wide v2, p0, Ljj$/util/stream/DoubleStream$1;->val$seed:D

    iput-boolean v1, p0, Ljj$/util/stream/DoubleStream$1;->started:Z

    :goto_15
    iput-wide v2, p0, Ljj$/util/stream/DoubleStream$1;->prev:D

    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return v1
.end method
