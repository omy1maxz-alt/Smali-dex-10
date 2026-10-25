.class abstract Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.super Ljj$/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# direct methods
.method private constructor <init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/Spliterator$OfPrimitive;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/Streams$ConcatSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/Spliterator;)V

    return-void
.end method

.method synthetic constructor <init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/stream/Streams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;Ljj$/util/Spliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->aSpliterator:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->beforeSplit:Z

    iget-object v1, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljj$/util/Spliterator;

    check-cast v1, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_22

    :cond_1a
    iget-object v0, p0, Ljj$/util/stream/Streams$ConcatSpliterator$OfPrimitive;->bSpliterator:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    :cond_22
    :goto_22
    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Streams$ConcatSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
