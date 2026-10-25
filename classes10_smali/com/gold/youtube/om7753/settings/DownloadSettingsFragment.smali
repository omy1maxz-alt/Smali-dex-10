.class public Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;
.super Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;
.source "DownloadSettingsFragment.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private downloadPathAudioPreference:Ljava/lang/String;

.field private downloadPathVideoPreference:Ljava/lang/String;

.field private prefPathAudio:Landroidx/preference/Preference;

.field private prefPathVideo:Landroidx/preference/Preference;

.field private prefStorageAsk:Landroidx/preference/Preference;

.field private final requestDownloadAudioPathLauncher:Lrx;

.field private final requestDownloadVideoPathLauncher:Lrx;

.field private storageUseSafPreference:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5iK8ccjgoraSN4j_nPRAmtZS8Vs(Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;Lru;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadAudioPathResult(Lru;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L6YjsInGfiV_UrU4P9lsE2ssugI(Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;Lru;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadVideoPathResult(Lru;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rqgflgaMBCOrNb7xQLDcw0qtMoU(Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;-><init>()V

    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;)V

    invoke-interface {p0, v0, v1}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadVideoPathLauncher:Lrx;

    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;)V

    invoke-interface {p0, v0, v1}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadAudioPathLauncher:Lrx;

    return-void
.end method

.method private forgetSAFTree(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method private hasInvalidPath(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p1, 0x1

    :goto_13
    return p1
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->updatePathPickers(Z)V

    return p2
.end method

.method private launchDirectoryPicker(Lrx;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private requestDownloadAudioPathResult(Lru;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadPathResult(Lru;Ljava/lang/String;)V

    return-void
.end method

.method private requestDownloadPathResult(Lru;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lbz;->id()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Localization;->assureCorrectAppLanguage(Landroid/content/Context;)V

    iget v0, p1, Lru;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v0, p1, Lru;->b:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object p1, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v1

    :goto_1a
    const-string v0, "general_error"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_2c

    const-string p1, "invalid_directory"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    return-void

    :cond_2c
    invoke-virtual {p0}, Lbz;->id()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->forgetSAFTree(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_b5

    invoke-static {v2, p1}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_b5

    :try_start_47
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v3, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    invoke-direct {v3, v2, p1, v1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquiring tree success from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_75

    goto :goto_d3

    :cond_75
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No write permissions on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_90} :catch_90

    :catch_90
    move-exception p2

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error acquiring tree from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "no_available_dir"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    return-void

    :cond_b5
    invoke-static {p1}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_cf

    const-string p1, "download_to_sdcard_error_message"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    const-string p2, "download_to_sdcard_error_title"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->showMessageDialog(II)V

    return-void

    :cond_cf
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_d3
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    return-void
.end method

.method private requestDownloadVideoPathResult(Lru;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadPathResult(Lru;Ljava/lang/String;)V

    return-void
.end method

.method private showMessageDialog(II)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string p1, "finish"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/settings/files/UniFile;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/settings/files/UniFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    return-void

    :cond_1d
    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByID(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePathPickers(Z)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->H(Z)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->H(Z)V

    return-void
.end method

.method private updatePreferencesSummary()V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    const-string v2, "download_path_summary"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    const-string v2, "download_path_audio_summary"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->showPathInSummary(Ljava/lang/String;ILandroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public aS()V
    .registers 10

    const-string v0, "download_settings"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getXmlByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lexm;->q(I)V

    const-string v5, "download_path_video_key"

    invoke-static {v5}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    const-string v5, "download_path_audio_key"

    invoke-static {v5}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    const-string v5, "storage_use_saf"

    invoke-static {v5}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    const-string v5, "downloads_storage_ask"

    invoke-static {v5}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lexm;->kI(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lexm;->kI(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    invoke-virtual {p0, v5}, Lexm;->kI(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lexm;->kI(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/SwitchPreferenceCompat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v0, v2, :cond_4f

    const/4 v4, 0x1

    goto :goto_50

    :cond_4f
    const/4 v4, 0x0

    :goto_50
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->G(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v6, v4}, Landroidx/preference/TwoStatePreference;->k(Z)V

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_66

    if-ge v0, v2, :cond_7e

    :cond_66
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->H(Z)V

    if-lt v0, v4, :cond_6e

    const-string v0, "Starting from Android 10 only \'Storage Access Framework\' is supported"

    goto :goto_70

    :cond_6e
    const-string v0, "The \'Storage Access Framework\' is not supported on Android KitKat and below"

    :goto_70
    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    const-string v0, "downloads_storage_ask_summary"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    :cond_7e
    invoke-direct {p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->updatePathPickers(Z)V

    iget-object v5, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->hasInvalidPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9b

    iget-object v5, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->hasInvalidPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    :cond_9b
    invoke-direct {p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    :cond_9e
    iget-object v5, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    new-instance v6, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;)V

    iput-object v6, v5, Landroidx/preference/Preference;->o:Lexd;

    return-void
.end method

.method public iE()V
    .registers 3

    invoke-super {p0}, Lbz;->iE()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->prefStorageAsk:Landroidx/preference/Preference;

    iput-object v0, v1, Landroidx/preference/Preference;->o:Lexd;

    return-void
.end method

.method public jf(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Lbz;->jf(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    return-void
.end method

.method public kL(Landroidx/preference/Preference;)Z
    .registers 5

    iget-object v0, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->storageUseSafPreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_38

    iget-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/gold/youtube/om7753/settings/NewSettings;->saveDefaultVideoDownloadDirectory(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/gold/youtube/om7753/settings/NewSettings;->saveDefaultAudioDownloadDirectory(Landroid/content/Context;)V

    goto :goto_34

    :cond_1e
    iget-object p1, p0, Lcom/gold/youtube/om7753/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_34
    invoke-direct {p0}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->updatePreferencesSummary()V

    return v2

    :cond_38
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathVideoPreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadVideoPathLauncher:Lrx;

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->launchDirectoryPicker(Lrx;)V

    goto :goto_53

    :cond_46
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->downloadPathAudioPreference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->requestDownloadAudioPathLauncher:Lrx;

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsFragment;->launchDirectoryPicker(Lrx;)V

    :goto_53
    return v2

    :cond_54
    invoke-super {p0, p1}, Lexm;->kL(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
