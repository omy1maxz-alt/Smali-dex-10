.class public Ljj$/util/concurrent/DesugarTimeUnit;
.super Ljava/lang/Object;
.source "DesugarTimeUnit.java"


# static fields
.field private static final DAY_SCALE:J = 0x4e94914f0000L

.field private static final HOUR_SCALE:J = 0x34630b8a000L

.field private static final MICRO_SCALE:J = 0x3e8L

.field private static final MILLI_SCALE:J = 0xf4240L

.field private static final MINUTE_SCALE:J = 0xdf8475800L

.field private static final NANO_SCALE:J = 0x1L

.field private static final SECOND_SCALE:J = 0x3b9aca00L


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/concurrent/TimeUnit;Ljj$/time/Duration;)J
    .registers 5

    invoke-virtual {p1}, Ljj$/time/Duration;->toNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static of(Ljj$/time/temporal/ChronoUnit;)Ljava/util/concurrent/TimeUnit;
    .registers 4

    sget-object v0, Ljj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const-string v1, "chronoUnit"

    invoke-static {p0, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TimeUnit equivalent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c  #0x7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    :pswitch_2f  #0x6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    :pswitch_32  #0x5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object v0

    :pswitch_35  #0x4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    :pswitch_38  #0x3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    :pswitch_3b  #0x2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    :pswitch_3e  #0x1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_2f  #00000006
        :pswitch_2c  #00000007
    .end packed-switch
.end method

.method public static toChronoUnit(Ljava/util/concurrent/TimeUnit;)Ljj$/time/temporal/ChronoUnit;
    .registers 3

    sget-object v0, Ljj$/util/concurrent/DesugarTimeUnit$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_11  #0x7
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_14  #0x6
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_17  #0x5
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_1a  #0x4
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_1d  #0x3
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MILLIS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_20  #0x2
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MICROS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_23  #0x1
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
        :pswitch_17  #00000005
        :pswitch_14  #00000006
        :pswitch_11  #00000007
    .end packed-switch
.end method
