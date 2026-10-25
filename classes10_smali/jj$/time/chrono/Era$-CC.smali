.class public final synthetic Ljj$/time/chrono/Era$-CC;
.super Ljava/lang/Object;
.source "Era.java"


# direct methods
.method public static $default$adjustInto(Ljj$/time/chrono/Era;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0}, Ljj$/time/chrono/Era;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static $default$get(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)I
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    invoke-interface {p0}, Ljj$/time/chrono/Era;->getValue()I

    move-result v0

    return v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public static $default$getDisplayName(Ljj$/time/chrono/Era;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getLong(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)J
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    invoke-interface {p0}, Ljj$/time/chrono/Era;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_a
    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-nez v0, :cond_13

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :cond_13
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$isSupported(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1

    :cond_d
    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static $default$query(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->ERAS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$query(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $default$range(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
