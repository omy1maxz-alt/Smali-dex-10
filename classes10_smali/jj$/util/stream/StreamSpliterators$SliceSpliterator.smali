.class abstract Ljj$/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fence:J

.field index:J

.field s:Ljj$/util/Spliterator;

.field final sliceFence:J

.field final sliceOrigin:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;JJJJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljj$/util/Spliterator;

    iput-wide p2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iput-wide p4, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iput-wide p6, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide p8, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .registers 7

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    return-wide v0
.end method

.method protected abstract makeSpliterator(Ljj$/util/Spliterator;JJJJ)Ljj$/util/Spliterator;
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 16

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_a

    return-object v4

    :cond_a
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v5, v0, v2

    if-ltz v5, :cond_13

    return-object v4

    :cond_13
    :goto_13
    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v6

    if-nez v6, :cond_1c

    return-object v4

    :cond_1c
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v6}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v5, v2, v13

    if-ltz v5, :cond_32

    iput-wide v13, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_3c

    :cond_32
    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v5, v13, v2

    if-ltz v5, :cond_3d

    iput-object v6, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljj$/util/Spliterator;

    iput-wide v13, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    :goto_3c
    goto :goto_13

    :cond_3d
    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v4, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v7, v2, v4

    if-ltz v7, :cond_4e

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4e

    iput-wide v13, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    return-object v6

    :cond_4e
    iget-wide v7, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v9, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iget-wide v11, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide v13, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object v5, p0

    invoke-virtual/range {v5 .. v14}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Ljj$/util/Spliterator;JJJJ)Ljj$/util/Spliterator;

    move-result-object v2

    return-object v2
.end method
