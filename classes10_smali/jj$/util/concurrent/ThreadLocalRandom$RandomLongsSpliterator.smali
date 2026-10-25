.class final Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J


# direct methods
.method constructor <init>(JJJJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iput-wide p3, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    iput-wide p5, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iput-wide p7, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

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

    iget-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 14

    if-eqz p1, :cond_24

    iget-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    iput-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v4, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v6, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->current()Ljj$/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    :cond_14
    invoke-virtual {v8, v4, v5, v6, v7}, Ljj$/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/util/function/LongConsumer;->accept(J)V

    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    move-wide v0, v9

    cmp-long v11, v9, v2

    if-ltz v11, :cond_14

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

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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
    .registers 11

    if-eqz p1, :cond_22

    iget-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->current()Ljj$/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    iget-wide v5, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v4, v5, v6, v7, v8}, Ljj$/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

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

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    .registers 10

    iget-wide v1, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v3, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v3, v1

    const/4 v0, 0x1

    ushr-long/2addr v3, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_18

    :cond_d
    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    iput-wide v3, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->index:J

    iget-wide v5, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;->bound:J

    invoke-direct/range {v0 .. v8}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    :goto_18
    return-object v0
.end method
