.class public Lcom/gold/extension/youtube/patches/AutoCaptionsPatch;
.super Ljava/lang/Object;
.source "AutoCaptionsPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;
    }
.end annotation


# static fields
.field private static final captionsButtonStatus:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$ioFfyM_5hZuf8zvg8-PHEDQgr7c()V
    .registers 3

    .line 75
    sget-object v0, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch;->captionsButtonStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch;->captionsButtonStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAutoCaptions(Z)Z
    .registers 3

    .line 34
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->AUTO_CAPTIONS_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;

    .line 35
    sget-object v1, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;->BOTH_ENABLED:Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;

    if-eq v0, v1, :cond_1f

    sget-object v1, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;->WITH_VOLUME_ONLY:Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;

    if-ne v0, v1, :cond_11

    goto :goto_1f

    .line 42
    :cond_11
    sget-object v0, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch;->captionsButtonStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :cond_1f
    :goto_1f
    return p0
.end method

.method public static disableMuteAutoCaptions()Z
    .registers 2

    .line 56
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->AUTO_CAPTIONS_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 57
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;

    .line 59
    sget-object v1, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;->BOTH_ENABLED:Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;

    if-eq v0, v1, :cond_13

    sget-object v1, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;->WITHOUT_VOLUME_ONLY:Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public static newVideoStarted(Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;)V
    .registers 2

    .line 67
    sget-object p0, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch;->captionsButtonStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static videoInformationLoaded()V
    .registers 3

    .line 75
    new-instance v0, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
