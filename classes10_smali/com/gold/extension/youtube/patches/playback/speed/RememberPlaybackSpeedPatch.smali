.class public final Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;
.super Ljava/lang/Object;
.source "RememberPlaybackSpeedPatch.java"


# static fields
.field private static final DISABLE_PLAYBACK_SPEED_MUSIC:Z

.field private static final TOAST_DELAY_MILLISECONDS:J = 0x2eeL

.field private static volatile lastFetchedVideoId:Ljava/lang/String;

.field private static lastTimeSpeedChanged:J

.field private static volatile newVideoStarted:Z


# direct methods
.method public static synthetic $r8$lambda$-UeKa8BDkX_umWprBJ45osvmsX0()Ljava/lang/String;
    .registers 1

    .line 82
    const-string v0, "userSelectedPlaybackSpeed failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6JY5tSO8yQfC0vNj2BpnWdzC_jg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prefetching music video status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DiQES23KLcusMOmDu7nAL57KpZ4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overriding music video speed to 1.0x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sAEKQf_UYo2LpFCDZ9YvL6FdQUo()Ljava/lang/String;
    .registers 1

    .line 40
    const-string v0, "newVideoStarted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$tpLnKEJQpgxQNU2mWp9ifgG06XM(JF)V
    .registers 5

    .line 65
    sget-wide v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->lastTimeSpeedChanged:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_7

    goto :goto_47

    .line 70
    :cond_7
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_16

    goto :goto_47

    .line 75
    :cond_16
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/FloatSetting;->save(Ljava/lang/Object;)V

    .line 77
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_PLAYBACK_SPEED_LAST_SELECTED_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_47

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "youtube_remember_playback_speed_toast"

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    :cond_47
    :goto_47
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 26
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_PLAYBACK_SPEED_MUSIC:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->DISABLE_PLAYBACK_SPEED_MUSIC:Z

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->lastFetchedVideoId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlaybackSpeedOverride()F
    .registers 5

    .line 92
    sget-boolean v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->newVideoStarted:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->newVideoStarted:Z

    .line 95
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 96
    sget-boolean v1, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->DISABLE_PLAYBACK_SPEED_MUSIC:Z

    if-eqz v1, :cond_3b

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1c

    return v1

    .line 101
    :cond_1c
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->getRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 103
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->getResult()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 105
    new-instance v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda4;

    invoke-direct {v0, v2}, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v1

    :cond_3b
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_41

    return v0

    :cond_41
    const/high16 v0, -0x40000000  # -2.0f

    return v0
.end method

.method public static newVideoStarted(Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;)V
    .registers 1

    .line 40
    new-instance p0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x1

    .line 41
    sput-boolean p0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->newVideoStarted:Z

    return-void
.end method

.method public static preloadMusicVideoFetch(Ljava/lang/String;Z)V
    .registers 3

    .line 119
    sget-boolean p1, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->DISABLE_PLAYBACK_SPEED_MUSIC:Z

    if-eqz p1, :cond_35

    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->lastPlayerResponseIsShort()Z

    move-result p1

    if-nez p1, :cond_35

    sget-object p1, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->lastFetchedVideoId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_35

    .line 121
    new-instance p1, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 122
    sput-object p0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->lastFetchedVideoId:Ljava/lang/String;

    .line 124
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 123
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->fetchRequestIfNeeded(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/utils/requests/GetMixPlaylistRequest;->getResult()Ljava/lang/Boolean;

    :cond_35
    return-void
.end method

.method public static userSelectedPlaybackSpeed(F)V
    .registers 4

    .line 52
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_PLAYBACK_SPEED_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    const/high16 v0, 0x41000000  # 8.0f

    .line 56
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    sput-wide v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch;->lastTimeSpeedChanged:J

    .line 64
    new-instance v2, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1, p0}, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda2;-><init>(JF)V

    const-wide/16 v0, 0x2ee

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    :cond_22
    return-void

    :catch_23
    move-exception p0

    .line 82
    new-instance v0, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/playback/speed/RememberPlaybackSpeedPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
