.class final Ljj$/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljj$/util/Spliterator$OfInt;


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field private static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field private from:I

.field private last:I

.field private final upTo:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    iput p2, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iput p3, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->last:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    return-void
.end method

.method private splitPoint(J)I
    .registers 6

    const-wide/32 v0, 0x1000000

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    const/4 v0, 0x2

    goto :goto_b

    :cond_9
    const/16 v0, 0x8

    :goto_b
    int-to-long v1, v0

    div-long v1, p1, v1

    long-to-int v2, v1

    return v2
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .registers 5

    iget v0, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->upTo:I

    int-to-long v0, v0

    iget v2, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v1, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iget v2, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->last:I

    iget v3, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iput v3, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v3, 0x0

    iput v3, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->last:I

    :goto_10
    if-ge v0, v1, :cond_19

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    move v0, v3

    goto :goto_10

    :cond_19
    if-lez v2, :cond_1e

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_1e
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v1, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->upTo:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_13

    iget v1, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    add-int/2addr v1, v2

    iput v1, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v2

    :cond_13
    iget v1, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->last:I

    const/4 v3, 0x0

    if-lez v1, :cond_1e

    iput v3, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->last:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v2

    :cond_1e
    return v3
.end method

.method public trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 7

    invoke-virtual {p0}, Ljj$/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    const/4 v2, 0x0

    goto :goto_1d

    :cond_c
    new-instance v2, Ljj$/util/stream/Streams$RangeIntSpliterator;

    iget v3, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v4, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    invoke-direct {p0, v0, v1}, Ljj$/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ljj$/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljj$/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    :goto_1d
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
