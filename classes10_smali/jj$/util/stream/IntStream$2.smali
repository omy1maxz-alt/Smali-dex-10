.class Ljj$/util/stream/IntStream$2;
.super Ljj$/util/Spliterators$AbstractIntSpliterator;
.source "IntStream.java"


# instance fields
.field finished:Z

.field prev:I

.field started:Z

.field final synthetic val$hasNext:Ljava/util/function/IntPredicate;

.field final synthetic val$next:Ljava/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V
    .registers 7

    iput-object p4, p0, Ljj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iput p5, p0, Ljj$/util/stream/IntStream$2;->val$seed:I

    iput-object p6, p0, Ljj$/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/IntStream$2;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/IntStream$2;->finished:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/IntStream$2;->finished:Z

    iget-boolean v0, p0, Ljj$/util/stream/IntStream$2;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v1, p0, Ljj$/util/stream/IntStream$2;->prev:I

    invoke-interface {v0, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_1a

    :cond_18
    iget v0, p0, Ljj$/util/stream/IntStream$2;->val$seed:I

    :goto_1a
    iget-object v1, p0, Ljj$/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v1, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    iget-object v1, p0, Ljj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_1a

    :cond_2c
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/IntStream$2;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/IntStream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-boolean v0, p0, Ljj$/util/stream/IntStream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljj$/util/stream/IntStream$2;->val$next:Ljava/util/function/IntUnaryOperator;

    iget v3, p0, Ljj$/util/stream/IntStream$2;->prev:I

    invoke-interface {v0, v3}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_1b

    :cond_17
    iget v0, p0, Ljj$/util/stream/IntStream$2;->val$seed:I

    iput-boolean v2, p0, Ljj$/util/stream/IntStream$2;->started:Z

    :goto_1b
    iget-object v3, p0, Ljj$/util/stream/IntStream$2;->val$hasNext:Ljava/util/function/IntPredicate;

    invoke-interface {v3, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-nez v3, :cond_26

    iput-boolean v2, p0, Ljj$/util/stream/IntStream$2;->finished:Z

    return v1

    :cond_26
    iput v0, p0, Ljj$/util/stream/IntStream$2;->prev:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v2
.end method
