.class abstract enum Ljj$/time/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljj$/time/temporal/TemporalField;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/temporal/IsoFields$Field;

.field public static final enum DAY_OF_QUARTER:Ljj$/time/temporal/IsoFields$Field;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

.field public static final enum WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;


# direct methods
.method static bridge synthetic -$$Nest$sfgetQUARTER_DAYS()[I
    .registers 1

    sget-object v0, Ljj$/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smensureIso(Ljj$/time/temporal/TemporalAccessor;)V
    .registers 1

    invoke-static {p0}, Ljj$/time/temporal/IsoFields$Field;->ensureIso(Ljj$/time/temporal/TemporalAccessor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetWeek(Ljj$/time/LocalDate;)I
    .registers 1

    invoke-static {p0}, Ljj$/time/temporal/IsoFields$Field;->getWeek(Ljj$/time/LocalDate;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetWeekBasedYear(Ljj$/time/LocalDate;)I
    .registers 1

    invoke-static {p0}, Ljj$/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljj$/time/LocalDate;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetWeekRange(I)I
    .registers 1

    invoke-static {p0}, Ljj$/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetWeekRange(Ljj$/time/LocalDate;)Ljj$/time/temporal/ValueRange;
    .registers 1

    invoke-static {p0}, Ljj$/time/temporal/IsoFields$Field;->getWeekRange(Ljj$/time/LocalDate;)Ljj$/time/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljj$/time/temporal/IsoFields$Field$1;

    const-string v1, "DAY_OF_QUARTER"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;ILjj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Ljj$/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljj$/time/temporal/IsoFields$Field;

    new-instance v0, Ljj$/time/temporal/IsoFields$Field$2;

    const-string v1, "QUARTER_OF_YEAR"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Ljj$/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;ILjj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Ljj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    new-instance v0, Ljj$/time/temporal/IsoFields$Field$3;

    const-string v1, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Ljj$/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;ILjj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Ljj$/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    new-instance v0, Ljj$/time/temporal/IsoFields$Field$4;

    const-string v1, "WEEK_BASED_YEAR"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3}, Ljj$/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;ILjj$/time/temporal/IsoFields-IA;)V

    sput-object v0, Ljj$/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    const/4 v0, 0x4

    new-array v0, v0, [Ljj$/time/temporal/IsoFields$Field;

    sget-object v1, Ljj$/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    aput-object v1, v0, v6

    sput-object v0, Ljj$/time/temporal/IsoFields$Field;->$VALUES:[Ljj$/time/temporal/IsoFields$Field;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Ljj$/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    :array_48
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjj$/time/temporal/IsoFields-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureIso(Ljj$/time/temporal/TemporalAccessor;)V
    .registers 3

    invoke-static {p0}, Ljj$/time/temporal/IsoFields;->isIso(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Resolve requires IsoChronology"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getWeek(Ljj$/time/LocalDate;)I
    .registers 11

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/DayOfWeek;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    div-int/lit8 v4, v3, 0x7

    mul-int/lit8 v5, v4, 0x7

    sub-int v5, v3, v5

    add-int/lit8 v6, v5, -0x3

    const/4 v7, -0x3

    if-ge v6, v7, :cond_1e

    add-int/lit8 v6, v6, 0x7

    :cond_1e
    if-ge v1, v6, :cond_36

    const/16 v2, 0xb4

    invoke-virtual {p0, v2}, Ljj$/time/LocalDate;->withDayOfYear(I)Ljj$/time/LocalDate;

    move-result-object v2

    const-wide/16 v7, 0x1

    invoke-virtual {v2, v7, v8}, Ljj$/time/LocalDate;->minusYears(J)Ljj$/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Ljj$/time/temporal/IsoFields$Field;->getWeekRange(Ljj$/time/LocalDate;)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v7

    long-to-int v2, v7

    return v2

    :cond_36
    sub-int v8, v1, v6

    div-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v2

    const/16 v9, 0x35

    if-ne v8, v9, :cond_4f

    if-eq v6, v7, :cond_4c

    const/4 v7, -0x2

    if-ne v6, v7, :cond_4b

    invoke-virtual {p0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v7

    if-eqz v7, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :cond_4c
    :goto_4c
    if-nez v2, :cond_4f

    const/4 v8, 0x1

    :cond_4f
    return v8
.end method

.method private static getWeekBasedYear(Ljj$/time/LocalDate;)I
    .registers 6

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1b

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/DayOfWeek;->ordinal()I

    move-result v2

    sub-int v3, v1, v2

    const/4 v4, -0x2

    if-ge v3, v4, :cond_36

    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_1b
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_36

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/DayOfWeek;->ordinal()I

    move-result v2

    add-int/lit16 v3, v1, -0x16b

    invoke-virtual {p0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v4

    sub-int v1, v3, v4

    sub-int v3, v1, v2

    if-ltz v3, :cond_37

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_36
    :goto_36
    nop

    :cond_37
    :goto_37
    return v0
.end method

.method private static getWeekRange(I)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Ljj$/time/DayOfWeek;->THURSDAY:Ljj$/time/DayOfWeek;

    if-eq v1, v2, :cond_1f

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Ljj$/time/DayOfWeek;->WEDNESDAY:Ljj$/time/DayOfWeek;

    if-ne v1, v2, :cond_1c

    invoke-virtual {v0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1f

    :cond_1c
    const/16 v1, 0x34

    return v1

    :cond_1f
    :goto_1f
    const/16 v1, 0x35

    return v1
.end method

.method private static getWeekRange(Ljj$/time/LocalDate;)Ljj$/time/temporal/ValueRange;
    .registers 6

    invoke-static {p0}, Ljj$/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljj$/time/LocalDate;)I

    move-result v0

    invoke-static {v0}, Ljj$/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/temporal/IsoFields$Field;
    .registers 2

    const-class v0, Ljj$/time/temporal/IsoFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/temporal/IsoFields$Field;

    return-object v0
.end method

.method public static values()[Ljj$/time/temporal/IsoFields$Field;
    .registers 1

    sget-object v0, Ljj$/time/temporal/IsoFields$Field;->$VALUES:[Ljj$/time/temporal/IsoFields$Field;

    invoke-virtual {v0}, [Ljj$/time/temporal/IsoFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public synthetic getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalField$-CC;->$default$getDisplayName(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDateBased()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Field;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/temporal/TemporalField$-CC;->$default$resolve(Ljj$/time/temporal/TemporalField;Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method
