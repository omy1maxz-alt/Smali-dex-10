.class Ljj$/util/stream/Nodes$CollectorTask;
.super Ljj$/util/stream/AbstractTask;
.source "Nodes.java"


# instance fields
.field protected final builderFactory:Ljava/util/function/LongFunction;

.field protected final concFactory:Ljava/util/function/BinaryOperator;

.field protected final helper:Ljj$/util/stream/PipelineHelper;


# direct methods
.method constructor <init>(Ljj$/util/stream/Nodes$CollectorTask;Ljj$/util/Spliterator;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/AbstractTask;Ljj$/util/Spliterator;)V

    iget-object v0, p1, Ljj$/util/stream/Nodes$CollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object v0, p0, Ljj$/util/stream/Nodes$CollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v0, p1, Ljj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iput-object v0, p0, Ljj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iget-object v0, p1, Ljj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    iput-object v0, p0, Ljj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/AbstractTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    iput-object p1, p0, Ljj$/util/stream/Nodes$CollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    iput-object p3, p0, Ljj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iput-object p4, p0, Ljj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$CollectorTask;->doLeaf()Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected doLeaf()Ljj$/util/stream/Node;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectorTask;->builderFactory:Ljava/util/function/LongFunction;

    iget-object v1, p0, Ljj$/util/stream/Nodes$CollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v2, p0, Ljj$/util/stream/Nodes$CollectorTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v1, v2}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node$Builder;

    iget-object v1, p0, Ljj$/util/stream/Nodes$CollectorTask;->helper:Ljj$/util/stream/PipelineHelper;

    iget-object v2, p0, Ljj$/util/stream/Nodes$CollectorTask;->spliterator:Ljj$/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Ljj$/util/stream/PipelineHelper;->wrapAndCopyInto(Ljj$/util/stream/Sink;Ljj$/util/Spliterator;)Ljj$/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node$Builder;

    invoke-interface {v1}, Ljj$/util/stream/Node$Builder;->build()Ljj$/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/Nodes$CollectorTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/Nodes$CollectorTask;
    .registers 3

    new-instance v0, Ljj$/util/stream/Nodes$CollectorTask;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Nodes$CollectorTask;-><init>(Ljj$/util/stream/Nodes$CollectorTask;Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 5

    invoke-virtual {p0}, Ljj$/util/stream/Nodes$CollectorTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Ljj$/util/stream/Nodes$CollectorTask;->concFactory:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljj$/util/stream/Nodes$CollectorTask;->leftChild:Ljj$/util/stream/AbstractTask;

    check-cast v1, Ljj$/util/stream/Nodes$CollectorTask;

    invoke-virtual {v1}, Ljj$/util/stream/Nodes$CollectorTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Node;

    iget-object v2, p0, Ljj$/util/stream/Nodes$CollectorTask;->rightChild:Ljj$/util/stream/AbstractTask;

    check-cast v2, Ljj$/util/stream/Nodes$CollectorTask;

    invoke-virtual {v2}, Ljj$/util/stream/Nodes$CollectorTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Node;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Node;

    invoke-virtual {p0, v0}, Ljj$/util/stream/Nodes$CollectorTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_25
    invoke-super {p0, p1}, Ljj$/util/stream/AbstractTask;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
