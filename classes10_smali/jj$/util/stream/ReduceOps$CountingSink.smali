.class abstract Ljj$/util/stream/ReduceOps$CountingSink;
.super Ljj$/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljj$/util/stream/ReduceOps$AccumulatingSink;


# instance fields
.field count:J


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic accept(I)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;I)V

    return-void
.end method

.method public synthetic accept(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/stream/Sink$-CC;->$default$accept(Ljj$/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public begin(J)V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink;->count:J

    return-void
.end method

.method public synthetic cancellationRequested()Z
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$cancellationRequested(Ljj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic combine(Ljj$/util/stream/ReduceOps$AccumulatingSink;)V
    .registers 2

    check-cast p1, Ljj$/util/stream/ReduceOps$CountingSink;

    invoke-virtual {p0, p1}, Ljj$/util/stream/ReduceOps$CountingSink;->combine(Ljj$/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public combine(Ljj$/util/stream/ReduceOps$CountingSink;)V
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink;->count:J

    iget-wide v2, p1, Ljj$/util/stream/ReduceOps$CountingSink;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink;->count:J

    return-void
.end method

.method public synthetic end()V
    .registers 1

    invoke-static {p0}, Ljj$/util/stream/Sink$-CC;->$default$end(Ljj$/util/stream/Sink;)V

    return-void
.end method

.method public get()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
