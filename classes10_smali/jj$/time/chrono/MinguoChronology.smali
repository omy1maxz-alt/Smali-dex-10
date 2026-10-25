.class public final Ljj$/time/chrono/MinguoChronology;
.super Ljj$/time/chrono/AbstractChronology;
.source "MinguoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Ljj$/time/chrono/MinguoChronology;

.field static final YEARS_DIFFERENCE:I = 0x777

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/time/chrono/MinguoChronology;

    invoke-direct {v0}, Ljj$/time/chrono/MinguoChronology;-><init>()V

    sput-object v0, Ljj$/time/chrono/MinguoChronology;->INSTANCE:Ljj$/time/chrono/MinguoChronology;

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

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/MinguoChronology;->date(III)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/time/chrono/MinguoChronology;->date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/MinguoChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Ljj$/time/chrono/MinguoDate;
    .registers 6

    new-instance v0, Ljj$/time/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2, p3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/MinguoDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/MinguoDate;
    .registers 6

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/MinguoChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljj$/time/chrono/MinguoChronology;->date(III)Ljj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/MinguoDate;
    .registers 4

    instance-of v0, p1, Ljj$/time/chrono/MinguoDate;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/MinguoDate;

    return-object v0

    :cond_8
    new-instance v0, Ljj$/time/chrono/MinguoDate;

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/MinguoDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/MinguoChronology;->dateEpochDay(J)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Ljj$/time/chrono/MinguoDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/MinguoDate;

    invoke-static {p1, p2}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/MinguoDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/MinguoChronology;->dateNow()Ljj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/MinguoChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/MinguoChronology;->dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Ljj$/time/chrono/MinguoDate;
    .registers 2

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/MinguoChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/MinguoDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/MinguoChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/MinguoDate;
    .registers 3

    invoke-static {p1}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/chrono/MinguoChronology;->dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/MinguoChronology;->dateYearDay(II)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/MinguoChronology;->dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Ljj$/time/chrono/MinguoDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/MinguoDate;

    add-int/lit16 v1, p1, 0x777

    invoke-static {v1, p2}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/MinguoDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/MinguoDate;
    .registers 5

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/MinguoChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljj$/time/chrono/MinguoChronology;->dateYearDay(II)Ljj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/MinguoChronology;->eraOf(I)Ljj$/time/chrono/MinguoEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Ljj$/time/chrono/MinguoEra;
    .registers 3

    invoke-static {p1}, Ljj$/time/chrono/MinguoEra;->of(I)Ljj$/time/chrono/MinguoEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljj$/time/chrono/MinguoEra;->values()[Ljj$/time/chrono/MinguoEra;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .registers 2

    const-string v0, "roc"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "Minguo"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .registers 6

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    const-wide/16 v1, 0x777

    add-long/2addr v1, p1

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

    instance-of v0, p1, Ljj$/time/chrono/MinguoEra;

    if-eqz v0, :cond_d

    sget-object v0, Ljj$/time/chrono/MinguoEra;->ROC:Ljj$/time/chrono/MinguoEra;

    if-ne p1, v0, :cond_a

    move v0, p2

    goto :goto_c

    :cond_a
    rsub-int/lit8 v0, p2, 0x1

    :goto_c
    return v0

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be MinguoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;
    .registers 13

    sget-object v0, Ljj$/time/chrono/MinguoChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x777

    packed-switch v0, :pswitch_data_5a

    invoke-virtual {p1}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_12  #0x3
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_27  #0x2
    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v3

    sub-long v7, v3, v1

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    neg-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long v9, v3, v1

    invoke-static/range {v5 .. v10}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_42  #0x1
    sget-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    const-wide/16 v3, 0x5994

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_27  #00000002
        :pswitch_12  #00000003
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/MinguoChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/MinguoDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/MinguoDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/MinguoDate;

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
