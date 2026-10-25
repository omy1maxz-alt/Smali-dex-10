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
    .registers 10

    const-string v0, "currv"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringPrefs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/gold/youtube/VersionInt;->version1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/gold/youtube/VersionInt;->version2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "last_upcheck"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    sub-int v5, v4, v5

    if-lez v5, :cond_44

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    :goto_45
    if-nez v6, :cond_49

    if-eqz v7, :cond_5c

    :cond_49
    invoke-static {}, Lcom/gold/youtube/Connectivity;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5c

    if-eqz v6, :cond_54

    invoke-static {v3, v4}, Lcom/gold/youtube/om7753/util/Utils;->setInt(Ljava/lang/String;I)V

    :cond_54
    new-instance v3, Lcom/gold/youtube/om7753/util/FollowUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/gold/youtube/om7753/util/FollowUtils$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {v0, v2}, Lcom/gold/youtube/om7753/util/Utils;->setStringPrefs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
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
    .registers 12

    invoke-static {}, Lcom/gold/youtube/om7753/util/FollowUtils;->appGetFirstTimeRun()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    :goto_7
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/FollowUtils;->ChkUpd(Landroid/app/Activity;)V

    return-void

    :cond_b
    invoke-static {}, Lcom/gold/youtube/om7753/util/Utils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Follow Developer For Latest Update"

    const-string v4, "Follow me on Instagram to get latest updates!"

    const-string v5, "Close"

    const-string v6, "Remind later"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v1, v7, :cond_23

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_28

    :cond_23
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_28
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/gold/youtube/om7753/util/FollowUtils$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0, p0}, Lcom/gold/youtube/om7753/util/FollowUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/gold/youtube/om7753/util/FollowUtils$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/gold/youtube/om7753/util/FollowUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7
.end method
