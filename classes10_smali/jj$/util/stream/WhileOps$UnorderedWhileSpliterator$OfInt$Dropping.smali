.class final Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    return-void
.end method


# virtual methods
.method makeSpliterator(Ljj$/util/Spliterator$OfInt;)Ljj$/util/Spliterator$OfInt;
    .registers 3

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 2

    check-cast p1, Ljj$/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->makeSpliterator(Ljj$/util/Spliterator$OfInt;)Ljj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->takeOrDrop:Z

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Ljj$/util/Spliterator;

    check-cast v1, Ljj$/util/Spliterator$OfInt;

    invoke-interface {v1, p0}, Ljj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v1

    move v2, v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->p:Ljava/util/function/IntPredicate;

    iget v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    invoke-interface {v1, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    goto :goto_8

    :cond_25
    if-eqz v2, :cond_34

    if-eqz v0, :cond_2f

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2f
    iget v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->t:I

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_34
    return v2

    :cond_35
    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;->s:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
