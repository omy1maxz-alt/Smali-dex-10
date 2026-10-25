.class final Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;
.super Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"


# instance fields
.field final s:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(JLjava/util/function/Supplier;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    iput-object p3, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    iget-wide v1, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->estimate:J

    iget-object v3, p0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava/util/function/Supplier;

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava/util/function/Supplier;)V

    return-object v0
.end method
