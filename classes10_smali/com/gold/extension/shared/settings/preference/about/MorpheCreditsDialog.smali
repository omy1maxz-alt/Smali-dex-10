.class Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;
.super Landroid/app/Dialog;
.source "MorpheCreditsDialog.java"


# static fields
.field static final ABOUT_LICENSE:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

.field private static final WORKS_LINKS_CURRENT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;",
            ">;"
        }
    .end annotation
.end field

.field private static final WORKS_LINKS_PRIOR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;",
            ">;"
        }
    .end annotation
.end field

.field private static final WORKS_VANCED:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

.field static showVancedAsPastContributor:Z


# instance fields
.field private final htmlContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 28
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const-string v1, "youtube_settings_about_links_morphe"

    .line 30
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://github.com/morpheapp/morphe-patches/graphs/contributors"

    const-string v3, "Morphe"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->WORKS_LINKS_CURRENT:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const-string v1, "youtube_settings_about_links_rvx"

    .line 37
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://github.com/inotia00/revanced-patches/graphs/contributors?from=3%2F1%2F2022&to=12%2F1%2F2025"

    const-string v3, "RVX"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const-string v2, "youtube_settings_about_links_rv"

    .line 41
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://revanced.app/contributors"

    const-string v4, "ReVanced"

    invoke-direct {v1, v4, v2, v3}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v0, v1}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->WORKS_LINKS_PRIOR:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const-string v1, "youtube_settings_about_links_vanced"

    .line 47
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://github.com/TeamVanced"

    const-string v3, "Vanced"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->WORKS_VANCED:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    .line 51
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const-string v1, "youtube_settings_about_links_licenses"

    .line 52
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://license/"

    const-string v3, "license"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->ABOUT_LICENSE:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const/4 v0, 0x1

    .line 56
    sput-boolean v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->showVancedAsPastContributor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 281
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->createDialogHtml()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->htmlContent:Ljava/lang/String;

    return-void
.end method

.method private createDialogHtml()Ljava/lang/String;
    .registers 13

    .line 68
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->getColorHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->getColorHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v11, " <html>\n <head>\n     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n </head>\n <body>\n <style>\n     * {\n         margin: 0;\n         padding: 0;\n         box-sizing: border-box;\n     }\n     body {\n         background: %s;\n         color: %s;\n         font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, sans-serif;\n         padding: 0;\n     }\n     /* Header */\n     .credits-header {\n         padding: 22px 20px 16px;\n         text-align: center;\n         border-bottom: 1px solid rgba(128, 128, 128, 0.12);\n     }\n     .credits-title {\n         font-size: 17px;\n         font-weight: 600;\n         color: %s;\n     }\n     /* Sections */\n     .credits-section {\n         padding: 14px 16px;\n     }\n     .credits-section + .credits-section {\n         border-top: 1px solid rgba(128, 128, 128, 0.12);\n     }\n     .section-label {\n         font-size: 11px;\n         font-weight: 600;\n         color: %s;\n         opacity: 0.5;\n         text-transform: uppercase;\n         letter-spacing: 0.07em;\n         margin-bottom: 8px;\n         padding: 0 4px;\n     }\n     /* Contributor rows - same style as About */\n     .link-button {\n         display: flex;\n         align-items: center;\n         gap: 10px;\n         text-decoration: none;\n         color: %s;\n         background: linear-gradient(135deg, rgba(30, 90, 168, 0.07) 0%%, rgba(0, 175, 174, 0.07) 100%%);\n         border: 1px solid rgba(30, 90, 168, 0.2);\n         border-radius: 12px;\n         padding: 11px 14px;\n         margin-bottom: 6px;\n         font-size: 14px;\n         font-weight: 500;\n         -webkit-tap-highlight-color: transparent;\n         -webkit-touch-callout: none;\n         -webkit-user-select: none;\n         user-select: none;\n     }\n     .link-button:last-child {\n         margin-bottom: 0;\n     }\n     .link-button:active {\n         background: linear-gradient(135deg, rgba(30, 90, 168, 0.14) 0%%, rgba(0, 175, 174, 0.14) 100%%);\n         border-color: rgba(30, 90, 168, 0.35);\n     }\n     .avatar {\n         width: 28px;\n         height: 28px;\n         border-radius: 50%%;\n         background: linear-gradient(135deg, %s 0%%, %s 100%%);\n         display: flex;\n         align-items: center;\n         justify-content: center;\n         font-size: 12px;\n         font-weight: 700;\n         color: #ffffff;\n         flex-shrink: 0;\n     }\n     .contributor-info {\n         flex: 1;\n     }\n     .contributor-name {\n         font-size: 14px;\n         font-weight: 500;\n         color: %s;\n     }\n     .contributor-role {\n         font-size: 11px;\n         color: %s;\n         opacity: 0.5;\n         margin-top: 1px;\n     }\n     .link-chevron {\n         font-size: 24px;\n         color: %s;\n         opacity: 0.3;\n         line-height: 1;\n     }\n     .link-icon {\n         width: 28px;\n         height: 28px;\n         border-radius: 8px;\n         background: linear-gradient(135deg, rgba(30, 90, 168, 0.12) 0%%, rgba(0, 175, 174, 0.12) 100%%);\n         display: flex;\n         align-items: center;\n         justify-content: center;\n         flex-shrink: 0;\n     }\n     .link-icon svg {\n         width: 16px;\n         height: 16px;\n         fill: none;\n         stroke: %s;\n         stroke-width: 1.6;\n         stroke-linecap: round;\n         stroke-linejoin: round;\n     }\n </style>\n"

    const-string v5, "#1E5AA8"

    const-string v6, "#00AFAE"

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v0, "youtube_settings_about_links_credits"

    .line 214
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 209
    const-string v1, "<div class=\"credits-header\">\n    <div class=\"credits-title\">%s</div>\n</div>\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v0, "youtube_settings_about_contributors_current"

    .line 221
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 218
    const-string v1, "<div class=\"credits-section\">\n    <div class=\"section-label\">%s</div>\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->WORKS_LINKS_CURRENT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "</div><div class=\"contributor-info\"><div class=\"contributor-name\">"

    const-string v4, "\" class=\"link-button\"><div class=\"avatar\">"

    const-string v5, "<a href=\""

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    .line 223
    iget-object v8, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->name:Ljava/lang/String;

    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v3, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</div><div class=\"contributor-role\">"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->subText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</div></div><span class=\"link-chevron\">&#x203A;</span></a>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 233
    :cond_9e
    const-string v0, "</div>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, "youtube_settings_about_contributors_prior"

    .line 239
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 236
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->getWorksLinksPrior()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    .line 241
    iget-object v8, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->name:Ljava/lang/String;

    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v8, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->name:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v8, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->subText:Ljava/lang/String;

    if-eqz v8, :cond_100

    .line 247
    const-string v8, "<div class=\"contributor-role\">"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->subText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_100
    const-string v2, "</div><span class=\"link-chevron\">&#x203A;</span></a>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bc

    .line 253
    :cond_106
    const-string v0, "</div><div class=\"credits-section\"><a href=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->ABOUT_LICENSE:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" class=\"link-button\"><span class=\"link-icon\"><svg viewBox=\'0 0 16 16\'><path d=\'M4 1h6l3 3v10a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1z\'/><path d=\'M10 1v3h3\'/><line x1=\'5\' y1=\'7\' x2=\'11\' y2=\'7\'/><line x1=\'5\' y1=\'10\' x2=\'11\' y2=\'10\'/><line x1=\'5\' y1=\'13\' x2=\'8\' y2=\'13\'/></svg></span><div class=\"contributor-info\"><div class=\"contributor-name\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, "youtube_settings_about_links_licenses"

    .line 263
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</div></div><span class=\"link-chevron\">&#x203A;</span></a></div>    </body>\n    </html>\n"

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWorksLinksPrior()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->WORKS_LINKS_PRIOR:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    sget-boolean v1, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->showVancedAsPastContributor:Z

    if-eqz v1, :cond_10

    .line 61
    sget-object v1, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->WORKS_VANCED:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 289
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 290
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 293
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 296
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp10:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 298
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v3, 0x41e00000  # 28.0f

    .line 299
    invoke-static {v3}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 300
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 304
    new-instance v4, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v4, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const/4 v2, 0x2

    .line 306
    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 307
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 308
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 309
    iget-object v6, p0, Lcom/gold/extension/shared/settings/preference/about/MorpheCreditsDialog;->htmlContent:Ljava/lang/String;

    const-string v8, "utf-8"

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v7, "text/html"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 314
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_79

    const/16 p1, 0x11

    const/16 v0, 0x5a

    .line 319
    invoke-static {p0, p1, v1, v0, v1}, Lcom/gold/extension/shared/Utils;->setDialogWindowParameters(Landroid/view/Window;IIIZ)V

    :cond_79
    return-void
.end method
