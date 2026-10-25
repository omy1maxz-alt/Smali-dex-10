.class public final enum Ljj$/time/DayOfWeek;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAccessor;
.implements Ljj$/time/temporal/TemporalAdjuster;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/DayOfWeek;

.field private static final ENUMS:[Ljj$/time/DayOfWeek;

.field public static final enum FRIDAY:Ljj$/time/DayOfWeek;

.field public static final enum MONDAY:Ljj$/time/DayOfWeek;

.field public static final enum SATURDAY:Ljj$/time/DayOfWeek;

.field public static final enum SUNDAY:Ljj$/time/DayOfWeek;

.field public static final enum THURSDAY:Ljj$/time/DayOfWeek;

.field public static final enum TUESDAY:Ljj$/time/DayOfWeek;

.field public static final enum WEDNESDAY:Ljj$/time/DayOfWeek;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljj$/time/DayOfWeek;

    const-string v1, "MONDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/DayOfWeek;->MONDAY:Ljj$/time/DayOfWeek;

    new-instance v0, Ljj$/time/DayOfWeek;

    const-string v1, "TUESDAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/DayOfWeek;->TUESDAY:Ljj$/time/DayOfWeek;

    new-instance v0, Ljj$/time/DayOfWeek;

    const-string v1, "WEDNESDAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/DayOfWeek;->WEDNESDAY:Ljj$/time/DayOfWeek;

    new-instance v0, Ljj$/time/DayOfWeek;

    const-string v1, "THURSDAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/DayOfWeek;->THURSDAY:Ljj$/time/DayOfWeek;

    new-instance v0, Ljj$/time/DayOfWeek;

    const-string v1, "FRIDAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljj$/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/DayOfWeek;->FRIDAY:Ljj$/time/DayOfWeek;

    new-instance v0, Ljj$/time/DayOfWeek;

    const-string v1, "SATURDAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljj$/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/DayOfWeek;->SATURDAY:Ljj$/time/DayOfWeek;

    new-instance v0, Ljj$/time/DayOfWeek;

    const-string v1, "SUNDAY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljj$/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/DayOfWeek;->SUNDAY:Ljj$/time/DayOfWeek;

    const/4 v0, 0x7

    new-array v0, v0, [Ljj$/time/DayOfWeek;

    sget-object v1, Ljj$/time/DayOfWeek;->MONDAY:Ljj$/time/DayOfWeek;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/DayOfWeek;->TUESDAY:Ljj$/time/DayOfWeek;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/DayOfWeek;->WEDNESDAY:Ljj$/time/DayOfWeek;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/time/DayOfWeek;->THURSDAY:Ljj$/time/DayOfWeek;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/time/DayOfWeek;->FRIDAY:Ljj$/time/DayOfWeek;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/time/DayOfWeek;->SATURDAY:Ljj$/time/DayOfWeek;

    aput-object v1, v0, v7

    sget-object v1, Ljj$/time/DayOfWeek;->SUNDAY:Ljj$/time/DayOfWeek;

    aput-object v1, v0, v8

    sput-object v0, Ljj$/time/DayOfWeek;->$VALUES:[Ljj$/time/DayOfWeek;

    invoke-static {}, Ljj$/time/DayOfWeek;->values()[Ljj$/time/DayOfWeek;

    move-result-object v0

    sput-object v0, Ljj$/time/DayOfWeek;->ENUMS:[Ljj$/time/DayOfWeek;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/DayOfWeek;
    .registers 6

    instance-of v0, p0, Ljj$/time/DayOfWeek;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/DayOfWeek;

    return-object v0

    :cond_8
    :try_start_8
    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljj$/time/DayOfWeek;->of(I)Ljj$/time/DayOfWeek;

    move-result-object v0
    :try_end_12
    .catch Ljj$/time/DateTimeException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain DayOfWeek from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(I)Ljj$/time/DayOfWeek;
    .registers 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_d

    const/4 v0, 0x7

    if-gt p0, v0, :cond_d

    sget-object v0, Ljj$/time/DayOfWeek;->ENUMS:[Ljj$/time/DayOfWeek;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_d
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for DayOfWeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/DayOfWeek;
    .registers 2

    const-class v0, Ljj$/time/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/DayOfWeek;

    return-object v0
.end method

.method public static values()[Ljj$/time/DayOfWeek;
    .registers 1

    sget-object v0, Ljj$/time/DayOfWeek;->$VALUES:[Ljj$/time/DayOfWeek;

    invoke-virtual {v0}, [Ljj$/time/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljj$/time/temporal/TemporalField;)I
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getDisplayName(Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->getValue()I

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

.method public getValue()I
    .registers 2

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

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

.method public minus(J)Ljj$/time/DayOfWeek;
    .registers 5

    const-wide/16 v0, 0x7

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/DayOfWeek;->plus(J)Ljj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public plus(J)Ljj$/time/DayOfWeek;
    .registers 7

    const-wide/16 v0, 0x7

    rem-long v0, p1, v0

    long-to-int v1, v0

    sget-object v0, Ljj$/time/DayOfWeek;->ENUMS:[Ljj$/time/DayOfWeek;

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->ordinal()I

    move-result v2

    add-int/lit8 v3, v1, 0x7

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x7

    aget-object v0, v0, v2

    return-object v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$query(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
