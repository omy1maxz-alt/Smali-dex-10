.class final Ljj$/util/Spliterators$DoubleIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfDouble;


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljj$/util/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor <init>(Ljj$/util/PrimitiveIterator$OfDouble;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->it:Ljj$/util/PrimitiveIterator$OfDouble;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljj$/util/PrimitiveIterator$OfDouble;JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->it:Ljj$/util/PrimitiveIterator$OfDouble;

    iput-wide p2, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_10

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_11

    :cond_10
    move v0, p4

    :goto_11
    iput v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    iget v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->it:Ljj$/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0, p1}, Ljj$/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->hasCharacteristics(I)Z

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

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 4

    if-eqz p1, :cond_17

    iget-object v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->it:Ljj$/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljj$/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->it:Ljj$/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljj$/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 12

    iget-object v0, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->it:Ljj$/util/PrimitiveIterator$OfDouble;

    iget-wide v1, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_4f

    invoke-interface {v0}, Ljj$/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget v3, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_1a

    long-to-int v3, v1

    :cond_1a
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_20

    const/high16 v3, 0x2000000

    :cond_20
    new-array v4, v3, [D

    const/4 v5, 0x0

    :cond_23
    invoke-interface {v0}, Ljj$/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_33

    invoke-interface {v0}, Ljj$/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v6

    if-nez v6, :cond_23

    :cond_33
    iput v5, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    iget-wide v6, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_46

    iget-wide v6, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->est:J

    :cond_46
    new-instance v6, Ljj$/util/Spliterators$DoubleArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljj$/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    :cond_4f
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
