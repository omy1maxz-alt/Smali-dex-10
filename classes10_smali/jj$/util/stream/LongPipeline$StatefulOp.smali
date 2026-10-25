.class abstract Ljj$/util/stream/LongPipeline$StatefulOp;
.super Ljj$/util/stream/LongPipeline;
.source "LongPipeline.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/LongPipeline;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljj$/util/stream/LongPipeline;-><init>(Ljj$/util/stream/AbstractPipeline;I)V

    nop

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/LongPipeline;->iterator()Ljj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfLong;

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

.method public bridge synthetic parallel()Ljj$/util/stream/LongStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/LongPipeline;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljj$/util/stream/LongStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/LongPipeline;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/LongPipeline;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/LongPipeline;->unordered()Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method
