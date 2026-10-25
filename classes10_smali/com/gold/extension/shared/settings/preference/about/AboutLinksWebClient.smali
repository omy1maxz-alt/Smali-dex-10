.class Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;
.super Landroid/webkit/WebViewClient;
.source "AboutLinksWebClient.java"


# instance fields
.field final context:Landroid/content/Context;

.field final dialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$16fSZAqnMNb7N2tCbuJPUGmTIpU()Ljava/lang/String;
    .registers 1

    .line 40
    const-string v0, "shouldOverrideUrlLoading failure"

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    const/4 p1, 0x1

    .line 26
    :try_start_1
    const-string v0, "https://morphe.software/credits/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 27
    new-instance p2, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;

    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 28
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return p1

    :catch_19
    move-exception p2

    goto :goto_41

    .line 32
    :cond_1b
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->ABOUT_LICENSE:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 33
    new-instance p2, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;

    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return p1

    .line 37
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    iget-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_19

    goto :goto_49

    .line 40
    :goto_41
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p2}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 46
    :goto_49
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;->dialog:Landroid/app/Dialog;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p2, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return p1
.end method
