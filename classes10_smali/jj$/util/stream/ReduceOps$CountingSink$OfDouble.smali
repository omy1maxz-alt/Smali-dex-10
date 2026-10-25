.class final Ljj$/util/stream/ReduceOps$CountingSink$OfDouble;
.super Ljj$/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfDouble;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 7

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink$OfDouble;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink$OfDouble;->count:J

    return-void
.end method

.method public synthetic accept(Ljava/lang/Double;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfDouble$-CC;->$default$accept(Ljj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

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
