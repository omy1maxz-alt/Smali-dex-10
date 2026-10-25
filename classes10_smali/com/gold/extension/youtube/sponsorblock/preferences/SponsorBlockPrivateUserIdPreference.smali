.class public Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;
.super Landroid/preference/EditTextPreference;
.source "SponsorBlockPrivateUserIdPreference.java"


# direct methods
.method public static synthetic $r8$lambda$1KGbBhPsah6L1xW_uId0rEKu5Gk(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 2

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->isValidSBUserID(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    .line 58
    const-string p0, "youtube_sb_private_user_id_Do_Not_Share_invalid"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$EUPaR69UasXYYxcrknUPg6zSw00(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;Landroid/widget/EditText;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;->lambda$showDialog$1(Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IfVcdfEIHQJfaX88n0uw6i-DQcY()Ljava/lang/String;
    .registers 1

    .line 102
    const-string v0, "showDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$WCz-FhxLs-MHgq554DF8GB1L3DU()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$fkhvAKex9ePzlrSpeDXNcLBu8Nk(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;->lambda$showDialog$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$lNY9IyeGNaejtECuxGx1JPtJF9Q()Ljava/lang/String;
    .registers 1

    .line 93
    const-string v0, "Copy private user ID failure"

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;->installChangeListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;->installChangeListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;->installChangeListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;->installChangeListener()V

    return-void
.end method

.method private installChangeListener()V
    .registers 2

    .line 55
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/widget/EditText;)V
    .registers 3

    .line 82
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 84
    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$showDialog$4()V
    .registers 2

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->setClipboard(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 93
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public showDialog(Landroid/os/Bundle;)V
    .registers 12
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_5a

    const-string v1, ""

    if-eqz p1, :cond_15

    :try_start_10
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_15
    move-object p1, v1

    .line 72
    :goto_16
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 77
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2e
    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;Landroid/widget/EditText;)V

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda2;-><init>()V

    const-string p1, "youtube_sb_settings_copy"

    .line 88
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference;)V

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 75
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 99
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 100
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception v0

    move-object p0, v0

    .line 102
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockPrivateUserIdPreference$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
