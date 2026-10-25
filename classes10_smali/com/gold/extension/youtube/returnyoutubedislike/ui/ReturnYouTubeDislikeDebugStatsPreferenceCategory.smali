.class public Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "ReturnYouTubeDislikeDebugStatsPreferenceCategory.java"


# static fields
.field private static final SHOW_RYD_DEBUG_STATS:Z


# direct methods
.method public static synthetic $r8$lambda$4qteozS3UnYHILh35j2-GCdYstQ()Ljava/lang/String;
    .registers 1

    .line 61
    const-string v0, "Updating stats preferences"

    return-object v0
.end method

.method public static synthetic $r8$lambda$V0PZSVo34L6FFKoJOpLj9d4akI8()Ljava/lang/String;
    .registers 1

    .line 115
    const-string v0, "onAttachedToActivity failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 19
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->SHOW_RYD_DEBUG_STATS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 120
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 122
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private static createMillisecondStringFromNumber(J)Ljava/lang/String;
    .registers 3

    .line 29
    const-string v0, "youtube_ryd_statistics_millisecond_text"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createSummaryText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_7

    .line 23
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onAttachedToActivity()V
    .registers 5

    .line 56
    :try_start_0
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 57
    sget-boolean v0, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->SHOW_RYD_DEBUG_STATS:Z

    if-nez v0, :cond_8

    return-void

    .line 61
    :cond_8
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 64
    const-string v0, "youtube_ryd_statistics_getFetchCallResponseTimeAverage_title"

    .line 66
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->getFetchCallResponseTimeAverage()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->createMillisecondStringFromNumber(J)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "youtube_ryd_statistics_getFetchCallResponseTimeMin_title"

    .line 71
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->getFetchCallResponseTimeMin()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->createMillisecondStringFromNumber(J)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "youtube_ryd_statistics_getFetchCallResponseTimeMax_title"

    .line 76
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->getFetchCallResponseTimeMax()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->createMillisecondStringFromNumber(J)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->getFetchCallResponseTimeLast()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_4b

    .line 82
    const-string v0, "youtube_ryd_statistics_getFetchCallResponseTimeLast_rate_limit_summary"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 84
    :cond_4b
    invoke-static {v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->createMillisecondStringFromNumber(J)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_4f
    const-string v1, "youtube_ryd_statistics_getFetchCallResponseTimeLast_title"

    invoke-direct {p0, v1, v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "youtube_ryd_statistics_getFetchCallCount_title"

    .line 93
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->getFetchCallCount()I

    move-result v1

    const-string v2, "youtube_ryd_statistics_getFetchCallCount_zero_summary"

    const-string v3, "youtube_ryd_statistics_getFetchCallCount_non_zero_summary"

    invoke-static {v1, v2, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->createSummaryText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "youtube_ryd_statistics_getFetchCallNumberOfFailures_title"

    .line 101
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->getFetchCallNumberOfFailures()I

    move-result v1

    const-string v2, "youtube_ryd_statistics_getFetchCallNumberOfFailures_zero_summary"

    const-string v3, "youtube_ryd_statistics_getFetchCallNumberOfFailures_non_zero_summary"

    invoke-static {v1, v2, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->createSummaryText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "youtube_ryd_statistics_getNumberOfRateLimitRequestsEncountered_title"

    .line 109
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/requests/ReturnYouTubeDislikeAPI;->getNumberOfRateLimitRequestsEncountered()I

    move-result v1

    const-string v2, "youtube_ryd_statistics_getNumberOfRateLimitRequestsEncountered_zero_summary"

    const-string v3, "youtube_ryd_statistics_getNumberOfRateLimitRequestsEncountered_non_zero_summary"

    invoke-static {v1, v2, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->createSummaryText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->addStatisticPreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_88

    return-void

    :catch_88
    move-exception p0

    .line 115
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 46
    sget-boolean v0, Lcom/gold/extension/youtube/returnyoutubedislike/ui/ReturnYouTubeDislikeDebugStatsPreferenceCategory;->SHOW_RYD_DEBUG_STATS:Z

    if-nez v0, :cond_e

    .line 48
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 51
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
