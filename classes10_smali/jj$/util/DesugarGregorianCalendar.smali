.class public final synthetic Ljj$/util/DesugarGregorianCalendar;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljj$/time/ZonedDateTime;)Ljava/util/GregorianCalendar;
    .registers 6

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Ljj$/util/DesugarTimeZone;->getTimeZone(Ljj$/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    :try_start_1f
    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/ZonedDateTime;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_37
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_37} :catch_39

    nop

    return-object v0

    :catch_39
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toZonedDateTime(Ljava/util/GregorianCalendar;)Ljj$/time/ZonedDateTime;
    .registers 3

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/Instant;->ofEpochMilli(J)Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljj$/util/TimeZoneRetargetClass;->toZoneId(Ljava/util/TimeZone;)Ljj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/ZonedDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method
