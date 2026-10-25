.class public final Ljj$/time/zone/ZoneOffsetTransitionRule;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final dom:B

.field private final dow:Ljj$/time/DayOfWeek;

.field private final month:Ljj$/time/Month;

.field private final offsetAfter:Ljj$/time/ZoneOffset;

.field private final offsetBefore:Ljj$/time/ZoneOffset;

.field private final standardOffset:Ljj$/time/ZoneOffset;

.field private final time:Ljj$/time/LocalTime;

.field private final timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final timeEndOfDay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljj$/time/Month;ILjj$/time/DayOfWeek;Ljj$/time/LocalTime;ZLjj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    iput-object p1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    int-to-byte v0, p2

    iput-byte v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    iput-object p3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    iput-object p4, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    iput-boolean p5, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iput-object p6, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iput-object p7, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    iput-object p8, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    iput-object p9, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    return-void
.end method

.method public static of(Ljj$/time/Month;ILjj$/time/DayOfWeek;Ljj$/time/LocalTime;ZLjj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)Ljj$/time/zone/ZoneOffsetTransitionRule;
    .registers 19

    const-string v0, "month"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "timeDefnition"

    invoke-static {p5, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "standardOffset"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetBefore"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetAfter"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, -0x1c

    if-lt p1, v0, :cond_5b

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_5b

    if-eqz p1, :cond_5b

    if-eqz p4, :cond_41

    sget-object v0, Ljj$/time/LocalTime;->MIDNIGHT:Ljj$/time/LocalTime;

    invoke-virtual {p3, v0}, Ljj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_41

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Time must be midnight when end of day flag is true"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    invoke-virtual {p3}, Ljj$/time/LocalTime;->getNano()I

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Ljj$/time/zone/ZoneOffsetTransitionRule;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v9}, Ljj$/time/zone/ZoneOffsetTransitionRule;-><init>(Ljj$/time/Month;ILjj$/time/DayOfWeek;Ljj$/time/LocalTime;ZLjj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v0

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time\'s nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/zone/ZoneOffsetTransitionRule;
    .registers 18

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1c

    invoke-static {v1}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v2

    const/high16 v1, 0xfc00000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x16

    add-int/lit8 v3, v1, -0x20

    const/high16 v1, 0x380000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    if-nez v1, :cond_1a

    const/4 v4, 0x0

    goto :goto_1e

    :cond_1a
    invoke-static {v1}, Ljj$/time/DayOfWeek;->of(I)Ljj$/time/DayOfWeek;

    move-result-object v4

    :goto_1e
    const v5, 0x7c000

    and-int/2addr v5, v0

    ushr-int/lit8 v11, v5, 0xe

    invoke-static {}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v5

    and-int/lit16 v6, v0, 0x3000

    ushr-int/lit8 v6, v6, 0xc

    aget-object v7, v5, v6

    and-int/lit16 v5, v0, 0xff0

    ushr-int/lit8 v12, v5, 0x4

    and-int/lit8 v5, v0, 0xc

    ushr-int/lit8 v13, v5, 0x2

    and-int/lit8 v14, v0, 0x3

    const/16 v5, 0x1f

    const/4 v6, 0x0

    if-ne v11, v5, :cond_47

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljj$/time/LocalTime;->ofSecondOfDay(J)Ljj$/time/LocalTime;

    move-result-object v5

    goto :goto_4d

    :cond_47
    rem-int/lit8 v5, v11, 0x18

    invoke-static {v5, v6}, Ljj$/time/LocalTime;->of(II)Ljj$/time/LocalTime;

    move-result-object v5

    :goto_4d
    const/16 v8, 0xff

    if-ne v12, v8, :cond_56

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    goto :goto_5a

    :cond_56
    add-int/lit8 v8, v12, -0x80

    mul-int/lit16 v8, v8, 0x384

    :goto_5a
    invoke-static {v8}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v8

    const/4 v9, 0x3

    if-ne v13, v9, :cond_66

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v10

    goto :goto_6d

    :cond_66
    invoke-virtual {v8}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    mul-int/lit16 v15, v13, 0x708

    add-int/2addr v10, v15

    :goto_6d
    invoke-static {v10}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v10

    if-ne v14, v9, :cond_78

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    goto :goto_7f

    :cond_78
    invoke-virtual {v8}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    mul-int/lit16 v15, v14, 0x708

    add-int/2addr v9, v15

    :goto_7f
    invoke-static {v9}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v9

    const/16 v15, 0x18

    if-ne v11, v15, :cond_88

    const/4 v6, 0x1

    :cond_88
    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v10}, Ljj$/time/zone/ZoneOffsetTransitionRule;->of(Ljj$/time/Month;ILjj$/time/DayOfWeek;Ljj$/time/LocalTime;ZLjj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)Ljj$/time/zone/ZoneOffsetTransitionRule;

    move-result-object v6

    return-object v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/zone/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljj$/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public createTransition(I)Ljj$/time/zone/ZoneOffsetTransition;
    .registers 8

    iget-byte v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v0, :cond_2b

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    sget-object v2, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljj$/time/Month;->length(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-byte v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Ljj$/time/LocalDate;->of(ILjj$/time/Month;I)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    if-eqz v1, :cond_41

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    invoke-static {v1}, Ljj$/time/temporal/TemporalAdjusters;->previousOrSame(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDate;

    move-result-object v0

    goto :goto_41

    :cond_2b
    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    iget-byte v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-static {p1, v0, v1}, Ljj$/time/LocalDate;->of(ILjj$/time/Month;I)Ljj$/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    if-eqz v1, :cond_41

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    invoke-static {v1}, Ljj$/time/temporal/TemporalAdjusters;->nextOrSame(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/LocalDate;

    move-result-object v0

    :cond_41
    :goto_41
    iget-boolean v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_4b

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    :cond_4b
    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    invoke-static {v0, v1}, Ljj$/time/LocalDateTime;->of(Ljj$/time/LocalDate;Ljj$/time/LocalTime;)Ljj$/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    iget-object v4, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v2, v1, v3, v4}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;

    move-result-object v2

    new-instance v3, Ljj$/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    iget-object v5, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-direct {v3, v2, v4, v5}, Ljj$/time/zone/ZoneOffsetTransition;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)V

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/zone/ZoneOffsetTransitionRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    move-object v1, p1

    check-cast v1, Ljj$/time/zone/ZoneOffsetTransitionRule;

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    if-ne v3, v4, :cond_53

    iget-byte v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    iget-byte v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    invoke-virtual {v3, v4}, Ljj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-boolean v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iget-boolean v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    iget-object v4, v1, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    return v0

    :cond_55
    return v2
.end method

.method public getDayOfMonthIndicator()I
    .registers 2

    iget-byte v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    return v0
.end method

.method public getDayOfWeek()Ljj$/time/DayOfWeek;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    return-object v0
.end method

.method public getLocalTime()Ljj$/time/LocalTime;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    return-object v0
.end method

.method public getMonth()Ljj$/time/Month;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    return-object v0
.end method

.method public getOffsetAfter()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getStandardOffset()Ljj$/time/ZoneOffset;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    return-object v0
.end method

.method public getTimeDefinition()Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v0

    iget-boolean v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    invoke-virtual {v1}, Ljj$/time/Month;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-byte v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    if-nez v1, :cond_21

    const/4 v1, 0x7

    goto :goto_27

    :cond_21
    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    invoke-virtual {v1}, Ljj$/time/DayOfWeek;->ordinal()I

    move-result v1

    :goto_27
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v2}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v2}, Ljj$/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method public isMidnightEndOfDay()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljj$/time/ZoneOffset;->compareTo(Ljj$/time/ZoneOffset;)I

    move-result v2

    if-lez v2, :cond_18

    const-string v2, "Gap "

    goto :goto_1a

    :cond_18
    const-string v2, "Overlap "

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    const/16 v2, 0x20

    if-eqz v1, :cond_ab

    iget-byte v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5a

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    invoke-virtual {v1}, Ljj$/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    invoke-virtual {v2}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    :cond_5a
    iget-byte v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v1, :cond_87

    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    invoke-virtual {v1}, Ljj$/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day minus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    invoke-virtual {v2}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    :cond_87
    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    invoke-virtual {v1}, Ljj$/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on or after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    invoke-virtual {v3}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_be

    :cond_ab
    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    invoke-virtual {v1}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_be
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v2, :cond_cb

    const-string v2, "24:00"

    goto :goto_d1

    :cond_cb
    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    invoke-virtual {v2}, Ljj$/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", standard offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 16

    iget-boolean v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v0, :cond_8

    const v0, 0x15180

    goto :goto_e

    :cond_8
    iget-object v0, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    invoke-virtual {v0}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v0

    :goto_e
    iget-object v1, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    iget-object v2, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v3}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v3, v1

    rem-int/lit16 v4, v0, 0xe10

    const/16 v5, 0x1f

    if-nez v4, :cond_36

    iget-boolean v4, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v4, :cond_2f

    const/16 v4, 0x18

    goto :goto_38

    :cond_2f
    iget-object v4, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->time:Ljj$/time/LocalTime;

    invoke-virtual {v4}, Ljj$/time/LocalTime;->getHour()I

    move-result v4

    goto :goto_38

    :cond_36
    const/16 v4, 0x1f

    :goto_38
    rem-int/lit16 v6, v1, 0x384

    const/16 v7, 0xff

    if-nez v6, :cond_43

    div-int/lit16 v6, v1, 0x384

    add-int/lit16 v6, v6, 0x80

    goto :goto_45

    :cond_43
    const/16 v6, 0xff

    :goto_45
    const/16 v8, 0xe10

    const/4 v9, 0x3

    const/16 v10, 0x708

    if-eqz v2, :cond_53

    if-eq v2, v10, :cond_53

    if-ne v2, v8, :cond_51

    goto :goto_53

    :cond_51
    const/4 v11, 0x3

    goto :goto_55

    :cond_53
    :goto_53
    div-int/lit16 v11, v2, 0x708

    :goto_55
    if-eqz v3, :cond_5e

    if-eq v3, v10, :cond_5e

    if-ne v3, v8, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v8, 0x3

    goto :goto_60

    :cond_5e
    :goto_5e
    div-int/lit16 v8, v3, 0x708

    :goto_60
    iget-object v10, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    if-nez v10, :cond_66

    const/4 v10, 0x0

    goto :goto_6c

    :cond_66
    iget-object v10, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dow:Ljj$/time/DayOfWeek;

    invoke-virtual {v10}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v10

    :goto_6c
    iget-object v12, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->month:Ljj$/time/Month;

    invoke-virtual {v12}, Ljj$/time/Month;->getValue()I

    move-result v12

    shl-int/lit8 v12, v12, 0x1c

    iget-byte v13, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v13, v13, 0x20

    shl-int/lit8 v13, v13, 0x16

    add-int/2addr v12, v13

    shl-int/lit8 v13, v10, 0x13

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0xe

    add-int/2addr v12, v13

    iget-object v13, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v13}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v13

    shl-int/lit8 v13, v13, 0xc

    add-int/2addr v12, v13

    shl-int/lit8 v13, v6, 0x4

    add-int/2addr v12, v13

    shl-int/lit8 v13, v11, 0x2

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    invoke-interface {p1, v12}, Ljava/io/DataOutput;->writeInt(I)V

    if-ne v4, v5, :cond_99

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_99
    if-ne v6, v7, :cond_9e

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_9e
    if-ne v11, v9, :cond_a9

    iget-object v5, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljj$/time/ZoneOffset;

    invoke-virtual {v5}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_a9
    if-ne v8, v9, :cond_b4

    iget-object v5, p0, Ljj$/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljj$/time/ZoneOffset;

    invoke-virtual {v5}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_b4
    return-void
.end method
