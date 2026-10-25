.class public final synthetic Ljj$/time/temporal/TemporalUnit$-CC;
.super Ljava/lang/Object;
.source "TemporalUnit.java"


# direct methods
.method public static $default$isSupportedBy(Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/Temporal;)Z
    .registers 7

    instance-of v0, p1, Ljj$/time/LocalTime;

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljj$/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    :cond_9
    instance-of v0, p1, Ljj$/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljj$/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    return v0

    :cond_12
    instance-of v0, p1, Ljj$/time/chrono/ChronoLocalDateTime;

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    instance-of v0, p1, Ljj$/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_1c

    goto :goto_2e

    :cond_1c
    const-wide/16 v2, 0x1

    const/4 v0, 0x0

    :try_start_1f
    invoke-interface {p1, v2, v3, p0}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    :try_end_22
    .catch Ljj$/time/temporal/UnsupportedTemporalTypeException; {:try_start_1f .. :try_end_22} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_22} :catch_23

    return v1

    :catch_23
    move-exception v2

    const-wide/16 v3, -0x1

    :try_start_26
    invoke-interface {p1, v3, v4, p0}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_29} :catch_2a

    return v1

    :catch_2a
    move-exception v1

    return v0

    :catch_2c
    move-exception v1

    return v0

    :cond_2e
    :goto_2e
    return v1
.end method
