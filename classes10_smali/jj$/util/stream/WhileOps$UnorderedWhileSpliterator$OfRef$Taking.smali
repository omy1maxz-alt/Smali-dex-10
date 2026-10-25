.class final Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;ZLjava/util/function/Predicate;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    return-void
.end method


# virtual methods
.method makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 3

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->s:Ljj$/util/Spliterator;

    invoke-interface {v1, p0}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->p:Ljava/util/function/Predicate;

    iget-object v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2

    :cond_25
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->takeOrDrop:Z

    if-nez v0, :cond_2f

    iget-object v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2f
    return v1
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    :goto_e
    return-object v0
.end method
