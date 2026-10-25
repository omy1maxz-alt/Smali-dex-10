.class public final synthetic Ljj$/time/temporal/Temporal$-CC;
.super Ljava/lang/Object;
.source "Temporal.java"


# direct methods
.method public static $default$minus(Ljj$/time/temporal/Temporal;JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p0, v0, v1, p3}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2, p3}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-interface {p0, v0, v1, p3}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public static $default$minus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$plus(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$with(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method
