.class public Lcom/gold/extension/youtube/patches/theme/ThemePatch;
.super Lcom/gold/extension/shared/theme/BaseThemePatch;
.source "ThemePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;
    }
.end annotation


# static fields
.field private static final DARK_VALUES:[I

.field private static final WHITE_VALUES:[I


# direct methods
.method public static synthetic $r8$lambda$BYobTmWf3QBzPuM2nMpMjG3kKEk(ILcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;)Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overriding splash screen style from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->styleFromOrdinal(I)Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    const v0, -0x60607

    const v1, -0x5000001

    const/4 v2, -0x1

    .line 45
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch;->WHITE_VALUES:[I

    const v0, -0xf0f0f1

    const v1, -0x5dededf

    const v2, -0xd7d7d8

    const v3, -0xdededf

    const v4, -0xe7e7e8

    .line 51
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch;->DARK_VALUES:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/gold/extension/shared/theme/BaseThemePatch;-><init>()V

    return-void
.end method

.method public static getLoadingScreenType(I)I
    .registers 4

    .line 100
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPLASH_SCREEN_ANIMATION_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    .line 102
    sget-object v1, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->DISABLED:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    if-ne v0, v1, :cond_d

    return p0

    .line 106
    :cond_d
    iget v1, v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->style:I

    if-eq p0, v1, :cond_19

    .line 108
    new-instance v2, Lcom/gold/extension/youtube/patches/theme/ThemePatch$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/gold/extension/youtube/patches/theme/ThemePatch$$ExternalSyntheticLambda0;-><init>(ILcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_19
    return v1
.end method

.method public static getValue(I)I
    .registers 3

    .line 69
    sget-object v0, Lcom/gold/extension/youtube/patches/theme/ThemePatch;->DARK_VALUES:[I

    sget-object v1, Lcom/gold/extension/youtube/patches/theme/ThemePatch;->WHITE_VALUES:[I

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/theme/BaseThemePatch;->processColorValue(I[I[I)I

    move-result p0

    return p0
.end method

.method public static gradientLoadingScreenEnabled(Z)Z
    .registers 1

    .line 76
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->GRADIENT_LOADING_SCREEN:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static showSplashScreen(II)I
    .registers 4

    .line 90
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPLASH_SCREEN_ANIMATION_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->DISABLED:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    if-ne v0, v1, :cond_f

    if-eq p0, p1, :cond_d

    goto :goto_f

    :cond_d
    add-int/lit8 p0, p0, -0x1

    :cond_f
    :goto_f
    return p0
.end method

.method public static showSplashScreen(Z)Z
    .registers 3

    .line 83
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPLASH_SCREEN_ANIMATION_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->DISABLED:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    if-eq v0, v1, :cond_e

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
