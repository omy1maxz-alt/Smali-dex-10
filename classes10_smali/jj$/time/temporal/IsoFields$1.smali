.class synthetic Ljj$/time/temporal/IsoFields$1;
.super Ljava/lang/Object;
.source "IsoFields.java"


# static fields
.field static final synthetic $SwitchMap$java$time$temporal$IsoFields$Unit:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljj$/time/temporal/IsoFields$Unit;->values()[Ljj$/time/temporal/IsoFields$Unit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    :try_start_9
    sget-object v0, Ljj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    sget-object v1, Ljj$/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Ljj$/time/temporal/IsoFields$Unit;->ordinal()I

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
    sget-object v0, Ljj$/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    sget-object v1, Ljj$/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Ljj$/time/temporal/IsoFields$Unit;->ordinal()I

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
