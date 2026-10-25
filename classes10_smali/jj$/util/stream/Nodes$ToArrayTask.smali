.class abstract Ljj$/util/stream/Nodes$ToArrayTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"


# instance fields
.field protected final node:Ljj$/util/stream/Node;

.field protected final offset:I


# direct methods
.method constructor <init>(Ljj$/util/stream/Node;I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Nodes$ToArrayTask;->node:Ljj$/util/stream/Node;

    iput p2, p0, Ljj$/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/Nodes$ToArrayTask;Ljj$/util/stream/Node;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljj$/util/stream/Nodes$ToArrayTask;->node:Ljj$/util/stream/Node;

    iput p3, p0, Ljj$/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method


# virtual methods
.method public compute()V
    .registers 9

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Ljj$/util/stream/Nodes$ToArrayTask;->node:Ljj$/util/stream/Node;

    invoke-interface {v1}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljj$/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    invoke-virtual {v0}, Ljj$/util/stream/Nodes$ToArrayTask;->propagateCompletion()V

    return-void

    :cond_10
    iget-object v1, v0, Ljj$/util/stream/Nodes$ToArrayTask;->node:Ljj$/util/stream/Node;

    invoke-interface {v1}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljj$/util/stream/Nodes$ToArrayTask;->setPendingCount(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1d
    iget-object v3, v0, Ljj$/util/stream/Nodes$ToArrayTask;->node:Ljj$/util/stream/Node;

    invoke-interface {v3}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3d

    iget v3, v0, Ljj$/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljj$/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljj$/util/stream/Nodes$ToArrayTask;

    move-result-object v3

    int-to-long v4, v1

    iget-object v6, v3, Ljj$/util/stream/Nodes$ToArrayTask;->node:Ljj$/util/stream/Node;

    invoke-interface {v6}, Ljj$/util/stream/Node;->count()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$ToArrayTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_3d
    iget v3, v0, Ljj$/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljj$/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljj$/util/stream/Nodes$ToArrayTask;

    move-result-object v0

    goto :goto_1
.end method

.method abstract copyNodeToArray()V
.end method

.method abstract makeChild(II)Ljj$/util/stream/Nodes$ToArrayTask;
.end method
