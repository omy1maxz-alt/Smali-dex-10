.class Ljj$/util/stream/DesugarLongStream$1;
.super Ljj$/util/Spliterators$AbstractLongSpliterator;
.source "DesugarLongStream.java"


# instance fields
.field finished:Z

.field prev:J

.field started:Z

.field final synthetic val$hasNext:Ljava/util/function/LongPredicate;

.field final synthetic val$next:Ljava/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JILjava/util/function/LongUnaryOperator;JLjava/util/function/LongPredicate;)V
    .registers 8

    iput-object p4, p0, Ljj$/util/stream/DesugarLongStream$1;->val$next:Ljava/util/function/LongUnaryOperator;

    iput-wide p5, p0, Ljj$/util/stream/DesugarLongStream$1;->val$seed:J

    iput-object p7, p0, Ljj$/util/stream/DesugarLongStream$1;->val$hasNext:Ljava/util/function/LongPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractLongSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/DesugarLongStream$1;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/DesugarLongStream$1;->finished:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/DesugarLongStream$1;->finished:Z

    iget-boolean v0, p0, Ljj$/util/stream/DesugarLongStream$1;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljj$/util/stream/DesugarLongStream$1;->val$next:Ljava/util/function/LongUnaryOperator;

    iget-wide v1, p0, Ljj$/util/stream/DesugarLongStream$1;->prev:J

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    goto :goto_1a

    :cond_18
    iget-wide v0, p0, Ljj$/util/stream/DesugarLongStream$1;->val$seed:J

    :goto_1a
    iget-object v2, p0, Ljj$/util/stream/DesugarLongStream$1;->val$hasNext:Ljava/util/function/LongPredicate;

    invoke-interface {v2, v0, v1}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    iget-object v2, p0, Ljj$/util/stream/DesugarLongStream$1;->val$next:Ljava/util/function/LongUnaryOperator;

    invoke-interface {v2, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    goto :goto_1a

    :cond_2c
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/DesugarLongStream$1;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 7

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/DesugarLongStream$1;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-boolean v0, p0, Ljj$/util/stream/DesugarLongStream$1;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljj$/util/stream/DesugarLongStream$1;->val$next:Ljava/util/function/LongUnaryOperator;

    iget-wide v3, p0, Ljj$/util/stream/DesugarLongStream$1;->prev:J

    invoke-interface {v0, v3, v4}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v3

    goto :goto_1b

    :cond_17
    iget-wide v3, p0, Ljj$/util/stream/DesugarLongStream$1;->val$seed:J

    iput-boolean v2, p0, Ljj$/util/stream/DesugarLongStream$1;->started:Z

    :goto_1b
    iget-object v0, p0, Ljj$/util/stream/DesugarLongStream$1;->val$hasNext:Ljava/util/function/LongPredicate;

    invoke-interface {v0, v3, v4}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_26

    iput-boolean v2, p0, Ljj$/util/stream/DesugarLongStream$1;->finished:Z

    return v1

    :cond_26
    iput-wide v3, p0, Ljj$/util/stream/DesugarLongStream$1;->prev:J

    invoke-interface {p1, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V

    return v2
.end method
