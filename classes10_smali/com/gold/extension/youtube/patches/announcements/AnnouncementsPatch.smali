.class public final Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch;
.super Ljava/lang/Object;
.source "AnnouncementsPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$0bt3PTYahul1BIE9Ak_II_GgG0Y(Landroid/app/Activity;Ljava/lang/String;Landroid/text/Spanned;ILcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;)V
    .registers 15

    .line 129
    new-instance v5, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v6, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda1;-><init>()V

    const-string p3, "youtube_announcements_dialog_dismiss"

    .line 137
    invoke-static {p3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda2;-><init>()V

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 129
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 142
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    .line 143
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    move v2, p3

    :goto_2d
    if-ge v2, p2, :cond_54

    .line 147
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 148
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_51

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 149
    iget v4, p4, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->icon:I

    invoke-virtual {v3, v4, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 151
    sget v4, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 156
    :cond_54
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 159
    invoke-static {v0, p1}, Lcom/gold/extension/shared/Utils;->showDialog(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ZHU5w_64RjYMb7lDBGCemJ3twI()Ljava/lang/String;
    .registers 1

    .line 110
    const-string v0, "Failed to parse announcement. Fall-backing to raw string"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6oOkJuBOxRJJX6FYYEm9CDQI5D4()Ljava/lang/String;
    .registers 1

    .line 67
    const-string v0, "Failed to parse announcement ID"

    return-object v0
.end method

.method public static synthetic $r8$lambda$71n9CUgZ3WuV7Wccoqr6KdE5Yfk(I)V
    .registers 2

    .line 135
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-1vhpaaA5KXJ4IPszV6TUqKKgw()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$SkUFQl2ZzmOGoe4wBvcbwr66L40()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$bbO_gU3321IkvPm-530tBeyejeM()Ljava/lang/String;
    .registers 1

    .line 164
    const-string v0, "Failed to get announcement"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gl23x-sHzPtjw7M91sOFcEa-8jc(Landroid/app/Activity;)V
    .registers 11

    .line 82
    const-string v0, "level"

    const-string v1, "archived_at"

    :try_start_4
    invoke-static {}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch;->isLatestAlready()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_aa

    .line 84
    :cond_c
    sget-object v2, Lcom/gold/extension/youtube/patches/announcements/requests/AnnouncementsRoutes;->GET_LATEST_ANNOUNCEMENTS:Lcom/gold/extension/shared/requests/Route;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 85
    invoke-static {v2, v4}, Lcom/gold/extension/youtube/patches/announcements/requests/AnnouncementsRoutes;->getAnnouncementsConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 87
    new-instance v4, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda7;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v4}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 89
    invoke-static {v2}, Lcom/gold/extension/shared/requests/Requester;->parseStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 92
    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

    iget-object v4, v4, Lcom/gold/extension/shared/settings/IntegerSetting;->defaultValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 95
    sget-object v5, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    .line 96
    sget-object v6, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->INFO:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_a0

    .line 98
    :try_start_2f
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 101
    const-string v7, "title"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    const-string v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5b

    .line 104
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v5

    goto :goto_5b

    :catchall_59
    move-exception v0

    goto :goto_6e

    .line 106
    :cond_5b
    :goto_5b
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 107
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->fromInt(I)Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    move-result-object v6
    :try_end_69
    .catchall {:try_start_2f .. :try_end_69} :catchall_59

    :cond_69
    move-object v2, v8

    move-object v0, v7

    move v7, v4

    move-object v8, v6

    goto :goto_7b

    .line 110
    :goto_6e
    :try_start_6e
    new-instance v1, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 112
    const-string v7, "Announcement"

    move-object v8, v6

    move-object v0, v7

    move v7, v4

    .line 117
    :goto_7b
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 118
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->save(Ljava/lang/Object;)V

    goto :goto_aa

    :cond_8f
    const/16 v1, 0x3f

    .line 124
    invoke-static {v2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v6

    .line 127
    new-instance v3, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/text/Spanned;ILcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9f} :catch_a0

    goto :goto_aa

    :catch_a0
    move-exception v0

    move-object p0, v0

    .line 164
    new-instance v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :goto_aa
    return-void
.end method

.method public static synthetic $r8$lambda$oRZbNymGRSBC4j4KJSwTm_QVi08(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get latest announcement IDs route connection URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vS9Nz-JaBO3YnK4tyqGF2IJtqtY(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get latest announcements route connection URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vXkzKUhAzvRC6gcDwLfTAnV6t30()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "Could not connect to announcements provider"

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isLatestAlready()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/gold/extension/youtube/patches/announcements/requests/AnnouncementsRoutes;->GET_LATEST_ANNOUNCEMENT_IDS:Lcom/gold/extension/shared/requests/Route;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 37
    invoke-static {v0, v2}, Lcom/gold/extension/youtube/patches/announcements/requests/AnnouncementsRoutes;->getAnnouncementsConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda4;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v2, 0x1

    .line 43
    :try_start_12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_32

    .line 44
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->isSetToDefault()Z

    move-result v1

    if-eqz v1, :cond_23

    return v2

    .line 47
    :cond_23
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    .line 48
    const-string v0, "youtube_announcements_connection_failed"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2f} :catch_30

    return v2

    :catch_30
    move-exception v0

    goto :goto_6e

    .line 57
    :cond_32
    invoke-static {v0}, Lcom/gold/extension/shared/requests/Requester;->parseStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

    iget-object v3, v3, Lcom/gold/extension/shared/settings/IntegerSetting;->defaultValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 62
    :try_start_40
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_4c

    return v2

    .line 65
    :cond_4c
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_57

    goto :goto_60

    :catchall_57
    move-exception v0

    .line 67
    new-instance v4, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v4, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 71
    :goto_60
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6d

    move v1, v2

    :cond_6d
    return v1

    .line 53
    :goto_6e
    new-instance v1, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static showAnnouncement(Landroid/app/Activity;)V
    .registers 2

    .line 75
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    .line 78
    :cond_d
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    .line 80
    :cond_14
    new-instance v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method
