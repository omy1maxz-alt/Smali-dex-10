.class public Lcom/gold/extension/youtube/patches/DisablePlayerPopupPanelsPatch;
.super Ljava/lang/Object;
.source "DisablePlayerPopupPanelsPatch.java"


# direct methods
.method public static synthetic $r8$lambda$g_1HqAWucoYtyCZlYpOL19kbeNE()Ljava/lang/String;
    .registers 1

    .line 14
    const-string v0, "disablePlayerPopupPanels: Popup panels blocked!"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disablePlayerPopupPanels()Z
    .registers 1

    .line 13
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_PLAYER_POPUP_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 14
    new-instance v0, Lcom/gold/extension/youtube/patches/DisablePlayerPopupPanelsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/DisablePlayerPopupPanelsPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method
