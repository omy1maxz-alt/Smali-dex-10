.class abstract Ljj$/util/stream/IntPipeline$StatefulOp;
.super Ljj$/util/stream/IntPipeline;
.source "IntPipeline.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/IntPipeline;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljj$/util/stream/IntPipeline;-><init>(Ljj$/util/stream/AbstractPipeline;I)V

    nop

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->iterator()Ljj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/IntPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method abstract opEvaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
.end method

.method final opIsStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic parallel()Ljj$/util/stream/IntStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljj$/util/stream/IntStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/IntPipeline;->unordered()Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
