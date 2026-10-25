.class Ljj$/util/stream/DoublePipeline$7$1;
.super Ljj$/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/DoublePipeline$7;


# direct methods
.method constructor <init>(Ljj$/util/stream/DoublePipeline$7;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/DoublePipeline$7$1;->this$1:Ljj$/util/stream/DoublePipeline$7;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedDouble;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/DoublePipeline$7$1;->this$1:Ljj$/util/stream/DoublePipeline$7;

    iget-object v0, v0, Ljj$/util/stream/DoublePipeline$7;->val$predicate:Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/util/stream/DoublePipeline$7$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Sink;->accept(D)V

    :cond_f
    return-void
.end method

.method public begin(J)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/DoublePipeline$7$1;->downstream:Ljj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    return-void
.end method
