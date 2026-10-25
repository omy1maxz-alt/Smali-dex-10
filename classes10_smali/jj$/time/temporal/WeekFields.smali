.class public final Ljj$/time/temporal/WeekFields;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;

.field public static final ISO:Ljj$/time/temporal/WeekFields;

.field public static final SUNDAY_START:Ljj$/time/temporal/WeekFields;

.field public static final WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

.field private static final serialVersionUID:J = -0x1056d36d74f0f639L


# instance fields
.field private final transient dayOfWeek:Ljj$/time/temporal/TemporalField;

.field private final firstDayOfWeek:Ljj$/time/DayOfWeek;

.field private final minimalDays:I

.field private final transient weekBasedYear:Ljj$/time/temporal/TemporalField;

.field private final transient weekOfMonth:Ljj$/time/temporal/TemporalField;

.field private final transient weekOfWeekBasedYear:Ljj$/time/temporal/TemporalField;

.field private final transient weekOfYear:Ljj$/time/temporal/TemporalField;


# direct methods
.method static bridge synthetic -$$Nest$fgetdayOfWeek(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;
    .registers 1

    iget-object p0, p0, Ljj$/time/temporal/WeekFields;->dayOfWeek:Ljj$/time/temporal/TemporalField;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetweekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;
    .registers 1

    iget-object p0, p0, Ljj$/time/temporal/WeekFields;->weekBasedYear:Ljj$/time/temporal/TemporalField;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetweekOfWeekBasedYear(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/TemporalField;
    .registers 1

    iget-object p0, p0, Ljj$/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljj$/time/temporal/TemporalField;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000  # 0.75f

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljj$/time/temporal/WeekFields;

    sget-object v1, Ljj$/time/DayOfWeek;->MONDAY:Ljj$/time/DayOfWeek;

    invoke-direct {v0, v1, v3}, Ljj$/time/temporal/WeekFields;-><init>(Ljj$/time/DayOfWeek;I)V

    sput-object v0, Ljj$/time/temporal/WeekFields;->ISO:Ljj$/time/temporal/WeekFields;

    sget-object v0, Ljj$/time/DayOfWeek;->SUNDAY:Ljj$/time/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljj$/time/temporal/WeekFields;->of(Ljj$/time/DayOfWeek;I)Ljj$/time/temporal/WeekFields;

    move-result-object v0

    sput-object v0, Ljj$/time/temporal/WeekFields;->SUNDAY_START:Ljj$/time/temporal/WeekFields;

    sget-object v0, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    sput-object v0, Ljj$/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>(Ljj$/time/DayOfWeek;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofDayOfWeekField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/temporal/WeekFields;->dayOfWeek:Ljj$/time/temporal/TemporalField;

    invoke-static {p0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfMonthField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/temporal/WeekFields;->weekOfMonth:Ljj$/time/temporal/TemporalField;

    invoke-static {p0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfYearField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/temporal/WeekFields;->weekOfYear:Ljj$/time/temporal/TemporalField;

    invoke-static {p0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfWeekBasedYearField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljj$/time/temporal/TemporalField;

    invoke-static {p0}, Ljj$/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYearField(Ljj$/time/temporal/WeekFields;)Ljj$/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/temporal/WeekFields;->weekBasedYear:Ljj$/time/temporal/TemporalField;

    const-string v0, "firstDayOfWeek"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_31

    const/4 v0, 0x7

    if-gt p2, v0, :cond_31

    iput-object p1, p0, Ljj$/time/temporal/WeekFields;->firstDayOfWeek:Ljj$/time/DayOfWeek;

    iput p2, p0, Ljj$/time/temporal/WeekFields;->minimalDays:I

    return-void

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/util/Locale;)Ljj$/time/temporal/WeekFields;
    .registers 6

    const-string v0, "locale"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sget-object v2, Ljj$/time/DayOfWeek;->SUNDAY:Ljj$/time/DayOfWeek;

    add-int/lit8 v3, v1, -0x1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljj$/time/DayOfWeek;->plus(J)Ljj$/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    invoke-static {v2, v3}, Ljj$/time/temporal/WeekFields;->of(Ljj$/time/DayOfWeek;I)Ljj$/time/temporal/WeekFields;

    move-result-object v4

    return-object v4
.end method

.method public static of(Ljj$/time/DayOfWeek;I)Ljj$/time/temporal/WeekFields;
    .registers 5

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/temporal/WeekFields;

    if-nez v1, :cond_31

    new-instance v2, Ljj$/time/temporal/WeekFields;

    invoke-direct {v2, p0, p1}, Ljj$/time/temporal/WeekFields;-><init>(Ljj$/time/DayOfWeek;I)V

    sget-object v1, Ljj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljj$/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/temporal/WeekFields;

    :cond_31
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->firstDayOfWeek:Ljj$/time/DayOfWeek;

    if-eqz v0, :cond_1a

    iget v0, p0, Ljj$/time/temporal/WeekFields;->minimalDays:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    iget v0, p0, Ljj$/time/temporal/WeekFields;->minimalDays:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_12

    return-void

    :cond_12
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "firstDayOfWeek is null"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 6

    :try_start_0
    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->firstDayOfWeek:Ljj$/time/DayOfWeek;

    iget v1, p0, Ljj$/time/temporal/WeekFields;->minimalDays:I

    invoke-static {v0, v1}, Ljj$/time/temporal/WeekFields;->of(Ljj$/time/DayOfWeek;I)Ljj$/time/temporal/WeekFields;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid serialized WeekFields: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dayOfWeek()Ljj$/time/temporal/TemporalField;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->dayOfWeek:Ljj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/temporal/WeekFields;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Ljj$/time/temporal/WeekFields;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    return v2
.end method

.method public getFirstDayOfWeek()Ljj$/time/DayOfWeek;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->firstDayOfWeek:Ljj$/time/DayOfWeek;

    return-object v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .registers 2

    iget v0, p0, Ljj$/time/temporal/WeekFields;->minimalDays:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->firstDayOfWeek:Ljj$/time/DayOfWeek;

    invoke-virtual {v0}, Ljj$/time/DayOfWeek;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Ljj$/time/temporal/WeekFields;->minimalDays:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->firstDayOfWeek:Ljj$/time/DayOfWeek;

    iget v1, p0, Ljj$/time/temporal/WeekFields;->minimalDays:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeekFields["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weekBasedYear()Ljj$/time/temporal/TemporalField;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->weekBasedYear:Ljj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfMonth()Ljj$/time/temporal/TemporalField;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->weekOfMonth:Ljj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfWeekBasedYear()Ljj$/time/temporal/TemporalField;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljj$/time/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfYear()Ljj$/time/temporal/TemporalField;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/WeekFields;->weekOfYear:Ljj$/time/temporal/TemporalField;

    return-object v0
.end method
