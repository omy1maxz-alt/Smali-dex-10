.class synthetic Lorg/ocpsoft/prettytime/TimeUnit$1;
.super Ljava/lang/Object;
.source "TimeUnit.java"


# static fields
.field static final synthetic $SwitchMap$java$time$temporal$ChronoUnit:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljj$/time/temporal/ChronoUnit;->values()[Ljj$/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    :try_start_9
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MILLIS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    :try_start_64
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->DECADES:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->CENTURIES:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v0

    :goto_8e
    :try_start_8e
    sget-object v0, Lorg/ocpsoft/prettytime/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MILLENNIA:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    return-void
.end method
