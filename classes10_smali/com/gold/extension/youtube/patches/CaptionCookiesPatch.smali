.class public Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;
.super Ljava/lang/Object;
.source "CaptionCookiesPatch.java"


# static fields
.field private static final CAPTION_COOKIES:Ljava/lang/String;

.field private static final SET_CAPTION_COOKIES:Z

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"

.field private static volatile requireCookies:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SET_CAPTION_COOKIES:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->SET_CAPTION_COOKIES:Z

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->CAPTION_COOKIES:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->CAPTION_COOKIES:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->requireCookies:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCookies()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->CAPTION_COOKIES:Ljava/lang/String;

    return-object v0
.end method

.method public static getRequireCookies()Z
    .registers 1

    .line 18
    sget-boolean v0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->requireCookies:Z

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    .line 40
    const-string v0, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"

    return-object v0
.end method

.method public static setRequireCookies(Ljava/lang/String;)V
    .registers 2

    .line 25
    sget-boolean v0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->SET_CAPTION_COOKIES:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->CAPTION_COOKIES:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p0, :cond_18

    const-string v0, "api/timedtext"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    sput-boolean p0, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->requireCookies:Z

    return-void
.end method
