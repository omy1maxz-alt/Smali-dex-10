.class Ljj$/util/stream/SliceOps$4$1;
.super Ljj$/util/stream/Sink$ChainedDouble;
.source "SliceOps.java"


# instance fields
.field m:J

.field n:J

.field final synthetic this$0:Ljj$/util/stream/SliceOps$4;


# direct methods
.method constructor <init>(Ljj$/util/stream/SliceOps$4;Ljj$/util/stream/Sink;)V
    .registers 8

    iput-object p1, p0, Ljj$/util/stream/SliceOps$4$1;->this$0:Ljj$/util/stream/SliceOps$4;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedDouble;-><init>(Ljj$/util/stream/Sink;)V

    iget-object v0, p0, Ljj$/util/stream/SliceOps$4$1;->this$0:Ljj$/util/stream/SliceOps$4;

    iget-wide v0, v0, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iput-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->n:J

    iget-object v0, p0, Ljj$/util/stream/SliceOps$4$1;->this$0:Ljj$/util/stream/SliceOps$4;

    iget-wide v0, v0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1a

    iget-object v0, p0, Ljj$/util/stream/SliceOps$4$1;->this$0:Ljj$/util/stream/SliceOps$4;

    iget-wide v0, v0, Ljj$/util/stream/SliceOps$4;->val$limit:J

    goto :goto_1f

    :cond_1a
    const-wide v0, 0x7fffffffffffffffL

    :goto_1f
    iput-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->m:J

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 10

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->n:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1b

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->m:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_20

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->m:J

    iget-object v0, p0, Ljj$/util/stream/SliceOps$4$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Sink;->accept(D)V

    goto :goto_20

    :cond_1b
    iget-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->n:J

    :cond_20
    :goto_20
    return-void
.end method

.method public begin(J)V
    .registers 11

    iget-object v0, p0, Ljj$/util/stream/SliceOps$4$1;->downstream:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/SliceOps$4$1;->this$0:Ljj$/util/stream/SliceOps$4;

    iget-wide v4, v1, Ljj$/util/stream/SliceOps$4;->val$skip:J

    iget-wide v6, p0, Ljj$/util/stream/SliceOps$4$1;->m:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Ljj$/util/stream/SliceOps;->-$$Nest$smcalcSize(JJJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/SliceOps$4$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    iget-object v0, p0, Ljj$/util/stream/SliceOps$4$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
