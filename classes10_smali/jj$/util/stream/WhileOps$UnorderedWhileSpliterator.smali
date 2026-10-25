.class abstract Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.super Ljava/lang/Object;
.source "WhileOps.java"

# interfaces
.implements Ljj$/util/Spliterator;


# static fields
.field static final CANCEL_CHECK_COUNT:I = 0x3f


# instance fields
.field final cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field count:I

.field final noSplitting:Z

.field final s:Ljj$/util/Spliterator;

.field takeOrDrop:Z


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    iput-object p1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljj$/util/Spliterator;

    iget-boolean v0, p2, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    iget-object v0, p2, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    iput-object p1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljj$/util/Spliterator;

    iput-boolean p2, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4041

    return v0
.end method

.method checkCancelOnCount()Z
    .registers 2

    iget v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    if-nez v0, :cond_f

    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljj$/util/Spliterator;

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

    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method abstract makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v1

    :cond_13
    return-object v1
.end method
