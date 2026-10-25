.class public final synthetic Ljj$/time/chrono/ChronoPeriod$-CC;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"


# direct methods
.method public static $default$isNegative(Ljj$/time/chrono/ChronoPeriod;)Z
    .registers 8

    invoke-interface {p0}, Ljj$/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/temporal/TemporalUnit;

    invoke-interface {p0, v1}, Ljj$/time/chrono/ChronoPeriod;->get(Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    goto :goto_8

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$isZero(Ljj$/time/chrono/ChronoPeriod;)Z
    .registers 8

    invoke-interface {p0}, Ljj$/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/temporal/TemporalUnit;

    invoke-interface {p0, v1}, Ljj$/time/chrono/ChronoPeriod;->get(Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_20

    const/4 v0, 0x0

    return v0

    :cond_20
    goto :goto_8

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static $default$negated(Ljj$/time/chrono/ChronoPeriod;)Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljj$/time/chrono/ChronoPeriod;->multipliedBy(I)Ljj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public static between(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/chrono/ChronoPeriod;
    .registers 3

    const-string v0, "startDateInclusive"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "endDateExclusive"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljj$/time/chrono/ChronoLocalDate;->until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method
