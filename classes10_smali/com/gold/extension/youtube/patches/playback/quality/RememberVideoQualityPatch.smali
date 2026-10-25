.class public Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;
.super Ljava/lang/Object;
.source "RememberVideoQualityPatch.java"


# static fields
.field private static final shortsQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final shortsQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final videoQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final videoQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;


# direct methods
.method public static synthetic $r8$lambda$MnlLUIgrT8bPPpKgDOa7bUl4fcY(I)Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialVideoQuality: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZBd3zEK9sjceuDsBlKSMdaqeKoU(I)Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User changed quality to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hxktB508VrNEDBBSrP3sCNd5hqM()Ljava/lang/String;
    .registers 1

    .line 117
    const-string v0, "userChangedShortsQuality failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$rpVWH586-oKmoYe7u01Bn66g62k()Ljava/lang/String;
    .registers 1

    .line 110
    const-string v0, "Cannot save default quality, qualities is null"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 29
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VIDEO_QUALITY_DEFAULT_WIFI:Lcom/gold/extension/shared/settings/IntegerSetting;

    sput-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->videoQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 30
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VIDEO_QUALITY_DEFAULT_MOBILE:Lcom/gold/extension/shared/settings/IntegerSetting;

    sput-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->videoQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 31
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_QUALITY_DEFAULT_WIFI:Lcom/gold/extension/shared/settings/IntegerSetting;

    sput-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shortsQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 32
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_QUALITY_DEFAULT_MOBILE:Lcom/gold/extension/shared/settings/IntegerSetting;

    sput-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shortsQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultQualityResolution()I
    .registers 3

    .line 42
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result v0

    .line 43
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getNetworkType()Lcom/gold/extension/shared/Utils$NetworkType;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/shared/Utils$NetworkType;->MOBILE:Lcom/gold/extension/shared/Utils$NetworkType;

    if-ne v1, v2, :cond_14

    if-eqz v0, :cond_11

    .line 44
    sget-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shortsQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

    goto :goto_1b

    :cond_11
    sget-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->videoQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

    goto :goto_1b

    :cond_14
    if-eqz v0, :cond_19

    .line 45
    sget-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shortsQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;

    goto :goto_1b

    :cond_19
    sget-object v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->videoQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 46
    :goto_1b
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInitialVideoQuality(Lj$/util/Optional;)Lj$/util/Optional;
    .registers 3

    .line 93
    invoke-static {}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->getDefaultQualityResolution()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_17

    .line 95
    new-instance p0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    :cond_17
    return-object p0
.end method

.method public static newVideoStarted(Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;)V
    .registers 1

    .line 138
    invoke-static {}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->getDefaultQualityResolution()I

    move-result p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->setDesiredVideoResolution(I)V

    return-void
.end method

.method public static saveDefaultQuality(I)V
    .registers 5

    .line 50
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result v0

    .line 51
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getNetworkType()Lcom/gold/extension/shared/Utils$NetworkType;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/shared/Utils$NetworkType;->MOBILE:Lcom/gold/extension/shared/Utils$NetworkType;

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_19

    if-eqz v0, :cond_16

    .line 54
    sget-object v2, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shortsQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

    goto :goto_20

    :cond_16
    sget-object v2, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->videoQualityMobile:Lcom/gold/extension/shared/settings/IntegerSetting;

    goto :goto_20

    :cond_19
    if-eqz v0, :cond_1e

    .line 56
    sget-object v2, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shortsQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;

    goto :goto_20

    :cond_1e
    sget-object v2, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->videoQualityWifi:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 59
    :goto_20
    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p0, :cond_2b

    goto :goto_6d

    .line 64
    :cond_2b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gold/extension/shared/settings/IntegerSetting;->save(Ljava/lang/Object;)V

    .line 66
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_VIDEO_QUALITY_LAST_SELECTED_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "p"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    .line 70
    const-string v0, "youtube_remember_video_quality_toast_shorts_mobile"

    goto :goto_62

    :cond_56
    if-eqz v0, :cond_5b

    .line 72
    const-string v0, "youtube_remember_video_quality_toast_shorts_wifi"

    goto :goto_62

    :cond_5b
    if-eqz v1, :cond_60

    .line 74
    const-string v0, "youtube_remember_video_quality_toast_mobile"

    goto :goto_62

    .line 76
    :cond_60
    const-string v0, "youtube_remember_video_quality_toast_wifi"

    .line 78
    :goto_62
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public static shouldRememberVideoQuality()Z
    .registers 1

    .line 35
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_SHORTS_QUALITY_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

    goto :goto_b

    .line 37
    :cond_9
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_VIDEO_QUALITY_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 38
    :goto_b
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static userChangedQuality(I)V
    .registers 2

    .line 126
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 127
    new-instance v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 129
    invoke-static {}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shouldRememberVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 130
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->saveDefaultQuality(I)V

    :cond_14
    return-void
.end method

.method public static userChangedShortsQuality(I)V
    .registers 2

    .line 107
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->shouldRememberVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 108
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getCurrentQualities()[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    move-result-object v0

    if-nez v0, :cond_15

    .line 110
    new-instance p0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 113
    :cond_15
    aget-object p0, v0, p0

    .line 114
    invoke-interface {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getResolution()I

    move-result p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->saveDefaultQuality(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-void

    :catch_1f
    move-exception p0

    .line 117
    new-instance v0, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
