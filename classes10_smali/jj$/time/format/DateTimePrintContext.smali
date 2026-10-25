.class final Ljj$/time/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private formatter:Ljj$/time/format/DateTimeFormatter;

.field private optional:I

.field private temporal:Ljj$/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/DateTimeFormatter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljj$/time/format/DateTimePrintContext;->adjust(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/format/DateTimePrintContext;->temporal:Ljj$/time/temporal/TemporalAccessor;

    iput-object p2, p0, Ljj$/time/format/DateTimePrintContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private static adjust(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/temporal/TemporalAccessor;
    .registers 13

    invoke-virtual {p1}, Ljj$/time/format/DateTimeFormatter;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Ljj$/time/format/DateTimeFormatter;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    if-nez v0, :cond_d

    if-nez v1, :cond_d

    return-object p0

    :cond_d
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/chrono/Chronology;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {p0, v3}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/ZoneId;

    invoke-static {v0, v2}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v0, 0x0

    :cond_28
    invoke-static {v1, v3}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v1, 0x0

    :cond_2f
    if-nez v0, :cond_34

    if-nez v1, :cond_34

    return-object p0

    :cond_34
    if-eqz v0, :cond_38

    move-object v4, v0

    goto :goto_39

    :cond_38
    move-object v4, v2

    :goto_39
    if-eqz v1, :cond_9e

    sget-object v5, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_54

    sget-object v5, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-static {v4, v5}, Ljj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljj$/time/chrono/Chronology;

    invoke-static {p0}, Ljj$/time/Instant;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Instant;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljj$/time/chrono/Chronology;->zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v6

    return-object v6

    :cond_54
    invoke-virtual {v1}, Ljj$/time/ZoneId;->normalized()Ljj$/time/ZoneId;

    move-result-object v5

    instance-of v5, v5, Ljj$/time/ZoneOffset;

    if-eqz v5, :cond_9e

    sget-object v5, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_9e

    sget-object v5, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v5

    invoke-virtual {v1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v6

    sget-object v7, Ljj$/time/Instant;->EPOCH:Ljj$/time/Instant;

    invoke-virtual {v6, v7}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v6

    invoke-virtual {v6}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    if-ne v5, v6, :cond_7b

    goto :goto_9e

    :cond_7b
    new-instance v5, Ljj$/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to apply override zone \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' because the temporal object being formatted has a different offset but does not represent an instant: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9e
    :goto_9e
    if-eqz v1, :cond_a2

    move-object v5, v1

    goto :goto_a3

    :cond_a2
    move-object v5, v3

    :goto_a3
    if-eqz v0, :cond_f7

    sget-object v6, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v6}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-interface {v4, p0}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    goto :goto_f8

    :cond_b2
    sget-object v6, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    if-ne v0, v6, :cond_b8

    if-eqz v2, :cond_f5

    :cond_b8
    invoke-static {}, Ljj$/time/temporal/ChronoField;->values()[Ljj$/time/temporal/ChronoField;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_be
    if-ge v8, v7, :cond_f5

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v10

    if-eqz v10, :cond_f2

    invoke-interface {p0, v9}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v10

    if-nez v10, :cond_cf

    goto :goto_f2

    :cond_cf
    new-instance v6, Ljj$/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to apply override chronology \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' because the temporal object being formatted contains date fields but does not represent a whole date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f2
    :goto_f2
    add-int/lit8 v8, v8, 0x1

    goto :goto_be

    :cond_f5
    const/4 v6, 0x0

    goto :goto_f8

    :cond_f7
    const/4 v6, 0x0

    :goto_f8
    new-instance v7, Ljj$/time/format/DateTimePrintContext$1;

    invoke-direct {v7, v6, p0, v4, v5}, Ljj$/time/format/DateTimePrintContext$1;-><init>(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v7
.end method


# virtual methods
.method endOptional()V
    .registers 2

    iget v0, p0, Ljj$/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljj$/time/format/DateTimePrintContext;->optional:I

    return-void
.end method

.method getDecimalStyle()Ljj$/time/format/DecimalStyle;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatter;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getTemporal()Ljj$/time/temporal/TemporalAccessor;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext;->temporal:Ljj$/time/temporal/TemporalAccessor;

    return-object v0
.end method

.method getValue(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;
    .registers 4

    iget v0, p0, Ljj$/time/format/DateTimePrintContext;->optional:I

    if-lez v0, :cond_e

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext;->temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext;->temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method getValue(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext;->temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_32

    iget v1, p0, Ljj$/time/format/DateTimePrintContext;->optional:I

    if-eqz v1, :cond_d

    goto :goto_32

    :cond_d
    new-instance v1, Ljj$/time/DateTimeException;

    iget-object v2, p0, Ljj$/time/format/DateTimePrintContext;->temporal:Ljj$/time/temporal/TemporalAccessor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to extract "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from temporal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    :goto_32
    return-object v0
.end method

.method startOptional()V
    .registers 2

    iget v0, p0, Ljj$/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/time/format/DateTimePrintContext;->optional:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimePrintContext;->temporal:Ljj$/time/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
