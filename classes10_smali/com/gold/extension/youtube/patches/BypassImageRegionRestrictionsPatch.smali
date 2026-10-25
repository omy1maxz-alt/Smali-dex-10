.class public final Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch;
.super Ljava/lang/Object;
.source "BypassImageRegionRestrictionsPatch.java"


# static fields
.field private static final BYPASS_IMAGE_REGION_RESTRICTIONS_ENABLED:Z

.field private static final REPLACEMENT_IMAGE_DOMAIN:Ljava/lang/String; = "https://yt4.ggpht.com"

.field private static final YOUTUBE_STATIC_IMAGE_DOMAIN_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$Th-_xBO7fyfxUFSmOWnZXPAfiwY()Ljava/lang/String;
    .registers 1

    .line 41
    const-string v0, "overrideImageURL failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$lqenEa0LeJ2dbgxm7f3zt3GsVGk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Replaced: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' with: \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 13
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->BYPASS_IMAGE_REGION_RESTRICTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch;->BYPASS_IMAGE_REGION_RESTRICTIONS_ENABLED:Z

    .line 20
    const-string v0, "^https://(yt3|lh[3-6]|play-lh)\\.(ggpht|googleusercontent)\\.com"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch;->YOUTUBE_STATIC_IMAGE_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static overrideImageURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 30
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch;->BYPASS_IMAGE_REGION_RESTRICTIONS_ENABLED:Z

    if-eqz v0, :cond_2e

    .line 31
    sget-object v0, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch;->YOUTUBE_STATIC_IMAGE_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "https://yt4.ggpht.com"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 35
    new-instance v1, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    goto :goto_2f

    :cond_2d
    return-object v0

    :cond_2e
    return-object p0

    .line 41
    :goto_2f
    new-instance v1, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/BypassImageRegionRestrictionsPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method
