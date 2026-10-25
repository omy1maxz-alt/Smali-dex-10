.class final Ljj$/util/stream/ForEachOps$ForEachOp$OfRef;
.super Ljj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"


# instance fields
.field final consumer:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;Z)V
    .registers 3

    invoke-direct {p0, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    iput-object p1, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Ljj$/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
