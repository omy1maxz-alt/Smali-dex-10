.class Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$2;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apiUrl()Lcom/gold/extension/shared/settings/StringSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 180
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0
.end method

.method public autoHideSkipButton()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 183
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_AUTO_HIDE_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public autoHideSkipButtonDurationMs()J
    .registers 3

    .line 191
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_AUTO_HIDE_SKIP_BUTTON_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->adjustedDuration:J

    return-wide v0
.end method

.method public lastVipCheck()Lcom/gold/extension/shared/settings/LongSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 187
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_LAST_VIP_CHECK:Lcom/gold/extension/shared/settings/LongSetting;

    return-object p0
.end method

.method public localTimeSavedMilliseconds()Lcom/gold/extension/shared/settings/LongSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 189
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    return-object p0
.end method

.method public localTimeSavedNumberSegments()Lcom/gold/extension/shared/settings/IntegerSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 190
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    return-object p0
.end method

.method public privateUserId()Lcom/gold/extension/shared/settings/StringSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 185
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

    return-object p0
.end method

.method public sbEnabled()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 177
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public segmentMinDurationSeconds()Lcom/gold/extension/shared/settings/FloatSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 186
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_SEGMENT_MIN_DURATION:Lcom/gold/extension/shared/settings/FloatSetting;

    return-object p0
.end method

.method public toastOnConnectionError()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 179
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_CONNECTION_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public toastOnSkip()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 178
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_SKIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public toastOnSkipDurationMs()J
    .registers 3

    .line 192
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_SKIP_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->adjustedDuration:J

    return-wide v0
.end method

.method public toastOnWhitelistedChannel()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 182
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_WHITELISTED_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public trackSkipCount()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 188
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_TRACK_SKIP_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public userIsVip()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 184
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public videoLengthWithoutSegments()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 181
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_VIDEO_LENGTH_WITHOUT_SEGMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method
