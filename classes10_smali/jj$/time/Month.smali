.class public final enum Ljj$/time/Month;
.super Ljava/lang/Enum;
.source "Month.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAccessor;
.implements Ljj$/time/temporal/TemporalAdjuster;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/Month;

.field public static final enum APRIL:Ljj$/time/Month;

.field public static final enum AUGUST:Ljj$/time/Month;

.field public static final enum DECEMBER:Ljj$/time/Month;

.field private static final ENUMS:[Ljj$/time/Month;

.field public static final enum FEBRUARY:Ljj$/time/Month;

.field public static final enum JANUARY:Ljj$/time/Month;

.field public static final enum JULY:Ljj$/time/Month;

.field public static final enum JUNE:Ljj$/time/Month;

.field public static final enum MARCH:Ljj$/time/Month;

.field public static final enum MAY:Ljj$/time/Month;

.field public static final enum NOVEMBER:Ljj$/time/Month;

.field public static final enum OCTOBER:Ljj$/time/Month;

.field public static final enum SEPTEMBER:Ljj$/time/Month;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Ljj$/time/Month;

    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->JANUARY:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "FEBRUARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->FEBRUARY:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "MARCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->MARCH:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "APRIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->APRIL:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "MAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->MAY:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "JUNE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->JUNE:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "JULY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->JULY:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "AUGUST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->AUGUST:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "SEPTEMBER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->SEPTEMBER:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "OCTOBER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->OCTOBER:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "NOVEMBER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->NOVEMBER:Ljj$/time/Month;

    new-instance v0, Ljj$/time/Month;

    const-string v1, "DECEMBER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Ljj$/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/Month;->DECEMBER:Ljj$/time/Month;

    const/16 v0, 0xc

    new-array v0, v0, [Ljj$/time/Month;

    sget-object v1, Ljj$/time/Month;->JANUARY:Ljj$/time/Month;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/Month;->FEBRUARY:Ljj$/time/Month;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/Month;->MARCH:Ljj$/time/Month;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/time/Month;->APRIL:Ljj$/time/Month;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/time/Month;->MAY:Ljj$/time/Month;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/time/Month;->JUNE:Ljj$/time/Month;

    aput-object v1, v0, v7

    sget-object v1, Ljj$/time/Month;->JULY:Ljj$/time/Month;

    aput-object v1, v0, v8

    sget-object v1, Ljj$/time/Month;->AUGUST:Ljj$/time/Month;

    aput-object v1, v0, v9

    sget-object v1, Ljj$/time/Month;->SEPTEMBER:Ljj$/time/Month;

    aput-object v1, v0, v10

    sget-object v1, Ljj$/time/Month;->OCTOBER:Ljj$/time/Month;

    aput-object v1, v0, v11

    sget-object v1, Ljj$/time/Month;->NOVEMBER:Ljj$/time/Month;

    aput-object v1, v0, v12

    sget-object v1, Ljj$/time/Month;->DECEMBER:Ljj$/time/Month;

    aput-object v1, v0, v13

    sput-object v0, Ljj$/time/Month;->$VALUES:[Ljj$/time/Month;

    invoke-static {}, Ljj$/time/Month;->values()[Ljj$/time/Month;

    move-result-object v0

    sput-object v0, Ljj$/time/Month;->ENUMS:[Ljj$/time/Month;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Month;
    .registers 6

    instance-of v0, p0, Ljj$/time/Month;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/Month;

    return-object v0

    :cond_8
    :try_start_8
    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-static {p0}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    :cond_19
    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v0
    :try_end_23
    .catch Ljj$/time/DateTimeException; {:try_start_8 .. :try_end_23} :catch_24

    return-object v0

    :catch_24
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain Month from TemporalAccessor: "

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

.method public static of(I)Ljj$/time/Month;
    .registers 4

    const/4 v0, 0x1

    if-lt p0, v0, :cond_e

    const/16 v0, 0xc

    if-gt p0, v0, :cond_e

    sget-object v0, Ljj$/time/Month;->ENUMS:[Ljj$/time/Month;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_e
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for MonthOfYear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/Month;
    .registers 2

    const-class v0, Ljj$/time/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/Month;

    return-object v0
.end method

.method public static values()[Ljj$/time/Month;
    .registers 1

    sget-object v0, Ljj$/time/Month;->$VALUES:[Ljj$/time/Month;

    invoke-virtual {v0}, [Ljj$/time/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/Month;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    invoke-static {p1}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljj$/time/Month;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public firstDayOfYear(Z)I
    .registers 5

    move v0, p1

    sget-object v1, Ljj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Ljj$/time/Month;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    add-int/lit16 v1, v0, 0x14f

    return v1

    :pswitch_f  #0xb
    add-int/lit16 v1, v0, 0x112

    return v1

    :pswitch_12  #0xa
    add-int/lit16 v1, v0, 0xd5

    return v1

    :pswitch_15  #0x9
    add-int/lit16 v1, v0, 0xb6

    return v1

    :pswitch_18  #0x8
    add-int/lit8 v1, v0, 0x79

    return v1

    :pswitch_1b  #0x7
    add-int/lit8 v1, v0, 0x3c

    return v1

    :pswitch_1e  #0x6
    const/4 v1, 0x1

    return v1

    :pswitch_20  #0x5
    add-int/lit16 v1, v0, 0x131

    return v1

    :pswitch_23  #0x4
    add-int/lit16 v1, v0, 0xf4

    return v1

    :pswitch_26  #0x3
    add-int/lit16 v1, v0, 0x98

    return v1

    :pswitch_29  #0x2
    add-int/lit8 v1, v0, 0x5b

    return v1

    :pswitch_2c  #0x1
    const/16 v1, 0x20

    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_1e  #00000006
        :pswitch_1b  #00000007
        :pswitch_18  #00000008
        :pswitch_15  #00000009
        :pswitch_12  #0000000a
        :pswitch_f  #0000000b
    .end packed-switch
.end method

.method public firstMonthOfQuarter()Ljj$/time/Month;
    .registers 3

    sget-object v0, Ljj$/time/Month;->ENUMS:[Ljj$/time/Month;

    invoke-virtual {p0}, Ljj$/time/Month;->ordinal()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(Ljj$/time/temporal/TemporalField;)I
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Ljj$/time/Month;->getValue()I

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

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

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

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Ljj$/time/Month;->getValue()I

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

    invoke-virtual {p0}, Ljj$/time/Month;->ordinal()I

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

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

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

.method public length(Z)I
    .registers 4

    sget-object v0, Ljj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Ljj$/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    const/16 v0, 0x1f

    return v0

    :pswitch_e  #0x2, 0x3, 0x4, 0x5
    const/16 v0, 0x1e

    return v0

    :pswitch_11  #0x1
    if-eqz p1, :cond_16

    const/16 v0, 0x1d

    goto :goto_18

    :cond_16
    const/16 v0, 0x1c

    :goto_18
    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_e  #00000003
        :pswitch_e  #00000004
        :pswitch_e  #00000005
    .end packed-switch
.end method

.method public maxLength()I
    .registers 3

    sget-object v0, Ljj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Ljj$/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    const/16 v0, 0x1f

    return v0

    :pswitch_e  #0x2, 0x3, 0x4, 0x5
    const/16 v0, 0x1e

    return v0

    :pswitch_11  #0x1
    const/16 v0, 0x1d

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_e  #00000003
        :pswitch_e  #00000004
        :pswitch_e  #00000005
    .end packed-switch
.end method

.method public minLength()I
    .registers 3

    sget-object v0, Ljj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {p0}, Ljj$/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    const/16 v0, 0x1f

    return v0

    :pswitch_e  #0x2, 0x3, 0x4, 0x5
    const/16 v0, 0x1e

    return v0

    :pswitch_11  #0x1
    const/16 v0, 0x1c

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_e  #00000003
        :pswitch_e  #00000004
        :pswitch_e  #00000005
    .end packed-switch
.end method

.method public minus(J)Ljj$/time/Month;
    .registers 5

    const-wide/16 v0, 0xc

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Month;->plus(J)Ljj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public plus(J)Ljj$/time/Month;
    .registers 7

    const-wide/16 v0, 0xc

    rem-long v0, p1, v0

    long-to-int v1, v0

    sget-object v0, Ljj$/time/Month;->ENUMS:[Ljj$/time/Month;

    invoke-virtual {p0}, Ljj$/time/Month;->ordinal()I

    move-result v2

    add-int/lit8 v3, v1, 0xc

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0xc

    aget-object v0, v0, v2

    return-object v0
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-object v0

    :cond_9
    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->precision()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_12
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$query(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$range(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
