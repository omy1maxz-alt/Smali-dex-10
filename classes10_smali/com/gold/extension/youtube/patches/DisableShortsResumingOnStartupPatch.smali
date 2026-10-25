.class public Lcom/gold/extension/youtube/patches/DisableShortsResumingOnStartupPatch;
.super Ljava/lang/Object;
.source "DisableShortsResumingOnStartupPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableShortsResumingOnStartup()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SHORTS_RESUMING_ON_STARTUP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static disableShortsResumingOnStartup(Z)Z
    .registers 1

    if-eqz p0, :cond_10

    .line 19
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SHORTS_RESUMING_ON_STARTUP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
