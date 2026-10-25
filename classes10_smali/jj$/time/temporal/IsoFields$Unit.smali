.class final enum Ljj$/time/temporal/IsoFields$Unit;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljj$/time/temporal/TemporalUnit;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/temporal/IsoFields$Unit;

.field public static final enum QUARTER_YEARS:Ljj$/time/temporal/IsoFields$Unit;

.field public static final enum WEEK_BASED_YEARS:Ljj$/time/temporal/IsoFields$Unit;


# instance fields
.field private final duration:Ljj$/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljj$/time/temporal/IsoFields$Unit;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "WEEK_BASED_YEARS"

    const/4 v3, 0x0

    const-string v4, "WeekBasedYears"

    invoke-direct {v0, v2, v3, v4, v1}, Ljj$/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    new-instance v0, Ljj$/time/temporal/IsoFields$Unit;

    const-wide/32 v1, 0x786156

    invoke-static {v1, v2}, Ljj$/time/Duration;->ofSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    const-string v2, "QUARTER_YEARS"

    const/4 v4, 0x1

    const-string v5, "QuarterYears"

    invoke-direct {v0, v2, v4, v5, v1}, Ljj$/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V

    sput-object v0, Ljj$/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    const/4 v0, 0x2

    new-array v0, v0, [Ljj$/time/temporal/IsoFields$Unit;

    sget-object v1, Ljj$/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/time/temporal/IsoFields$Unit;->$VALUES:[Ljj$/time/temporal/IsoFields$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/Duration;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljj$/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    iput-object p4, p0, Ljj$/time/temporal/IsoFields$Unit;->duration:Ljj$/time/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/temporal/IsoFields$Unit;
    .registers 2

    const-class v0, Ljj$/time/temporal/IsoFields$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/temporal/IsoFields$Unit;

    return-object v0
.end method

.method public static values()[Ljj$/time/temporal/IsoFields$Unit;
    .registers 1

    sget-object v0, Ljj$/time/temporal/IsoFields$Unit;->$VALUES:[Ljj$/time/temporal/IsoFields$Unit;

    invoke-virtual {v0}, [Ljj$/time/temporal/IsoFields$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/temporal/IsoFields$Unit;

    return-object v0
.end method


# virtual methods
.method public addTo(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 9

    sget-object v0, Ljj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13  #0x2
    const-wide/16 v0, 0x4

    div-long v2, p2, v0

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    rem-long v0, p2, v0

    const-wide/16 v3, 0x3

    mul-long v0, v0, v3

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v0, v1, v3}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :pswitch_2a  #0x1
    sget-object v0, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    sget-object v1, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_13  #00000002
    .end packed-switch
.end method

.method public between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)J
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    invoke-interface {p1, p2, p0}, Ljj$/time/temporal/Temporal;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_f
    sget-object v0, Ljj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x2
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, v0}, Ljj$/time/temporal/Temporal;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    return-wide v0

    :pswitch_2c  #0x1
    sget-object v0, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    invoke-interface {p2, v0}, Ljj$/time/temporal/Temporal;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    invoke-interface {p1, v2}, Ljj$/time/temporal/Temporal;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_22  #00000002
    .end packed-switch
.end method

.method public getDuration()Ljj$/time/Duration;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/IsoFields$Unit;->duration:Ljj$/time/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isDurationEstimated()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/Temporal;)Z
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/Temporal;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljj$/time/temporal/IsoFields;->isIso(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    return-object v0
.end method
