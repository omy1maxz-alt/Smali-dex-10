.class final Ljj$/util/stream/Nodes$CollectorTask$OfDouble;
.super Ljj$/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# direct methods
.method constructor <init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V
    .registers 5

    new-instance v0, Ljj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Ljj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljj$/util/stream/Nodes$CollectorTask$OfDouble$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljj$/util/stream/Nodes$CollectorTask;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/Nodes$CollectorTask;->doLeaf()Ljj$/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/AbstractTask;
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/Nodes$CollectorTask;->makeChild(Ljj$/util/Spliterator;)Ljj$/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method
