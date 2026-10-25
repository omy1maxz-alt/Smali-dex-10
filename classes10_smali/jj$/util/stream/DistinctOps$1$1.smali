.class Ljj$/util/stream/DistinctOps$1$1;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# instance fields
.field lastSeen:Ljava/lang/Object;

.field seenNull:Z

.field final synthetic this$0:Ljj$/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Ljj$/util/stream/DistinctOps$1;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/DistinctOps$1$1;->this$0:Ljj$/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_12

    iget-boolean v0, p0, Ljj$/util/stream/DistinctOps$1$1;->seenNull:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/DistinctOps$1$1;->seenNull:Z

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->downstream:Ljj$/util/stream/Sink;

    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_25

    :cond_12
    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_1e
    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->downstream:Ljj$/util/stream/Sink;

    iput-object p1, p0, Ljj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public begin(J)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/DistinctOps$1$1;->seenNull:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->downstream:Ljj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public end()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/stream/DistinctOps$1$1;->seenNull:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->end()V

    return-void
.end method
