.class final Ljj$/util/stream/SortedOps$IntSortingSink;
.super Ljj$/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# instance fields
.field private b:Ljj$/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljj$/util/stream/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->b:Ljj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public begin(J)V
    .registers 6

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Ljj$/util/stream/SpinedBuffer$OfInt;

    if-lez v2, :cond_14

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljj$/util/stream/SpinedBuffer$OfInt;-><init>(I)V

    goto :goto_17

    :cond_14
    invoke-direct {v0}, Ljj$/util/stream/SpinedBuffer$OfInt;-><init>()V

    :goto_17
    iput-object v0, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->b:Ljj$/util/stream/SpinedBuffer$OfInt;

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->b:Ljj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0}, Ljj$/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    iget-object v1, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->downstream:Ljj$/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljj$/util/stream/Sink;->begin(J)V

    iget-boolean v1, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->cancellationRequestedCalled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    array-length v1, v0

    :goto_18
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    iget-object v4, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v4, v3}, Ljj$/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_24
    array-length v1, v0

    :goto_25
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    iget-object v4, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v4}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_3a

    :cond_32
    iget-object v4, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v4, v3}, Ljj$/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3a
    :goto_3a
    iget-object v1, p0, Ljj$/util/stream/SortedOps$IntSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v1}, Ljj$/util/stream/Sink;->end()V

    return-void
.end method
