.class public Lcom/gold/extension/youtube/patches/LivestreamDvrPatch;
.super Ljava/lang/Object;
.source "LivestreamDvrPatch.java"


# static fields
.field private static final SEVEN_DAYS_IN_SECONDS:I = 0x93a80


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLivestreamDvr(Z)Z
    .registers 1

    if-nez p0, :cond_11

    .line 23
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->LIVESTREAM_DVR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static overrideMaxDvrDurationSec(D)D
    .registers 4

    .line 14
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->EXPAND_LIVESTREAM_DVR_DURATION:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_14

    :goto_13
    return-wide p0

    :cond_14
    const-wide p0, 0x4122750000000000L  # 604800.0

    return-wide p0
.end method
