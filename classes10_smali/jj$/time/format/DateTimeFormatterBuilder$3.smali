.class synthetic Ljj$/time/format/DateTimeFormatterBuilder$3;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# static fields
.field static final synthetic $SwitchMap$java$time$format$SignStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljj$/time/format/SignStyle;->values()[Ljj$/time/format/SignStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    :try_start_9
    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v1, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    invoke-virtual {v1}, Ljj$/time/format/SignStyle;->ordinal()I

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
    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v1, Ljj$/time/format/SignStyle;->ALWAYS:Ljj$/time/format/SignStyle;

    invoke-virtual {v1}, Ljj$/time/format/SignStyle;->ordinal()I

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
    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v1, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    invoke-virtual {v1}, Ljj$/time/format/SignStyle;->ordinal()I

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
    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    sget-object v1, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    invoke-virtual {v1}, Ljj$/time/format/SignStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    return-void
.end method
