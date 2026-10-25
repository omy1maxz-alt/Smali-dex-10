.class final Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;
.super Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljj$/util/stream/DoubleStream$Builder;
.implements Ljj$/util/Spliterator$OfDouble;


# instance fields
.field buffer:Ljj$/util/stream/SpinedBuffer$OfDouble;

.field first:D


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljj$/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor <init>(D)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljj$/util/stream/Streams-IA;)V

    iput-wide p1, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    const/4 v0, -0x2

    iput v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6

    iget v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-nez v0, :cond_d

    iput-wide p1, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    iget v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    goto :goto_2e

    :cond_d
    iget v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-lez v0, :cond_2f

    iget-object v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfDouble;

    if-nez v0, :cond_29

    new-instance v0, Ljj$/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljj$/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfDouble;

    iget-object v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfDouble;

    iget-wide v1, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-virtual {v0, v1, v2}, Ljj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    iget v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    :cond_29
    iget-object v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    :goto_2e
    return-void

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic add(D)Ljj$/util/stream/DoubleStream$Builder;
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/DoubleStream$Builder$-CC;->$default$add(Ljj$/util/stream/DoubleStream$Builder;D)Ljj$/util/stream/DoubleStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Ljj$/util/stream/DoubleStream;
    .registers 4

    iget v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-ltz v0, :cond_1f

    iget v1, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    invoke-static {p0, v2}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v1

    goto :goto_1e

    :cond_14
    iget-object v1, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v1}, Ljj$/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-static {v1, v2}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v1

    :goto_1e
    return-object v1

    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    iget-wide v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    const/4 v0, -0x1

    iput v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    :cond_10
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

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

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_12

    iget-wide v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    const/4 v0, -0x1

    iput v0, p0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
