.class public final Ljj$/time/DesugarDuration;
.super Ljava/lang/Object;
.source "DesugarDuration.java"


# static fields
.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dividedBy(Ljj$/time/Duration;Ljj$/time/Duration;)J
    .registers 6

    const-string v0, "divisor"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ljj$/time/DesugarDuration;->toBigDecimalSeconds(Ljj$/time/Duration;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1}, Ljj$/time/DesugarDuration;->toBigDecimalSeconds(Ljj$/time/Duration;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    return-wide v2
.end method

.method private static toBigDecimalSeconds(Ljj$/time/Duration;)Ljava/math/BigDecimal;
    .registers 8

    invoke-virtual {p0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/Duration;->getNano()I

    move-result v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    int-to-long v4, v2

    const/16 v6, 0x9

    invoke-static {v4, v5, v6}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static toDaysPart(Ljj$/time/Duration;)J
    .registers 5

    invoke-virtual {p0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    div-long v2, v0, v2

    return-wide v2
.end method

.method public static toHoursPart(Ljj$/time/Duration;)I
    .registers 5

    invoke-virtual {p0}, Ljj$/time/Duration;->toHours()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static toMillisPart(Ljj$/time/Duration;)I
    .registers 3

    invoke-virtual {p0}, Ljj$/time/Duration;->getNano()I

    move-result v0

    const v1, 0xf4240

    div-int v1, v0, v1

    return v1
.end method

.method public static toMinutesPart(Ljj$/time/Duration;)I
    .registers 5

    invoke-virtual {p0}, Ljj$/time/Duration;->toMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static toNanosPart(Ljj$/time/Duration;)I
    .registers 2

    invoke-virtual {p0}, Ljj$/time/Duration;->getNano()I

    move-result v0

    return v0
.end method

.method public static toSeconds(Ljj$/time/Duration;)J
    .registers 3

    invoke-virtual {p0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toSecondsPart(Ljj$/time/Duration;)I
    .registers 5

    invoke-virtual {p0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long v2, v0, v2

    long-to-int v3, v2

    return v3
.end method

.method public static truncatedTo(Ljj$/time/Duration;Ljj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;
    .registers 15

    invoke-virtual {p0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/Duration;->getNano()I

    move-result v2

    const-string v3, "unit"

    invoke-static {p1, v3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v4, 0x0

    if-ne p1, v3, :cond_1e

    cmp-long v3, v0, v4

    if-gez v3, :cond_19

    if-nez v2, :cond_1e

    :cond_19
    invoke-static {v0, v1}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v3

    return-object v3

    :cond_1e
    sget-object v3, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v3, :cond_23

    return-object p0

    :cond_23
    invoke-interface {p1}, Ljj$/time/temporal/TemporalUnit;->getDuration()Ljj$/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v6

    const-wide/32 v8, 0x15180

    cmp-long v10, v6, v8

    if-gtz v10, :cond_5c

    invoke-virtual {v3}, Ljj$/time/Duration;->toNanos()J

    move-result-wide v6

    const-wide v10, 0x4e94914f0000L

    rem-long/2addr v10, v6

    cmp-long v12, v10, v4

    if-nez v12, :cond_54

    rem-long v4, v0, v8

    const-wide/32 v8, 0x3b9aca00

    mul-long v4, v4, v8

    int-to-long v8, v2

    add-long/2addr v4, v8

    div-long v8, v4, v6

    mul-long v8, v8, v6

    sub-long v10, v8, v4

    invoke-virtual {p0, v10, v11}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v10

    return-object v10

    :cond_54
    new-instance v4, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v5, "Unit must divide into a standard day without remainder"

    invoke-direct {v4, v5}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5c
    new-instance v4, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v5, "Unit is too large to be used for truncation"

    invoke-direct {v4, v5}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
