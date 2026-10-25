.class abstract Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.super Ljj$/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfPrimitive;JJ)V
    .registers 18

    invoke-interface {p1}, Ljj$/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v11}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method

.method private constructor <init>(Ljj$/util/Spliterator$OfPrimitive;JJJJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljj$/util/Spliterator;JJJJ)V

    return-void
.end method

.method synthetic constructor <init>(Ljj$/util/Spliterator$OfPrimitive;JJJJLjj$/util/stream/StreamSpliterators-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method


# virtual methods
.method protected abstract emptyConsumer()Ljava/lang/Object;
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 9

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_c

    return-void

    :cond_c
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_15

    return-void

    :cond_15
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3a

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-object v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v2, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v2}, Ljj$/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceFence:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3a

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_6a

    :cond_3a
    :goto_3a
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-lez v6, :cond_55

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_3a

    :cond_55
    :goto_55
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_6a

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_55

    :cond_6a
    :goto_6a
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
    .registers 10

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_d

    return v4

    :cond_d
    :goto_d
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v2

    if-lez v7, :cond_28

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_d

    :cond_28
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v7, v0, v2

    if-ltz v7, :cond_31

    return v4

    :cond_31
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
