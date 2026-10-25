.class public Lcom/gold/extension/youtube/patches/ExitFullscreenPatch;
.super Ljava/lang/Object;
.source "ExitFullscreenPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$zPd9VRrvIMOMhcT3f4lzF9tK35M()Ljava/lang/String;
    .registers 1

    .line 45
    const-string v0, "endOfVideoReached failure"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endOfVideoReached(Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_45

    .line 23
    :try_start_2
    const-string v0, "ENDED"

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_45

    .line 26
    :cond_f
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->EXIT_FULLSCREEN:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;

    .line 27
    sget-object v0, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;->DISABLED:Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;

    if-ne p0, v0, :cond_1c

    goto :goto_45

    .line 31
    :cond_1c
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne v0, v1, :cond_45

    .line 32
    sget-object v0, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;->PORTRAIT_LANDSCAPE:Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;

    if-eq p0, v0, :cond_38

    .line 33
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isLandscapeOrientation()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 34
    sget-object v0, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;->PORTRAIT:Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;

    if-ne p0, v0, :cond_38

    goto :goto_45

    .line 37
    :cond_33
    sget-object v0, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;->LANDSCAPE:Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;

    if-ne p0, v0, :cond_38

    goto :goto_45

    .line 42
    :cond_38
    invoke-static {}, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;->exitFullscreenMode()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    .line 45
    new-instance v0, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    return-void
.end method
