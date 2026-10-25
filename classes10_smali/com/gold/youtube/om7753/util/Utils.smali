.class public Lcom/gold/youtube/om7753/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAttrByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "attr"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getColorByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "color"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getDWByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getDimenByName(Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "dimen"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_15
    return v1
.end method

.method public static getID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIDByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getIDs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getInt(Ljava/lang/String;)I
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "layout"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getMenuByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "menu"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getNetworkType()Lcom/gold/youtube/om7753/util/Utils$NetworkType;
    .registers 2

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/gold/youtube/om7753/util/Utils$NetworkType;->NONE:Lcom/gold/youtube/om7753/util/Utils$NetworkType;

    return-object v0

    :cond_9
    sget-object v0, Lcom/gold/youtube/om7753/util/Utils;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_30

    :cond_20
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2a

    goto :goto_2d

    :cond_2a
    sget-object v0, Lcom/gold/youtube/om7753/util/Utils$NetworkType;->OTHER:Lcom/gold/youtube/om7753/util/Utils$NetworkType;

    goto :goto_2f

    :cond_2d
    :goto_2d
    sget-object v0, Lcom/gold/youtube/om7753/util/Utils$NetworkType;->MOBILE:Lcom/gold/youtube/om7753/util/Utils$NetworkType;

    :goto_2f
    return-object v0

    :cond_30
    :goto_30
    sget-object v0, Lcom/gold/youtube/om7753/util/Utils$NetworkType;->NONE:Lcom/gold/youtube/om7753/util/Utils$NetworkType;

    return-object v0
.end method

.method private static getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPluralByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "plurals"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getStringByID(I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringByName(Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_15
    return v1
.end method

.method public static getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringByStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringPrefs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringStr(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStyleByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "style"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getVersionName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gold/youtube/om7753/util/Utils;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "19.09.37"

    goto :goto_b

    :cond_9
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public static getXmlByName(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "xml"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static openDonlwnloads(Landroid/widget/ImageView;)V
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/util/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/Utils$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static openDownloadList(Landroid/content/Context;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gold/youtube/om7753/download/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setStringPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_13

    :cond_a
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :goto_13
    return-void
.end method
