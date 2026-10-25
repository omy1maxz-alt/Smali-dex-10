.class final Ljj$/util/stream/ForEachOps$ForEachOrderedTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# instance fields
.field private final action:Ljj$/util/stream/Sink;

.field private final completionMap:Ljj$/util/concurrent/ConcurrentHashMap;

.field private final helper:Ljj$/util/stream/PipelineHelper;

.field private final leftPredecessor:Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

.field private node:Ljj$/util/stream/Node;

.field private spliterator:Ljj$/util/Spliterator;

.field private final targetSize:J


# direct methods
.method constructor <init>(Ljj$/util/stream/ForEachOps$ForEachOrderedTask;Ljj$/util/Spliterator;Ljj$/util/stream/ForEachOps$ForEachOrderedTask;)V
    .registers 6

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iget-object v0, p1, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object p2, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljj$/util/Spliterator;

    iget-wide v0, p1, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iput-wide v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    iget-object v0, p1, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljj$/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljj$/util/stream/Sink;

    iput-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljj$/util/stream/Sink;

    iput-object p3, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    return-void
.end method

.method protected constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p1, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object p2, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {p2}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v1

    iput-wide v1, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljj$/util/stream/AbstractTask;->getLeafTarget()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljj$/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljj$/util/stream/Sink;

    iput-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    return-void
.end method

.method private static doCompute(Ljj$/util/stream/ForEachOps$ForEachOrderedTask;)V
    .registers 10

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljj$/util/Spliterator;

    iget-wide v1, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->targetSize:J

    const/4 v3, 0x0

    :goto_5
    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_53

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_53

    new-instance v4, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    iget-object v6, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v4, p0, v5, v6}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljj$/util/stream/ForEachOps$ForEachOrderedTask;Ljj$/util/Spliterator;Ljj$/util/stream/ForEachOps$ForEachOrderedTask;)V

    new-instance v6, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-direct {v6, p0, v0, v4}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;-><init>(Ljj$/util/stream/ForEachOps$ForEachOrderedTask;Ljj$/util/Spliterator;Ljj$/util/stream/ForEachOps$ForEachOrderedTask;)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    invoke-virtual {v6, v7}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    iget-object v8, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4, v6}, Ljj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v8, :cond_45

    invoke-virtual {v4, v7}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    iget-object v7, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->leftPredecessor:Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    invoke-virtual {v7, v8, p0, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_42

    invoke-virtual {p0, v8}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    goto :goto_45

    :cond_42
    invoke-virtual {v4, v8}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->addToPendingCount(I)V

    :cond_45
    :goto_45
    if-eqz v3, :cond_4c

    const/4 v3, 0x0

    move-object v0, v5

    move-object p0, v4

    move-object v7, v6

    goto :goto_4f

    :cond_4c
    const/4 v3, 0x1

    move-object p0, v6

    move-object v7, v4

    :goto_4f
    invoke-virtual {v7}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_5

    :cond_53
    invoke-virtual {p0}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->getPendingCount()I

    move-result v4

    if-lez v4, :cond_7b

    new-instance v4, Ljj$/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask$$ExternalSyntheticLambda0;-><init>()V

    iget-object v5, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v6, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v6, v0}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v4}, Ljj$/util/stream/PipelineHelper;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;

    move-result-object v5

    iget-object v6, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v6, v5, v0}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v6

    check-cast v6, Ljj$/util/stream/Node$Builder;

    invoke-interface {v6}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v6

    iput-object v6, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljj$/util/stream/Node;

    const/4 v6, 0x0

    iput-object v6, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljj$/util/Spliterator;

    :cond_7b
    invoke-virtual {p0}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    return-void
.end method

.method static synthetic lambda$doCompute$0(I)[Ljava/lang/Object;
    .registers 2

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final compute()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->doCompute(Ljj$/util/stream/ForEachOps$ForEachOrderedTask;)V

    return-void
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljj$/util/stream/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljj$/util/stream/Node;

    iget-object v2, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljj$/util/stream/Sink;

    invoke-interface {v0, v2}, Ljj$/util/stream/Node;->forEach(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->node:Ljj$/util/stream/Node;

    goto :goto_1e

    :cond_f
    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljj$/util/Spliterator;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v2, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->action:Ljj$/util/stream/Sink;

    iget-object v3, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v0, v2, v3}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    iput-object v1, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->spliterator:Ljj$/util/Spliterator;

    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->completionMap:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljj$/util/stream/ForEachOps$ForEachOrderedTask;->tryComplete()V

    :cond_2b
    return-void
.end method
