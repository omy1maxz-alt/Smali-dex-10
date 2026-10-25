.class public interface abstract Lorg/ocpsoft/prettytime/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"


# direct methods
.method public static of(Ljj$/time/temporal/ChronoUnit;)Lorg/ocpsoft/prettytime/TimeUnit;
    .registers 3

    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {p0}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No corresponding TimeUnit for given ChronoUnit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13  #0xb
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millennium;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millennium;-><init>()V

    return-object v0

    :pswitch_19  #0xa
    new-instance v0, Lorg/ocpsoft/prettytime/units/Century;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Century;-><init>()V

    return-object v0

    :pswitch_1f  #0x9
    new-instance v0, Lorg/ocpsoft/prettytime/units/Decade;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Decade;-><init>()V

    return-object v0

    :pswitch_25  #0x8
    new-instance v0, Lorg/ocpsoft/prettytime/units/Year;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Year;-><init>()V

    return-object v0

    :pswitch_2b  #0x7
    new-instance v0, Lorg/ocpsoft/prettytime/units/Month;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Month;-><init>()V

    return-object v0

    :pswitch_31  #0x6
    new-instance v0, Lorg/ocpsoft/prettytime/units/Week;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Week;-><init>()V

    return-object v0

    :pswitch_37  #0x5
    new-instance v0, Lorg/ocpsoft/prettytime/units/Day;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Day;-><init>()V

    return-object v0

    :pswitch_3d  #0x4
    new-instance v0, Lorg/ocpsoft/prettytime/units/Hour;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Hour;-><init>()V

    return-object v0

    :pswitch_43  #0x3
    new-instance v0, Lorg/ocpsoft/prettytime/units/Minute;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Minute;-><init>()V

    return-object v0

    :pswitch_49  #0x2
    new-instance v0, Lorg/ocpsoft/prettytime/units/Second;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Second;-><init>()V

    return-object v0

    :pswitch_4f  #0x1
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millisecond;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millisecond;-><init>()V

    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_49  #00000002
        :pswitch_43  #00000003
        :pswitch_3d  #00000004
        :pswitch_37  #00000005
        :pswitch_31  #00000006
        :pswitch_2b  #00000007
        :pswitch_25  #00000008
        :pswitch_1f  #00000009
        :pswitch_19  #0000000a
        :pswitch_13  #0000000b
    .end packed-switch
.end method

.method public static toChronoUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Ljj$/time/temporal/ChronoUnit;
    .registers 3

    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Millisecond;

    if-eqz v0, :cond_7

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MILLIS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_7
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Second;

    if-eqz v0, :cond_e

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_e
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Minute;

    if-eqz v0, :cond_15

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_15
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Hour;

    if-eqz v0, :cond_1c

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_1c
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Day;

    if-eqz v0, :cond_23

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_23
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Week;

    if-eqz v0, :cond_2a

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_2a
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Month;

    if-eqz v0, :cond_31

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_31
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Year;

    if-eqz v0, :cond_38

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_38
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Decade;

    if-eqz v0, :cond_3f

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DECADES:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_3f
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Century;

    if-eqz v0, :cond_46

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->CENTURIES:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_46
    instance-of v0, p0, Lorg/ocpsoft/prettytime/units/Millennium;

    if-eqz v0, :cond_4d

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MILLENNIA:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No corresponding ChronoUnit for given TimeUnit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getMaxQuantity()J
.end method

.method public abstract getMillisPerUnit()J
.end method

.method public abstract isPrecise()Z
.end method
