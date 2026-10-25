.class public final Ljj$/time/chrono/ThaiBuddhistChronology;
.super Ljj$/time/chrono/AbstractChronology;
.source "ThaiBuddhistChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/HashMap;

.field private static final ERA_NARROW_NAMES:Ljava/util/HashMap;

.field private static final ERA_SHORT_NAMES:Ljava/util/HashMap;

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Ljj$/time/chrono/ThaiBuddhistChronology;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "th"

.field static final YEARS_DIFFERENCE:I = 0x21f

.field private static final serialVersionUID:J = 0x26862bec417f21daL


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistChronology;

    invoke-direct {v0}, Ljj$/time/chrono/ThaiBuddhistChronology;-><init>()V

    sput-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljj$/time/chrono/ThaiBuddhistChronology;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const-string v1, "BB"

    const-string v2, "BE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "th"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "B.B."

    const-string v3, "B.E."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "พ.ศ."

    const-string v3, "ปีก่อนคริสต์กาลที่"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "Before Buddhist"

    const-string v5, "Budhhist Era"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "พุทธศักราช"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/time/chrono/AbstractChronology;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic date(III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistChronology;->date(III)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/time/chrono/ThaiBuddhistChronology;->date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 6

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p1, -0x21f

    invoke-static {v1, p2, p3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/ThaiBuddhistDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 6

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljj$/time/chrono/ThaiBuddhistChronology;->date(III)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    instance-of v0, p1, Ljj$/time/chrono/ThaiBuddhistDate;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0

    :cond_8
    new-instance v0, Ljj$/time/chrono/ThaiBuddhistDate;

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/ThaiBuddhistDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateEpochDay(J)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistDate;

    invoke-static {p1, p2}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/ThaiBuddhistDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateNow()Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 2

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ThaiBuddhistChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p1, -0x21f

    invoke-static {v1, p2}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/ThaiBuddhistDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 5

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljj$/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/ThaiBuddhistChronology;->eraOf(I)Ljj$/time/chrono/ThaiBuddhistEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Ljj$/time/chrono/ThaiBuddhistEra;
    .registers 3

    invoke-static {p1}, Ljj$/time/chrono/ThaiBuddhistEra;->of(I)Ljj$/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljj$/time/chrono/ThaiBuddhistEra;->values()[Ljj$/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    const-string v0, "buddhist"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "ThaiBuddhist"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .registers 6

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    const-wide/16 v1, 0x21f

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

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
    .registers 5

    instance-of v0, p1, Ljj$/time/chrono/ThaiBuddhistEra;

    if-eqz v0, :cond_d

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->BE:Ljj$/time/chrono/ThaiBuddhistEra;

    if-ne p1, v0, :cond_a

    move v0, p2

    goto :goto_c

    :cond_a
    rsub-int/lit8 v0, p2, 0x1

    :goto_c
    return v0

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be BuddhistEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;
    .registers 15

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x21f

    packed-switch v0, :pswitch_data_5c

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_12  #0x3
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_27  #0x2
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    add-long/2addr v3, v1

    neg-long v3, v3

    const-wide/16 v5, 0x1

    add-long v9, v3, v5

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v3

    add-long v11, v3, v1

    const-wide/16 v7, 0x1

    invoke-static/range {v7 .. v12}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_44  #0x1
    sget-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    const-wide/16 v3, 0x1974

    add-long/2addr v1, v3

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_27  #00000002
        :pswitch_12  #00000003
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/ThaiBuddhistChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ThaiBuddhistDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    return-object v0
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
