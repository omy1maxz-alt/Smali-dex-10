.class final Ljj$/util/stream/Streams$LongStreamBuilderImpl;
.super Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljj$/util/stream/LongStream$Builder;
.implements Ljj$/util/Spliterator$OfLong;


# instance fields
.field buffer:Ljj$/util/stream/SpinedBuffer$OfLong;

.field first:J


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljj$/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor <init>(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljj$/util/stream/Streams-IA;)V

    iput-wide p1, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    const/4 v0, -0x2

    iput v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 6

    iget v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-nez v0, :cond_d

    iput-wide p1, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    iget v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    goto :goto_2e

    :cond_d
    iget v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-lez v0, :cond_2f

    iget-object v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfLong;

    if-nez v0, :cond_29

    new-instance v0, Ljj$/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljj$/util/stream/SpinedBuffer$OfLong;-><init>()V

    iput-object v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfLong;

    iget-object v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfLong;

    iget-wide v1, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-virtual {v0, v1, v2}, Ljj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    iget v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    :cond_29
    iget-object v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfLong;->accept(J)V

    :goto_2e
    return-void

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic add(J)Ljj$/util/stream/LongStream$Builder;
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/LongStream$Builder$-CC;->$default$add(Ljj$/util/stream/LongStream$Builder;J)Ljj$/util/stream/LongStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Ljj$/util/stream/LongStream;
    .registers 4

    iget v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-ltz v0, :cond_1f

    iget v1, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    invoke-static {p0, v2}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v1

    goto :goto_1e

    :cond_14
    iget-object v1, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v1}, Ljj$/util/stream/SpinedBuffer$OfLong;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v1

    invoke-static {v1, v2}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

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

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    iget-wide v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    const/4 v0, -0x1

    iput v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    :cond_10
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_12

    iget-wide v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    const/4 v0, -0x1

    iput v0, p0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
