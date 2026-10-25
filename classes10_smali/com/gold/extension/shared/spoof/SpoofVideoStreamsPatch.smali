.class public Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;
.super Ljava/lang/Object;
.source "SpoofVideoStreamsPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptHashAvailability;,
        Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptClientAvailability;
    }
.end annotation


# static fields
.field private static final INTERNET_CONNECTION_CHECK_URI:Landroid/net/Uri;

.field private static final INTERNET_CONNECTION_CHECK_URI_STRING:Ljava/lang/String; = "https://www.google.com/gen_204"

.field private static final SPOOF_VIDEO_STREAMS:Z

.field public static volatile currentVideoRequestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile languageOverride:Lcom/gold/extension/shared/settings/AppLanguage;

.field private static mainActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public static overrideSpoofStreamFlagsForHeaders:Z

.field private static volatile preferredClient:Lcom/gold/extension/shared/spoof/ClientType;


# direct methods
.method public static synthetic $r8$lambda$2HPRblV9lsdUROhuCAsSITCDkP0()Ljava/lang/String;
    .registers 1

    .line 83
    const-string v0, "Forcing override of spoof stream flags with spoofing off"

    return-object v0
.end method

.method public static synthetic $r8$lambda$5LHDZyr9S7Utgbo2h8Sw_2fB5KQ()Ljava/lang/String;
    .registers 1

    .line 146
    const-string v0, "Blocking \'get_watch\' by returning internet connection check URI"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6PvJizlcwpsqgrEyxFU6AdGcWF4()Ljava/lang/String;
    .registers 1

    .line 399
    const-string v0, "removeVideoPlaybackPostBody failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6fNN_fHcTgcdeLWU_NdqIdVOMaI()Ljava/lang/String;
    .registers 1

    .line 222
    const-string v0, "blockInitPlaybackRequest failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$74Cw6DxFSUeyiWLH34uObvRaQvI()Ljava/lang/String;
    .registers 1

    .line 217
    const-string v0, "Blocking \'initplayback\' by returning internet connection check URI"

    return-object v0
.end method

.method public static synthetic $r8$lambda$7nEyigyLF95Ii1w_zjqjluKcv0w()Ljava/lang/String;
    .registers 1

    .line 169
    const-string v0, "blockGetWatchRequest failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$AHJauyv9uN8gm7uNlLcW1NqzSZI()Ljava/lang/String;
    .registers 1

    .line 418
    const-string v0, "appendSpoofedClient failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$AgJtkx17rf1hUGY9V4gYVhZhFEo()Ljava/lang/String;
    .registers 1

    .line 164
    const-string v0, "Blocking \'get_watch\' by returning internet connection check URI"

    return-object v0
.end method

.method public static synthetic $r8$lambda$BJ4TYW_Wlq61MXg6v4aeC6zsCgg()Ljava/lang/String;
    .registers 1

    .line 347
    const-string v0, "buildRequest failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$EcXJXRu504XouE8wIN1hJEdavp8()Ljava/lang/String;
    .registers 1

    .line 261
    const-string v0, "useMediaFetchHotConfigReplacement is set on"

    return-object v0
.end method

.method public static synthetic $r8$lambda$HPVMSyQcA4imp_vaLnCMBQGBVzk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overriding video stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MLcWanUuB5LsCHt6aKXjfkbJRAE(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not overriding streaming data (video stream is null): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PbXKwUyA_egTKfhlwN_5xR5ogOw()Ljava/lang/String;
    .registers 1

    .line 291
    const-string v0, "useReelItemWatchResponse is set on"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Qwx6AJwrh0sL7TCKA3taJCXmc8s(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring request with no ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WBMwBeX-Ve-RAvh7-BGf49aqYZk()Ljava/lang/String;
    .registers 1

    .line 198
    const-string v0, "blockGetAttRequest failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Z_e1inQwA6Ioc90GUVEX10Ee-9Y(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_eR7cJSNNp4sEo-0gUTtM7MadY4()Ljava/lang/String;
    .registers 1

    .line 276
    const-string v0, "usePlaybackStartFeatureFlag is set on"

    return-object v0
.end method

.method public static synthetic $r8$lambda$aY-qFj7gbTfmQnaLBh3GAYaCJjg()Ljava/lang/String;
    .registers 1

    .line 372
    const-string v0, "getStreamingData failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$nDU_e4is3ZEft04mKMSnh3bcFGY()Ljava/lang/String;
    .registers 1

    .line 193
    const-string v0, "Blocking \'att/get\' by returning internet connection check URI"

    return-object v0
.end method

.method public static synthetic $r8$lambda$vyz36GuAWAul6u96k6AbpKyFJhU()Ljava/lang/String;
    .registers 1

    .line 306
    const-string v0, "useMediaSessionFeatureFlag is set on"

    return-object v0
.end method

.method public static synthetic $r8$lambda$yd5elM7komBsxlpsw_BmD5A-Ivk()Ljava/lang/String;
    .registers 1

    .line 151
    const-string v0, "blockGetWatchRequest failure"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetpreferredClient()Lcom/gold/extension/shared/spoof/ClientType;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->preferredClient:Lcom/gold/extension/shared/spoof/ClientType;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 66
    const-string v0, "https://www.google.com/gen_204"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->INTERNET_CONNECTION_CHECK_URI:Landroid/net/Uri;

    .line 68
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    .line 72
    sput-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->overrideSpoofStreamFlagsForHeaders:Z

    .line 77
    sget-object v0, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    sput-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->preferredClient:Lcom/gold/extension/shared/spoof/ClientType;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendSpoofedClient(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 411
    const-string v0, "\u202d"

    :try_start_2
    sget-boolean v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v1, :cond_38

    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_STATS_FOR_NERDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 412
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2009("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->getLastSpoofedClientName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception v0

    goto :goto_39

    :cond_38
    return-object p0

    .line 418
    :goto_39
    new-instance v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static blockGetAttRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 187
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_2a

    .line 189
    :try_start_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 192
    const-string v1, "att/get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 193
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 195
    const-string p0, "https://www.google.com/gen_204"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception v0

    .line 198
    new-instance v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_2a
    return-object p0
.end method

.method public static blockGetWatchRequest(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .registers 3

    .line 159
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_2e

    .line 161
    :try_start_4
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 163
    const-string v1, "get_watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 164
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 166
    sget-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->INTERNET_CONNECTION_CHECK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception v0

    .line 169
    new-instance v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_2e
    return-object p0
.end method

.method public static blockGetWatchRequest(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    .line 141
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_26

    .line 143
    :try_start_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 145
    const-string v1, "get_watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 146
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 148
    sget-object p0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->INTERNET_CONNECTION_CHECK_URI:Landroid/net/Uri;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception v0

    .line 151
    new-instance v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_26
    return-object p0
.end method

.method public static blockInitPlaybackRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 211
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_2a

    .line 213
    :try_start_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 216
    const-string v1, "initplayback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 217
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 219
    const-string p0, "https://www.google.com/gen_204"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception v0

    .line 222
    new-instance v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_2a
    return-object p0
.end method

.method public static disableSABR()Z
    .registers 1

    .line 252
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    return v0
.end method

.method public static fetchDetails(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;
    .registers 3

    .line 380
    sget-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->currentVideoRequestHeader:Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->getDetailsRequest(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    move-result-object p0

    return-object p0
.end method

.method public static fetchStreams(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 319
    sput-object p1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->currentVideoRequestHeader:Ljava/util/Map;

    .line 321
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_61

    .line 323
    :try_start_6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 325
    const-string v2, "player"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_61

    .line 333
    :cond_19
    const-string v2, "get_drm_license"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "heartbeat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "refresh"

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "ad_break"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_4f

    .line 339
    :cond_3a
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 341
    new-instance p1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 345
    :cond_4b
    invoke-static {v0, p1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->fetchStreamRequest(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 335
    :cond_4f
    :goto_4f
    new-instance p0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda12;

    invoke-direct {p0, v1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception p0

    .line 347
    new-instance p1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public static fixHLSCurrentTime(Z)Z
    .registers 2

    .line 241
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-nez v0, :cond_5

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    .line 96
    sget-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public static getLanguageOverride()Lcom/gold/extension/shared/settings/AppLanguage;
    .registers 1

    .line 108
    sget-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->languageOverride:Lcom/gold/extension/shared/settings/AppLanguage;

    return-object v0
.end method

.method public static getPreferredClient()Lcom/gold/extension/shared/spoof/ClientType;
    .registers 1

    .line 124
    sget-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->preferredClient:Lcom/gold/extension/shared/spoof/ClientType;

    return-object v0
.end method

.method public static getStreamingData(Ljava/lang/String;)[B
    .registers 3

    .line 359
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_2d

    .line 361
    :try_start_4
    invoke-static {p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->getStreamRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 363
    invoke-virtual {v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->getStreamDetails()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1b

    .line 365
    new-instance v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v0

    .line 370
    :cond_1b
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_2d

    :catch_24
    move-exception p0

    .line 372
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isPatchIncluded()Z
    .registers 1

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x0

    return v0
.end method

.method public static isSpoofingEnabled()Z
    .registers 1

    .line 233
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    return v0
.end method

.method public static removeVideoPlaybackPostBody(Landroid/net/Uri;I[B)[B
    .registers 4

    .line 389
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    .line 393
    :try_start_7
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 394
    const-string p1, "videoplayback"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_17

    if-eqz p0, :cond_20

    const/4 p0, 0x0

    return-object p0

    :catch_17
    move-exception p0

    .line 399
    new-instance p1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda20;

    invoke-direct {p1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_20
    return-object p2
.end method

.method public static setClientsToUse(Ljava/util/List;Lcom/gold/extension/shared/spoof/ClientType;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/spoof/ClientType;",
            ">;",
            "Lcom/gold/extension/shared/spoof/ClientType;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->preferredClient:Lcom/gold/extension/shared/spoof/ClientType;

    .line 120
    invoke-static {p0, p1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->setClientOrderToUse(Ljava/util/List;Lcom/gold/extension/shared/spoof/ClientType;)V

    return-void
.end method

.method public static setLanguageOverride(Lcom/gold/extension/shared/settings/AppLanguage;)V
    .registers 1

    .line 115
    sput-object p0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->languageOverride:Lcom/gold/extension/shared/settings/AppLanguage;

    return-void
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .registers 2

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setOverrideSpoofStreamFlagsForHeaders()V
    .registers 1

    .line 82
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->overrideSpoofStreamFlagsForHeaders:Z

    if-nez v0, :cond_f

    .line 83
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v0, 0x1

    .line 84
    sput-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->overrideSpoofStreamFlagsForHeaders:Z

    :cond_f
    return-void
.end method

.method public static spoofingToClientWithNoMultiAudioStreams()Z
    .registers 1

    .line 128
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->isPatchIncluded()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->preferredClient:Lcom/gold/extension/shared/spoof/ClientType;

    iget-boolean v0, v0, Lcom/gold/extension/shared/spoof/ClientType;->supportsMultiAudioTracks:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static useMediaFetchHotConfigReplacement(Z)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 261
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 264
    :cond_a
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->overrideSpoofStreamFlagsForHeaders:Z

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    :cond_f
    return p0
.end method

.method public static useMediaSessionFeatureFlag(Z)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 306
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 309
    :cond_a
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->overrideSpoofStreamFlagsForHeaders:Z

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    :cond_f
    return p0
.end method

.method public static usePlaybackStartFeatureFlag(Z)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 276
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 279
    :cond_a
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-nez v0, :cond_f

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static useReelItemWatchResponseFeatureFlag(Z)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 291
    new-instance v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 294
    :cond_a
    sget-boolean v0, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->SPOOF_VIDEO_STREAMS:Z

    if-nez v0, :cond_f

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method
