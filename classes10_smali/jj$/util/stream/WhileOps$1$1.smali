.class Ljj$/util/stream/WhileOps$1$1;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "WhileOps.java"


# instance fields
.field take:Z

.field final synthetic this$0:Ljj$/util/stream/WhileOps$1;


# direct methods
.method constructor <init>(Ljj$/util/stream/WhileOps$1;Ljj$/util/stream/Sink;)V
    .registers 4

    iput-object p1, p0, Ljj$/util/stream/WhileOps$1$1;->this$0:Ljj$/util/stream/WhileOps$1;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$1$1;->take:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$1$1;->take:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/util/stream/WhileOps$1$1;->this$0:Ljj$/util/stream/WhileOps$1;

    iget-object v0, v0, Ljj$/util/stream/WhileOps$1;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ljj$/util/stream/WhileOps$1$1;->take:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/util/stream/WhileOps$1$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public begin(J)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/WhileOps$1$1;->downstream:Ljj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/WhileOps$1$1;->take:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/util/stream/WhileOps$1$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_d

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
