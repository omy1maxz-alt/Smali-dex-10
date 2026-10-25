.class public final Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;


# static fields
.field private static final INSTANCE:Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;

.field private static final YT_CATEGORY_SETTINGS:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;

.field private static final YT_CHANNEL_WHITELIST:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

.field private static final YT_PLAYER_STATE:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

.field private static final YT_SETTINGS:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

.field private static final YT_UI:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

.field private static final YT_VIDEO:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

.field private static volatile installed:Z


# direct methods
.method public static synthetic $r8$lambda$NUd6uxRNJlhYhgHGqKcdwhzD4eg(Ljava/lang/String;)Lkotlin/Unit;
    .registers 1

    .line 70
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->onChannelIdChange(Ljava/lang/String;)V

    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$OWqgTyAJQUdxcgwH8DghorXGcTo(Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;
    .registers 1

    .line 65
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->onPlayerTypeChanged()V

    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$c7hlubhGsX2ARU8IwR2IpsiHW4s(Ljava/lang/String;)V
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->applySettingSideEffect(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcvYLvXPPgM3G92fXSvEpWMN9j4(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 2

    .line 77
    new-instance p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->INSTANCE:Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;

    .line 169
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$1;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_VIDEO:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    .line 176
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$2;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_SETTINGS:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    .line 195
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$3;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_CATEGORY_SETTINGS:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;

    .line 231
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$4;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_PLAYER_STATE:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    .line 243
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$5;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_UI:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    .line 256
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$6;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_CHANNEL_WHITELIST:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendTimeWithoutSegments(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 145
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->appendTimeWithoutSegments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static applySettingSideEffect(Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    goto :goto_4f

    .line 85
    :cond_3
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    iget-object v1, v0, Lcom/gold/extension/shared/settings/BooleanSetting;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 86
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1e

    .line 87
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideAll()V

    const/4 p0, 0x0

    .line 88
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setCurrentVideoId(Ljava/lang/String;)V

    .line 90
    :cond_1e
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->updateLayout()V

    return-void

    .line 91
    :cond_22
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_CREATE_NEW_SEGMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    iget-object v1, v0, Lcom/gold/extension/shared/settings/BooleanSetting;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 92
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_4f

    .line 93
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideNewSegmentLayout()V

    return-void

    .line 95
    :cond_3a
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/BooleanSetting;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_COMPACT_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/BooleanSetting;->key:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    goto :goto_50

    :cond_4f
    :goto_4f
    return-void

    .line 97
    :cond_50
    :goto_50
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->updateLayout()V

    return-void
.end method

.method public static drawSegmentTimeBars(Landroid/graphics/Canvas;F)V
    .registers 2

    .line 139
    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->drawSegmentTimeBars(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public static initialize(Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;)V
    .registers 1

    .line 108
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->install()V

    .line 109
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->initialize()V

    return-void
.end method

.method public static install()V
    .registers 3

    .line 59
    sget-boolean v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->installed:Z

    if-eqz v0, :cond_5

    return-void

    .line 60
    :cond_5
    const-class v0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;

    monitor-enter v0

    .line 61
    :try_start_8
    sget-boolean v1, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->installed:Z

    if-eqz v1, :cond_10

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    goto :goto_3c

    .line 62
    :cond_10
    sget-object v1, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->INSTANCE:Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;

    invoke-static {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->configure(Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;)V

    .line 64
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v1

    new-instance v2, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    .line 69
    sget-object v1, Lcom/gold/extension/youtube/patches/VideoInformation;->onChannelIdChange:Lcom/gold/extension/youtube/shared/Event;

    new-instance v2, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    .line 76
    sget-object v1, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v1, v1, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x1

    .line 79
    sput-boolean v1, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->installed:Z

    .line 80
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_e

    throw v1
.end method

.method public static setAdProgressTextVisibility(I)V
    .registers 1

    .line 151
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setAdProgressTextVisibility(I)V

    return-void
.end method

.method public static setCurrentVideoId(Ljava/lang/String;)V
    .registers 1
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setCurrentVideoId(Ljava/lang/String;)V

    return-void
.end method

.method public static setSeekbarRectangle(Landroid/graphics/Rect;)V
    .registers 1
    .param p0  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSeekbarRectangle(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setSeekbarThickness(I)V
    .registers 1

    .line 133
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSeekbarThickness(I)V

    return-void
.end method

.method public static setVideoTime(J)V
    .registers 2

    .line 115
    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setVideoTime(J)V

    return-void
.end method


# virtual methods
.method public categorySettings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 164
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_CATEGORY_SETTINGS:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;

    return-object p0
.end method

.method public channelWhitelist()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 167
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_CHANNEL_WHITELIST:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

    return-object p0
.end method

.method public compactSkipButtonEnabled()Z
    .registers 1

    .line 159
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_COMPACT_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public includesHighlight()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 165
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_PLAYER_STATE:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    return-object p0
.end method

.method public settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 163
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_SETTINGS:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    return-object p0
.end method

.method public supportsSegmentCreation()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 166
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_UI:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    return-object p0
.end method

.method public undoToastEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 162
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->YT_VIDEO:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    return-object p0
.end method

.method public viewTrackingEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
