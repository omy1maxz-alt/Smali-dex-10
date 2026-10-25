.class public Lcom/gold/youtube/VersionCheckTask;
.super Landroid/os/AsyncTask;
.source "VersionCheckTask.java"


# static fields
.field public static updateLink:Ljava/lang/String;


# instance fields
.field public context:Landroid/content/Context;

.field public downloadLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "https://sammods.github.io/insta-expiry/yt-check-update.txt"

    sput-object v0, Lcom/gold/youtube/VersionCheckTask;->updateLink:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/VersionCheckTask;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/gold/youtube/VersionCheckTask;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/VersionCheckTask;->downloadLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gold/youtube/VersionCheckTask;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/VersionCheckTask;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/VersionCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 11

    const-string v0, "ru"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/net/URL;

    sget-object v3, Lcom/gold/youtube/VersionCheckTask;->updateLink:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/gold/youtube/om7753/util/Utils;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x2

    aget-object v4, v3, v4

    goto :goto_30

    :cond_2d
    const/4 v4, 0x1

    aget-object v4, v3, v4

    :goto_30
    iput-object v4, p0, Lcom/gold/youtube/VersionCheckTask;->downloadLink:Ljava/lang/String;

    sget v4, Lcom/gold/youtube/VersionInt;->version1:I

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_3e

    return-object v1

    :cond_3e
    new-instance v4, Ljava/net/URL;

    invoke-static {}, Lcom/gold/youtube/om7753/util/Utils;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "https://sammods.github.io/insta-expiry/yt-change-r.txt"

    goto :goto_4f

    :cond_4d
    const-string v0, "https://sammods.github.io/insta-expiry/yt-changlog-e.txt"

    :goto_4f
    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/youtube/om7753/util/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_62} :catch_63

    return-object v1

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/VersionCheckTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/gold/youtube/VersionCheckTask;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gold/youtube/VersionCheckTask;->context:Landroid/content/Context;

    const v2, 0x1030226

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "New Update Availabe"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Download Now"

    new-instance v2, Lcom/gold/youtube/VersionCheckTask$1;

    invoke-direct {v2, p0}, Lcom/gold/youtube/VersionCheckTask$1;-><init>(Lcom/gold/youtube/VersionCheckTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Close"

    new-instance v2, Lcom/gold/youtube/VersionCheckTask$2;

    invoke-direct {v2, p0}, Lcom/gold/youtube/VersionCheckTask$2;-><init>(Lcom/gold/youtube/VersionCheckTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_39
    return-void
.end method
