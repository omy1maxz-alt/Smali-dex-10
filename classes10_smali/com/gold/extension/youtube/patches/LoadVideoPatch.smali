.class public final Lcom/gold/extension/youtube/patches/LoadVideoPatch;
.super Ljava/lang/Object;
.source "LoadVideoPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;
    }
.end annotation


# static fields
.field private static mainActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static playerInterfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZHlHBsNCZ5urn_9gKZH8V0sm3I8(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lf9509F1FfMvBdfwR5pWHqiTBM0(Ljava/lang/String;)V
    .registers 4

    .line 125
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 131
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetPackage(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 133
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whPBfWhF3JppGaBRE94zAdDRo2o()Ljava/lang/String;
    .registers 1

    .line 99
    const-string v0, "Failed to reload video"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->playerInterfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDismissPlayerAvailability(Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;)Z
    .registers 1

    if-nez p0, :cond_d

    .line 166
    const-string p0, "youtube_dismiss_player_not_available_toast"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static getPlayerInterface()Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;
    .registers 1

    .line 104
    sget-object v0, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->playerInterfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;

    if-nez v0, :cond_14

    .line 106
    const-string v0, "youtube_dismiss_player_not_available_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_14
    return-object v0
.end method

.method public static initialize(Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;)V
    .registers 2
    .param p0  # Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->playerInterfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static initializeReloadVideo()V
    .registers 8

    .line 63
    const-string v0, "https://www.youtube.com/watch?v="

    const-string v1, "&t="

    const-string v2, "&list="

    :try_start_6
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/youtube/shared/PlayerType;->isNoneOrHidden()Z

    move-result v3

    if-eqz v3, :cond_11

    return-void

    .line 67
    :cond_11
    sget-object v3, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->playerInterfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;

    if-nez v3, :cond_25

    .line 69
    const-string v0, "youtube_dismiss_player_not_available_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_25
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->lastPlayerResponseIsShort()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 77
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 78
    :cond_30
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlayerResponseVideoId()Ljava/lang/String;

    move-result-object v3

    .line 79
    :goto_34
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v5

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 84
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-lez v2, :cond_61

    .line 89
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    .line 91
    div-long/2addr v5, v1

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    .line 92
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/gold/extension/youtube/patches/LoadVideoPatch$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/LoadVideoPatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v1, 0x1

    .line 97
    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->openIntent(Ljava/lang/String;Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception v0

    .line 99
    new-instance v1, Lcom/gold/extension/youtube/patches/LoadVideoPatch$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/LoadVideoPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static openIntent(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p1, :cond_e

    .line 117
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->getPlayerInterface()Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 118
    invoke-interface {p1}, Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;->patch_dismissPlayer()V

    const/16 p1, 0x1f4

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 124
    :goto_f
    new-instance v0, Lcom/gold/extension/youtube/patches/LoadVideoPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/LoadVideoPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    int-to-long p0, p1

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static openVideoWithInternalIntent(Ljava/lang/String;)V
    .registers 6

    .line 141
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->getPlayerInterface()Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 142
    sget-object v1, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 144
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 145
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.apps.youtube.app.watchwhile.InternalMainActivity"

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetComponent(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 150
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vnd.youtube://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v3, "android.intent.extra.inventory_identifier"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string p0, "watch"

    invoke-interface {v0, v2}, Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;->patch_getIntentParcelable(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_45
    return-void
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
