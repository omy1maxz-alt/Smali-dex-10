.class public Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;
.super Landroid/preference/EditTextPreference;
.source "SponsorBlockImportExportPreference.java"


# direct methods
.method public static synthetic $r8$lambda$CQ7ogY1aOETw7cgJoJJ4kOA4dkE()Ljava/lang/String;
    .registers 1

    .line 112
    const-string v0, "Copy import/export failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$DOBKP9bZerDTRnRm41rxwMJPEfI(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->lambda$configure$1(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LZyUq8JjJXlwI5qMV6jJ_keyii0(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;Landroid/widget/EditText;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->lambda$showDialog$2(Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vy_qHHbyI4AO3h6D9PhNLDprZOo(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->lambda$configure$0(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WNNsCLTZrr3s6jxGRc0wuFTec6Q()Ljava/lang/String;
    .registers 1

    .line 120
    const-string v0, "showDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$doAsqhgawUBa3rYdn23z23Su3vU()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$oT2QKkr4c-5uNsOJE20XAPwyIdg(Landroid/widget/EditText;)V
    .registers 2

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->setClipboard(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 112
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->configure()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->configure()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->configure()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->configure()V

    return-void
.end method

.method private configure()V
    .registers 3

    .line 59
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0xa0001

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    const/4 v1, 0x0

    .line 63
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    const/high16 v1, 0x41600000  # 14.0f

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->refreshSummary()V

    .line 68
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;)V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 72
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;)V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic lambda$configure$0(Landroid/preference/Preference;)Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->exportDesktopSettings()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$configure$1(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 73
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->importDesktopSettings(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;->refreshSummary()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showDialog$2(Landroid/widget/EditText;)V
    .registers 3

    .line 101
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Landroid/preference/Preference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 103
    invoke-virtual {p0}, Landroid/preference/Preference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method private refreshSummary()V
    .registers 2

    .line 80
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->userHasSBPrivateID()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    const-string v0, "youtube_sb_settings_ie_summary_warning"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 82
    :cond_d
    const-string v0, "youtube_sb_settings_ie_summary"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_13
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public showDialog(Landroid/os/Bundle;)V
    .registers 12
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    const/high16 v1, 0x80000

    or-int/2addr p1, v1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setInputType(I)V

    const/high16 p1, 0x41600000  # 14.0f

    .line 92
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    const-string p1, "youtube_sb_settings_ie_title"

    .line 96
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "youtube_settings_import"

    .line 99
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference;Landroid/widget/EditText;)V

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda2;-><init>()V

    const-string p0, "youtube_sb_settings_copy"

    .line 107
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;)V

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 118
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception v0

    move-object p0, v0

    .line 120
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockImportExportPreference$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
