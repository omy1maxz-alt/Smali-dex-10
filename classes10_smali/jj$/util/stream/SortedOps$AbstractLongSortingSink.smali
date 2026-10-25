.class abstract Ljj$/util/stream/SortedOps$AbstractLongSortingSink;
.super Ljj$/util/stream/Sink$ChainedLong;
.source "SortedOps.java"


# instance fields
.field protected cancellationRequestedCalled:Z


# direct methods
.method constructor <init>(Ljj$/util/stream/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/Sink$ChainedLong;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public final cancellationRequested()Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/SortedOps$AbstractLongSortingSink;->cancellationRequestedCalled:Z

    const/4 v0, 0x0

    return v0
.end method
