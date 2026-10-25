.class final Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;
.super Ljj$/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# instance fields
.field private array:[D

.field private offset:I


# direct methods
.method constructor <init>(Ljj$/util/stream/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    iget v1, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public begin(J)V
    .registers 6

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_d

    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    const/4 v1, 0x0

    iget v2, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([DII)V

    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljj$/util/stream/Sink;

    iget v1, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    iget-boolean v0, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_26

    const/4 v0, 0x0

    :goto_15
    iget v1, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljj$/util/stream/Sink;

    iget-object v2, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v3, v2, v0

    invoke-interface {v1, v3, v4}, Ljj$/util/stream/Sink;->accept(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_25
    goto :goto_3f

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iget v1, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_3f

    iget-object v1, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v1}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljj$/util/stream/Sink;

    iget-object v2, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v3, v2, v0

    invoke-interface {v1, v3, v4}, Ljj$/util/stream/Sink;->accept(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    :goto_3f
    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    return-void
.end method
