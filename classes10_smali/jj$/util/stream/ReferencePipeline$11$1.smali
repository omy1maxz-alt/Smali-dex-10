.class Ljj$/util/stream/ReferencePipeline$11$1;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# instance fields
.field final synthetic this$1:Ljj$/util/stream/ReferencePipeline$11;


# direct methods
.method constructor <init>(Ljj$/util/stream/ReferencePipeline$11;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/ReferencePipeline$11$1;->this$1:Ljj$/util/stream/ReferencePipeline$11;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$11$1;->this$1:Ljj$/util/stream/ReferencePipeline$11;

    iget-object v0, v0, Ljj$/util/stream/ReferencePipeline$11;->val$action:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/util/stream/ReferencePipeline$11$1;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    return-void
.end method
