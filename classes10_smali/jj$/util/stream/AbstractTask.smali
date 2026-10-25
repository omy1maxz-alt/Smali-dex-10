.class abstract Ljj$/util/stream/AbstractTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "AbstractTask.java"


# static fields
.field private static final LEAF_TARGET:I


# instance fields
.field protected final helper:Ljj$/util/stream/PipelineHelper;

.field protected leftChild:Ljj$/util/stream/AbstractTask;

.field private localResult:Ljava/lang/Object;

.field protected rightChild:Ljj$/util/stream/AbstractTask;

.field protected spliterator:Ljj$/util/Spliterator;

.field protected targetSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Ljj$/util/stream/AbstractTask;->LEAF_TARGET:I

    return-void
.end method

.method protected constructor <init>(Ljj$/util/stream/AbstractTask;Ljj$/util/Spliterator;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljj$/util/stream/AbstractTask;->spliterator:Ljj$/util/Spliterator;

    iget-object v0, p1, Ljj$/util/stream/AbstractTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object v0, p0, Ljj$/util/stream/AbstractTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-wide v0, p1, Ljj$/util/stream/AbstractTask;->targetSize:J

    iput-wide v0, p0, Ljj$/util/stream/AbstractTask;->targetSize:J

    return-void
.end method

.method protected constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p1, p0, Ljj$/util/stream/AbstractTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object p2, p0, Ljj$/util/stream/AbstractTask;->spliterator:Ljj$/util/Spliterator;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/stream/AbstractTask;->targetSize:J

    return-void
.end method

.method public static getLeafTarget()I
    .registers 1

    sget v0, Ljj$/util/stream/AbstractTask;->LEAF_TARGET:I

    return v0
.end method

.method public static suggestTargetSize(J)J
    .registers 7

    invoke-static {}, Ljj$/util/stream/AbstractTask;->getLeafTarget()I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    move-wide v2, v0

    goto :goto_11

    :cond_f
    const-wide/16 v2, 0x1

    :goto_11
    return-wide v2
.end method


# virtual methods
.method public compute()V
    .registers 12

    iget-object v0, p0, Ljj$/util/stream/AbstractTask;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v6, p0

    :goto_c
    cmp-long v7, v1, v3

    if-lez v7, :cond_3b

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_3b

    invoke-virtual {v6, v8}, Ljj$/util/stream/AbstractTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;

    move-result-object v7

    move-object v9, v7

    iput-object v7, v6, Ljj$/util/stream/AbstractTask;->leftChild:Ljj$/util/stream/AbstractTask;

    invoke-virtual {v6, v0}, Ljj$/util/stream/AbstractTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;

    move-result-object v7

    move-object v10, v7

    iput-object v7, v6, Ljj$/util/stream/AbstractTask;->rightChild:Ljj$/util/stream/AbstractTask;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljj$/util/stream/AbstractTask;->setPendingCount(I)V

    if-eqz v5, :cond_30

    const/4 v5, 0x0

    move-object v0, v8

    move-object v6, v9

    move-object v7, v10

    goto :goto_33

    :cond_30
    const/4 v5, 0x1

    move-object v6, v10

    move-object v7, v9

    :goto_33
    invoke-virtual {v7}, Ljj$/util/stream/AbstractTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    goto :goto_c

    :cond_3b
    invoke-virtual {v6}, Ljj$/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljj$/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljj$/util/stream/AbstractTask;->tryComplete()V

    return-void
.end method

.method protected abstract doLeaf()Ljava/lang/Object;
.end method

.method protected getLocalResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected getParent()Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/AbstractTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/AbstractTask;

    return-object v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected final getTargetSize(J)J
    .registers 10

    iget-wide v0, p0, Ljj$/util/stream/AbstractTask;->targetSize:J

    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_b

    move-wide v0, v2

    goto :goto_11

    :cond_b
    invoke-static {p1, p2}, Ljj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/stream/AbstractTask;->targetSize:J

    :goto_11
    return-wide v0
.end method

.method protected isLeaf()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/AbstractTask;->leftChild:Ljj$/util/stream/AbstractTask;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected isLeftmostNode()Z
    .registers 4

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljj$/util/stream/AbstractTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, v1, Ljj$/util/stream/AbstractTask;->leftChild:Ljj$/util/stream/AbstractTask;

    if-eq v2, v0, :cond_f

    const/4 v2, 0x0

    return v2

    :cond_f
    move-object v0, v1

    goto :goto_1

    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method protected isRoot()Z
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/AbstractTask;->getParent()Ljj$/util/stream/AbstractTask;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected abstract makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/AbstractTask;->spliterator:Ljj$/util/Spliterator;

    iput-object v0, p0, Ljj$/util/stream/AbstractTask;->rightChild:Ljj$/util/stream/AbstractTask;

    iput-object v0, p0, Ljj$/util/stream/AbstractTask;->leftChild:Ljj$/util/stream/AbstractTask;

    return-void
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
