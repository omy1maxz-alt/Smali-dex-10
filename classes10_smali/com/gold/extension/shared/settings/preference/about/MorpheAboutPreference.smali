.class public Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;
.super Landroid/preference/Preference;
.source "MorpheAboutPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;
    }
.end annotation


# static fields
.field static final CREDITS_LINK:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

.field static final CREDITS_LINK_PLACEHOLDER_URL:Ljava/lang/String; = "https://morphe.software/credits/"


# direct methods
.method public static synthetic $r8$lambda$9Ty3yH49L22hqdCpP3TCkwhQQjk(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->lambda$new$1(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HhpTaLv1sEwMuk9PQ7iI10h0B7A(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->lambda$fetchLinksAndShowDialog$3(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUUbDsrlC8oh6q_jx4WRjLZsS_8()Ljava/lang/String;
    .registers 1

    .line 466
    const-string v0, "Not showing about dialog, activity is closed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$y69RnyXe3KOFbe_mCCpfbh9hPx0(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->lambda$new$0(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 158
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const/4 v1, 0x0

    const-string v2, "https://morphe.software/credits/"

    const-string v3, "credits"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->CREDITS_LINK:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 488
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 417
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 485
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 417
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 482
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 417
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 479
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 417
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private createDialogHtml(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    .line 179
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->getColorHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->getColorHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, " <html>\n <head>\n     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n </head>\n <body>\n <style>\n     * {\n         margin: 0;\n         padding: 0;\n         box-sizing: border-box;\n     }\n     body {\n         background: %s;\n         color: %s;\n         font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, sans-serif;\n         padding: 0;\n     }\n     /* Header */\n     .about-header {\n         padding: 28px 20px 20px;\n         text-align: center;\n         border-bottom: 1px solid rgba(128, 128, 128, 0.12);\n     }\n     .logo-container {\n         margin: 0 auto 14px;\n         width: 72px;\n         height: 72px;\n         border-radius: 18px;\n         background: linear-gradient(135deg, %s 0%%, %s 100%%);\n         padding: 2px;\n         display: inline-block;\n     }\n     .logo-inner {\n         width: 100%%;\n         height: 100%%;\n         border-radius: 16px;\n         background: #EEEEEE;\n         display: flex;\n         align-items: center;\n         justify-content: center;\n         overflow: hidden;\n     }\n     img {\n         width: 100%%;\n         height: 100%%;\n         object-fit: contain;\n     }\n     .app-name {\n         font-size: 18px;\n         font-weight: 600;\n         color: %s;\n         margin-bottom: 10px;\n     }\n     /* Info card - version + dev-note, centered, no icon */\n     .info-card {\n         text-align: center;\n         margin-bottom: 8px;\n         padding: 10px 14px;\n         border-radius: 10px;\n         background: rgba(30, 90, 168, 0.06);\n         border: 1px solid rgba(30, 90, 168, 0.15);\n     }\n     .info-card:last-child {\n         margin-bottom: 0;\n     }\n     .info-card h3 {\n         font-size: 13px;\n         font-weight: 600;\n         color: %s;\n         margin-bottom: 2px;\n     }\n     .info-card p {\n         margin: 0;\n         font-size: 12px;\n         color: %s;\n         opacity: 0.75;\n         line-height: 1.4;\n     }\n     /* Links */\n     .links-section {\n         padding: 16px;\n     }\n     .section-label {\n         font-size: 11px;\n         font-weight: 600;\n         color: %s;\n         opacity: 0.5;\n         text-transform: uppercase;\n         letter-spacing: 0.07em;\n         margin-bottom: 8px;\n         padding: 0 4px;\n     }\n     .link-button {\n         display: flex;\n         align-items: center;\n         gap: 10px;\n         text-decoration: none;\n         color: %s;\n         background: linear-gradient(135deg, rgba(30, 90, 168, 0.07) 0%%, rgba(0, 175, 174, 0.07) 100%%);\n         border: 1px solid rgba(30, 90, 168, 0.2);\n         border-radius: 12px;\n         padding: 11px 14px;\n         margin-bottom: 6px;\n         font-size: 14px;\n         font-weight: 500;\n         -webkit-tap-highlight-color: transparent;\n         -webkit-touch-callout: none;\n         -webkit-user-select: none;\n         user-select: none;\n     }\n     .link-button:last-child {\n         margin-bottom: 0;\n     }\n     .link-button:active {\n         background: linear-gradient(135deg, rgba(30, 90, 168, 0.14) 0%%, rgba(0, 175, 174, 0.14) 100%%);\n         border-color: rgba(30, 90, 168, 0.35);\n     }\n     .link-icon {\n         width: 28px;\n         height: 28px;\n         border-radius: 8px;\n         background: linear-gradient(135deg, rgba(30, 90, 168, 0.15) 0%%, rgba(0, 175, 174, 0.15) 100%%);\n         display: flex;\n         align-items: center;\n         justify-content: center;\n         flex-shrink: 0;\n         font-size: 15px;\n     }\n     .link-icon svg {\n         width: 16px;\n         height: 16px;\n         fill: none;\n         stroke: %s;\n         stroke-width: 1.6;\n         stroke-linecap: round;\n         stroke-linejoin: round;\n     }\n     .link-label {\n         flex: 1;\n     }\n     .link-chevron {\n         font-size: 24px;\n         opacity: 0.3;\n         line-height: 1;\n     }\n </style>\n"

    const-string v4, "#1E5AA8"

    const-string v5, "#00AFAE"

    move-object v6, v3

    move-object v7, v4

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    const-string v2, "<div class=\"about-header\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_43

    .line 345
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->aboutLogoUrl:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "<div class=\"logo-container\">\n    <div class=\"logo-inner\">\n        <img src=\"%s\" onerror=\"this.parentElement.parentElement.style.display=\'none\';\" />\n    </div>\n</div>\n"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_43
    const-string v0, "<div class=\"app-name\">Morphe</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getPatchesReleaseVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p2, :cond_58

    .line 360
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_58

    :cond_56
    move v3, v2

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v3, 0x1

    :goto_59
    if-eqz v3, :cond_64

    .line 362
    const-string v4, "youtube_settings_about_links_dev_header_up_to_date"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6c

    .line 363
    :cond_64
    const-string v4, "youtube_settings_about_links_dev_header_update_available"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 370
    :goto_6c
    invoke-static {v4}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->useNonBreakingHyphens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_7d

    .line 372
    const-string p2, "youtube_settings_about_links_body_version_current"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_87

    .line 373
    :cond_7d
    const-string v3, "youtube_settings_about_links_body_version_outdated"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 371
    :goto_87
    invoke-static {p2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->useNonBreakingHyphens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 364
    const-string v0, "<div class=\"info-card\">\n    <h3>%s</h3>\n    <p>%s</p>\n</div>\n"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isPreReleasePatches()Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 379
    const-string p2, "youtube_settings_about_links_dev_header"

    new-array v3, v2, [Ljava/lang/Object;

    .line 384
    invoke-virtual {p0, p2, v3}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->useNonBreakingHyphens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "youtube_settings_about_links_dev_body"

    new-array v4, v2, [Ljava/lang/Object;

    .line 385
    invoke-virtual {p0, v3, v4}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/Object;

    move-result-object p2

    .line 379
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_bd
    const-string p2, "</div>"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string p2, "youtube_settings_about_links_header"

    new-array v0, v2, [Ljava/lang/Object;

    .line 395
    invoke-virtual {p0, p2, v0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 392
    const-string p2, "<div class=\"links-section\">\n    <div class=\"section-label\">%s</div>\n"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_db
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    .line 399
    iget-object p2, p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->getLinkIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 400
    const-string v0, "<a href=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" class=\"link-button\"><span class=\"link-icon\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</span><span class=\"link-label\">"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object p1, p1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</span><span class=\"link-chevron\">&#x203A;</span></a>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_db

    .line 407
    :cond_10f
    const-string p0, "</div>\n</body>\n</html>\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fetchLinksAndShowDialog(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .registers 14
    .param p2  # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/app/ProgressDialog;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 446
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->fetchAboutLinks()Ljava/util/List;

    move-result-object v0

    .line 447
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->getLatestPatchesVersion()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->createDialogHtml(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 457
    new-instance v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Utils;->runOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getLinkIcon(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 145
    const-string p0, "<svg viewBox=\'0 0 16 16\'><path d=\'M6 3H3v10h10v-3M9 2h5v5M14 2l-6 6\'/></svg>"

    return-object p0

    .line 146
    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 147
    const-string v0, "github.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "<svg viewBox=\'0 0 16 16\'><path d=\'M8 1a7 7 0 0 0-2.21 13.64c.35.06.48-.15.48-.34v-1.2C4.07 13.54 3.67 12 3.67 12c-.32-.81-.78-1.02-.78-1.02-.63-.43.05-.42.05-.42.7.05 1.07.72 1.07.72.62 1.06 1.63.75 2.03.58.06-.45.24-.75.44-.92C5 10.79 3.37 10.17 3.37 7.5c0-.75.27-1.36.71-1.84-.07-.18-.31-.87.07-1.82 0 0 .58-.18 1.9.71A6.6 6.6 0 0 1 8 4.18c.59 0 1.18.08 1.73.23 1.31-.89 1.9-.71 1.9-.71.38.95.14 1.64.07 1.82.44.48.71 1.09.71 1.84 0 2.68-1.63 3.28-3.19 3.45.25.22.47.65.47 1.31v1.95c0 .19.13.4.48.34A7 7 0 0 0 8 1z\'/></svg>"

    return-object p0

    .line 148
    :cond_16
    const-string v0, "reddit.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "<svg viewBox=\'0 0 16 16\'><path d=\'M3 10.5C3 7.46 5.24 5 8 5s5 2.46 5 5.5\'/><path d=\'M3 10.5c0 1.93 2.24 3.5 5 3.5s5-1.57 5-3.5\'/><circle cx=\'5.8\' cy=\'9.5\' r=\'.9\' fill=\'currentColor\' stroke=\'none\'/><circle cx=\'10.2\' cy=\'9.5\' r=\'.9\' fill=\'currentColor\' stroke=\'none\'/><path d=\'M6 11.8c.5.7 3.5.7 4 0\'/><path d=\'M8 5c.3-1.5 1.5-2 3-1.5\'/><circle cx=\'11.5\' cy=\'3.8\' r=\'.9\' fill=\'currentColor\' stroke=\'none\'/></svg>"

    return-object p0

    .line 149
    :cond_21
    const-string v0, "crowdin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "translate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_54

    .line 150
    :cond_32
    const-string v0, "donate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "donat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_51

    .line 151
    :cond_43
    const-string v0, "https://credits/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    const-string p0, "<svg viewBox=\'0 0 16 16\'><circle cx=\'8\' cy=\'5\' r=\'2.5\'/><path d=\'M3 13c0-2.76 2.24-5 5-5s5 2.24 5 5\'/></svg>"

    return-object p0

    .line 152
    :cond_4e
    const-string p0, "<svg viewBox=\'0 0 16 16\'><circle cx=\'8\' cy=\'8\' r=\'6\'/><ellipse cx=\'8\' cy=\'8\' rx=\'2.8\' ry=\'6\'/><line x1=\'2\' y1=\'8\' x2=\'14\' y2=\'8\'/></svg>"

    return-object p0

    .line 150
    :cond_51
    :goto_51
    const-string p0, "<svg viewBox=\'0 0 16 16\'><path d=\'M8 13s-5-3.5-5-7a3 3 0 0 1 5-2.24A3 3 0 0 1 13 6c0 3.5-5 7-5 7z\'/></svg>"

    return-object p0

    .line 149
    :cond_54
    :goto_54
    const-string p0, "<svg viewBox=\'0 0 16 16\'><path d=\'M2 2.5A1.5 1.5 0 0 1 3.5 1h9A1.5 1.5 0 0 1 14 2.5v6A1.5 1.5 0 0 1 12.5 10H9l-3 3v-3H3.5A1.5 1.5 0 0 1 2 8.5v-6z\'/><path d=\'M5.5 7.5L7.5 3l2 4.5M6.2 6h2.6\' stroke-width=\'1.3\'/></svg>"

    return-object p0
.end method

.method private synthetic lambda$fetchLinksAndShowDialog$3(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_5

    .line 459
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    :cond_5
    instance-of p1, p3, Landroid/app/Activity;

    if-eqz p1, :cond_20

    check-cast p3, Landroid/app/Activity;

    .line 465
    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {p3}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 466
    :cond_17
    new-instance p0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    :cond_20
    if-eqz p4, :cond_2b

    .line 471
    invoke-virtual {p4}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 472
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    .line 474
    :cond_2b
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/AboutWebViewDialog;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0, p5}, Lcom/gold/extension/shared/settings/preference/about/AboutWebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .registers 5

    .line 432
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->fetchLinksAndShowDialog(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/preference/Preference;)Z
    .registers 9

    .line 418
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 421
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_40

    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->hasFetchedLinks()Z

    move-result p1

    if-nez p1, :cond_40

    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->hasFetchedPatchersVersion()Z

    move-result p1

    if-nez p1, :cond_40

    .line 424
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 425
    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 427
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 428
    new-instance v4, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda2;

    invoke-direct {v4, v5}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda2;-><init>(Landroid/app/ProgressDialog;)V

    const-wide/16 v0, 0x1f4

    .line 429
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_45

    :cond_40
    move-object v1, p0

    const/4 p0, 0x0

    .line 435
    invoke-direct {v1, v2, p0, p0, p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->fetchLinksAndShowDialog(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    :goto_45
    return v6
.end method

.method public static showVancedAsPastContributor(Z)V
    .registers 1

    .line 101
    sput-boolean p0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->showVancedAsPastContributor:Z

    return-void
.end method

.method private static useNonBreakingHyphens(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 163
    const-string v0, "-"

    const-string v1, "&#8209;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 172
    invoke-static {p1, p2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
