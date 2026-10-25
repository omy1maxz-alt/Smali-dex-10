.class final Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
.super Ljj$/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;JJ)V
    .registers 18

    invoke-interface {p1}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v11}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljj$/util/Spliterator;JJJJ)V

    return-void
.end method

.method private constructor <init>(Ljj$/util/Spliterator;JJJJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljj$/util/Spliterator;JJJJ)V

    return-void
.end method

.method static synthetic lambda$forEachRemaining$1(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$tryAdvance$0(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_c

    return-void

    :cond_c
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_15

    return-void

    :cond_15
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_36

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-object v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    invoke-interface {v2}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceFence:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_36

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_63

    :cond_36
    :goto_36
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-lez v6, :cond_50

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    new-instance v1, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_36

    :cond_50
    :goto_50
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_63

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_50

    :cond_63
    :goto_63
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

.method protected makeSpliterator(Ljj$/util/Spliterator;JJJJ)Ljj$/util/Spliterator;
    .registers 20

    new-instance v0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljj$/util/Spliterator;JJJJ)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 10

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_d

    return v4

    :cond_d
    :goto_d
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v2

    if-lez v7, :cond_27

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    new-instance v1, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_d

    :cond_27
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v7, v0, v2

    if-ltz v7, :cond_30

    return v4

    :cond_30
    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
