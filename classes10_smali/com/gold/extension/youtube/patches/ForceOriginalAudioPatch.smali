.class public Lcom/gold/extension/youtube/patches/ForceOriginalAudioPatch;
.super Ljava/lang/Object;
.source "ForceOriginalAudioPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEnabled()V
    .registers 2

    .line 12
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->FORCE_ORIGINAL_AUDIO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 13
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_VIDEO_STREAMS_CLIENT_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 14
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/spoof/ClientType;

    .line 12
    invoke-static {v0, v1}, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch;->setEnabled(ZLcom/gold/extension/shared/spoof/ClientType;)V

    return-void
.end method
