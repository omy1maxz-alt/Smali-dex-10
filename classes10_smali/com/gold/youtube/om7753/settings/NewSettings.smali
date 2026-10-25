.class public final Lcom/gold/youtube/om7753/settings/NewSettings;
.super Ljava/lang/Object;
.source "NewSettings.java"


# direct methods
.method public static getDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFolderPathForDir(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "YouTube"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveDefaultAudioDownloadDirectory(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const-string v1, "download_path_audio_key"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private static saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    return-void

    :cond_1a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p2}, Lcom/gold/youtube/om7753/settings/NewSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/gold/youtube/om7753/settings/NewSettings;->getFolderPathForDir(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2c
    return-void
.end method

.method public static saveDefaultVideoDownloadDirectory(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const-string v1, "download_path_video_key"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->saveDefaultDirectory(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static useStorageAccessFramework(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_c

    return v2

    :cond_c
    const-string v0, "storage_use_saf"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
