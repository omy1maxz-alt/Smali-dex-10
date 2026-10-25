.class public final Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch;
.super Ljava/lang/Object;
.source "OpenChannelOfLiveAvatarPatch.java"


# static fields
.field private static final ELEMENTS_SENDER_VIEW:Ljava/lang/String; = "com.google.android.libraries.youtube.rendering.elements.sender_view"

.field private static final VIDEO_THUMBNAIL_VIEW_KEY:Ljava/lang/String; = "VideoPresenterConstants.VIDEO_THUMBNAIL_VIEW_KEY"

.field private static volatile liveAvatarChannelRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

.field private static mainActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$54uhZbcxYkrTFGzaxhwSFrGvmJQ()Ljava/lang/String;
    .registers 1

    .line 106
    const-string v0, "openChannel failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$AN0G4kjG0BHNcnGU9RLZnshpjzI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not get channel ID, string parameter is null: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KRvylPLqj8IaGt51GfvezTOIuEw(Ljava/lang/String;)V
    .registers 3

    .line 87
    sget-object v0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch;->liveAvatarChannelRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    invoke-virtual {v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->getStreamDetails()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_23

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 88
    new-instance p0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 90
    new-instance p0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 101
    :cond_23
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NywnyAq6wtR6833qTFHqKa9lgWM(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "live avatar response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VNiS0LUc5Vsy4NRCo9DfeW86yBU(Ljava/lang/String;)V
    .registers 5

    .line 91
    sget-object v0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_35

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://www.youtube.com/channel/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 95
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetPackage(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_35
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openChannel(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :try_start_1
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->OPEN_CHANNEL_OF_LIVE_AVATAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 51
    :cond_e
    sget-object v1, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch;->liveAvatarChannelRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    if-eqz v1, :cond_1b

    .line 52
    invoke-virtual {v1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->fetchIsDone()Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    :catch_19
    move-exception p0

    goto :goto_6a

    .line 56
    :cond_1b
    const-string v1, "VideoPresenterConstants.VIDEO_THUMBNAIL_VIEW_KEY"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    return v0

    .line 60
    :cond_24
    const-string v1, "com.google.android.libraries.youtube.rendering.elements.sender_view"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/facebook/litho/ComponentHost;

    if-eqz v1, :cond_69

    check-cast p0, Lcom/facebook/litho/ComponentHost;

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/litho/ComponentHost;

    if-nez v1, :cond_39

    return v0

    .line 71
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 75
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 76
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v2, :cond_4e

    .line 77
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp40:I

    goto :goto_50

    :cond_4e
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp48:I

    :goto_50
    if-eqz v1, :cond_69

    if-ne v1, p0, :cond_69

    if-le v1, v2, :cond_57

    goto :goto_69

    .line 82
    :cond_57
    sget-object p0, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_CHANNEL_FROM_ID:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {p0, p1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->fetchDetails(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    move-result-object p0

    sput-object p0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch;->liveAvatarChannelRequest:Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    .line 86
    new-instance p0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_67} :catch_19

    const/4 p0, 0x1

    return p0

    :cond_69
    :goto_69
    return v0

    .line 106
    :goto_6a
    new-instance p1, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenChannelOfLiveAvatarPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
