.class public final Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "PlayerFlyoutMenuComponentsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter$HideAudioFlyoutMenuAvailability;
    }
.end annotation


# instance fields
.field private final audioTrackMenuFooter:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final divider:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

.field private final flyoutFilterGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

.field private final flyoutLoopVideoButton:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

.field private final qualityMenuFooter:Lcom/gold/extension/shared/patches/components/StringFilterGroup;


# direct methods
.method public constructor <init>()V
    .registers 16

    .line 67
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 56
    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    const-string v1, "yt_outline_experimental_repeat1_"

    const-string v2, "yt_outline_experimental_play_circle_black_"

    const-string v3, "yt_outline_arrow_repeat_1_"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->flyoutLoopVideoButton:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    .line 62
    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->flyoutFilterGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    .line 68
    new-instance v1, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_AUDIO_TRACK_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "audio_track_sheet_footer.e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->audioTrackMenuFooter:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 73
    new-instance v3, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v4, "|divider.e"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->divider:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 78
    new-instance v4, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "quality_sheet_footer.e"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->qualityMenuFooter:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    .line 83
    new-instance v5, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const-string v6, "overflow_menu_item.e"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v1, v3, v4, v5}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gold/extension/shared/patches/components/Filter;->addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    .line 90
    new-instance v2, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_CAPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "closed_caption_"

    const-string v3, "yt_outline_experimental_closed_captions_"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v3, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_LISTEN_WITH_YOUTUBE_MUSIC:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_youtube_music_"

    const-string v4, "yt_outline_experimental_youtube_music_"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v4, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_HELP:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_question_circle_"

    const-string v5, "yt_outline_experimental_help_circle_"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v5, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_LOCK_SCREEN:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_lock_"

    const-string v6, "yt_outline_experimental_lock_"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v6, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_play_arrow_half_circle_"

    const-string v7, "yt_outline_experimental_play_circle_half_dashed_"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v7, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_AUDIO_TRACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_person_"

    const-string v8, "yt_outline_experimental_person_"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v8, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_ADDITIONAL_SETTINGS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_gear_"

    const-string v9, "yt_outline_experimental_gear_"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v9, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_AMBIENT_MODE:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_screen_light_"

    const-string v10, "yt_outline_experimental_ambient_mode_"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v10, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_STABLE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_fill_experimental_stable_volume_"

    const-string v11, "yt_outline_experimental_stable_volume_"

    const-string v12, "volume_stable_"

    filled-new-array {v12, v1, v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v11, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_SLEEP_TIMER:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_moon_z_"

    const-string v12, "yt_outline_experimental_sleep_timer_"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v12, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_WATCH_IN_VR:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_vr_"

    const-string v13, "yt_outline_experimental_vr_"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    new-instance v13, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "yt_outline_adjust_"

    const-string v14, "yt_outline_experimental_adjust_"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, p0, v1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array/range {v2 .. v13}, [Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->addAll([Lcom/gold/extension/shared/patches/components/FilterGroup;)V

    return-void
.end method


# virtual methods
.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 165
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->audioTrackMenuFooter:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    const/4 p2, 0x1

    if-eq p7, p1, :cond_84

    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->qualityMenuFooter:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_b

    goto/16 :goto_84

    .line 169
    :cond_b
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->divider:Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    if-ne p7, p1, :cond_3c

    .line 170
    const-string p0, "captions_sheet_content.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 171
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 173
    :cond_22
    const-string p0, "quick_quality_sheet_content.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 174
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 176
    :cond_35
    const-string p0, "overflow_menu_item.e"

    invoke-virtual {p4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_3c
    const/4 p1, 0x0

    if-eqz p9, :cond_40

    return p1

    .line 184
    :cond_40
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_47

    return p1

    .line 189
    :cond_47
    sget-boolean p3, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_31_OR_GREATER:Z

    if-eqz p3, :cond_54

    const-string p3, "bottom_sheet_list_option.e"

    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_54

    return p1

    .line 193
    :cond_54
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6c

    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 194
    :cond_6c
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->flyoutLoopVideoButton:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;

    invoke-virtual {p1, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p1

    if-eqz p1, :cond_79

    return p2

    .line 199
    :cond_79
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter;->flyoutFilterGroupList:Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;

    invoke-virtual {p0, p5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->isFiltered()Z

    move-result p0

    return p0

    :cond_84
    :goto_84
    return p2
.end method
