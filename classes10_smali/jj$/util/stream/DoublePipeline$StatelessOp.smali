.class abstract Ljj$/util/stream/DoublePipeline$StatelessOp;
.super Ljj$/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/DoublePipeline;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljj$/util/stream/DoublePipeline;-><init>(Ljj$/util/stream/AbstractPipeline;I)V

    nop

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->iterator()Ljj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method final opIsStateful()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parallel()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->parallel()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/DoublePipeline;->unordered()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method
