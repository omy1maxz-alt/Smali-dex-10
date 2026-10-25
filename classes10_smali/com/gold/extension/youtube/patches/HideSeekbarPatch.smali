.class public Lcom/gold/extension/youtube/patches/HideSeekbarPatch;
.super Ljava/lang/Object;
.source "HideSeekbarPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideSeekbar()Z
    .registers 1

    .line 11
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static useFullscreenLargeSeekbar(Z)Z
    .registers 1

    .line 18
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->FULLSCREEN_LARGE_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
