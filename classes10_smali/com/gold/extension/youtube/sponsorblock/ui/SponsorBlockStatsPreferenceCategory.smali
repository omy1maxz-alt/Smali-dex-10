.class public Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "SponsorBlockStatsPreferenceCategory.java"


# direct methods
.method public static synthetic $r8$lambda$4-UG3_RBMmw3rXMyQW6qUiSLh7g(Ljava/lang/Object;Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;)V
    .registers 5

    .line 108
    check-cast p0, Ljava/lang/String;

    .line 109
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->setUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p1, p0, p2}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AE3PHI9IywedLL5msVBI-JnaXFI(Ljava/lang/Runnable;)V
    .registers 2

    .line 217
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->resetToDefault()Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/LongSetting;->resetToDefault()Ljava/lang/Object;

    .line 219
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$ALiyXEtBlX2KadwEvMQe1VTFBh0()Ljava/lang/String;
    .registers 1

    .line 85
    const-string v0, "onAttachedToActivity failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$HIfAPp0oYiB4-cmzi2WRfrNFftA(Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;Landroid/preference/Preference;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->lambda$onAttachedToActivity$2(Landroid/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IrXA7Cr-P4Rp_sbTCsn7yXTPkis(Landroid/preference/Preference;)V
    .registers 7

    .line 198
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 199
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    invoke-static {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->getNumberOfSkipsString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, "youtube_sb_stats_self_saved"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    .line 203
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/LongSetting;->get()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 202
    invoke-static {v2, v3}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->getTimeSavedString(J)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v2, "youtube_sb_stats_self_saved_summary"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JW7aHb6-zjCVqspkOQqcDSH4zs8(Lcom/gold/extension/shared/sponsorblock/objects/UserStats;Landroid/preference/Preference;)Z
    .registers 5

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://sb.ltn.fi/userid/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->publicUserID:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Jn-i6zlnKV93kldjQRr1snu6a2M()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "Updating SB stats UI"

    return-object v0
.end method

.method public static synthetic $r8$lambda$KbO2en_uZfvNCZY2qh9RSMYzAng(Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->lambda$onAttachedToActivity$1(Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUev68LsuyjKmewXVML1ioRSg-c(Landroid/preference/Preference;Ljava/lang/Runnable;Landroid/preference/Preference;)Z
    .registers 13

    .line 210
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string p0, "youtube_sb_stats_self_saved_reset_title"

    .line 211
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda10;

    invoke-direct {v5, p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda11;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 209
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 228
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$gFomIZ_fBmP-zmWc9_ErxGvWE2Q(Ljava/lang/String;Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_22

    .line 112
    const-string p0, "youtube_sb_stats_username"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p3, 0x3f

    invoke-static {p0, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 114
    const-string p0, "youtube_sb_stats_username_changed"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_22
    invoke-virtual {p1, p3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqoSsxBmkapchAKLk0Gacj47b0c(Landroid/preference/Preference;)Z
    .registers 3

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    const-string v1, "https://sponsor.ajay.app/stats/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$jUSoT99iyhAIhUIwKWmr9CzV9gQ()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$onyejQKPYPs-yQecGIyuA8laEbw()Ljava/lang/String;
    .registers 1

    .line 189
    const-string v0, "addUserStats failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$vD3CAWls1XldtfAHI-65negsjQ0(Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 107
    new-instance p2, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;

    invoke-direct {p2, p3, p0, p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private addLocalUserStats()V
    .registers 4

    .line 195
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSingleLineTitle(Z)V

    .line 197
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda4;-><init>(Landroid/preference/Preference;)V

    .line 206
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 208
    new-instance v2, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda5;-><init>(Landroid/preference/Preference;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 232
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/IntegerSetting;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 233
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private addUserStats(Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V
    .registers 11
    .param p2  # Lcom/gold/extension/shared/sponsorblock/objects/UserStats;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    if-nez p2, :cond_f

    .line 93
    :try_start_5
    const-string p0, "youtube_sb_stats_connection_failure"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 96
    :cond_f
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 97
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 99
    iget v0, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->totalSegmentCountIncludingIgnored:I

    const/16 v1, 0x3f

    if-lez v0, :cond_54

    .line 101
    iget-object v0, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->userName:Ljava/lang/String;

    .line 102
    new-instance v2, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;

    invoke-direct {v2, p1}, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v3, "youtube_sb_stats_username"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const-string v3, "youtube_sb_stats_username_change"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 106
    new-instance v3, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->isAvailable()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_54
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSingleLineTitle(Z)V

    .line 131
    iget v3, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->segmentCount:I

    invoke-static {v3}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->getNumberOfSkipsString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    const-string v4, "youtube_sb_stats_submissions"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    const-string v3, "youtube_sb_stats_submissions_summary"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    iget v3, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->totalSegmentCountIncludingIgnored:I

    if-nez v3, :cond_85

    .line 135
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    goto :goto_8d

    .line 137
    :cond_85
    new-instance v3, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    :goto_8d
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->isAvailable()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 145
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 151
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSingleLineTitle(Z)V

    .line 153
    const-string v4, "youtube_sb_stats_reputation"

    iget v5, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->reputation:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 155
    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->isAvailable()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    iget v4, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->reputation:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_cc

    .line 157
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_cc
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSingleLineTitle(Z)V

    .line 168
    iget p1, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->totalSegmentCountIncludingIgnored:I

    if-nez p1, :cond_e5

    .line 169
    const-string p1, "youtube_sb_stats_saved_zero"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string p2, "youtube_sb_stats_saved_summary_zero"

    invoke-static {p2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_109

    .line 172
    :cond_e5
    const-string p1, "youtube_sb_stats_saved"

    iget v2, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->viewCount:I

    .line 173
    invoke-static {v2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->getNumberOfSkipsString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 172
    invoke-static {p1, v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 174
    const-string v2, "youtube_sb_stats_saved_summary"

    iget-wide v4, p2, Lcom/gold/extension/shared/sponsorblock/objects/UserStats;->minutesSaved:D

    const-wide/high16 v6, 0x404e000000000000L  # 60.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 175
    invoke-static {v4, v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->getTimeSavedString(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 174
    invoke-static {v2, p2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 177
    :goto_109
    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {p2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->isAvailable()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_129} :catch_12a

    return-void

    :catch_12a
    move-exception p0

    .line 189
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToActivity$1(Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->addUserStats(Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V

    .line 78
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->addLocalUserStats()V

    return-void
.end method

.method private synthetic lambda$onAttachedToActivity$2(Landroid/preference/Preference;)V
    .registers 4

    .line 75
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->retrieveUserStats()Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity()V
    .registers 4

    .line 54
    :try_start_0
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 57
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 61
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->userHasSBPrivateID()Z

    move-result v1

    if-nez v1, :cond_25

    .line 63
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->addLocalUserStats()V

    return-void

    .line 67
    :cond_25
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSingleLineTitle(Z)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 70
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    if-eqz v0, :cond_4c

    .line 73
    const-string v0, "youtube_sb_stats_loading"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;Landroid/preference/Preference;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 82
    :cond_4c
    const-string p0, "youtube_sb_stats_sb_disabled"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception p0

    .line 85
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
