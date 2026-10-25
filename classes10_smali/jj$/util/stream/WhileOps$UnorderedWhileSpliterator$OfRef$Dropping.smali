.class final Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V
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

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->takeOrDrop:Z

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Ljj$/util/Spliterator;

    invoke-interface {v1, p0}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    move v2, v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->checkCancelOnCount()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->p:Ljava/util/function/Predicate;

    iget-object v3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    if-eqz v2, :cond_32

    if-eqz v0, :cond_2d

    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2d
    iget-object v1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->t:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_32
    return v2

    :cond_33
    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;->s:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
