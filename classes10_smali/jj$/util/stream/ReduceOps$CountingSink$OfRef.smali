.class final Ljj$/util/stream/ReduceOps$CountingSink$OfRef;
.super Ljj$/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 6

    iget-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink$OfRef;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/ReduceOps$CountingSink$OfRef;->count:J

    return-void
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
