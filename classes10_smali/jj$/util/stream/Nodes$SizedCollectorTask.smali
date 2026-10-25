.class abstract Ljj$/util/stream/Nodes$SizedCollectorTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Sink;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected fence:I

.field protected final helper:Ljj$/util/stream/PipelineHelper;

.field protected index:I

.field protected length:J

.field protected offset:J

.field protected final spliterator:Ljj$/util/Spliterator;

.field protected final targetSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/Nodes;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/PipelineHelper;I)V
    .registers 6

    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    nop

    iput-object p1, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljj$/util/Spliterator;

    iput-object p2, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-interface {p1}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    int-to-long v0, p3

    iput-wide v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->length:J

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/Nodes$SizedCollectorTask;Ljj$/util/Spliterator;JJI)V
    .registers 15

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    nop

    iput-object p2, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljj$/util/Spliterator;

    iget-object v0, p1, Ljj$/util/stream/Nodes$SizedCollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-wide v0, p1, Ljj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide p3, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    iput-wide p5, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->length:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_27

    cmp-long v2, p5, v0

    if-ltz v2, :cond_27

    add-long v0, p3, p5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    cmp-long v4, v0, v2

    if-gez v4, :cond_27

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const-string v1, "offset and length interval [%d, %d + %d) is not within array size interval [0, %d)"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->length:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_14

    iget-wide v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    long-to-int v1, v0

    iput v1, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->index:I

    iget v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->index:I

    iget-wide v1, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->length:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->fence:I

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size passed to Sink.begin exceeds array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public compute()V
    .registers 11

    move-object v0, p0

    iget-object v2, p0, Ljj$/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljj$/util/Spliterator;

    move-object v1, v0

    :goto_4
    invoke-interface {v2}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v3

    iget-wide v5, v1, Ljj$/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_35

    invoke-interface {v2}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v4

    move-object v0, v4

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljj$/util/stream/Nodes$SizedCollectorTask;->setPendingCount(I)V

    invoke-interface {v4}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v7

    iget-wide v5, v1, Ljj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Ljj$/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljj$/util/Spliterator;JJ)Ljj$/util/stream/Nodes$SizedCollectorTask;

    move-result-object v0

    move-wide v8, v7

    move-object v7, v4

    invoke-virtual {v0}, Ljj$/util/stream/Nodes$SizedCollectorTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    iget-wide v3, v1, Ljj$/util/stream/Nodes$SizedCollectorTask;->offset:J

    add-long/2addr v3, v8

    iget-wide v5, v1, Ljj$/util/stream/Nodes$SizedCollectorTask;->length:J

    sub-long/2addr v5, v8

    invoke-virtual/range {v1 .. v6}, Ljj$/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljj$/util/Spliterator;JJ)Ljj$/util/stream/Nodes$SizedCollectorTask;

    move-result-object v1

    goto :goto_4

    :cond_34
    move-object v7, v4

    :cond_35
    nop

    move-object v0, v1

    iget-object v3, v1, Ljj$/util/stream/Nodes$SizedCollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    invoke-virtual {v3, v0, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    invoke-virtual {v1}, Ljj$/util/stream/Nodes$SizedCollectorTask;->propagateCompletion()V

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method abstract makeChild(Ljj$/util/Spliterator;JJ)Ljj$/util/stream/Nodes$SizedCollectorTask;
.end method
