.class public Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton;
.super Ljava/lang/Object;
.source "ExternalDownloadButton.java"


# static fields
.field private static legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QyvrdMVi1dbKJGO63xGho_TeGHw(Landroid/view/View;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton;->onDownloadClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lv5KsN-yToUP1BR7hzYPtTeInKU()Ljava/lang/String;
    .registers 1

    .line 49
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 26
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->incrementUpperButtonCount()V

    :cond_f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeButton(Landroid/view/View;)V
    .registers 4

    .line 38
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_20

    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_20

    .line 43
    :cond_11
    const-string v0, "youtube_download_button_bold"

    new-instance v1, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda6;-><init>()V

    .line 42
    invoke-static {p0, v0, v1, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->addButton(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/widget/ImageView;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception p0

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 9

    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-eqz v0, :cond_21

    :try_start_4
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v2, "youtube_external_download_button"

    const-string v4, "youtube_download_button"

    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 44
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    new-instance v6, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda0;-><init>()V

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    :cond_21
    return-void

    :catch_22
    move-exception v0

    move-object p0, v0

    .line 49
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static onDownloadClick(Landroid/view/View;)V
    .registers 4

    .line 75
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://youtu.be/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->launchExternalDownloader(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 71
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 64
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 57
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/ExternalDownloadButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method
