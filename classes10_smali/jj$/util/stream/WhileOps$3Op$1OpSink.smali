.class Ljj$/util/stream/WhileOps$3Op$1OpSink;
.super Ljj$/util/stream/Sink$ChainedLong;
.source "WhileOps.java"

# interfaces
.implements Ljj$/util/stream/WhileOps$DropWhileSink;


# instance fields
.field dropCount:J

.field take:Z

.field final synthetic this$0:Ljj$/util/stream/WhileOps$3Op;

.field final synthetic val$retainAndCountDroppedElements:Z

.field final synthetic val$sink:Ljj$/util/stream/Sink;


# direct methods
.method constructor <init>(Ljj$/util/stream/WhileOps$3Op;Ljj$/util/stream/Sink;Z)V
    .registers 4

    iput-object p1, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->this$0:Ljj$/util/stream/WhileOps$3Op;

    iput-object p2, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->val$sink:Ljj$/util/stream/Sink;

    iput-boolean p3, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedLong;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 8

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->take:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->this$0:Ljj$/util/stream/WhileOps$3Op;

    iget-object v0, v0, Ljj$/util/stream/WhileOps$3Op;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->take:Z

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    iget-boolean v1, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-eqz v1, :cond_23

    if-nez v0, :cond_23

    iget-wide v1, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    :cond_23
    iget-boolean v1, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-nez v1, :cond_29

    if-eqz v0, :cond_2e

    :cond_29
    iget-object v1, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v1, p1, p2}, Ljj$/util/stream/Sink;->accept(J)V

    :cond_2e
    return-void
.end method

.method public getDropCount()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    return-wide v0
.end method
