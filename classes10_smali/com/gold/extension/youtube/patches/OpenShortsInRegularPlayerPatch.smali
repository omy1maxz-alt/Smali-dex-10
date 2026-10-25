.class public Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;
.super Ljava/lang/Object;
.source "OpenShortsInRegularPlayerPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;
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

.field private static volatile overrideBackPressToExit:Z


# direct methods
.method public static synthetic $r8$lambda$Ft1Sp6WibW63k7_o3h2jvLpfbgM()Ljava/lang/String;
    .registers 1

    .line 37
    const-string v0, "Overriding back press to exit activity"

    return-object v0
.end method

.method public static synthetic $r8$lambda$LrsDoLUndRfQAc41GJ7l8dyQSy0()Ljava/lang/String;
    .registers 1

    .line 67
    const-string v0, "Ignoring Short with no videoId"

    return-object v0
.end method

.method public static synthetic $r8$lambda$l88Q_FB5kcyrSIJ-3flrVywFAW4()Ljava/lang/String;
    .registers 1

    .line 87
    const-string v0, "openShort failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$pSRlzFhqQIXl72VnoxHPC5dsrOw()Ljava/lang/String;
    .registers 1

    .line 77
    const-string v0, "Setting back button override and opening Shorts intent"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openShort(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 49
    :try_start_1
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_PLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    .line 50
    sget-object v2, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->SHORTS_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    if-ne v1, v2, :cond_12

    .line 51
    sput-boolean v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;->overrideBackPressToExit:Z

    return v0

    :catch_10
    move-exception p0

    goto :goto_4b

    .line 55
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 67
    new-instance p0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 68
    sput-boolean v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;->overrideBackPressToExit:Z

    return v0

    .line 72
    :cond_23
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->getSelectedNavigationButton()Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v2

    sget-object v3, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->SHORTS:Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    if-ne v2, v3, :cond_2e

    .line 73
    sput-boolean v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;->overrideBackPressToExit:Z

    return v0

    .line 77
    :cond_2e
    new-instance v2, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v2, 0x1

    .line 78
    sput-boolean v2, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;->overrideBackPressToExit:Z

    .line 80
    sget-object v3, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->REGULAR_PLAYER_FULLSCREEN:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    if-ne v1, v3, :cond_3f

    move v1, v2

    goto :goto_40

    :cond_3f
    move v1, v0

    .line 81
    :goto_40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->setOpenNextVideoFullscreen(Ljava/lang/Boolean;)V

    .line 83
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/LoadVideoPatch;->openVideoWithInternalIntent(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_10

    return v2

    :goto_4b
    const/4 v1, 0x0

    .line 86
    invoke-static {v1}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->setOpenNextVideoFullscreen(Ljava/lang/Boolean;)V

    .line 87
    new-instance v1, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static overrideBackPressToExit(Z)Z
    .registers 2

    .line 36
    sget-boolean v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;->overrideBackPressToExit:Z

    if-eqz v0, :cond_d

    .line 37
    new-instance p0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .registers 2

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
