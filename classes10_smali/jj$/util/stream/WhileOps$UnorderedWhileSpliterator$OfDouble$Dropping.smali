.class final Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfDouble;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    return-void
.end method


# virtual methods
.method makeSpliterator(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/Spliterator$OfDouble;
    .registers 3

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljj$/util/Spliterator$OfDouble;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 2

    check-cast p1, Ljj$/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->makeSpliterator(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 7

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljj$/util/Spliterator;

    check-cast v1, Ljj$/util/Spliterator$OfDouble;

    invoke-interface {v1, p0}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v1

    move v2, v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->p:Ljava/util/function/DoublePredicate;

    iget-wide v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    invoke-interface {v1, v3, v4}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    goto :goto_8

    :cond_25
    if-eqz v2, :cond_34

    if-eqz v0, :cond_2f

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2f
    iget-wide v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    invoke-interface {p1, v3, v4}, Ljava/util/function/DoubleConsumer;->accept(D)V

    :cond_34
    return v2

    :cond_35
    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljj$/util/Spliterator;

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
