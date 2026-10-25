.class public Lcom/gold/extension/youtube/patches/DisableVideoCodecsPatch;
.super Ljava/lang/Object;
.source "DisableVideoCodecsPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowVP9()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->FORCE_AVC_CODEC:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static disableHdrVideo(Landroid/view/Display$HdrCapabilities;)[I
    .registers 2

    .line 14
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_HDR_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    .line 15
    new-array p0, p0, [I

    return-object p0

    .line 16
    :cond_10
    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object p0

    return-object p0
.end method
