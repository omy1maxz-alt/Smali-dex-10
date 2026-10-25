.class public Ljj$/time/TimeConversions;
.super Ljava/lang/Object;
.source "TimeConversions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljj$/time/Duration;)Ljava/time/Duration;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/Duration;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/Instant;)Ljava/time/Instant;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/Instant;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/LocalDate;)Ljava/time/LocalDate;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    nop

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getMinute()I

    move-result v4

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getSecond()I

    move-result v5

    invoke-virtual {p0}, Ljj$/time/LocalDateTime;->getNano()I

    move-result v6

    invoke-static/range {v0 .. v6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/LocalTime;)Ljava/time/LocalTime;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/MonthDay;)Ljava/time/MonthDay;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/MonthDay;->getMonthValue()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/MonthDay;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/Period;)Ljava/time/Period;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/Period;->getMonths()I

    move-result v1

    invoke-virtual {p0}, Ljj$/time/Period;->getDays()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/ZoneId;)Ljava/time/ZoneId;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/ZoneOffset;)Ljava/time/ZoneOffset;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljj$/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    nop

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getMinute()I

    move-result v4

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getSecond()I

    move-result v5

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getNano()I

    move-result v6

    invoke-virtual {p0}, Ljj$/time/ZonedDateTime;->getZone()Ljj$/time/ZoneId;

    move-result-object p0

    invoke-static {p0}, Ljj$/time/TimeConversions;->convert(Ljj$/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/Duration;)Ljj$/time/Duration;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/Instant;)Ljj$/time/Instant;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant;->ofEpochSecond(JJ)Ljj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/LocalDate;)Ljj$/time/LocalDate;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/LocalDateTime;)Ljj$/time/LocalDateTime;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    nop

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v6

    invoke-static/range {v0 .. v6}, Ljj$/time/LocalDateTime;->of(IIIIIII)Ljj$/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/LocalTime;)Ljj$/time/LocalTime;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/LocalTime;->ofNanoOfDay(J)Ljj$/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/MonthDay;)Ljj$/time/MonthDay;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/MonthDay;->getMonthValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Ljj$/time/MonthDay;->of(II)Ljj$/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/Period;)Ljj$/time/Period;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/Period;->getMonths()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljj$/time/Period;->of(III)Ljj$/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/ZoneId;)Ljj$/time/ZoneId;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljj$/time/ZoneId;->of(Ljava/lang/String;)Ljj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/ZoneOffset;)Ljj$/time/ZoneOffset;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljj$/time/ZoneOffset;->of(Ljava/lang/String;)Ljj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/ZonedDateTime;)Ljj$/time/ZonedDateTime;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    nop

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v5

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v6

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p0

    invoke-static {p0}, Ljj$/time/TimeConversions;->convert(Ljava/time/ZoneId;)Ljj$/time/ZoneId;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Ljj$/time/ZonedDateTime;->of(IIIIIIILjj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method
