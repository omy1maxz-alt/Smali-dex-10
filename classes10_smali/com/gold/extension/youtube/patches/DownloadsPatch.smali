.class public final Lcom/gold/extension/youtube/patches/DownloadsPatch;
.super Ljava/lang/Object;
.source "DownloadsPatch.java"


# direct methods
.method public static synthetic $r8$lambda$aeAwaUzY7sS1psRxO7Izu-31Hb8()Ljava/lang/String;
    .registers 1

    .line 30
    const-string v0, "inAppDownloadButtonOnClick failure"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inAppDownloadButtonOnClick(Ljava/lang/String;)Z
    .registers 5

    .line 22
    const-string v0, "https://youtu.be/"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER_ACTION_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 27
    :cond_10
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p0, v2, v0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->launchExternalDownloader(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_25

    const/4 p0, 0x1

    return p0

    :catch_25
    move-exception p0

    .line 30
    new-instance v0, Lcom/gold/extension/youtube/patches/DownloadsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/DownloadsPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v1
.end method
