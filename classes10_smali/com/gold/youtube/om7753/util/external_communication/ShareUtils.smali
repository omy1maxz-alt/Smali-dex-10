.class public abstract Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static generateClipDataForImagePreview(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ClipData;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/gold/youtube/om7753/util/PicassoHelper;->getImageFromCacheIfPresent(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android_share_sheet_image_preview.jpg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, ""

    const-string v3, "com.gold.android.youtube.fileprovider"

    invoke-static {p0, v3, v2}, Layd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, v1, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    sget-boolean p1, Lcom/gold/youtube/om7753/App;->debug:Z

    if-eqz p1, :cond_63

    sget-object p1, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClipData successfully generated for Android share sheet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_64

    :cond_63
    return-object p0

    :catch_64
    move-exception p0

    sget-object p1, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->TAG:Ljava/lang/String;

    const-string v1, "Error when setting preview image for share sheet"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static openAppChooser(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_1f

    const p2, 0x7f1102df

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1f
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0xc3

    const/4 v1, 0x1

    if-eqz p2, :cond_5e

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-nez v2, :cond_56

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_56

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    goto :goto_4f

    :cond_4d
    new-array v3, v4, [Ljava/lang/String;

    :goto_4f
    new-instance p1, Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-direct {p1, v4, v3, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object v2, p1

    :cond_56
    if-eqz v2, :cond_5e

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5e
    :try_start_5e
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_61
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_6c

    :catch_62
    const p1, 0x7f1102a5

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_6c
    return-void
.end method

.method public static openIntentInApp(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->tryOpenIntentInApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "no_app_to_open_intent"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_14
    return-void
.end method

.method public static openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->openIntentInApp(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v3, 0x10000

    invoke-static {v3, v4}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_2d

    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_2d
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    if-nez v0, :cond_43

    invoke-static {p0, p1, v1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->openAppChooser(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void

    :cond_43
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-static {p0, p1, v1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->openAppChooser(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_61

    :cond_53
    :try_start_53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Landroid/content/ActivityNotFoundException; {:try_start_53 .. :try_end_59} :catch_5a

    goto :goto_61

    :catch_5a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1, v1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->openAppChooser(Landroid/content/Context;Landroid/content/Intent;Z)V

    :goto_61
    return-void
.end method

.method public static shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_21

    const-string p2, "android.intent.extra.TITLE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_40

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_40

    invoke-static {}, Lcom/gold/youtube/om7753/util/PicassoHelper;->getShouldLoadImages()Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-static {p0, p3}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->generateClipDataForImagePreview(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_40
    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->openAppChooser(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static tryOpenIntentInApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method
