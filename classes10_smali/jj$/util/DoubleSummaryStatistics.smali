.class public Ljj$/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private count:J

.field private max:D

.field private min:D

.field private simpleSum:D

.field private sum:D

.field private sumCompensation:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public constructor <init>(JDDD)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_61

    cmp-long v2, p1, v0

    if-lez v2, :cond_60

    cmpl-double v2, p3, p5

    if-gtz v2, :cond_58

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p3, v2, v3

    const/4 v3, 0x1

    aput-wide p5, v2, v3

    const/4 v3, 0x2

    aput-wide p7, v2, v3

    invoke-static {v2}, Ljj$/util/stream/DoubleStream$-CC;->of([D)Ljj$/util/stream/DoubleStream;

    move-result-object v2

    new-instance v3, Ljj$/util/DoubleSummaryStatistics$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljj$/util/DoubleSummaryStatistics$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljj$/util/stream/DoubleStream;->filter(Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Ljj$/util/stream/DoubleStream;->count()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_49

    const-wide/16 v0, 0x3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_41

    goto :goto_49

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Some, not all, of the minimum, maximum, or sum is NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    :goto_49
    iput-wide p1, p0, Ljj$/util/DoubleSummaryStatistics;->count:J

    iput-wide p7, p0, Ljj$/util/DoubleSummaryStatistics;->sum:D

    iput-wide p7, p0, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->sumCompensation:D

    iput-wide p3, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    iput-wide p5, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    goto :goto_60

    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    :goto_60
    return-void

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative count value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sumWithCompensation(D)V
    .registers 9

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Ljj$/util/DoubleSummaryStatistics;->sum:D

    add-double/2addr v2, v0

    iget-wide v4, p0, Ljj$/util/DoubleSummaryStatistics;->sum:D

    sub-double v4, v2, v4

    sub-double/2addr v4, v0

    iput-wide v4, p0, Ljj$/util/DoubleSummaryStatistics;->sumCompensation:D

    iput-wide v2, p0, Ljj$/util/DoubleSummaryStatistics;->sum:D

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 7

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->count:J

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-direct {p0, p1, p2}, Ljj$/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public combine(Ljj$/util/DoubleSummaryStatistics;)V
    .registers 6

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->count:J

    iget-wide v2, p1, Ljj$/util/DoubleSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->count:J

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v2, p1, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v0, p1, Ljj$/util/DoubleSummaryStatistics;->sum:D

    invoke-direct {p0, v0, v1}, Ljj$/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p1, Ljj$/util/DoubleSummaryStatistics;->sumCompensation:D

    invoke-direct {p0, v0, v1}, Ljj$/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    iget-wide v2, p1, Ljj$/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    iget-wide v2, p1, Ljj$/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    return-void
.end method

.method public final getAverage()D
    .registers 6

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_17

    :cond_15
    const-wide/16 v0, 0x0

    :goto_17
    return-wide v0
.end method

.method public final getCount()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()D
    .registers 3

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->max:D

    return-wide v0
.end method

.method public final getMin()D
    .registers 3

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->min:D

    return-wide v0
.end method

.method public final getSum()D
    .registers 5

    iget-wide v0, p0, Ljj$/util/DoubleSummaryStatistics;->sum:D

    iget-wide v2, p0, Ljj$/util/DoubleSummaryStatistics;->sumCompensation:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v2, p0, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v2, p0, Ljj$/util/DoubleSummaryStatistics;->simpleSum:D

    return-wide v2

    :cond_16
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getMin()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getAverage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0}, Ljj$/util/DoubleSummaryStatistics;->getMax()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    const-string v0, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
