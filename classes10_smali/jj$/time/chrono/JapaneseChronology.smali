.class public final Ljj$/time/chrono/JapaneseChronology;
.super Ljj$/time/chrono/AbstractChronology;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Ljj$/time/chrono/JapaneseChronology;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/time/chrono/JapaneseChronology;

    invoke-direct {v0}, Ljj$/time/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/time/chrono/AbstractChronology;-><init>()V

    return-void
.end method

.method private prolepticYearLenient(Ljj$/time/chrono/JapaneseEra;I)I
    .registers 4

    invoke-virtual {p1}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveYD(Ljj$/time/chrono/JapaneseEra;ILjava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 10

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne p4, v0, :cond_30

    invoke-direct {p0, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljj$/time/chrono/JapaneseEra;I)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljj$/time/chrono/JapaneseChronology;->dateYearDay(II)Ljj$/time/chrono/JapaneseDate;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljj$/time/chrono/JapaneseDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v3

    return-object v3

    :cond_30
    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljj$/time/chrono/JapaneseChronology;->dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private resolveYMD(Ljj$/time/chrono/JapaneseEra;ILjava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 13

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v1, 0x1

    if-ne p4, v0, :cond_46

    invoke-direct {p0, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljj$/time/chrono/JapaneseEra;I)I

    move-result v0

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    sget-object v6, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v1}, Ljj$/time/chrono/JapaneseChronology;->date(III)Ljj$/time/chrono/JapaneseDate;

    move-result-object v1

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v6}, Ljj$/time/chrono/JapaneseDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v1

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljj$/time/chrono/JapaneseDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1

    :cond_46
    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v2

    sget-object v3, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    if-ne p4, v3, :cond_e1

    if-lt p2, v1, :cond_c8

    invoke-direct {p0, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljj$/time/chrono/JapaneseEra;I)I

    move-result v3

    :try_start_80
    invoke-virtual {p0, v3, v0, v2}, Ljj$/time/chrono/JapaneseChronology;->date(III)Ljj$/time/chrono/JapaneseDate;

    move-result-object v4
    :try_end_84
    .catch Ljj$/time/DateTimeException; {:try_start_80 .. :try_end_84} :catch_85

    goto :goto_93

    :catch_85
    move-exception v4

    invoke-virtual {p0, v3, v0, v1}, Ljj$/time/chrono/JapaneseChronology;->date(III)Ljj$/time/chrono/JapaneseDate;

    move-result-object v5

    invoke-static {}, Ljj$/time/temporal/TemporalAdjusters;->lastDayOfMonth()Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v4, v5

    :goto_93
    invoke-virtual {v4}, Ljj$/time/chrono/JapaneseDate;->getEra()Ljj$/time/chrono/JapaneseEra;

    move-result-object v5

    if-eq v5, p1, :cond_c7

    sget-object v5, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5}, Ljj$/time/chrono/JapaneseDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v5

    if-le v5, v1, :cond_c7

    if-gt p2, v1, :cond_a4

    goto :goto_c7

    :cond_a4
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid YearOfEra for Era: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c7
    :goto_c7
    return-object v4

    :cond_c8
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid YearOfEra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e1
    invoke-virtual {p0, p1, p2, v0, v2}, Ljj$/time/chrono/JapaneseChronology;->date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic date(III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseChronology;->date(III)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/time/chrono/JapaneseChronology;->date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Ljj$/time/chrono/JapaneseDate;
    .registers 6

    new-instance v0, Ljj$/time/chrono/JapaneseDate;

    invoke-static {p1, p2, p3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/JapaneseDate;
    .registers 7

    instance-of v0, p1, Ljj$/time/chrono/JapaneseEra;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/JapaneseEra;

    invoke-static {v0, p2, p3, p4}, Ljj$/time/chrono/JapaneseDate;->of(Ljj$/time/chrono/JapaneseEra;III)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    instance-of v0, p1, Ljj$/time/chrono/JapaneseDate;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0

    :cond_8
    new-instance v0, Ljj$/time/chrono/JapaneseDate;

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->dateEpochDay(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseChronology;->dateNow()Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseChronology;->dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Ljj$/time/chrono/JapaneseDate;
    .registers 2

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->dateYearDay(II)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseChronology;->dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/JapaneseEra;

    invoke-static {v0, p2, p3}, Ljj$/time/chrono/JapaneseDate;->ofYearDay(Ljj$/time/chrono/JapaneseEra;II)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseChronology;->eraOf(I)Ljj$/time/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Ljj$/time/chrono/JapaneseEra;
    .registers 3

    invoke-static {p1}, Ljj$/time/chrono/JapaneseEra;->of(I)Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->values()[Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    const-string v0, "japanese"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "Japanese"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .registers 4

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, p1, p2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/AbstractChronology;->localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Ljj$/time/chrono/Era;I)I
    .registers 7

    instance-of v0, p1, Ljj$/time/chrono/JapaneseEra;

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v2, :cond_15

    return v1

    :cond_15
    const v3, -0x3b9ac9ff

    if-lt v1, v3, :cond_34

    const v3, 0x3b9ac9ff

    if-gt v1, v3, :cond_34

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/LocalDate;->getYear()I

    move-result v3

    if-lt v1, v3, :cond_34

    invoke-static {v1, v2, v2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Ljj$/time/chrono/JapaneseEra;->from(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseEra;

    move-result-object v2

    if-ne p1, v2, :cond_34

    return v1

    :cond_34
    new-instance v2, Ljj$/time/DateTimeException;

    const-string v3, "Invalid yearOfEra value"

    invoke-direct {v2, v3}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3c
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;
    .registers 9

    sget-object v0, Ljj$/time/chrono/JapaneseChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_10  #0x8
    sget-object v0, Ljj$/time/chrono/JapaneseEra;->MEIJI:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->getCurrentEra()Ljj$/time/chrono/JapaneseEra;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_25  #0x7
    sget-object v0, Ljj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_34  #0x6
    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->shortestDaysOfYear()J

    move-result-wide v3

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_49  #0x5
    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->getCurrentEra()Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->shortestYearsOfEra()J

    move-result-wide v3

    const v1, 0x3b9ac9ff

    sub-int/2addr v1, v0

    int-to-long v5, v1

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_65  #0x1, 0x2, 0x3, 0x4
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

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_65  #00000002
        :pswitch_65  #00000003
        :pswitch_65  #00000004
        :pswitch_49  #00000005
        :pswitch_34  #00000006
        :pswitch_25  #00000007
        :pswitch_10  #00000008
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method resolveYearOfEra(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 11

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    sget-object v2, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v2

    invoke-virtual {p0, v2}, Ljj$/time/chrono/JapaneseChronology;->eraOf(I)Ljj$/time/chrono/JapaneseEra;

    move-result-object v1

    :cond_1f
    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v3

    :cond_3a
    if-nez v1, :cond_57

    if-eqz v2, :cond_57

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    sget-object v4, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-eq p2, v4, :cond_57

    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->values()[Ljj$/time/chrono/JapaneseEra;

    move-result-object v4

    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->values()[Ljj$/time/chrono/JapaneseEra;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v4, v5

    :cond_57
    if-eqz v2, :cond_7d

    if-eqz v1, :cond_7d

    sget-object v4, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-direct {p0, v1, v3, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->resolveYMD(Ljj$/time/chrono/JapaneseEra;ILjava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_70
    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-direct {p0, v1, v3, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->resolveYD(Ljj$/time/chrono/JapaneseEra;ILjava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_7d
    const/4 v4, 0x0

    return-object v4
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljj$/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/AbstractChronology;->zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
