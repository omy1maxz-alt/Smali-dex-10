.class final Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljj$/util/Spliterator$OfInt;


# instance fields
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I


# direct methods
.method constructor <init>(JJII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iput-wide p3, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iput p5, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iput p6, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .registers 5

    iget-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 12

    if-eqz p1, :cond_24

    iget-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    iput-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v4, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v5, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->current()Ljj$/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    :cond_14
    invoke-virtual {v6, v4, v5}, Ljj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    const-wide/16 v7, 0x1

    add-long/2addr v7, v0

    move-wide v0, v7

    cmp-long v9, v7, v2

    if-ltz v9, :cond_14

    :cond_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

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

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

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
    .registers 9

    if-eqz p1, :cond_22

    iget-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->current()Ljj$/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget v5, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-virtual {v4, v5, v6}, Ljj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    const/4 v4, 0x1

    return v4

    :cond_20
    const/4 v4, 0x0

    return v4

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .registers 8

    iget-wide v1, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v3, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v3, v1

    const/4 v0, 0x1

    ushr-long/2addr v3, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_18

    :cond_d
    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    iput-wide v3, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v5, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-direct/range {v0 .. v6}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    :goto_18
    return-object v0
.end method
