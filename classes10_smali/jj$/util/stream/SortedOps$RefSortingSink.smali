.class final Ljj$/util/stream/SortedOps$RefSortingSink;
.super Ljj$/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# instance fields
.field private list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljj$/util/stream/Sink;Ljava/util/Comparator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljj$/util/stream/Sink;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public begin(J)V
    .registers 6

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    new-instance v0, Ljava/util/ArrayList;

    if-ltz v2, :cond_14

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_17

    :cond_14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    iput-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->downstream:Ljj$/util/stream/Sink;

    iget-object v1, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    iget-boolean v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->cancellationRequestedCalled:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-static {v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljj$/util/stream/SortedOps$RefSortingSink$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Ljj$/util/stream/SortedOps$RefSortingSink$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/Sink;)V

    invoke-static {v0, v2}, Ljj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto :goto_46

    :cond_27
    iget-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v2}, Ljj$/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_46

    :cond_40
    iget-object v2, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v2, v1}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_46
    :goto_46
    iget-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    return-void
.end method
