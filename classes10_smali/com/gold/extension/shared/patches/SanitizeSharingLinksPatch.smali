.class public final Lcom/gold/extension/shared/patches/SanitizeSharingLinksPatch;
.super Ljava/lang/Object;
.source "SanitizeSharingLinksPatch.java"


# static fields
.field private static final googleHostName:Ljava/lang/String; = "youtube.com"

.field private static final urlPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, "https?://\\S+(?<![.!?,-])"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/SanitizeSharingLinksPatch;->urlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 31
    sget-object v0, Lcom/gold/extension/shared/patches/SanitizeSharingLinksPatch;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 33
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 39
    const-string v2, "youtube.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "youtu.be"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_68

    .line 43
    :cond_2b
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SANITIZE_SHARING_LINKS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3e

    .line 44
    invoke-static {v0}, Lcom/gold/extension/shared/privacy/LinkSanitizer;->returnSanitizedURLFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 48
    :goto_3f
    sget-object v4, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->REPLACE_MUSIC_LINKS_WITH_YOUTUBE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 49
    const-string v1, "music.youtube.com"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 53
    :cond_52
    sget-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->REPLACE_LINKS_WITH_SHORTENER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 54
    invoke-static {v0}, Lcom/gold/extension/shared/privacy/LinkSanitizer;->replaceWithShortenedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_63
    move v3, v1

    :goto_64
    if-nez v3, :cond_67

    goto :goto_68

    :cond_67
    return-object v0

    :cond_68
    :goto_68
    return-object p0
.end method
