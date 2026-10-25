.class public final Lcom/gold/youtube/om7753/util/FollowUtils;
.super Ljava/lang/Object;
.source "AnnouncementsPatch.java"


# direct methods
.method public static synthetic $r8$lambda$E4e2Cs3F5Gh0iSszZv9SCJ2TvF8(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/FollowUtils;->lambda$showFollowDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SvCeYo1om63LlMFJ2MF4JzPe5qk(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/FollowUtils;->lambda$showFollowDialog$2(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TKQ12vgatYUCB19laipqJzRe6k(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/FollowUtils;->lambda$showFollowDialog$3(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChkUpd(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method

.method private static appGetFirstTimeRun()I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "youtube_gold"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/gold/youtube/om7753/util/Utils;->getVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "app_first_time"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v2, 0x1

    return v2

    :cond_20
    if-nez v3, :cond_23

    return v2

    :cond_23
    const/4 v2, 0x2

    return v2
.end method

.method private static synthetic lambda$showFollowDialog$1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showFollowDialog$2(Landroid/app/Activity;)V
    .registers 13

    :try_start_0
    const/4 v0, 0x0

    new-instance v1, Lcom/gold/youtube/VersionCheckTask;

    invoke-direct {v1, p0}, Lcom/gold/youtube/VersionCheckTask;-><init>(Landroid/content/Context;)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/gold/youtube/VersionCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static synthetic lambda$showFollowDialog$3(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "youtube_gold"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_first_time"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://t.me/SamMods"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showFollowDialog(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method
