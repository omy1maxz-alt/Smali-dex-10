.class public final Ljj$/time/LocalDate;
.super Ljava/lang/Object;
.source "LocalDate.java"

# interfaces
.implements Ljj$/time/temporal/Temporal;
.implements Ljj$/time/temporal/TemporalAdjuster;
.implements Ljj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field static final DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field public static final EPOCH:Ljj$/time/LocalDate;

.field public static final MAX:Ljj$/time/LocalDate;

.field public static final MIN:Ljj$/time/LocalDate;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljj$/time/LocalDate;->MIN:Ljj$/time/LocalDate;

    const/16 v0, 0xc

    const/16 v2, 0x1f

    const v3, 0x3b9ac9ff

    invoke-static {v3, v0, v2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljj$/time/LocalDate;->MAX:Ljj$/time/LocalDate;

    const/16 v0, 0x7b2

    invoke-static {v0, v1, v1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljj$/time/LocalDate;->EPOCH:Ljj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/LocalDate;->year:I

    int-to-short v0, p2

    iput-short v0, p0, Ljj$/time/LocalDate;->month:S

    int-to-short v0, p3

    iput-short v0, p0, Ljj$/time/LocalDate;->day:S

    return-void
.end method

.method private static create(III)Ljj$/time/LocalDate;
    .registers 9

    const/16 v0, 0x1c

    if-le p2, v0, :cond_70

    const/16 v1, 0x1f

    const/16 v2, 0x1d

    sparse-switch p1, :sswitch_data_76

    goto :goto_1c

    :sswitch_c
    const/16 v1, 0x1e

    goto :goto_1c

    :sswitch_f
    sget-object v3, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v0, 0x1d

    :cond_1a
    move v1, v0

    nop

    :goto_1c
    if-le p2, v1, :cond_70

    if-ne p2, v2, :cond_3f

    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'February 29\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Ljj$/time/DateTimeException;

    invoke-static {p1}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid date \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    new-instance v0, Ljj$/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v0

    :sswitch_data_76
    .sparse-switch
        0x2 -> :sswitch_f
        0x4 -> :sswitch_c
        0x6 -> :sswitch_c
        0x9 -> :sswitch_c
        0xb -> :sswitch_c
    .end sparse-switch
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;
    .registers 6

    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain LocalDate from TemporalAccessor: "

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

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private get0(Ljj$/time/temporal/TemporalField;)I
    .registers 5

    sget-object v0, Ljj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_82

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

    :pswitch_28  #0xd
    iget v0, p0, Ljj$/time/LocalDate;->year:I

    if-lt v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1

    :pswitch_2f  #0xc
    iget v0, p0, Ljj$/time/LocalDate;->year:I

    return v0

    :pswitch_32  #0xb
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3a  #0xa
    iget-short v0, p0, Ljj$/time/LocalDate;->month:S

    return v0

    :pswitch_3d  #0x9
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    :pswitch_46  #0x8
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4e  #0x7
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    :pswitch_57  #0x6
    iget-short v0, p0, Ljj$/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    :pswitch_5e  #0x5
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    :pswitch_67  #0x4
    iget v0, p0, Ljj$/time/LocalDate;->year:I

    if-lt v0, v1, :cond_6e

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    goto :goto_72

    :cond_6e
    iget v0, p0, Ljj$/time/LocalDate;->year:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_72
    return v0

    :pswitch_73  #0x3
    iget-short v0, p0, Ljj$/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    :pswitch_7a  #0x2
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0

    :pswitch_7f  #0x1
    iget-short v0, p0, Ljj$/time/LocalDate;->day:S

    return v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7f  #00000001
        :pswitch_7a  #00000002
        :pswitch_73  #00000003
        :pswitch_67  #00000004
        :pswitch_5e  #00000005
        :pswitch_57  #00000006
        :pswitch_4e  #00000007
        :pswitch_46  #00000008
        :pswitch_3d  #00000009
        :pswitch_3a  #0000000a
        :pswitch_32  #0000000b
        :pswitch_2f  #0000000c
        :pswitch_28  #0000000d
    .end packed-switch
.end method

.method private getProlepticMonth()J
    .registers 5

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Ljj$/time/LocalDate;->month:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic lambda$datesUntil$0(JJJ)Ljj$/time/LocalDate;
    .registers 8

    mul-long v0, p4, p2

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private monthsUntil(Ljj$/time/LocalDate;)J
    .registers 10

    invoke-direct {p0}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long v0, v0, v2

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    invoke-direct {p1}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v4

    mul-long v4, v4, v2

    invoke-virtual {p1}, Ljj$/time/LocalDate;->getDayOfMonth()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long v6, v4, v0

    div-long/2addr v6, v2

    return-wide v6
.end method

.method public static now()Ljj$/time/LocalDate;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/LocalDate;
    .registers 3

    const-string v0, "clock"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/Clock;->instant()Ljj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/Clock;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/LocalDate;->ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/LocalDate;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljj$/time/LocalDate;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->create(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(ILjj$/time/Month;I)Ljj$/time/LocalDate;
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    const-string v0, "month"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    invoke-virtual {p1}, Ljj$/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Ljj$/time/LocalDate;->create(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochDay(J)Ljj$/time/LocalDate;
    .registers 26

    move-wide/from16 v0, p0

    sget-object v2, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    const-wide/32 v2, 0xafaa8

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const-wide/32 v8, 0x23ab1

    const-wide/16 v10, 0x190

    const-wide/16 v12, 0x0

    cmp-long v14, v2, v12

    if-gez v14, :cond_2a

    add-long v14, v2, v6

    div-long/2addr v14, v8

    sub-long/2addr v14, v6

    mul-long v4, v14, v10

    move-wide/from16 v16, v6

    neg-long v6, v14

    mul-long v6, v6, v8

    add-long/2addr v2, v6

    goto :goto_2c

    :cond_2a
    move-wide/from16 v16, v6

    :goto_2c
    mul-long v6, v2, v10

    const-wide/16 v14, 0x24f

    add-long/2addr v6, v14

    div-long/2addr v6, v8

    const-wide/16 v8, 0x16d

    mul-long v14, v6, v8

    const-wide/16 v18, 0x4

    div-long v20, v6, v18

    add-long v14, v14, v20

    const-wide/16 v20, 0x64

    div-long v22, v6, v20

    sub-long v14, v14, v22

    div-long v22, v6, v10

    add-long v14, v14, v22

    sub-long v14, v2, v14

    cmp-long v22, v14, v12

    if-gez v22, :cond_5b

    sub-long v6, v6, v16

    mul-long v8, v8, v6

    div-long v12, v6, v18

    add-long/2addr v8, v12

    div-long v12, v6, v20

    sub-long/2addr v8, v12

    div-long v10, v6, v10

    add-long/2addr v8, v10

    sub-long v14, v2, v8

    :cond_5b
    add-long/2addr v6, v4

    long-to-int v8, v14

    mul-int/lit8 v9, v8, 0x5

    add-int/lit8 v9, v9, 0x2

    div-int/lit16 v9, v9, 0x99

    add-int/lit8 v10, v9, 0x2

    rem-int/lit8 v10, v10, 0xc

    add-int/lit8 v10, v10, 0x1

    mul-int/lit16 v11, v9, 0x132

    add-int/lit8 v11, v11, 0x5

    div-int/lit8 v11, v11, 0xa

    sub-int v11, v8, v11

    add-int/lit8 v11, v11, 0x1

    div-int/lit8 v12, v9, 0xa

    int-to-long v12, v12

    add-long/2addr v6, v12

    sget-object v12, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v12, v6, v7}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    new-instance v13, Ljj$/time/LocalDate;

    invoke-direct {v13, v12, v10, v11}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v13
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalDate;
    .registers 9

    const-string v0, "instant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static ofYearDay(II)Ljj$/time/LocalDate;
    .registers 8

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    const/16 v1, 0x16e

    if-ne p1, v1, :cond_39

    if-eqz v0, :cond_1a

    goto :goto_39

    :cond_1a
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    :goto_39
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/Month;->firstDayOfYear(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Ljj$/time/Month;->length(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_56

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Ljj$/time/Month;->plus(J)Ljj$/time/Month;

    move-result-object v1

    :cond_56
    invoke-virtual {v1, v0}, Ljj$/time/Month;->firstDayOfYear(Z)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljj$/time/LocalDate;

    invoke-virtual {v1}, Ljj$/time/Month;->getValue()I

    move-result v5

    invoke-direct {v4, p0, v5, v3}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v4
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/LocalDate;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljj$/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljj$/time/format/DateTimeFormatter;)Ljj$/time/LocalDate;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/LocalDate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljj$/time/LocalDate$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/LocalDate;
    .registers 5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-static {v0, v1, v2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolvePreviousValid(III)Ljj$/time/LocalDate;
    .registers 6

    sparse-switch p1, :sswitch_data_24

    goto :goto_1e

    :sswitch_4
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1e

    :sswitch_b
    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x1d

    goto :goto_19

    :cond_17
    const/16 v0, 0x1c

    :goto_19
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    :goto_1e
    new-instance v0, Ljj$/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v0

    :sswitch_data_24
    .sparse-switch
        0x2 -> :sswitch_b
        0x4 -> :sswitch_4
        0x6 -> :sswitch_4
        0x9 -> :sswitch_4
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$adjustInto(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay()Ljj$/time/LocalDateTime;
    .registers 2

    sget-object v0, Ljj$/time/LocalTime;->MIDNIGHT:Ljj$/time/LocalTime;

    invoke-static {p0, v0}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;
    .registers 6

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/LocalTime;->MIDNIGHT:Ljj$/time/LocalTime;

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    instance-of v1, p1, Ljj$/time/ZoneOffset;

    if-nez v1, :cond_23

    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/zone/ZoneRules;->getTransition(Ljj$/time/LocalDateTime;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Ljj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljj$/time/LocalDateTime;

    move-result-object v0

    :cond_23
    invoke-static {v0, p1}, Ljj$/time/ZonedDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public atTime(II)Ljj$/time/LocalDateTime;
    .registers 4

    invoke-static {p1, p2}, Ljj$/time/LocalTime;->of(II)Ljj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(III)Ljj$/time/LocalDateTime;
    .registers 5

    invoke-static {p1, p2, p3}, Ljj$/time/LocalTime;->of(III)Ljj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(IIII)Ljj$/time/LocalDateTime;
    .registers 6

    invoke-static {p1, p2, p3, p4}, Ljj$/time/LocalTime;->of(IIII)Ljj$/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(Ljj$/time/OffsetTime;)Ljj$/time/OffsetDateTime;
    .registers 4

    invoke-virtual {p1}, Ljj$/time/OffsetTime;->toLocalTime()Ljj$/time/LocalTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Ljj$/time/OffsetTime;->getOffset()Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/time/OffsetDateTime;->of(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->atTime(Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->compareTo(Ljj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/chrono/ChronoLocalDate;)I
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->compareTo0(Ljj$/time/LocalDate;)I

    move-result v0

    return v0

    :cond_c
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$compareTo(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method compareTo0(Ljj$/time/LocalDate;)I
    .registers 5

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    iget v1, p1, Ljj$/time/LocalDate;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_15

    iget-short v1, p0, Ljj$/time/LocalDate;->month:S

    iget-short v2, p1, Ljj$/time/LocalDate;->month:S

    sub-int v0, v1, v2

    if-nez v0, :cond_15

    iget-short v1, p0, Ljj$/time/LocalDate;->day:S

    iget-short v2, p1, Ljj$/time/LocalDate;->day:S

    sub-int v0, v1, v2

    :cond_15
    return v0
.end method

.method public datesUntil(Ljj$/time/LocalDate;)Ljj$/util/stream/Stream;
    .registers 9

    invoke-virtual {p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1a

    invoke-static {v2, v3, v0, v1}, Ljj$/util/stream/LongStream$-CC;->range(JJ)Ljj$/util/stream/LongStream;

    move-result-object v4

    new-instance v5, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v4, v5}, Ljj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;

    move-result-object v4

    return-object v4

    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public datesUntil(Ljj$/time/LocalDate;Ljj$/time/Period;)Ljj$/util/stream/Stream;
    .registers 33

    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Ljj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_13d

    invoke-virtual/range {p1 .. p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v6

    invoke-virtual {v1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v8

    sub-long v10, v6, v8

    invoke-virtual/range {p2 .. p2}, Ljj$/time/Period;->toTotalMonths()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljj$/time/Period;->getDays()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-gez v0, :cond_25

    cmp-long v0, v4, v12

    if-gtz v0, :cond_2e

    :cond_25
    cmp-long v0, v2, v12

    if-lez v0, :cond_36

    cmp-long v0, v4, v12

    if-ltz v0, :cond_2e

    goto :goto_36

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "period months and days are of opposite sign"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    cmp-long v0, v10, v12

    if-nez v0, :cond_3f

    invoke-static {}, Ljj$/util/stream/Stream$-CC;->empty()Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_3f
    const/4 v0, 0x1

    cmp-long v14, v2, v12

    if-gtz v14, :cond_4b

    cmp-long v14, v4, v12

    if-lez v14, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v14, -0x1

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v14, 0x1

    :goto_4c
    const/4 v15, 0x0

    if-gez v14, :cond_52

    const/16 v16, 0x1

    goto :goto_54

    :cond_52
    const/16 v16, 0x0

    :goto_54
    cmp-long v17, v10, v12

    if-gez v17, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    xor-int v0, v16, v0

    if-eqz v0, :cond_82

    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-gez v14, :cond_65

    const-string v12, " > "

    goto :goto_67

    :cond_65
    const-string v12, " < "

    :goto_67
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p1

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    move-object/from16 v15, p1

    cmp-long v0, v2, v12

    if-nez v0, :cond_9e

    int-to-long v12, v14

    sub-long v12, v10, v12

    div-long/2addr v12, v4

    move-wide/from16 v18, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v12, v13}, Ljj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Ljj$/util/stream/LongStream;

    move-result-object v0

    new-instance v2, Ljj$/time/LocalDate$$ExternalSyntheticLambda2;

    invoke-direct {v2, v8, v9, v4, v5}, Ljj$/time/LocalDate$$ExternalSyntheticLambda2;-><init>(JJ)V

    invoke-interface {v0, v2}, Ljj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_9e
    move-wide/from16 v18, v2

    const-wide/16 v2, 0x640

    mul-long v12, v10, v2

    const-wide/32 v20, 0xbe3b

    mul-long v20, v20, v18

    mul-long v2, v2, v4

    add-long v20, v20, v2

    div-long v12, v12, v20

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    move-wide/from16 v20, v2

    mul-long v2, v18, v12

    mul-long v22, v4, v12

    const-wide/16 v16, 0x0

    cmp-long v0, v18, v16

    if-lez v0, :cond_cb

    sget-object v0, Ljj$/time/LocalDate;->MAX:Ljj$/time/LocalDate;

    invoke-direct {v0}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v24

    invoke-direct {v1}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v26

    sub-long v24, v24, v26

    goto :goto_d7

    :cond_cb
    invoke-direct {v1}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v24

    sget-object v0, Ljj$/time/LocalDate;->MIN:Ljj$/time/LocalDate;

    invoke-direct {v0}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v26

    sub-long v24, v24, v26

    :goto_d7
    nop

    move-wide/from16 v26, v4

    int-to-long v4, v14

    mul-long v4, v4, v2

    cmp-long v0, v4, v24

    if-gtz v0, :cond_f8

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    add-long v4, v4, v22

    move-wide/from16 v28, v2

    int-to-long v2, v14

    mul-long v4, v4, v2

    int-to-long v2, v14

    mul-long v2, v2, v6

    cmp-long v0, v4, v2

    if-ltz v0, :cond_123

    goto :goto_fa

    :cond_f8
    move-wide/from16 v28, v2

    :goto_fa
    sub-long v12, v12, v20

    sub-long v2, v28, v18

    sub-long v22, v22, v26

    int-to-long v4, v14

    mul-long v4, v4, v2

    cmp-long v0, v4, v24

    if-gtz v0, :cond_11f

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    add-long v4, v4, v22

    int-to-long v0, v14

    mul-long v4, v4, v0

    int-to-long v0, v14

    mul-long v0, v0, v6

    cmp-long v28, v4, v0

    if-ltz v28, :cond_11c

    goto :goto_11f

    :cond_11c
    move-wide/from16 v28, v2

    goto :goto_123

    :cond_11f
    :goto_11f
    sub-long v12, v12, v20

    move-wide/from16 v28, v2

    :cond_123
    :goto_123
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v12, v13}, Ljj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Ljj$/util/stream/LongStream;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Ljj$/time/LocalDate$$ExternalSyntheticLambda3;

    move-wide/from16 v16, v6

    move-wide/from16 v2, v18

    move-wide/from16 v4, v26

    move-object v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Ljj$/time/LocalDate$$ExternalSyntheticLambda3;-><init>(Ljj$/time/LocalDate;JJ)V

    invoke-interface {v6, v0}, Ljj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_13d
    move-object/from16 v15, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "step is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method daysUntil(Ljj$/time/LocalDate;)J
    .registers 6

    invoke-virtual {p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Ljj$/time/LocalDate;

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->compareTo0(Ljj$/time/LocalDate;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    return v2
.end method

.method public format(Ljj$/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljj$/time/temporal/TemporalField;)I
    .registers 3

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Ljj$/time/LocalDate;->get0(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0

    :cond_9
    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalAccessor$-CC;->$default$get(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getChronology()Ljj$/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljj$/time/chrono/IsoChronology;
    .registers 2

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .registers 2

    iget-short v0, p0, Ljj$/time/LocalDate;->day:S

    return v0
.end method

.method public getDayOfWeek()Ljj$/time/DayOfWeek;
    .registers 5

    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljj$/time/DayOfWeek;->of(I)Ljj$/time/DayOfWeek;

    move-result-object v1

    return-object v1
.end method

.method public getDayOfYear()I
    .registers 3

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getMonth()Ljj$/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljj$/time/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Ljj$/time/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getEra()Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getEra()Ljj$/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljj$/time/chrono/IsoEra;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    sget-object v0, Ljj$/time/chrono/IsoEra;->CE:Ljj$/time/chrono/IsoEra;

    goto :goto_c

    :cond_a
    sget-object v0, Ljj$/time/chrono/IsoEra;->BCE:Ljj$/time/chrono/IsoEra;

    :goto_c
    return-object v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 4

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    :cond_d
    sget-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_16

    invoke-direct {p0}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    :cond_16
    invoke-direct {p0, p1}, Ljj$/time/LocalDate;->get0(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1c
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Ljj$/time/Month;
    .registers 2

    iget-short v0, p0, Ljj$/time/LocalDate;->month:S

    invoke-static {v0}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .registers 2

    iget-short v0, p0, Ljj$/time/LocalDate;->month:S

    return v0
.end method

.method public getYear()I
    .registers 2

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    iget-short v1, p0, Ljj$/time/LocalDate;->month:S

    iget-short v2, p0, Ljj$/time/LocalDate;->day:S

    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v4, v0, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    xor-int/2addr v3, v4

    return v3
.end method

.method public isAfter(Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->compareTo0(Ljj$/time/LocalDate;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isAfter(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->compareTo0(Ljj$/time/LocalDate;)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isBefore(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljj$/time/chrono/ChronoLocalDate;)Z
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->compareTo0(Ljj$/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isEqual(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isLeapYear()Z
    .registers 4

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    iget v1, p0, Ljj$/time/LocalDate;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalUnit;)Z
    .registers 3

    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$isSupported(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$datesUntil$1$java-time-LocalDate(JJJ)Ljj$/time/LocalDate;
    .registers 10

    mul-long v0, p1, p5

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    mul-long v1, p3, p5

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public lengthOfMonth()I
    .registers 2

    iget-short v0, p0, Ljj$/time/LocalDate;->month:S

    sparse-switch v0, :sswitch_data_18

    const/16 v0, 0x1f

    return v0

    :sswitch_8
    const/16 v0, 0x1e

    return v0

    :sswitch_b
    invoke-virtual {p0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x1d

    goto :goto_16

    :cond_14
    const/16 v0, 0x1c

    :goto_16
    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_b
        0x4 -> :sswitch_8
        0x6 -> :sswitch_8
        0x9 -> :sswitch_8
        0xb -> :sswitch_8
    .end sparse-switch
.end method

.method public lengthOfYear()I
    .registers 2

    invoke-virtual {p0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/LocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/LocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/LocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;
    .registers 6

    instance-of v0, p1, Ljj$/time/Period;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Ljj$/time/Period;

    invoke-virtual {v0}, Ljj$/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->minusMonths(J)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->minusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :cond_19
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Ljj$/time/LocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMonths(J)Ljj$/time/LocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusWeeks(J)Ljj$/time/LocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusYears(J)Ljj$/time/LocalDate;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;
    .registers 8

    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_71

    move-object v0, p3

    check-cast v0, Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_78

    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2b  #0x8
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    sget-object v2, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_3c  #0x7
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_47  #0x6
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_52  #0x5
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_5d  #0x4
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_62  #0x3
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_67  #0x2
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_6c  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :cond_71
    invoke-interface {p3, p0, p1, p2}, Ljj$/time/temporal/TemporalUnit;->addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6c  #00000001
        :pswitch_67  #00000002
        :pswitch_62  #00000003
        :pswitch_5d  #00000004
        :pswitch_52  #00000005
        :pswitch_47  #00000006
        :pswitch_3c  #00000007
        :pswitch_2b  #00000008
    .end packed-switch
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;
    .registers 6

    instance-of v0, p1, Ljj$/time/Period;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Ljj$/time/Period;

    invoke-virtual {v0}, Ljj$/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :cond_19
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAmount;->addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Ljj$/time/LocalDate;
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget-short v2, p0, Ljj$/time/LocalDate;->day:S

    int-to-long v2, v2

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-lez v4, :cond_64

    const-wide/16 v0, 0x1c

    cmp-long v4, v2, v0

    if-gtz v4, :cond_20

    new-instance v0, Ljj$/time/LocalDate;

    iget v1, p0, Ljj$/time/LocalDate;->year:I

    iget-short v4, p0, Ljj$/time/LocalDate;->month:S

    long-to-int v5, v2

    invoke-direct {v0, v1, v4, v5}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v0

    :cond_20
    const-wide/16 v0, 0x3b

    cmp-long v4, v2, v0

    if-gtz v4, :cond_64

    invoke-virtual {p0}, Ljj$/time/LocalDate;->lengthOfMonth()I

    move-result v0

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3a

    new-instance v4, Ljj$/time/LocalDate;

    iget v5, p0, Ljj$/time/LocalDate;->year:I

    iget-short v6, p0, Ljj$/time/LocalDate;->month:S

    long-to-int v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v4

    :cond_3a
    iget-short v4, p0, Ljj$/time/LocalDate;->month:S

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4f

    new-instance v4, Ljj$/time/LocalDate;

    iget v5, p0, Ljj$/time/LocalDate;->year:I

    iget-short v7, p0, Ljj$/time/LocalDate;->month:S

    add-int/2addr v7, v6

    sub-long v8, v2, v0

    long-to-int v6, v8

    invoke-direct {v4, v5, v7, v6}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v4

    :cond_4f
    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    iget v5, p0, Ljj$/time/LocalDate;->year:I

    add-int/2addr v5, v6

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    new-instance v4, Ljj$/time/LocalDate;

    iget v5, p0, Ljj$/time/LocalDate;->year:I

    add-int/2addr v5, v6

    sub-long v7, v2, v0

    long-to-int v8, v7

    invoke-direct {v4, v5, v6, v8}, Ljj$/time/LocalDate;-><init>(III)V

    return-object v4

    :cond_64
    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v4

    return-object v4
.end method

.method public plusMonths(J)Ljj$/time/LocalDate;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Ljj$/time/LocalDate;->month:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long v2, v0, p1

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    invoke-static {v2, v3, v5}, Ljj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-short v6, p0, Ljj$/time/LocalDate;->day:S

    invoke-static {v4, v5, v6}, Ljj$/time/LocalDate;->resolvePreviousValid(III)Ljj$/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public plusWeeks(J)Ljj$/time/LocalDate;
    .registers 5

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljj$/time/LocalDate;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    iget v1, p0, Ljj$/time/LocalDate;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    iget-short v1, p0, Ljj$/time/LocalDate;->month:S

    iget-short v2, p0, Ljj$/time/LocalDate;->day:S

    invoke-static {v0, v1, v2}, Ljj$/time/LocalDate;->resolvePreviousValid(III)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->localDate()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p0, p1}, Ljj$/time/chrono/ChronoLocalDate$-CC;->$default$query(Ljj$/time/chrono/ChronoLocalDate;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 8

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_76

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_5d

    sget-object v1, Ljj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_7c

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_1f  #0x4
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    if-gtz v1, :cond_29

    const-wide/32 v4, 0x3b9aca00

    goto :goto_2c

    :cond_29
    const-wide/32 v4, 0x3b9ac9ff

    :goto_2c
    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_31  #0x3
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getMonth()Ljj$/time/Month;

    move-result-object v1

    sget-object v4, Ljj$/time/Month;->FEBRUARY:Ljj$/time/Month;

    if-ne v1, v4, :cond_42

    invoke-virtual {p0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-nez v1, :cond_42

    const-wide/16 v4, 0x4

    goto :goto_44

    :cond_42
    const-wide/16 v4, 0x5

    :goto_44
    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_49  #0x2
    invoke-virtual {p0}, Ljj$/time/LocalDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_53  #0x1
    invoke-virtual {p0}, Ljj$/time/LocalDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :cond_5d
    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_76
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_49  #00000002
        :pswitch_31  #00000003
        :pswitch_1f  #00000004
    .end packed-switch
.end method

.method public toEpochDay()J
    .registers 13

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    int-to-long v0, v0

    iget-short v2, p0, Ljj$/time/LocalDate;->month:S

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x16d

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_29

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v8, v0

    const-wide/16 v10, 0x190

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    goto :goto_38

    :cond_29
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long v8, v0, v8

    add-long/2addr v6, v8

    sub-long/2addr v4, v6

    :goto_38
    const-wide/16 v6, 0x16f

    mul-long v6, v6, v2

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iget-short v6, p0, Ljj$/time/LocalDate;->day:S

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    cmp-long v8, v2, v6

    if-lez v8, :cond_59

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Ljj$/time/LocalDate;->isLeapYear()Z

    move-result v8

    if-nez v8, :cond_59

    sub-long/2addr v4, v6

    :cond_59
    const-wide/32 v6, 0xafaa8

    sub-long v6, v4, v6

    return-wide v6
.end method

.method public toEpochSecond(Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)J
    .registers 7

    const-string v0, "time"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p1}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    iget-short v1, p0, Ljj$/time/LocalDate;->month:S

    iget-short v2, p0, Ljj$/time/LocalDate;->day:S

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_2d

    if-gez v0, :cond_22

    add-int/lit16 v6, v0, -0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_22
    add-int/lit16 v6, v0, 0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_2d
    const/16 v6, 0x270f

    if-le v0, v6, :cond_36

    const/16 v6, 0x2b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_39
    const-string v6, "-0"

    const-string v7, "-"

    if-ge v1, v5, :cond_41

    move-object v8, v6

    goto :goto_42

    :cond_41
    move-object v8, v7

    :goto_42
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ge v2, v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v6, v7

    :goto_4e
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 8

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    instance-of v1, p2, Ljj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_6f

    sget-object v1, Ljj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_74

    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2f  #0x8
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    :pswitch_3d  #0x7
    invoke-direct {p0, v0}, Ljj$/time/LocalDate;->monthsUntil(Ljj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x2ee0

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_45  #0x6
    invoke-direct {p0, v0}, Ljj$/time/LocalDate;->monthsUntil(Ljj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_4d  #0x5
    invoke-direct {p0, v0}, Ljj$/time/LocalDate;->monthsUntil(Ljj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x78

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_55  #0x4
    invoke-direct {p0, v0}, Ljj$/time/LocalDate;->monthsUntil(Ljj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0xc

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_5d  #0x3
    invoke-direct {p0, v0}, Ljj$/time/LocalDate;->monthsUntil(Ljj$/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    :pswitch_62  #0x2
    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->daysUntil(Ljj$/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x7

    div-long/2addr v1, v3

    return-wide v1

    :pswitch_6a  #0x1
    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->daysUntil(Ljj$/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    :cond_6f
    invoke-interface {p2, p0, v0}, Ljj$/time/temporal/TemporalUnit;->between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6a  #00000001
        :pswitch_62  #00000002
        :pswitch_5d  #00000003
        :pswitch_55  #00000004
        :pswitch_4d  #00000005
        :pswitch_45  #00000006
        :pswitch_3d  #00000007
        :pswitch_2f  #00000008
    .end packed-switch
.end method

.method public until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/Period;
    .registers 11

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {v0}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    invoke-direct {p0}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-short v3, v0, Ljj$/time/LocalDate;->day:S

    iget-short v4, p0, Ljj$/time/LocalDate;->day:S

    sub-int/2addr v3, v4

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_2c

    if-gez v3, :cond_2c

    sub-long/2addr v1, v4

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v4

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v5

    invoke-virtual {v4}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    :cond_2b
    goto :goto_38

    :cond_2c
    cmp-long v8, v1, v6

    if-gez v8, :cond_2b

    if-lez v3, :cond_2b

    add-long/2addr v1, v4

    invoke-virtual {v0}, Ljj$/time/LocalDate;->lengthOfMonth()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_38
    const-wide/16 v4, 0xc

    div-long v6, v1, v4

    rem-long v4, v1, v4

    long-to-int v5, v4

    invoke-static {v6, v7}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v4

    invoke-static {v4, v5, v3}, Ljj$/time/Period;->of(III)Ljj$/time/Period;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDate;
    .registers 3

    instance-of v0, p1, Ljj$/time/LocalDate;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0

    :cond_8
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAdjuster;->adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;
    .registers 9

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_be

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v1, Ljj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_c6

    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2f  #0xd
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_3b

    move-object v1, p0

    goto :goto_42

    :cond_3b
    iget v1, p0, Ljj$/time/LocalDate;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v1

    :goto_42
    return-object v1

    :pswitch_43  #0xc
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_49  #0xb
    invoke-direct {p0}, Ljj$/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_54  #0xa
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->withMonth(I)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_5a  #0x9
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_67  #0x8
    invoke-static {p2, p3}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_6c  #0x7
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_79  #0x6
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_86  #0x5
    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfWeek()Ljj$/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_96  #0x4
    iget v1, p0, Ljj$/time/LocalDate;->year:I

    if-lt v1, v2, :cond_9c

    move-wide v1, p2

    goto :goto_9f

    :cond_9c
    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    :goto_9f
    long-to-int v2, v1

    invoke-virtual {p0, v2}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_a5  #0x3
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_b2  #0x2
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->withDayOfYear(I)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :pswitch_b8  #0x1
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljj$/time/LocalDate;->withDayOfMonth(I)Ljj$/time/LocalDate;

    move-result-object v1

    return-object v1

    :cond_be
    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/TemporalField;->adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljj$/time/LocalDate;

    return-object v0

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b8  #00000001
        :pswitch_b2  #00000002
        :pswitch_a5  #00000003
        :pswitch_96  #00000004
        :pswitch_86  #00000005
        :pswitch_79  #00000006
        :pswitch_6c  #00000007
        :pswitch_67  #00000008
        :pswitch_5a  #00000009
        :pswitch_54  #0000000a
        :pswitch_49  #0000000b
        :pswitch_43  #0000000c
        :pswitch_2f  #0000000d
    .end packed-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Ljj$/time/LocalDate;
    .registers 4

    iget-short v0, p0, Ljj$/time/LocalDate;->day:S

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    iget v0, p0, Ljj$/time/LocalDate;->year:I

    iget-short v1, p0, Ljj$/time/LocalDate;->month:S

    invoke-static {v0, v1, p1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljj$/time/LocalDate;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/LocalDate;->year:I

    invoke-static {v0, p1}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljj$/time/LocalDate;
    .registers 5

    iget-short v0, p0, Ljj$/time/LocalDate;->month:S

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    iget-short v1, p0, Ljj$/time/LocalDate;->day:S

    invoke-static {v0, p1, v1}, Ljj$/time/LocalDate;->resolvePreviousValid(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljj$/time/LocalDate;
    .registers 5

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    iget-short v0, p0, Ljj$/time/LocalDate;->month:S

    iget-short v1, p0, Ljj$/time/LocalDate;->day:S

    invoke-static {p1, v0, v1}, Ljj$/time/LocalDate;->resolvePreviousValid(III)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, Ljj$/time/LocalDate;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v0, p0, Ljj$/time/LocalDate;->month:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v0, p0, Ljj$/time/LocalDate;->day:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
