.class public Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch;
.super Ljava/lang/Object;
.source "FixBackToExitGesturePatch.java"


# static fields
.field private static final PRESSED_TIMEOUT_MILLISECONDS:J = 0x7d0L

.field private static volatile isTopView:Z

.field private static volatile lastTimeBackPressed:J


# direct methods
.method public static synthetic $r8$lambda$EQNLmsJP9PuMt1WHUSVuFQUSDEU()Ljava/lang/String;
    .registers 1

    .line 85
    const-string v0, "Scrolling reached the top"

    return-object v0
.end method

.method public static synthetic $r8$lambda$KR73BA2c8b617UrEv9TY-_TUH0w()Ljava/lang/String;
    .registers 1

    .line 77
    const-string v0, "Views are scrolling"

    return-object v0
.end method

.method public static synthetic $r8$lambda$QXApv6d9oui9WK1t2BHQ4i2lLf8()V
    .registers 1

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch;->isTopView:Z

    return-void
.end method

.method public static synthetic $r8$lambda$Qj0_BqeVjzXBuPQbE4tXOS1jZZQ()Ljava/lang/String;
    .registers 1

    .line 60
    const-string v0, "Closing activity"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gcyK3UWR3JhR3wYtoHtv0lUfulg()Ljava/lang/String;
    .registers 1

    .line 58
    const-string v0, "Moving task to back"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onBackPressed()V
    .registers 7

    .line 40
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_47

    .line 46
    :cond_7
    sget-boolean v1, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch;->isTopView:Z

    if-eqz v1, :cond_47

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 51
    sget-wide v3, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch;->lastTimeBackPressed:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3d

    .line 57
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne v1, v2, :cond_31

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 58
    new-instance v0, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 60
    :cond_31
    new-instance v1, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_3d
    sput-wide v1, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch;->lastTimeBackPressed:J

    .line 65
    new-instance v0, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v5, v6}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_47
    :goto_47
    return-void
.end method

.method public static onScrollingViews()V
    .registers 1

    .line 77
    new-instance v0, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch;->isTopView:Z

    return-void
.end method

.method public static onTopView()V
    .registers 1

    .line 85
    new-instance v0, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v0, 0x1

    .line 86
    sput-boolean v0, Lcom/gold/extension/youtube/patches/FixBackToExitGesturePatch;->isTopView:Z

    return-void
.end method
