.class public final Lcom/gold/extension/youtube/patches/DisablePreciseSeekingGesturePatch;
.super Ljava/lang/Object;
.source "DisablePreciseSeekingGesturePatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGestureDisabled()Z
    .registers 1

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_PRECISE_SEEKING_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
