.class final Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
.super Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field final array:[I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    iget v1, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    aput p1, v0, v1

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;J)V
    .registers 4

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->forEach(Ljava/util/function/IntConsumer;J)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;J)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    int-to-long v1, v0

    cmp-long v3, v1, p2

    if-gez v3, :cond_10

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method
