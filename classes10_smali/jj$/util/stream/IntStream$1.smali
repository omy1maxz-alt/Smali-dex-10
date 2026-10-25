.class Ljj$/util/stream/IntStream$1;
.super Ljj$/util/Spliterators$AbstractIntSpliterator;
.source "IntStream.java"


# instance fields
.field prev:I

.field started:Z

.field final synthetic val$f:Ljava/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(JILjava/util/function/IntUnaryOperator;I)V
    .registers 6

    iput-object p4, p0, Ljj$/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iput p5, p0, Ljj$/util/stream/IntStream$1;->val$seed:I

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractIntSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/IntStream$1;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/IntStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iget v2, p0, Ljj$/util/stream/IntStream$1;->prev:I

    invoke-interface {v0, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_15

    :cond_11
    iget v0, p0, Ljj$/util/stream/IntStream$1;->val$seed:I

    iput-boolean v1, p0, Ljj$/util/stream/IntStream$1;->started:Z

    :goto_15
    iput v0, p0, Ljj$/util/stream/IntStream$1;->prev:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v1
.end method
