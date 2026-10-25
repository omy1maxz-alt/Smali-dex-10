.class final Ljj$/util/Spliterators$LongArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;


# instance fields
.field private final array:[J

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([JI)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-void
.end method

.method public constructor <init>([JIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/Spliterators$LongArraySpliterator;->array:[J

    iput p2, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    iput p3, p0, Ljj$/util/Spliterators$LongArraySpliterator;->fence:I

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    iget v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->fence:I

    iget v1, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/Spliterators$LongArraySpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 8

    if-eqz p1, :cond_1e

    iget-object v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->array:[J

    move-object v1, v0

    array-length v0, v0

    iget v2, p0, Ljj$/util/Spliterators$LongArraySpliterator;->fence:I

    move v3, v2

    if-lt v0, v2, :cond_1d

    iget v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    move v2, v0

    if-ltz v0, :cond_1d

    iput v3, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    if-ge v2, v3, :cond_1d

    :cond_14
    aget-wide v4, v1, v2

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_14

    :cond_1d
    return-void

    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljj$/util/Spliterators$LongArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
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

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/Spliterators$LongArraySpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 5

    if-eqz p1, :cond_1d

    iget v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    if-ltz v0, :cond_1b

    iget v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    iget v1, p0, Ljj$/util/Spliterators$LongArraySpliterator;->fence:I

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->array:[J

    iget v1, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    aget-wide v1, v0, v1

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 6

    iget v0, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    iget v1, p0, Ljj$/util/Spliterators$LongArraySpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_b

    const/4 v2, 0x0

    goto :goto_16

    :cond_b
    new-instance v2, Ljj$/util/Spliterators$LongArraySpliterator;

    iget-object v3, p0, Ljj$/util/Spliterators$LongArraySpliterator;->array:[J

    iput v1, p0, Ljj$/util/Spliterators$LongArraySpliterator;->index:I

    iget v4, p0, Ljj$/util/Spliterators$LongArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    :goto_16
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/Spliterators$LongArraySpliterator;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/Spliterators$LongArraySpliterator;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
