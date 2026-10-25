.class public Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;
.super Landroid/app/Dialog;
.source "LicensesDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;
    }
.end annotation


# static fields
.field private static final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private webView:Landroid/webkit/WebView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UabVJGECzf1BIPpdWpRJdTXgZp8(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Landroid/webkit/WebView;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->lambda$fetchAllAndRender$3(Landroid/webkit/WebView;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eu2cjplfuWQSXV4unFUelAuZEnQ(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->lambda$showList$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$upMVT0p6nTcoOFI7Mim26Uo8yEs(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->lambda$onCreate$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vAbWxp3vKPQRJgtvlaZ5nEjXmO8(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->lambda$fetchAllAndRender$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w61XZyRwsZxXmCS7R0G482u6eoo(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 156
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    invoke-static {p1, v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline2;->m()I

    move-result v1

    invoke-static {p1, v1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    .line 158
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline3;->m()I

    move-result v2

    invoke-static {p1, v2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Insets;)I

    move-result v1

    invoke-virtual {p0, v3, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 12

    .line 35
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v1, "AndroidX Annotation"

    const-string v2, "https://raw.githubusercontent.com/androidx/androidx/androidx-main/LICENSE.txt"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v3, "AndroidX Core"

    invoke-direct {v1, v3, v2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    new-instance v2, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v4, "Android Hidden API Bypass"

    const-string v5, "https://raw.githubusercontent.com/LSPosed/AndroidHiddenApiBypass/main/LICENSE"

    invoke-direct {v2, v4, v5}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    new-instance v3, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v5, "AndroidX JavaScriptEngine"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v5, "Google Material Design icons"

    const-string v6, "https://raw.githubusercontent.com/google/material-design-icons/refs/heads/master/LICENSE"

    invoke-direct {v4, v5, v6}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v6, "Gson"

    const-string v7, "https://raw.githubusercontent.com/google/gson/main/LICENSE"

    invoke-direct {v5, v6, v7}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v7, "Guava"

    const-string v8, "https://raw.githubusercontent.com/google/guava/master/LICENSE"

    invoke-direct {v6, v7, v8}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v8, "https://raw.githubusercontent.com/MorpheApp/morphe-patches/refs/heads/main/LICENSE"

    const-string v9, "https://raw.githubusercontent.com/MorpheApp/morphe-patches/refs/heads/main/NOTICE"

    const-string v10, "Morphe"

    invoke-direct {v7, v10, v8, v9}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v9, "https://raw.githubusercontent.com/MorpheApp/multidexlib2/refs/heads/main/LICENSE.txt"

    const-string v10, "https://raw.githubusercontent.com/MorpheApp/multidexlib2/refs/heads/main/NOTICE.txt"

    const-string v11, "Smali/multidexlib2"

    invoke-direct {v8, v11, v9, v10}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    const-string v10, "Protocol Buffers"

    const-string v11, "https://raw.githubusercontent.com/protocolbuffers/protobuf/main/LICENSE"

    invoke-direct {v9, v10, v11}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticBackport9;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->dependencies:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x1030129

    .line 75
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private applyInsetsToContentView()V
    .registers 3

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    goto :goto_d

    .line 148
    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_e

    :goto_d
    return-void

    .line 151
    :cond_e
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 155
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private buildHtml(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 213
    const-string v1, "<h2>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->htmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</h2><pre>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->htmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</pre>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 217
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<!DOCTYPE html><html><head><meta charset=\'UTF-8\'><meta name=\'viewport\' content=\'width=device-width,initial-scale=1\'><style>  body{margin:0;padding:16px;background:#1C1B1F;color:#E6E1E5;       font-family:monospace;font-size:13px;line-height:1.6;}  h2{color:#D0BCFF;font-family:sans-serif;font-size:13px;word-break:break-all;     border-bottom:1px solid #49454F;padding-bottom:6px;margin-top:24px;}  h2:first-of-type{margin-top:0;}  pre{white-space:pre;overflow-x:auto;word-break:normal;overflow-wrap:normal;margin:0;}  a{color:#80BCFF;}</style></head><body>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "</body></html>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fetchAllAndRender(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda11;-><init>(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Ljava/util/List;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fetchUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 186
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    const/4 p0, 0x0

    .line 190
    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_56
    .catchall {:try_start_4 .. :try_end_f} :catchall_52

    const/16 p0, 0x1f40

    .line 191
    :try_start_11
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 192
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 193
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_45
    .catchall {:try_start_11 .. :try_end_1b} :catchall_43

    .line 194
    :try_start_1b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    .line 195
    new-array v2, v2, [B

    .line 197
    :goto_24
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32

    const/4 v4, 0x0

    .line 198
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_24

    :catchall_30
    move-exception v1

    goto :goto_47

    .line 201
    :cond_32
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_30

    .line 202
    :try_start_3c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_45
    .catchall {:try_start_3c .. :try_end_3f} :catchall_43

    .line 206
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_43
    move-exception p0

    goto :goto_7d

    :catch_45
    move-exception p0

    goto :goto_5a

    :goto_47
    if-eqz p0, :cond_51

    .line 193
    :try_start_49
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p0

    :try_start_4e
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_45
    .catchall {:try_start_4e .. :try_end_52} :catchall_43

    :catchall_52
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_7d

    :catch_56
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    .line 204
    :goto_5a
    :try_start_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_43

    if-eqz v0, :cond_7c

    .line 206
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7c
    return-object p0

    :goto_7d
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 207
    :cond_82
    throw p0
.end method

.method private static htmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 238
    const-string v0, "&"

    const-string v1, "&amp;"

    .line 239
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 240
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    .line 241
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(https?://[^\\s<>\"]+)"

    const-string v1, "<a href=\'$1\'>$1</a>"

    .line 242
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$fetchAllAndRender$3(Landroid/webkit/WebView;Ljava/util/List;)V
    .registers 9

    .line 180
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->buildHtml(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 179
    const-string v3, "text/html"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fetchAllAndRender$4(Ljava/util/List;)V
    .registers 6

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    new-instance v2, Landroid/util/Pair;

    invoke-direct {p0, v1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 177
    :cond_26
    iget-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_32

    .line 179
    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;-><init>(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Landroid/webkit/WebView;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_15

    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_15

    iget-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    .line 100
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->showList()V

    return p2

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showList$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 120
    sget-object p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->dependencies:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->showDetail(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)V

    return-void
.end method

.method private loadingHtml()Ljava/lang/String;
    .registers 2

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "<!DOCTYPE html><html><head><meta charset=\'UTF-8\'><style>body{margin:0;padding:32px;background:#1C1B1F;color:#938F99;font-family:sans-serif;font-size:14px;}</style></head><body>"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "youtube_settings_about_licenses_loading"

    .line 234
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</body></html>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showDetail(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)V
    .registers 11

    .line 126
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    .line 127
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 132
    iget-object v3, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->loadingHtml()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 135
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->applyInsetsToContentView()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->-$$Nest$fgetnoticeUrls(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->-$$Nest$fgetlicenseUrls(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-direct {p0, v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->fetchAllAndRender(Ljava/util/List;)V

    return-void
.end method

.method private showList()V
    .registers 6

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;

    .line 110
    invoke-static {v2}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;->-$$Nest$fgetname(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$License;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 113
    :cond_23
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda12;-><init>(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 122
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->applyInsetsToContentView()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 82
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 88
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1d

    .line 90
    invoke-static {v0, p1}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticApiModelOutline8;->m(Landroid/view/Window;Z)V

    .line 94
    :cond_1d
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->showList()V

    .line 95
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda13;-><init>(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
