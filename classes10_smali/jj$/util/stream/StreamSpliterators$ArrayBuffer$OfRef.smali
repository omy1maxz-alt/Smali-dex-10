.class final Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
.super Ljj$/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field final array:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    aput-object p1, v0, v1

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public forEach(Ljava/util/function/Consumer;J)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    int-to-long v1, v0

    cmp-long v3, v1, p2

    if-gez v3, :cond_10

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method
