.class abstract Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator;


# instance fields
.field buffer:Ljj$/util/stream/AbstractSpinedBuffer;

.field bufferSink:Ljj$/util/stream/Sink;

.field finished:Z

.field final isParallel:Z

.field nextToConsume:J

.field final ph:Ljj$/util/stream/PipelineHelper;

.field pusher:Ljava/util/function/BooleanSupplier;

.field spliterator:Ljj$/util/Spliterator;

.field private spliteratorSupplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljj$/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    iput-object p2, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    iput-boolean p3, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    iput-boolean p3, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    return-void
.end method

.method private fillBuffer()Z
    .registers 7

    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2c

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1e
    iget-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    return v0

    :cond_24
    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->end()V

    iput-boolean v4, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    goto :goto_1

    :cond_2c
    return v4
.end method


# virtual methods
.method public final characteristics()I
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v0

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    invoke-static {v0}, Ljj$/util/stream/StreamOpFlag;->toCharacteristics(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_20

    and-int/lit16 v0, v0, -0x4041

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v1}, Ljj$/util/Spliterator;->characteristics()I

    move-result v1

    and-int/lit16 v1, v1, 0x4040

    or-int/2addr v0, v1

    :cond_20
    return v0
.end method

.method final doAdvance()Z
    .registers 9

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v0, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->initPartialTraversalState()V

    iput-wide v1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v1}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    invoke-direct {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result v0

    return v0

    :cond_24
    iget-wide v4, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-wide v4, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_38

    const/4 v3, 0x1

    :cond_38
    if-nez v3, :cond_45

    iput-wide v1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljj$/util/stream/AbstractSpinedBuffer;->clear()V

    invoke-direct {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result v3

    :cond_45
    return v3
.end method

.method public final estimateSize()J
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getExactSizeIfKnown()J
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    sget-object v0, Ljj$/util/stream/StreamOpFlag;->SIZED:Ljj$/util/stream/StreamOpFlag;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v1}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_1a

    :cond_18
    const-wide/16 v0, -0x1

    :goto_1a
    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method final init()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    if-nez v0, :cond_11

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator;

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    :cond_11
    return-void
.end method

.method abstract initPartialTraversalState()V
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s[%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljj$/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v0}, Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->wrap(Ljj$/util/Spliterator;)Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;

    move-result-object v1

    :goto_1d
    return-object v1

    :cond_1e
    return-object v1
.end method

.method abstract wrap(Ljj$/util/Spliterator;)Ljj$/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.end method
