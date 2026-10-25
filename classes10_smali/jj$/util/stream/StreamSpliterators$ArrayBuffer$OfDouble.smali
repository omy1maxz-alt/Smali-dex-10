.class final Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;
.super Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field final array:[D


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    new-array v0, p1, [D

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    iget v1, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->index:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic forEach(Ljava/lang/Object;J)V
    .registers 4

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->forEach(Ljava/util/function/DoubleConsumer;J)V

    return-void
.end method

.method forEach(Ljava/util/function/DoubleConsumer;J)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    int-to-long v1, v0

    cmp-long v3, v1, p2

    if-gez v3, :cond_10

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method
