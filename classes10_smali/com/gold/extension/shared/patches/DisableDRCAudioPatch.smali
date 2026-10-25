.class public final Lcom/gold/extension/shared/patches/DisableDRCAudioPatch;
.super Ljava/lang/Object;
.source "DisableDRCAudioPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableDrcAudio()Z
    .registers 1

    .line 13
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLE_DRC_AUDIO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static disableDrcAudioConfig(Z)Z
    .registers 2

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, v0}, Lcom/gold/extension/shared/patches/DisableDRCAudioPatch;->overrideConfig(ZZ)Z

    move-result p0

    return p0
.end method

.method public static enableDrcAudioConfig(Z)Z
    .registers 2

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, v0}, Lcom/gold/extension/shared/patches/DisableDRCAudioPatch;->overrideConfig(ZZ)Z

    move-result p0

    return p0
.end method

.method private static overrideConfig(ZZ)Z
    .registers 3

    .line 31
    invoke-static {}, Lcom/gold/extension/shared/patches/DisableDRCAudioPatch;->disableDrcAudio()Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    :cond_7
    return p0
.end method
