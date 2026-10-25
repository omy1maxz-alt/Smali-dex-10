.class Ljj$/time/temporal/WeekFields$ComputedDayOfField;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljj$/time/temporal/TemporalField;


# static fields
.field private static final DAY_OF_WEEK_RANGE:Ljj$/time/temporal/ValueRange;

.field private static final WEEK_OF_MONTH_RANGE:Ljj$/time/temporal/ValueRange;

.field private static final WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljj$/time/temporal/ValueRange;

.field private static final WEEK_OF_YEAR_RANGE:Ljj$/time/temporal/ValueRange;


# instance fields
.field private final baseUnit:Ljj$/time/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Ljj$/time/temporal/ValueRange;

.field private final rangeUnit:Ljj$/time/temporal/TemporalUnit;

.field private final weekDef:Ljj$/time/temporal/WeekFields;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljj$/time/temporal/ValueRange;

    const-wide/16 v5, 0x4

    const-wide/16 v7, 0x6

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-static/range {v1 .. v8}, Ljj$/time/temporal/ValueRange;->of(JJJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljj$/time/temporal/ValueRange;

    const-wide/16 v5, 0x34

    const-wide/16 v7, 0x36

    invoke-static/range {v1 .. v8}, Ljj$/time/temporal/ValueRange;->of(JJJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljj$/time/temporal/ValueRange;

    const-wide/16 v3, 0x34

    const-wide/16 v5, 0x35

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljj$/time/temporal/ValueRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljj$/time/temporal/WeekFields;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    iput-object p2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    iput-object p3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    iput-object p4, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    iput-object p5, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->range:Ljj$/time/temporal/ValueRange;

    return-void
.end method

.method private computeWeek(II)I
    .registers 5

    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private localizedDayOfWeek(I)I
    .registers 5

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v0}, Ljj$/time/temporal/WeekFields;->getFirstDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    sub-int v1, p1, v0

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I
    .registers 6

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v0}, Ljj$/time/temporal/WeekFields;->getFirstDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    sub-int v2, v1, v0

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private localizedWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)I
    .registers 11

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v2

    invoke-direct {p0, v2, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v3

    invoke-direct {p0, v3, v2}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    if-nez v4, :cond_1d

    add-int/lit8 v5, v1, -0x1

    return v5

    :cond_1d
    sget-object v5, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljj$/time/temporal/TemporalAccessor;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v5}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    long-to-int v7, v6

    iget-object v6, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v6}, Ljj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v6

    add-int/2addr v6, v7

    invoke-direct {p0, v3, v6}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    if-lt v4, v6, :cond_38

    add-int/lit8 v8, v1, 0x1

    return v8

    :cond_38
    return v1
.end method

.method private localizedWeekOfMonth(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 7

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    invoke-direct {p0, v2, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method private localizedWeekOfWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)I
    .registers 10

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    invoke-direct {p0, v2, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    if-nez v3, :cond_28

    invoke-static {p1}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    int-to-long v5, v1

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v4, v5, v6, v7}, Ljj$/time/chrono/ChronoLocalDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-direct {p0, v4}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v5

    return v5

    :cond_28
    const/16 v4, 0x32

    if-le v3, v4, :cond_48

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljj$/time/temporal/TemporalAccessor;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v6, v5

    iget-object v5, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v5}, Ljj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v5

    add-int/2addr v5, v6

    invoke-direct {p0, v2, v5}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    if-lt v3, v5, :cond_48

    sub-int v7, v3, v5

    add-int/lit8 v3, v7, 0x1

    :cond_48
    return v3
.end method

.method private localizedWeekOfYear(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 7

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    invoke-direct {p0, v2, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method static ofDayOfWeekField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7

    new-instance v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljj$/time/temporal/ValueRange;

    const-string v1, "DayOfWeek"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljj$/time/temporal/WeekFields;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private ofWeekBasedYear(Ljj$/time/chrono/Chronology;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 14

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Ljj$/time/chrono/Chronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v0

    invoke-interface {v1}, Ljj$/time/chrono/ChronoLocalDate;->lengthOfYear()I

    move-result v3

    iget-object v4, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v4}, Ljj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {p0, v0, v4}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    neg-int v5, v0

    add-int/lit8 v6, p4, -0x1

    add-int/2addr v5, v6

    add-int/lit8 v6, p3, -0x1

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    int-to-long v6, v5

    sget-object v8, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v6, v7, v8}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    return-object v6
.end method

.method static ofWeekBasedYearField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7

    new-instance v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v5

    const-string v1, "WeekBasedYear"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljj$/time/temporal/WeekFields;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfMonthField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7

    new-instance v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljj$/time/temporal/ValueRange;

    const-string v1, "WeekOfMonth"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljj$/time/temporal/WeekFields;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfWeekBasedYearField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7

    new-instance v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    sget-object v4, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    sget-object v5, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljj$/time/temporal/ValueRange;

    const-string v1, "WeekOfWeekBasedYear"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljj$/time/temporal/WeekFields;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfYearField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7

    new-instance v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljj$/time/temporal/ValueRange;

    const-string v1, "WeekOfYear"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljj$/time/temporal/WeekFields;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private rangeByWeek(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 10

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    invoke-interface {p1, p2}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v1

    invoke-interface {p1, p2}, Ljj$/time/temporal/TemporalAccessor;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-direct {p0, v1, v4}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-direct {p0, v1, v6}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    return-object v3
.end method

.method private rangeWeekOfWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 13

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljj$/time/temporal/ValueRange;

    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    invoke-direct {p0, v2, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    if-nez v3, :cond_35

    invoke-static {p1}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v4, p1}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    add-int/lit8 v5, v1, 0x7

    int-to-long v5, v5

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v4, v5, v6, v7}, Ljj$/time/chrono/ChronoLocalDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-direct {p0, v4}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v5

    return-object v5

    :cond_35
    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljj$/time/temporal/TemporalAccessor;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    long-to-int v6, v5

    iget-object v5, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v5}, Ljj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v5

    add-int/2addr v5, v6

    invoke-direct {p0, v2, v5}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    if-lt v3, v5, :cond_67

    invoke-static {p1}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v7

    invoke-interface {v7, p1}, Ljj$/time/chrono/Chronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v7

    sub-int v8, v6, v1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x7

    int-to-long v8, v8

    sget-object v10, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v7

    invoke-direct {p0, v7}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v8

    return-object v8

    :cond_67
    add-int/lit8 v7, v5, -0x1

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    invoke-static {v9, v10, v7, v8}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v7

    return-object v7
.end method

.method private resolveWBY(Ljava/util/Map;Ljj$/time/chrono/Chronology;ILjj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 12

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v0}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v0

    invoke-interface {v0}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v1}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v3}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne p4, v1, :cond_4a

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p3}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljj$/time/chrono/Chronology;III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v2}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v4, v5, v6}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    goto :goto_86

    :cond_4a
    iget-object v1, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v1}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v1

    invoke-interface {v1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v2}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v4}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-direct {p0, p2, v0, v1, p3}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljj$/time/chrono/Chronology;III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v3, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne p4, v3, :cond_85

    invoke-direct {p0, v2}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v3

    if-ne v3, v0, :cond_7d

    goto :goto_85

    :cond_7d
    new-instance v3, Ljj$/time/DateTimeException;

    const-string v4, "Strict mode rejected resolved date as it is in a different week-based-year"

    invoke-direct {v3, v4}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_85
    :goto_85
    move-object v1, v2

    :goto_86
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v2}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v2}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private resolveWoM(Ljava/util/Map;Ljj$/time/chrono/Chronology;IJJILjj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p9

    sget-object v9, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_43

    invoke-interface {v2, v3, v10, v10}, Ljj$/time/chrono/Chronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    const-wide/16 v10, 0x1

    invoke-static {v4, v5, v10, v11}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v10

    sget-object v12, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v12}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    invoke-direct {v0, v9}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v10

    invoke-direct {v0, v9}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v12

    sub-int v12, p8, v12

    const/4 v13, 0x7

    invoke-static {v10, v11, v13}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v13

    move-wide v15, v10

    int-to-long v10, v12

    invoke-static {v13, v14, v10, v11}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v10

    sget-object v13, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v13}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v9

    goto :goto_82

    :cond_43
    sget-object v9, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v9, v4, v5}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    invoke-interface {v2, v3, v9, v10}, Ljj$/time/chrono/Chronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v10

    iget-object v11, v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->range:Ljj$/time/temporal/ValueRange;

    invoke-virtual {v11, v6, v7, v0}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v11

    int-to-long v12, v11

    invoke-direct {v0, v10}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-int v13, v12

    invoke-direct {v0, v10}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v12

    sub-int v12, p8, v12

    mul-int/lit8 v14, v13, 0x7

    add-int/2addr v14, v12

    int-to-long v14, v14

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v10, v14, v15, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v10, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne v8, v10, :cond_81

    sget-object v10, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v10}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v14

    cmp-long v10, v14, v4

    if-nez v10, :cond_79

    goto :goto_81

    :cond_79
    new-instance v10, Ljj$/time/DateTimeException;

    const-string v14, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v10, v14}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_81
    :goto_81
    move-object v9, v2

    :goto_82
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9
.end method

.method private resolveWoY(Ljava/util/Map;Ljj$/time/chrono/Chronology;IJILjj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p7

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-interface {v7, v2, v6, v6}, Ljj$/time/chrono/Chronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    sget-object v8, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne v5, v8, :cond_34

    invoke-direct {v0, v6}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v8

    invoke-direct {v0, v6}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v10

    sub-int v10, p6, v10

    const/4 v11, 0x7

    invoke-static {v8, v9, v11}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v11

    int-to-long v13, v10

    invoke-static {v11, v12, v13, v14}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    sget-object v13, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v6, v11, v12, v13}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    goto :goto_69

    :cond_34
    iget-object v8, v0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->range:Ljj$/time/temporal/ValueRange;

    invoke-virtual {v8, v3, v4, v0}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v8

    int-to-long v9, v8

    invoke-direct {v0, v6}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v10, v9

    invoke-direct {v0, v6}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v9

    sub-int v9, p6, v9

    mul-int/lit8 v11, v10, 0x7

    add-int/2addr v11, v9

    int-to-long v11, v11

    sget-object v13, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v6, v11, v12, v13}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    sget-object v11, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne v5, v11, :cond_69

    sget-object v11, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v6, v11}, Ljj$/time/chrono/ChronoLocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v11

    int-to-long v13, v2

    cmp-long v15, v11, v13

    if-nez v15, :cond_61

    goto :goto_69

    :cond_61
    new-instance v11, Ljj$/time/DateTimeException;

    const-string v12, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v11, v12}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_69
    :goto_69
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method private startOfWeekOffset(II)I
    .registers 7

    sub-int v0, p1, p2

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    neg-int v1, v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v3}, Ljj$/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-le v2, v3, :cond_14

    rsub-int/lit8 v1, v0, 0x7

    :cond_14
    return v1
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 10

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->range:Ljj$/time/temporal/ValueRange;

    invoke-virtual {v0, p2, p3, p0}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, p0}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    if-ne v0, v1, :cond_d

    return-object p1

    :cond_d
    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_31

    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v2}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetdayOfWeek(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v2

    invoke-interface {p1, v2}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v2

    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v3}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v3

    invoke-interface {p1, v3}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v3

    invoke-static {p1}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v4

    long-to-int v5, p2

    invoke-direct {p0, v4, v5, v3, v2}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljj$/time/chrono/Chronology;III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_31
    sub-int v2, v0, v1

    int-to-long v2, v2

    iget-object v4, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    const-string v0, "locale"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_e

    const-string v0, "Week"

    return-object v0

    :cond_e
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 6

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_c
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_17

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :cond_17
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_22

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :cond_22
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_2e

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_2e
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_3a

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unreachable, rangeUnit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1d

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_1d
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2a

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_2a
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_37

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_37
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_44

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public range()Ljj$/time/temporal/ValueRange;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->range:Ljj$/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 6

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->range:Ljj$/time/temporal/ValueRange;

    return-object v0

    :cond_9
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_16

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_16
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_23

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_23
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_2e

    invoke-direct {p0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_2e
    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_3b

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unreachable, rangeUnit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 18

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v12

    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->range:Ljj$/time/temporal/ValueRange;

    invoke-virtual {v2, v10, v11, p0}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v2

    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v3}, Ljj$/time/temporal/WeekFields;->getFirstDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-static {v5, v6}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_3f
    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    return-object v4

    :cond_48
    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v13

    invoke-direct {p0, v13}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v2

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    iget-object v5, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-ne v5, v7, :cond_a1

    sget-object v5, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    sget-object v4, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v8, v6

    int-to-long v6, v12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->resolveWoM(Ljava/util/Map;Ljj$/time/chrono/Chronology;IJJILjj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v6

    return-object v6

    :cond_a1
    move v8, v6

    iget-object v1, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne v1, v5, :cond_b3

    int-to-long v4, v12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p3

    move v6, v8

    invoke-direct/range {v0 .. v7}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->resolveWoY(Ljava/util/Map;Ljj$/time/chrono/Chronology;IJILjj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    :cond_b3
    goto :goto_c2

    :cond_b4
    move v8, v6

    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v5, Ljj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    if-eq v3, v5, :cond_c5

    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    if-ne v3, v5, :cond_c2

    goto :goto_c5

    :cond_c2
    :goto_c2
    move-object/from16 v7, p3

    goto :goto_e9

    :cond_c5
    :goto_c5
    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v3}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    iget-object v3, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-static {v3}, Ljj$/time/temporal/WeekFields;->-$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    move-object/from16 v7, p3

    invoke-direct {p0, p1, v2, v8, v7}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->resolveWBY(Ljava/util/Map;Ljj$/time/chrono/Chronology;ILjj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    :cond_e4
    move-object/from16 v7, p3

    goto :goto_e9

    :cond_e7
    move-object/from16 v7, p3

    :goto_e9
    return-object v4
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    iget-object v1, p0, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljj$/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljj$/time/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
