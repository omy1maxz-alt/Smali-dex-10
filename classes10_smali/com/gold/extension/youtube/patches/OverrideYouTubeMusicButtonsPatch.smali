.class public Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;
.super Ljava/lang/Object;
.source "OverrideYouTubeMusicButtonsPatch.java"


# static fields
.field private static final HIJACK_FLAG:Ljava/lang/String; = "youtube_hijacked"

.field private static final YOUTUBE_MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.youtube.music"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAppInstalled(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 117
    :try_start_1
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :catch_11
    :cond_11
    return v0
.end method

.method public static overrideSetComponent(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_4
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->OVERRIDE_YOUTUBE_MUSIC_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 108
    :cond_15
    const-string v0, "youtube_hijacked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-object p0

    .line 112
    :cond_1f
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_b

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 59
    :cond_b
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->OVERRIDE_YOUTUBE_MUSIC_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 v1, 0x0

    .line 63
    const-string v2, "youtube_hijacked"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_26

    return-object p0

    .line 67
    :cond_26
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v3, "com.google.android.apps.youtube.music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "music.youtube.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_40

    .line 98
    :cond_3b
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 70
    :cond_40
    :goto_40
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->MORPHE_MUSIC_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "https://music.youtube.com/"

    if-eqz v4, :cond_9a

    invoke-static {v3}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 73
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 74
    const-string v6, "play.google.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6d

    const-string v6, "market://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_6e

    :cond_6d
    move-object p1, v4

    .line 78
    :goto_6e
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 82
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0

    .line 92
    :cond_9a
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public static overrideSetPackage(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 26
    :cond_4
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->OVERRIDE_YOUTUBE_MUSIC_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 v1, 0x0

    .line 30
    const-string v2, "youtube_hijacked"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object p0

    .line 34
    :cond_1f
    const-string v1, "com.google.android.apps.youtube.music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 35
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->MORPHE_MUSIC_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 38
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 42
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0

    .line 50
    :cond_66
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 53
    :cond_6b
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
