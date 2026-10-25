.class public Lcom/gold/extension/youtube/videoplayer/PlayAllButton;
.super Ljava/lang/Object;
.source "PlayAllButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;
    }
.end annotation


# static fields
.field private static legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-uF3IPlBtPLLwZ0H-e4zRnQAmhw(Landroid/view/View;)V
    .registers 2

    .line 67
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->PLAY_ALL_BUTTON_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton;->openVideo(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;)V

    return-void
.end method

.method public static synthetic $r8$lambda$20D2kwxCSvY_-iozcFHMWt2tWXs(Landroid/view/View;)Z
    .registers 2

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton;->openVideo(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$6mSQM8YL1p5ZPXcnw3M0tKd_o8c()Ljava/lang/String;
    .registers 1

    .line 148
    const-string v0, "Failed to launch play all intent"

    return-object v0
.end method

.method public static synthetic $r8$lambda$BmWGJT0nooRIF2AkWZFY-OGp8kM()Ljava/lang/String;
    .registers 1

    .line 74
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$OU1HF904oi-LB16VgWcJBJWIcsQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Play all button: Invalid or missing Channel ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VqHajCyWkfmYSsq43ZTsQXYPZmU()Ljava/lang/String;
    .registers 1

    .line 109
    const-string v0, "Play all button: Video ID is null or empty. Cannot generate URL."

    return-object v0
.end method

.method public static synthetic $r8$lambda$b7EutlcHebEAJ-_5KkqkK7y10cE()Ljava/lang/String;
    .registers 1

    .line 139
    const-string v0, "Play all button: Activity Context is null. Cannot launch Intent."

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 48
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->PLAY_ALL_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->incrementUpperButtonCount()V

    :cond_f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 9

    .line 61
    :try_start_0
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v2, "youtube_play_all_button"

    const-string v4, "youtube_play_all_button"

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->PLAY_ALL_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 66
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    new-instance v6, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda0;-><init>()V

    new-instance v7, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    move-object p0, v0

    .line 74
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static openVideo(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;)V
    .registers 10
    .param p1  # Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    const-string v0, "https://youtu.be/"

    :try_start_2
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 106
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getChannelId()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 109
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 113
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_36

    .line 117
    const-string v6, "?t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_36
    if-eqz p1, :cond_76

    if-lez v0, :cond_3d

    .line 121
    const-string v0, "&"

    goto :goto_3f

    :cond_3d
    const-string v0, "?"

    :goto_3f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "list="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->prefixId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-boolean p1, p1, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->useChannelId:Z

    if-eqz p1, :cond_73

    .line 124
    const-string p1, "UC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    const/4 p1, 0x2

    .line 125
    invoke-virtual {v4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 128
    :cond_61
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda4;

    invoke-direct {p0, v4}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 129
    const-string p0, "youtube_play_all_button_not_available_toast"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 133
    :cond_73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_76
    :goto_76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_85

    .line 139
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 143
    :cond_85
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetPackage(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9e} :catch_9f

    return-void

    :catch_9f
    move-exception p0

    .line 148
    new-instance p1, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 96
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 89
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 82
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayAllButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method
