.class public Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;
.super Ljava/lang/Object;
.source "OpenVideosFullscreenHookPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;,
        Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;
    }
.end annotation


# static fields
.field private static volatile fullscreenInterfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile openNextVideoFullscreen:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static shouldEnterFullscreen:Z


# direct methods
.method public static synthetic $r8$lambda$7F0lUMXHDVFATiIBMJvuJDSuA3c()Ljava/lang/String;
    .registers 1

    .line 50
    const-string v0, "Cannot exit fullscreen mode (interface is null)"

    return-object v0
.end method

.method public static synthetic $r8$lambda$G-j2uc20k1XJZFPXZwR96Y_lVXE()Ljava/lang/String;
    .registers 1

    .line 118
    const-string v0, "playerStatusChanged failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SmGm3osNP9qGfRU-wUC_u0kLNnc()Ljava/lang/String;
    .registers 1

    .line 110
    const-string v0, "Cannot enter fullscreen (interface is null)"

    return-object v0
.end method

.method public static synthetic $r8$lambda$chw-Tp_25NF5XsD9WBvot1kx4Mk()Ljava/lang/String;
    .registers 1

    .line 114
    const-string v0, "Opening video fullscreen"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ilw5DVbcEbmtm5k_tbZNL9Gyjig()Ljava/lang/String;
    .registers 1

    .line 54
    const-string v0, "Exiting fullscreen mode"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->fullscreenInterfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doNotOpenVideoFullscreenPortrait(Z)Z
    .registers 3

    .line 72
    sget-object v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->openNextVideoFullscreen:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    .line 74
    sput-object p0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->openNextVideoFullscreen:Ljava/lang/Boolean;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 78
    :cond_e
    invoke-static {}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->isPatchIncluded()Z

    move-result v0

    if-nez v0, :cond_15

    return p0

    .line 82
    :cond_15
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->OPEN_VIDEOS_FULLSCREEN:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;->PORTRAIT:Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;

    if-eq p0, v0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static exitFullscreenMode()V
    .registers 2

    .line 48
    sget-object v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->fullscreenInterfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;

    if-nez v0, :cond_13

    .line 50
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 54
    :cond_13
    new-instance v1, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 55
    invoke-interface {v0}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;->patch_exitFullscreen()V

    return-void
.end method

.method public static initialize(Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;)V
    .registers 2

    .line 91
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->OPEN_VIDEOS_FULLSCREEN:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;->LANDSCAPE:Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    sput-boolean p0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->shouldEnterFullscreen:Z

    return-void
.end method

.method private static isPatchIncluded()Z
    .registers 1

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x0

    return v0
.end method

.method public static playerStatusChanged(Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 99
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->shouldEnterFullscreen:Z

    if-nez v0, :cond_5

    goto :goto_43

    :cond_5
    if-eqz p0, :cond_43

    .line 100
    const-string v0, "VIDEO_PLAYING"

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_43

    .line 102
    :cond_14
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_20

    .line 103
    sput-boolean v1, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->shouldEnterFullscreen:Z

    return-void

    .line 106
    :cond_20
    sput-boolean v1, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->shouldEnterFullscreen:Z

    .line 108
    sget-object p0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->fullscreenInterfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;

    if-nez p0, :cond_35

    .line 110
    new-instance p0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 114
    :cond_35
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 115
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 116
    invoke-interface {p0}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;->patch_enterFullscreen()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    return-void

    :catch_44
    move-exception p0

    .line 118
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setFullscreenInterface(Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;)V
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->fullscreenInterfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setOpenNextVideoFullscreen(Ljava/lang/Boolean;)V
    .registers 1
    .param p0  # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    sput-object p0, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->openNextVideoFullscreen:Ljava/lang/Boolean;

    return-void
.end method
