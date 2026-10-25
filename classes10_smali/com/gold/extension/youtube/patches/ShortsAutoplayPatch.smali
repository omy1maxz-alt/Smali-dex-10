.class public Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch;
.super Ljava/lang/Object;
.source "ShortsAutoplayPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;
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


# direct methods
.method public static synthetic $r8$lambda$0j2AkJI54sXNhfF7JIQhOdwTBMU()Ljava/lang/String;
    .registers 1

    .line 98
    const-string v0, "setYTShortsRepeatEnum failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$GeMbyK44Bx9ilnZepa5FvQ13xfo(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 121
    const-string v0, "unknown (null)"

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_9
    if-ne p1, p0, :cond_1a

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Behavior setting is same as original. Using original: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Changing Shorts repeat behavior from: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ePWCRay26oBsnXJX9J41E4z25zY(Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Original is null, returning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$njqDXRXYScIU3b23BAj5tAAhpV8()Ljava/lang/String;
    .registers 1

    .line 138
    const-string v0, "changeShortsRepeatState failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeShortsRepeatBehavior(Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch;->isAppInBackgroundPiPMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 108
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_AUTOPLAY_BACKGROUND:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_15

    :catch_d
    move-exception v0

    goto :goto_48

    .line 109
    :cond_f
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_AUTOPLAY:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    .line 107
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 111
    sget-boolean v1, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_21_10_OR_GREATER:Z

    if-eqz v1, :cond_20

    .line 112
    sget-object v1, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->AUTO_ADVANCE:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    goto :goto_22

    .line 113
    :cond_20
    sget-object v1, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->SINGLE_PLAY:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    :goto_22
    if-eqz v0, :cond_25

    goto :goto_27

    .line 117
    :cond_25
    sget-object v1, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->REPEAT:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    :goto_27
    invoke-static {v1}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->-$$Nest$fgetytEnumValue(Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 120
    new-instance v1, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Enum;Ljava/lang/Enum;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v0

    :cond_36
    if-nez p0, :cond_47

    .line 133
    sget-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->UNKNOWN:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->-$$Nest$fgetytEnumValue(Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;)Ljava/lang/Enum;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Enum;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_d

    return-object v0

    :cond_47
    return-object p0

    .line 138
    :goto_48
    new-instance v1, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static isAppInBackgroundPiPMode()Z
    .registers 1

    .line 85
    sget-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static isAutoPlay(Ljava/lang/Enum;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)Z"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->SINGLE_PLAY:Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->-$$Nest$fgetytEnumValue(Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;)Ljava/lang/Enum;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .registers 2

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch;->mainActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setYTShortsRepeatEnum(Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1b

    aget-object v2, p0, v1

    .line 95
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->setYTEnumValue(Ljava/lang/Enum;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 98
    new-instance v0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
