.class public final Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter$HideAudioFlyoutMenuAvailability;
.super Ljava/lang/Object;
.source "PlayerFlyoutMenuComponentsFilter.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HideAudioFlyoutMenuAvailability"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentSettings()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 52
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$TabletLayoutInPlayerAvailability$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 47
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->spoofingToClientWithNoMultiAudioStreams()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
