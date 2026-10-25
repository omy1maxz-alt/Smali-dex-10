.class public Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference;
.super Landroid/preference/Preference;
.source "SponsorBlockApiUrlPreference.java"


# direct methods
.method public static synthetic $r8$lambda$4MxMyXFsJZzKByGXkC8cH628OXc(Landroid/preference/Preference;)Z
    .registers 11

    .line 54
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x11

    .line 56
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setInputType(I)V

    .line 57
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const-string p0, "youtube_sb_api_url_title"

    .line 61
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;)V

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda2;-><init>()V

    const-string p0, "youtube_settings_reset"

    .line 75
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda3;-><init>()V

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 59
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 83
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Ly8DU-2D0ojPwHgf3laJYDJHqFA()V
    .registers 1

    .line 77
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->resetToDefault()Ljava/lang/Object;

    .line 78
    const-string v0, "youtube_sb_api_url_reset"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pnv6_Q8eVKg77OcwdCP0Ow9xlLI()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$r7SuGhKwrQ6FS9wAHGeCLTP05ys(Landroid/widget/EditText;)V
    .registers 3

    .line 66
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->isValidSBServerAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 68
    const-string p0, "youtube_sb_api_url_invalid"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_18
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 70
    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    .line 71
    const-string p0, "youtube_sb_api_url_changed"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference;->installClickListener()V

    return-void
.end method

.method private installClickListener()V
    .registers 2

    .line 53
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockApiUrlPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
