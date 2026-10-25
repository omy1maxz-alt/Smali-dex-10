.class final Ljj$/util/stream/SortedOps$SizedRefSortingSink;
.super Ljj$/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# instance fields
.field private array:[Ljava/lang/Object;

.field private offset:I


# direct methods
.method constructor <init>(Ljj$/util/stream/Sink;Ljava/util/Comparator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljj$/util/stream/Sink;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    aput-object p1, v0, v1

    return-void
.end method

.method public begin(J)V
    .registers 6

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_d

    long-to-int v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    iget-object v2, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljj$/util/stream/Sink;

    iget v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    iget-boolean v0, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_28

    const/4 v0, 0x0

    :goto_17
    iget v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljj$/util/stream/Sink;

    iget-object v2, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_27
    goto :goto_41

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_41

    iget-object v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v1}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljj$/util/stream/Sink;

    iget-object v2, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_41
    :goto_41
    iget-object v0, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    return-void
.end method
