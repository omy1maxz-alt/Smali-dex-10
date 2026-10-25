.class Ljj$/util/stream/DoubleStream$2;
.super Ljj$/util/Spliterators$AbstractDoubleSpliterator;
.source "DoubleStream.java"


# instance fields
.field finished:Z

.field prev:D

.field started:Z

.field final synthetic val$hasNext:Ljava/util/function/DoublePredicate;

.field final synthetic val$next:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic val$seed:D


# direct methods
.method constructor <init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V
    .registers 8

    iput-object p4, p0, Ljj$/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iput-wide p5, p0, Ljj$/util/stream/DoubleStream$2;->val$seed:D

    iput-object p7, p0, Ljj$/util/stream/DoubleStream$2;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractDoubleSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/DoubleStream$2;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/DoubleStream$2;->finished:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/DoubleStream$2;->finished:Z

    iget-boolean v0, p0, Ljj$/util/stream/DoubleStream$2;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v1, p0, Ljj$/util/stream/DoubleStream$2;->prev:D

    invoke-interface {v0, v1, v2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_1a

    :cond_18
    iget-wide v0, p0, Ljj$/util/stream/DoubleStream$2;->val$seed:D

    :goto_1a
    iget-object v2, p0, Ljj$/util/stream/DoubleStream$2;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-interface {v2, v0, v1}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    iget-object v2, p0, Ljj$/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v2, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    goto :goto_1a

    :cond_2c
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/DoubleStream$2;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 7

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/DoubleStream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-boolean v0, p0, Ljj$/util/stream/DoubleStream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$2;->val$next:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v3, p0, Ljj$/util/stream/DoubleStream$2;->prev:D

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v3

    goto :goto_1b

    :cond_17
    iget-wide v3, p0, Ljj$/util/stream/DoubleStream$2;->val$seed:D

    iput-boolean v2, p0, Ljj$/util/stream/DoubleStream$2;->started:Z

    :goto_1b
    iget-object v0, p0, Ljj$/util/stream/DoubleStream$2;->val$hasNext:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_26

    iput-boolean v2, p0, Ljj$/util/stream/DoubleStream$2;->finished:Z

    return v1

    :cond_26
    iput-wide v3, p0, Ljj$/util/stream/DoubleStream$2;->prev:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return v2
.end method
