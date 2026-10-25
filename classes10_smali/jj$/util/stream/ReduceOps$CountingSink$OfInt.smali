.class final Ljj$/util/stream/ReduceOps$CountingSink$OfInt;
.super Ljj$/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfInt;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink$OfInt;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink$OfInt;->count:J

    return-void
.end method

.method public synthetic accept(Ljava/lang/Integer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfInt$-CC;->$default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$CountingSink;

    invoke-super {p0, p1}, Ljj$/util/stream/ReduceOps$CountingSink;->combine(Ljj$/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
