.class final Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
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

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 2

    check-cast p1, Ljj$/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->makeSpliterator(Ljj$/util/Spliterator$OfInt;)Ljj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->s:Ljj$/util/Spliterator;

    check-cast v1, Ljj$/util/Spliterator$OfInt;

    invoke-interface {v1, p0}, Ljj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->p:Ljava/util/function/IntPredicate;

    iget v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    invoke-interface {v1, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_27

    iget v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->t:I

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    return v2

    :cond_27
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->takeOrDrop:Z

    if-nez v0, :cond_31

    iget-object v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_31
    return v1
.end method

.method public trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    :goto_10
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
