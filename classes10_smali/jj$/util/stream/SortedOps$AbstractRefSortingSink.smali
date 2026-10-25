.class abstract Ljj$/util/stream/SortedOps$AbstractRefSortingSink;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "SortedOps.java"


# instance fields
.field protected cancellationRequestedCalled:Z

.field protected final comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljj$/util/stream/Sink;Ljava/util/Comparator;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    iput-object p2, p0, Ljj$/util/stream/SortedOps$AbstractRefSortingSink;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final cancellationRequested()Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/SortedOps$AbstractRefSortingSink;->cancellationRequestedCalled:Z

    const/4 v0, 0x0

    return v0
.end method
