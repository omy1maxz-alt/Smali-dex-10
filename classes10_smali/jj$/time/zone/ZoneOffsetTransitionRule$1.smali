.class synthetic Ljj$/time/zone/ZoneOffsetTransitionRule$1;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"


# static fields
.field static final synthetic $SwitchMap$java$time$zone$ZoneOffsetTransitionRule$TimeDefinition:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    :try_start_9
    sget-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    sget-object v1, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

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
    sget-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    sget-object v1, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

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
