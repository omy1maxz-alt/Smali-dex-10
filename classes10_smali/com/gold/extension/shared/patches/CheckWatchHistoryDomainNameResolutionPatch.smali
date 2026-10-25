.class public Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch;
.super Ljava/lang/Object;
.source "CheckWatchHistoryDomainNameResolutionPatch.java"


# static fields
.field private static final HISTORY_TRACKING_ENDPOINT:Ljava/lang/String; = "s.youtube.com"

.field private static final SINKHOLE_IPV4:Ljava/lang/String; = "0.0.0.0"

.field private static final SINKHOLE_IPV6:Ljava/lang/String; = "::"


# direct methods
.method public static synthetic $r8$lambda$9MR7Revlb9fNeOmjEK3uS6Gx2zw()V
    .registers 2

    .line 90
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CHECK_WATCH_HISTORY_DOMAIN_NAME:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CrvROYswD2eflwecZWIQOXK6KWw()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$D6cKMuR4PSNvSKzwEczLBwFtRDM()Ljava/lang/String;
    .registers 1

    .line 78
    const-string v0, "Activity is finishing, skipping watch history dialog warning"

    return-object v0
.end method

.method public static synthetic $r8$lambda$WKdeuoX3MHJR8FpTaAd-aueSijI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " resolves to localhost"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eNY9vHE9vBlZOML8djx75xmZhFY(Landroid/app/Activity;)V
    .registers 4

    .line 65
    const-string v0, "s.youtube.com"

    :try_start_2
    const-string v1, "youtube.com"

    .line 66
    invoke-static {v1}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch;->domainResolvesToValidIP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 67
    invoke-static {v0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch;->domainResolvesToValidIP(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 69
    invoke-static {v1}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch;->domainResolvesToValidIP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 70
    invoke-static {v0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch;->domainResolvesToValidIP(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 71
    invoke-static {v1}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch;->domainResolvesToValidIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 72
    invoke-static {v0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch;->domainResolvesToValidIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_31

    .line 76
    :cond_29
    new-instance v0, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda7;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception p0

    .line 97
    new-instance v0, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$io8GWtxZaZxXCR_lEx4TDd-q1NA(Landroid/app/Activity;)V
    .registers 12

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_40

    .line 81
    :cond_d
    const-string v0, "youtube_check_watch_history_domain_name_dialog_title"

    .line 83
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "youtube_check_watch_history_domain_name_dialog_message"

    .line 84
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    new-instance v6, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda5;-><init>()V

    const-string v0, "youtube_check_watch_history_domain_name_dialog_ignore"

    .line 89
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda6;

    invoke-direct {v9}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda6;-><init>()V

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 81
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 94
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/gold/extension/shared/Utils;->showDialog(Landroid/app/Activity;Landroid/app/Dialog;ZLcom/gold/extension/shared/Utils$DialogFragmentOnStartAction;)V

    return-void

    .line 78
    :cond_40
    :goto_40
    new-instance p0, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jgPhprX5MdbtjHBkwBWkVamPzwU(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " resolves to sinkhole ip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$revqw2MGmpwMO0CbJpt3ajDMhEE(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed to resolve"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sOKo665QKWBzHEIQ0bMFCjpGeqY()Ljava/lang/String;
    .registers 1

    .line 97
    const-string v0, "checkDnsResolver failure"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDnsResolver(Landroid/app/Activity;)V
    .registers 2

    .line 53
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CHECK_WATCH_HISTORY_DOMAIN_NAME:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 55
    :cond_13
    new-instance v0, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private static domainResolvesToValidIP(Ljava/lang/String;)Z
    .registers 3

    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 33
    new-instance v0, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_3b

    .line 34
    :cond_17
    const-string v0, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x1

    return p0

    .line 35
    :cond_2a
    :goto_2a
    new-instance v0, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_32
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_3b

    .line 40
    :catch_33
    new-instance v0, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/patches/CheckWatchHistoryDomainNameResolutionPatch$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :goto_3b
    const/4 p0, 0x0

    return p0
.end method
