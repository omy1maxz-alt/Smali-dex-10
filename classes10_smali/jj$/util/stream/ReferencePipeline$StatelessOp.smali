.class abstract Ljj$/util/stream/ReferencePipeline$StatelessOp;
.super Ljj$/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/ReferencePipeline;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljj$/util/stream/ReferencePipeline;-><init>(Ljj$/util/stream/AbstractPipeline;I)V

    nop

    return-void
.end method


# virtual methods
.method final opIsStateful()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic unordered()Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/ReferencePipeline;->unordered()Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
