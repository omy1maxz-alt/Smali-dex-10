.class public Lcom/gold/extension/youtube/patches/FixLikeButtonPatch;
.super Ljava/lang/Object;
.source "FixLikeButtonPatch.java"


# static fields
.field private static final THEMED_LIKE_ANIMATIONS_LEGACY_DARK_ICON_RESIZED_URL:Ljava/lang/String; = "https://cdn.jsdelivr.net/gh/MorpheApp/morphe-patches@dev/patches/src/main/resources/actionbar/assets/animated_like_icon_dark_v4.json"

.field private static final THEMED_LIKE_ANIMATIONS_LEGACY_ICON_RESIZED_URL_PREFIX:Ljava/lang/String; = "https://cdn.jsdelivr.net/gh/MorpheApp/morphe-patches@dev/patches/src/main/resources/actionbar/assets/"

.field private static final THEMED_LIKE_ANIMATIONS_LEGACY_LIGHT_ICON_RESIZED_URL:Ljava/lang/String; = "https://cdn.jsdelivr.net/gh/MorpheApp/morphe-patches@dev/patches/src/main/resources/actionbar/assets/animated_like_icon_light_v4.json"

.field private static final THEMED_LIKE_ANIMATIONS_PREFIX:Ljava/lang/String; = "https://www.gstatic.com/youtube/img/lottie/custom_animated_like_icon/"

.field private static final USE_LEGACY_ICON:Z


# direct methods
.method public static synthetic $r8$lambda$Ntgl33Sy1PDo2PfjOFutIB1ZYGc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fix themed like animation from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 26
    sget-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_39_OR_GREATER:Z

    if-eqz v0, :cond_f

    const-string v0, "20.38.00"

    .line 27
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->isSpoofingToLessThan(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/gold/extension/youtube/patches/FixLikeButtonPatch;->USE_LEGACY_ICON:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixThemedLikeAnimations(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 33
    sget-boolean v0, Lcom/gold/extension/youtube/patches/FixLikeButtonPatch;->USE_LEGACY_ICON:Z

    if-eqz v0, :cond_2b

    if-eqz p0, :cond_2b

    const-string v0, "https://www.gstatic.com/youtube/img/lottie/custom_animated_like_icon/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 36
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq v0, v1, :cond_20

    .line 38
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_20

    .line 40
    :cond_1d
    const-string v0, "https://cdn.jsdelivr.net/gh/MorpheApp/morphe-patches@dev/patches/src/main/resources/actionbar/assets/animated_like_icon_light_v4.json"

    goto :goto_22

    .line 39
    :cond_20
    :goto_20
    const-string v0, "https://cdn.jsdelivr.net/gh/MorpheApp/morphe-patches@dev/patches/src/main/resources/actionbar/assets/animated_like_icon_dark_v4.json"

    .line 42
    :goto_22
    new-instance v1, Lcom/gold/extension/youtube/patches/FixLikeButtonPatch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/youtube/patches/FixLikeButtonPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v0

    :cond_2b
    return-object p0
.end method
