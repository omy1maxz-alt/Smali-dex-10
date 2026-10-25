.class abstract Ljj$/util/stream/Streams$ConcatSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljj$/util/Spliterator;


# instance fields
.field protected final aSpliterator:Ljj$/util/Spliterator;

.field protected final bSpliterator:Ljj$/util/Spliterator;

.field beforeSplit:Z

.field final unsized:Z


# direct methods
.method public constructor <init>(Ljj$/util/Spliterator;Ljj$/util/Spliterator;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljj$/util/Spliterator;

    iput-object p2, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    invoke-interface {p1}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-interface {p2}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->unsized:Z

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v1}, Ljj$/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v0, v1

    iget-boolean v1, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz v1, :cond_18

    const/16 v1, 0x4040

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    or-int/lit8 v1, v1, 0x5

    not-int v1, v1

    and-int/2addr v0, v1

    return v0

    :cond_1e
    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .registers 6

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    iget-object v2, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v2}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_19

    move-wide v2, v0

    goto :goto_1e

    :cond_19
    const-wide v2, 0x7fffffffffffffffL

    :goto_1e
    return-wide v2

    :cond_1f
    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_9
    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    :cond_b
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

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    iget-object v1, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v1, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljj$/util/Spliterator;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    :goto_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljj$/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    return-object v0
.end method
