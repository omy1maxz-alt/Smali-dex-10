.class public final Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptHashAvailability;
.super Ljava/lang/Object;
.source "SpoofVideoStreamsPatch.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaScriptHashAvailability"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentSettings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 46
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_DISABLE_PLAYER_JS_UPDATE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {p0, v0}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 40
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/Setting;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->-$$Nest$sfgetpreferredClient()Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object p0

    iget-boolean p0, p0, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_DISABLE_PLAYER_JS_UPDATE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 41
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method
