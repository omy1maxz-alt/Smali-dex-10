.class synthetic Ljj$/time/ZonedDateTime$1;
.super Ljava/lang/Object;
.source "ZonedDateTime.java"


# static fields
.field static final synthetic $SwitchMap$java$time$temporal$ChronoField:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljj$/time/temporal/ChronoField;->values()[Ljj$/time/temporal/ChronoField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    :try_start_9
    sget-object v0, Ljj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

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
    sget-object v0, Ljj$/time/ZonedDateTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
