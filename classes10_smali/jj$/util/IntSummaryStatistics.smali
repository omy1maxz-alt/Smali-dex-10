.class public Ljj$/util/IntSummaryStatistics;
.super Ljava/lang/Object;
.source "IntSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:I

.field private min:I

.field private sum:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->min:I

    const/high16 v0, -0x80000000

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public constructor <init>(JIIJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->min:I

    const/high16 v0, -0x80000000

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->max:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2a

    cmp-long v2, p1, v0

    if-lez v2, :cond_29

    if-gt p3, p4, :cond_21

    iput-wide p1, p0, Ljj$/util/IntSummaryStatistics;->count:J

    iput-wide p5, p0, Ljj$/util/IntSummaryStatistics;->sum:J

    iput p3, p0, Ljj$/util/IntSummaryStatistics;->min:I

    iput p4, p0, Ljj$/util/IntSummaryStatistics;->max:I

    goto :goto_29

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_29
    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative count value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(I)V
    .registers 6

    iget-wide v0, p0, Ljj$/util/IntSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Ljj$/util/IntSummaryStatistics;->sum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Ljj$/util/IntSummaryStatistics;->min:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->min:I

    iget v0, p0, Ljj$/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public combine(Ljj$/util/IntSummaryStatistics;)V
    .registers 6

    iget-wide v0, p0, Ljj$/util/IntSummaryStatistics;->count:J

    iget-wide v2, p1, Ljj$/util/IntSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/IntSummaryStatistics;->count:J

    iget-wide v0, p0, Ljj$/util/IntSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljj$/util/IntSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/IntSummaryStatistics;->sum:J

    iget v0, p0, Ljj$/util/IntSummaryStatistics;->min:I

    iget v1, p1, Ljj$/util/IntSummaryStatistics;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->min:I

    iget v0, p0, Ljj$/util/IntSummaryStatistics;->max:I

    iget v1, p1, Ljj$/util/IntSummaryStatistics;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljj$/util/IntSummaryStatistics;->max:I

    return-void
.end method

.method public final getAverage()D
    .registers 6

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_18

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    return-wide v0
.end method

.method public final getCount()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/IntSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()I
    .registers 2

    iget v0, p0, Ljj$/util/IntSummaryStatistics;->max:I

    return v0
.end method

.method public final getMin()I
    .registers 2

    iget v0, p0, Ljj$/util/IntSummaryStatistics;->min:I

    return v0
.end method

.method public final getSum()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/IntSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getSum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getAverage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0}, Ljj$/util/IntSummaryStatistics;->getMax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    const-string v0, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
