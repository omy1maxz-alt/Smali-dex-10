.class abstract Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.super Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfPrimitive;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljj$/util/Spliterator;JJ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    return-void
.end method


# virtual methods
.method protected abstract acceptConsumed(Ljava/lang/Object;)V
.end method

.method protected abstract bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 12

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    sget-object v3, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_4c

    sget-object v1, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_44

    if-nez v0, :cond_1a

    iget v1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    invoke-virtual {p0, v1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->bufferCreate(I)Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;

    move-result-object v0

    goto :goto_1d

    :cond_1a
    invoke-virtual {v0}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->reset()V

    :goto_1d
    move-object v1, v0

    const-wide/16 v3, 0x0

    :cond_20
    iget-object v5, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v5, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v5, v1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v7, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_20

    :cond_35
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3c

    return-void

    :cond_3c
    invoke-virtual {p0, v3, v4}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->forEach(Ljava/lang/Object;J)V

    goto :goto_4

    :cond_44
    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v1, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void

    :cond_4c
    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
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

.method public tryAdvance(Ljava/lang/Object;)Z
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :cond_4
    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    sget-object v2, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_27

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v1, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v1, v0}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v3

    :cond_18
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    invoke-virtual {p0, p1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acceptConsumed(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_27
    return v3
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
