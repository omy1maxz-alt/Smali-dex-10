.class final Ljj$/util/stream/ForEachOps$ForEachTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# instance fields
.field private final helper:Ljj$/util/stream/PipelineHelper;

.field private final sink:Ljj$/util/stream/Sink;

.field private spliterator:Ljj$/util/Spliterator;

.field private targetSize:J


# direct methods
.method constructor <init>(Ljj$/util/stream/ForEachOps$ForEachTask;Ljj$/util/Spliterator;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->spliterator:Ljj$/util/Spliterator;

    iget-object v0, p1, Ljj$/util/stream/ForEachOps$ForEachTask;->sink:Ljj$/util/stream/Sink;

    iput-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->sink:Ljj$/util/stream/Sink;

    iget-wide v0, p1, Ljj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iput-wide v0, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iget-object v0, p1, Ljj$/util/stream/ForEachOps$ForEachTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->helper:Ljj$/util/stream/PipelineHelper;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljj$/util/stream/Sink;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p3, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->sink:Ljj$/util/stream/Sink;

    iput-object p1, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object p2, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->spliterator:Ljj$/util/Spliterator;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    return-void
.end method


# virtual methods
.method public compute()V
    .registers 13

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->spliterator:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    iget-wide v3, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-nez v9, :cond_16

    invoke-static {v1, v2}, Ljj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v3

    move-wide v5, v3

    iput-wide v3, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->targetSize:J

    :cond_16
    sget-object v3, Ljj$/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljj$/util/stream/StreamOpFlag;

    iget-object v4, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v4}, Ljj$/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v3

    const/4 v4, 0x0

    iget-object v7, p0, Ljj$/util/stream/ForEachOps$ForEachTask;->sink:Ljj$/util/stream/Sink;

    move-object v8, p0

    :goto_26
    if-eqz v3, :cond_2e

    invoke-interface {v7}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v9

    if-nez v9, :cond_5a

    :cond_2e
    cmp-long v9, v1, v5

    if-lez v9, :cond_54

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v9

    move-object v10, v9

    if-nez v9, :cond_3a

    goto :goto_54

    :cond_3a
    new-instance v9, Ljj$/util/stream/ForEachOps$ForEachTask;

    invoke-direct {v9, v8, v10}, Ljj$/util/stream/ForEachOps$ForEachTask;-><init>(Ljj$/util/stream/ForEachOps$ForEachTask;Ljj$/util/Spliterator;)V

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljj$/util/stream/ForEachOps$ForEachTask;->addToPendingCount(I)V

    if-eqz v4, :cond_4a

    const/4 v4, 0x0

    move-object v0, v10

    move-object v11, v8

    move-object v8, v9

    goto :goto_4c

    :cond_4a
    const/4 v4, 0x1

    move-object v11, v9

    :goto_4c
    invoke-virtual {v11}, Ljj$/util/stream/ForEachOps$ForEachTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    goto :goto_26

    :cond_54
    :goto_54
    iget-object v9, v8, Ljj$/util/stream/ForEachOps$ForEachTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v9, v7, v0}, Ljj$/util/stream/PipelineHelper;->copyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)V

    nop

    :cond_5a
    const/4 v9, 0x0

    iput-object v9, v8, Ljj$/util/stream/ForEachOps$ForEachTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v8}, Ljj$/util/stream/ForEachOps$ForEachTask;->propagateCompletion()V

    return-void
.end method
