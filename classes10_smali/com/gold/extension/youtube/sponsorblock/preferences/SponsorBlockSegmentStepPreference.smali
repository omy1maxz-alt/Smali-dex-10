.class public Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference;
.super Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;
.source "SponsorBlockSegmentStepPreference.java"


# direct methods
.method public static synthetic $r8$lambda$Z6xIwc1yIc3nV32vBG1saQ4QFaE(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 2

    .line 49
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_c

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :catch_c
    move-exception p0

    .line 53
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 55
    :cond_15
    const-string p0, "youtube_sb_create_new_segment_step_invalid"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$kgaskCofuLWNyWZCo6T05gvNCms()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "Invalid new segment step"

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference;->installValidator()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference;->installValidator()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference;->installValidator()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference;->installValidator()V

    return-void
.end method

.method private installValidator()V
    .registers 2

    .line 47
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockSegmentStepPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
