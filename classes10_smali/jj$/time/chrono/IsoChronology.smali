.class public final Ljj$/time/chrono/IsoChronology;
.super Ljj$/time/chrono/AbstractChronology;
.source "IsoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DAYS_0000_TO_1970:J = 0xafaa8L

.field public static final INSTANCE:Ljj$/time/chrono/IsoChronology;

.field private static final serialVersionUID:J = -0x13fd57b046d9ef27L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/time/chrono/IsoChronology;

    invoke-direct {v0}, Ljj$/time/chrono/IsoChronology;-><init>()V

    sput-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/time/chrono/AbstractChronology;-><init>()V

    return-void
.end method

.method private numberOfDaysOfMonth(II)I
    .registers 6

    sparse-switch p2, :sswitch_data_1a

    const/16 v0, 0x1f

    goto :goto_18

    :sswitch_6
    const/16 v0, 0x1e

    goto :goto_18

    :sswitch_9
    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x1d

    goto :goto_17

    :cond_15
    const/16 v0, 0x1c

    :goto_17
    nop

    :goto_18
    return v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x2 -> :sswitch_9
        0x4 -> :sswitch_6
        0x6 -> :sswitch_6
        0x9 -> :sswitch_6
        0xb -> :sswitch_6
    .end sparse-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public date(III)Ljj$/time/LocalDate;
    .registers 5

    invoke-static {p1, p2, p3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljj$/time/chrono/Era;III)Ljj$/time/LocalDate;
    .registers 6

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljj$/time/chrono/IsoChronology;->date(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/IsoChronology;->date(III)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/time/chrono/IsoChronology;->date(Ljj$/time/chrono/Era;III)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/IsoChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Ljj$/time/LocalDate;
    .registers 4

    invoke-static {p1, p2}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->dateEpochDay(J)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Ljj$/time/LocalDate;
    .registers 2

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/IsoChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/Clock;)Ljj$/time/LocalDate;
    .registers 3

    const-string v0, "clock"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/IsoChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/ZoneId;)Ljj$/time/LocalDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/IsoChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/IsoChronology;->dateNow()Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/IsoChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/IsoChronology;->dateNow(Ljj$/time/ZoneId;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Ljj$/time/LocalDate;
    .registers 4

    invoke-static {p1, p2}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/LocalDate;
    .registers 5

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljj$/time/chrono/IsoChronology;->dateYearDay(II)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->dateYearDay(II)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/IsoChronology;->dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public epochSecond(IIIIIILjj$/time/ZoneOffset;)J
    .registers 24

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    sget-object v6, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    const-string v6, "zoneOffset"

    move-object/from16 v7, p7

    invoke-static {v7, v6}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v6, 0x1c

    if-le v2, v6, :cond_95

    invoke-direct/range {p0 .. p2}, Ljj$/time/chrono/IsoChronology;->numberOfDaysOfMonth(II)I

    move-result v6

    if-le v2, v6, :cond_95

    const/16 v8, 0x1d

    if-ne v2, v8, :cond_64

    new-instance v8, Ljj$/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date \'February 29\' as \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a leap year"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_64
    new-instance v8, Ljj$/time/DateTimeException;

    invoke-static {v1}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v9

    invoke-virtual {v9}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid date \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_95
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v10, 0x16d

    int-to-long v12, v0

    mul-long v12, v12, v10

    add-long/2addr v8, v12

    if-ltz v0, :cond_b9

    int-to-long v10, v0

    const-wide/16 v12, 0x3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x4

    div-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x63

    add-long/2addr v12, v14

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x18f

    add-long/2addr v12, v14

    const-wide/16 v14, 0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    goto :goto_c3

    :cond_b9
    div-int/lit8 v10, v0, -0x4

    div-int/lit8 v11, v0, -0x64

    sub-int/2addr v10, v11

    div-int/lit16 v11, v0, -0x190

    add-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    :goto_c3
    mul-int/lit16 v10, v1, 0x16f

    add-int/lit16 v10, v10, -0x16a

    div-int/lit8 v10, v10, 0xc

    int-to-long v10, v10

    add-long/2addr v8, v10

    add-int/lit8 v10, v2, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    const/4 v10, 0x2

    if-le v1, v10, :cond_df

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    sget-object v12, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v12

    if-nez v12, :cond_df

    sub-long/2addr v8, v10

    :cond_df
    const-wide/32 v10, 0xafaa8

    sub-long/2addr v8, v10

    mul-int/lit8 v10, v3, 0x3c

    add-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v5

    const-wide/32 v11, 0x15180

    invoke-static {v8, v9, v11, v12}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v11

    invoke-virtual {v7}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int v6, v10, v6

    int-to-long v13, v6

    invoke-static {v11, v12, v13, v14}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    return-wide v11
.end method

.method public bridge synthetic eraOf(I)Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/IsoChronology;->eraOf(I)Ljj$/time/chrono/IsoEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Ljj$/time/chrono/IsoEra;
    .registers 3

    invoke-static {p1}, Ljj$/time/chrono/IsoEra;->of(I)Ljj$/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljj$/time/chrono/IsoEra;->values()[Ljj$/time/chrono/IsoEra;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    const-string v0, "iso8601"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "ISO"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .registers 8

    const-wide/16 v0, 0x3

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    const-wide/16 v0, 0x64

    rem-long v0, p1, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    const-wide/16 v0, 0x190

    rem-long v0, p1, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    :cond_19
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;
    .registers 3

    invoke-static {p1}, Ljj$/time/LocalDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/IsoChronology;->localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public period(III)Ljj$/time/Period;
    .registers 5

    invoke-static {p1, p2, p3}, Ljj$/time/Period;->of(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic period(III)Ljj$/time/chrono/ChronoPeriod;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/IsoChronology;->period(III)Ljj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public prolepticYear(Ljj$/time/chrono/Era;I)I
    .registers 5

    instance-of v0, p1, Ljj$/time/chrono/IsoEra;

    if-eqz v0, :cond_d

    sget-object v0, Ljj$/time/chrono/IsoEra;->CE:Ljj$/time/chrono/IsoEra;

    if-ne p1, v0, :cond_a

    move v0, p2

    goto :goto_c

    :cond_a
    rsub-int/lit8 v0, p2, 0x1

    :goto_c
    return v0

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be IsoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/LocalDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method resolveProlepticMonth(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)V
    .registers 8

    sget-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_36

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq p2, v1, :cond_17

    sget-object v1, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_17
    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, p1, v1, v2, v3}, Ljj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Ljj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    :cond_36
    return-void
.end method

.method resolveYMD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/LocalDate;
    .registers 10

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne p2, v1, :cond_46

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    sget-object v5, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static {v0, v5, v5}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v5

    return-object v5

    :cond_46
    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    sget-object v3, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    if-ne p2, v3, :cond_96

    const/4 v3, 0x4

    if-eq v1, v3, :cond_90

    const/4 v3, 0x6

    if-eq v1, v3, :cond_90

    const/16 v3, 0x9

    if-eq v1, v3, :cond_90

    const/16 v3, 0xb

    if-ne v1, v3, :cond_7d

    goto :goto_90

    :cond_7d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_96

    sget-object v3, Ljj$/time/Month;->FEBRUARY:Ljj$/time/Month;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljj$/time/Year;->isLeap(J)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljj$/time/Month;->length(Z)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_96

    :cond_90
    :goto_90
    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_96
    :goto_96
    invoke-static {v0, v1, v2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v3

    return-object v3
.end method

.method bridge synthetic resolveYMD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->resolveYMD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method resolveYearOfEra(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/LocalDate;
    .registers 14

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_af

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq p2, v1, :cond_17

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_17
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-nez v1, :cond_6e

    sget-object v6, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    sget-object v7, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne p2, v7, :cond_50

    if-eqz v6, :cond_4a

    sget-object v7, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-lez v10, :cond_42

    goto :goto_46

    :cond_42
    invoke-static {v4, v5, v2, v3}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    :goto_46
    invoke-virtual {p0, p1, v7, v2, v3}, Ljj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    goto :goto_6d

    :cond_4a
    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_50
    sget-object v7, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    if-eqz v6, :cond_66

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-lez v10, :cond_5d

    goto :goto_66

    :cond_5d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    goto :goto_6a

    :cond_66
    :goto_66
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_6a
    invoke-virtual {p0, p1, v7, v2, v3}, Ljj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    :goto_6d
    goto :goto_c9

    :cond_6e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_80

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    goto :goto_c9

    :cond_80
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_96

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljj$/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    goto :goto_c9

    :cond_96
    new-instance v2, Ljj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for era: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_af
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    sget-object v2, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    goto :goto_ca

    :cond_c9
    :goto_c9
    nop

    :goto_ca
    const/4 v1, 0x0

    return-object v1
.end method

.method bridge synthetic resolveYearOfEra(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->resolveYearOfEra(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljj$/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 4

    invoke-static {p1, p2}, Ljj$/time/ZonedDateTime;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZonedDateTime;
    .registers 3

    invoke-static {p1}, Ljj$/time/ZonedDateTime;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/IsoChronology;->zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/IsoChronology;->zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method
