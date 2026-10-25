.class public Lcom/gold/youtube/om7753/App;
.super Lcom/google/android/apps/youtube/app/YouTubeTikTokRoot_Application;
.source "App.java"


# static fields
.field private static context:Landroid/content/Context;

.field public static debug:Z


# instance fields
.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/apps/youtube/app/YouTubeTikTokRoot_Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/App;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method private configureRxJavaErrorHandler()V
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/App$1;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/App$1;-><init>(Lcom/gold/youtube/om7753/App;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/App;->context:Landroid/content/Context;

    if-nez v0, :cond_d

    const-string v0, "YouTubeApplication"

    const-string v1, "Context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/gold/youtube/om7753/App;->context:Landroid/content/Context;

    goto :goto_c
.end method

.method private initNotificationChannels()V
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    const-string v0, "notification_channel_id"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_channel_name"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_channel_description"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-string v0, "hash_channel_id"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash_channel_name"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hash_channel_description"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    new-instance v7, Landroid/app/NotificationChannel;

    invoke-direct {v7, v0, v1, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gold/youtube/om7753/DownloaderImpl;->init(Lokhttp4/OkHttpClient$Builder;)Lcom/gold/youtube/om7753/DownloaderImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/App;->setCookiesToDownloader(Lcom/gold/youtube/om7753/DownloaderImpl;)V

    return-object v0
.end method

.method protected isDisposedRxExceptionsReported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Lcom/google/android/apps/youtube/app/YouTubeTikTokRoot_Application;->onCreate()V


    sput-object p0, Lcom/gold/youtube/om7753/App;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/gold/youtube/om7753/settings/NewSettings;->saveDefaultVideoDownloadDirectory(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/gold/youtube/om7753/settings/NewSettings;->saveDefaultAudioDownloadDirectory(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/App;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v0

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getPreferredLocalization(Landroid/content/Context;)Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->init(Lcom/gold/youtube/om7753/extractor/downloader/Downloader;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Localization;->resolvePrettyTime(Landroid/content/Context;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Localization;->initPrettyTime(Lorg/ocpsoft/prettytime/PrettyTime;)V

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/StateSaver;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/App;->initNotificationChannels()V

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ServiceHelper;->initServices(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/App;->configureRxJavaErrorHandler()V

    return-void
.end method

.method protected setCookiesToDownloader(Lcom/gold/youtube/om7753/DownloaderImpl;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recaptcha_cookies_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recaptcha_cookies"

    invoke-virtual {p1, v1, v0}, Lcom/gold/youtube/om7753/DownloaderImpl;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gold/youtube/om7753/DownloaderImpl;->updateYoutubeRestrictedModeCookies(Landroid/content/Context;)V

    return-void
.end method
