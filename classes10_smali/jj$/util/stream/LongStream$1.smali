.class Ljj$/util/stream/LongStream$1;
.super Ljj$/util/Spliterators$AbstractLongSpliterator;
.source "LongStream.java"


# instance fields
.field prev:J

.field started:Z

.field final synthetic val$f:Ljava/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JILjava/util/function/LongUnaryOperator;J)V
    .registers 7

    iput-object p4, p0, Ljj$/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iput-wide p5, p0, Ljj$/util/stream/LongStream$1;->val$seed:J

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractLongSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/LongStream$1;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/LongStream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iget-wide v2, p0, Ljj$/util/stream/LongStream$1;->prev:J

    invoke-interface {v0, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    goto :goto_15

    :cond_11
    iget-wide v2, p0, Ljj$/util/stream/LongStream$1;->val$seed:J

    iput-boolean v1, p0, Ljj$/util/stream/LongStream$1;->started:Z

    :goto_15
    iput-wide v2, p0, Ljj$/util/stream/LongStream$1;->prev:J

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    return v1
.end method
