.class public Lcom/gold/extension/youtube/settings/Settings;
.super Lcom/gold/extension/shared/settings/SharedYouTubeSettings;
.source "Settings.java"


# static fields
.field public static final ADVANCED_VIDEO_QUALITY_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final ALT_THUMBNAIL_DEARROW_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final ALT_THUMBNAIL_DEARROW_CONNECTION_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final ALT_THUMBNAIL_HOME:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALT_THUMBNAIL_LIBRARY:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALT_THUMBNAIL_PLAYER:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALT_THUMBNAIL_SEARCH:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALT_THUMBNAIL_STILLS_FAST:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final ALT_THUMBNAIL_STILLS_TIME:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALT_THUMBNAIL_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANNOUNCEMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final AUTO_CAPTIONS_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYPASS_AMBIENT_MODE_RESTRICTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final BYPASS_IMAGE_REGION_RESTRICTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final BYPASS_LINK_REDIRECTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final CAPTION_COOKIES:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final CHANGE_FORM_FACTOR:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHANGE_START_PAGE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLD_CONFIG_DATA:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final COPY_VIDEO_LINK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final CUSTOM_FILTER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final CUSTOM_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final CUSTOM_PLAYBACK_SPEEDS:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final CUSTOM_SPEED_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_BYPASS_URL_REDIRECTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_COPY_VIDEO_URL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_COPY_VIDEO_URL_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_COPY_VIDEO_URL_BUTTON_TIMESTAMP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_COPY_VIDEO_URL_TIMESTAMP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_DISABLE_RESUMING_SHORTS_PLAYER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_DISABLE_SIGNIN_TO_TV_POPUP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_HIDE_DOODLES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_HIDE_ENDSCREEN_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_OVERRIDE_YOUTUBE_MUSIC_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_RELOAD_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_AUTO_HIDE_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_AUTO_HIDE_SKIP_BUTTON_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEPRECATED_SB_CATEGORY_FILLER:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_FILLER_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_HIGHLIGHT:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_HIGHLIGHT_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_HOOK:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_HOOK_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_INTERACTION:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_INTERACTION_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_INTRO:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_INTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_MUSIC_OFFTOPIC:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_MUSIC_OFFTOPIC_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_OUTRO:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_OUTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_PREVIEW:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_PREVIEW_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_SELF_PROMO:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_SELF_PROMO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_SPONSOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_SPONSOR_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_UNSUBMITTED:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_CATEGORY_UNSUBMITTED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_COMPACT_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_CREATE_NEW_SEGMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_CREATE_NEW_SEGMENT_STEP:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final DEPRECATED_SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

.field private static final DEPRECATED_SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private static final DEPRECATED_SB_NEW_SEGMENT_PANEL_POSITION:Lcom/gold/extension/shared/settings/LongSetting;

.field private static final DEPRECATED_SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final DEPRECATED_SB_SEGMENT_MIN_DURATION:Lcom/gold/extension/shared/settings/FloatSetting;

.field private static final DEPRECATED_SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_TOAST_ON_CONNECTION_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_TOAST_ON_SKIP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_TOAST_ON_SKIP_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEPRECATED_SB_TOAST_ON_WHITELISTED_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_TRACK_SKIP_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_VIDEO_LENGTH_WITHOUT_SEGMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SB_VOTING_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SEEKBAR_TAPPING:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_AMBIENT_MODE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_AUTO_HIDE_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_CHAPTER_SKIP_DOUBLE_TAP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_FULLSCREEN_AMBIENT_MODE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_FULLSCREEN_DRAGGED_DOWN_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_FULLSCREEN_PULLED_UP_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_FULLSCREEN_SLIDING_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_HAPTIC_FEEDBACK_CHAPTERS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_HAPTIC_FEEDBACK_PRECISE_SEEKING:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_HAPTIC_FEEDBACK_SEEK_UNDO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_HAPTIC_FEEDBACK_TAP_AND_HOLD:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_HAPTIC_FEEDBACK_ZOOM:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_HDR_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_LAYOUT_UPDATES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_LIKE_SUBSCRIBE_GLOW:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_NOTIFICATION_MEDIA_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_PLAYBACK_SPEED_MUSIC:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_PLAYER_POPUP_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_PRECISE_SEEKING_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_ROLLING_NUMBER_ANIMATIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_SHORTS_BACKGROUND_PLAYBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_SHORTS_DOUBLE_TAP_TO_LIKE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_SHORTS_RESUMING_ON_STARTUP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_SIGN_IN_TO_TV_POPUP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_TRANSLUCENT_NAVIGATION_BAR_DARK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_TRANSLUCENT_STATUS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DO_NOT_REMEMBER_LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final EXIT_FULLSCREEN:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPAND_LIVESTREAM_DVR_DURATION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final EXTERNAL_BROWSER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final FIX_TRANSCRIPT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final FORCE_AVC_CODEC:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final FORCE_ORIGINAL_AUDIO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final FULLSCREEN_LARGE_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final GRADIENT_LOADING_SCREEN:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HEADER_LOGO:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIDE_ACCOUNT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_ACCOUNT_MENU_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final HIDE_ACTION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_AI_GENERATED_VIDEO_SUMMARY_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_ALBUM_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_ARTIST_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_ASK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_ASK_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_ATTRIBUTES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_AUTOPLAY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_AUTOPLAY_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_AUTO_DUBBED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CAPTIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CAST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CHANNEL_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CHANNEL_TAB:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CHANNEL_TAB_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final HIDE_CHANNEL_WATERMARK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CHAPTERS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CLIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COLLAPSE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_AI_CHAT_SUMMARY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_BY_MEMBERS_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_CAROUSEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_CAROUSEL_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final HIDE_COMMENTS_CHANNEL_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_COMMUNITY_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_CREATE_A_SHORT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_EMOJI_AND_TIMESTAMP_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_INFO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_LIVE_CHAT_DONATORS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_PREVIEW_COMMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_PROMPTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_SECTION_IN_HOME_FEED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMENTS_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMUNITY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMMUNITY_POSTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COMPACT_BANNER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CONNECT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CORRECTIONS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_COURSE_PROGRESS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CREATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CREATOR_STORE_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_CROWDFUNDING_BOX:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_DOWNLOAD_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_EMERGENCY_BOX:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_END_SCREEN_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_END_SCREEN_STORE_BANNER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_END_SCREEN_SUGGESTED_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_EXPANDABLE_CARD:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIDE_EXPLORE_COURSE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_EXPLORE_PODCAST_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_EXPLORE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FEATURED_CHANNELS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FEATURED_LINKS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FEATURED_PLACES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FEATURED_VIDEOS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FEED_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FEED_FLYOUT_MENU_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final HIDE_FILTER_BAR_FEED_IN_FEED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FILTER_BAR_FEED_IN_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FILTER_BAR_FEED_IN_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FLOATING_MICROPHONE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_FULLSCREEN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_GAMING_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_GENERAL_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_HOME_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_HORIZONTAL_SHELVES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_HOW_THIS_WAS_MADE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_HYPED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_HYPE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_HYPE_POINTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_IMAGE_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_INFO_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_INFO_CARDS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_INFO_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_JOIN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_JOIN_MEMBERSHIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_KEYWORD_CONTENT_COMMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_KEYWORD_CONTENT_HOME:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_KEYWORD_CONTENT_PHRASES:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final HIDE_KEYWORD_CONTENT_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_KEYWORD_CONTENT_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_KEY_CONCEPTS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_LATEST_VIDEOS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_LIKE_DISLIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_LINKS_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_LIVE_CHAT_REPLAY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_MEDICAL_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_MEMBERS_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_MERCHANDISE_BANNERS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_MIX_PLAYLISTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_MOVIES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_MUSIC_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_NAVIGATION_BUTTON_LABELS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_NOTIFICATIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_NOTIFICATION_MEDIA_PREV_NEXT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_NOTIFY_ME_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PAID_PROMOTION_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYABLES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_CONTROL_BUTTONS_BACKGROUND:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_ADDITIONAL_SETTINGS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_AMBIENT_MODE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_AUDIO_TRACK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_AUDIO_TRACK_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_CAPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_CAPTIONS_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_HELP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_LISTEN_WITH_YOUTUBE_MUSIC:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_LOCK_SCREEN:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_SLEEP_TIMER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_STABLE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_FLYOUT_WATCH_IN_VR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_POPUP_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_PREVIOUS_NEXT_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_RELATED_VIDEOS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PLAYER_RELATED_VIDEOS_OVERLAY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_POSTS_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PREMIUM_VIDEO_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_PROMOTE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_ASK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_DISLIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_LIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_LIVE_CHAT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_MIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_MORE_VIDEOS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_PLAYLIST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_SAVE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUICK_ACTIONS_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_QUIZZES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_REMIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_REPORT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SAVE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SEARCH_TERM_THUMBNAILS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SEEKBAR_THUMBNAIL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SELF_SPONSOR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHOPPING_LINKS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHOP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_AI_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_AUTO_DUBBED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_CHANNEL_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_EFFECT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_FULL_VIDEO_LINK_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_GREEN_SCREEN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_HASHTAG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_HOME:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_INFO_PANEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_JOIN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_LIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_LIKE_FOUNTAIN:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_LIVE_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_LOCATION_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_NEW_POSTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_PAUSED_OVERLAY_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_PREVIEW_COMMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_REMIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SAVE_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SEARCH_SUGGESTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SHOP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SOUND_METADATA_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SUBSCRIBE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_SUPER_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_TAGGED_PRODUCTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_UPCOMING_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_USE_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_USE_TEMPLATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_VIDEO_DESCRIPTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHORTS_VIDEO_TITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SHOW_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SNACKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_STOP_ADS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_STORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SUBSCRIBED_CHANNELS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SUBSCRIBERS_COMMUNITY_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SUBSCRIBE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SUBSCRIBE_BUTTON_IN_CHANNEL_PAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SUBSCRIPTIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SURVEYS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_SYNC_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TICKET_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TIMED_REACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TIMESTAMP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TOOLBAR_CAST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TOOLBAR_CHAT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TOOLBAR_CREATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TOOLBAR_MICROPHONE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TOOLBAR_NOTIFICATION_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TOOLBAR_SEARCH_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_TRANSCRIPT_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_UPLOAD_TIME:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_VIDEO_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_VIDEO_DETAILS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_VIDEO_RECOMMENDATION_LABELS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_VIDEO_TITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_VIEW_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_WEB_SEARCH_RESULTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_YOUTUBE_DOODLES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_YOUTUBE_PREMIUM_PROMOTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final HIDE_YOU_MAY_LIKE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final LIVESTREAM_DVR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final LOOP_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final MINIPLAYER_DISABLE_DRAG_AND_DROP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final MINIPLAYER_DISABLE_HORIZONTAL_DRAG:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final MINIPLAYER_DISABLE_HORIZONTAL_DRAG_PLAYBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final MINIPLAYER_DISABLE_RESUMING:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final MINIPLAYER_DISABLE_ROUNDED_CORNERS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final MINIPLAYER_HIDE_OVERLAY_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final MINIPLAYER_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final MINIPLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINIPLAYER_WIDTH_DIP:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final MORPHE_MUSIC_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final NARROW_NAVIGATION_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final NAVIGATION_BAR_ANIMATIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final OPEN_CHANNEL_OF_LIVE_AVATAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final OPEN_SYSTEM_SHARE_SHEET:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final OPEN_VIDEOS_FULLSCREEN:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVERRIDE_YOUTUBE_MUSIC_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

.field public static final PLAYBACK_SPEED_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final PLAYER_OVERLAY_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final PLAY_ALL_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final PLAY_ALL_BUTTON_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITIZE_VIDEO_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final QUEUE_OVERRIDE_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final QUEUE_PLAYLIST_ID:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final QUEUE_RESTORE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final QUICK_ACTIONS_TOP_MARGIN:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final RELOAD_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REMEMBER_PLAYBACK_SPEED_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REMEMBER_PLAYBACK_SPEED_LAST_SELECTED_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REMEMBER_SHORTS_QUALITY_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REMEMBER_VIDEO_QUALITY_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REMEMBER_VIDEO_QUALITY_LAST_SELECTED_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REMOVE_BACKGROUND_PLAYBACK_RESTRICTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REMOVE_VIEWER_DISCRETION_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RESTORE_OLD_PLAYER_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RESTORE_OLD_SETTINGS_MENUS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RESTORE_OLD_SPEED_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RESTORE_OLD_VIDEO_ACTION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RYD_COMPACT_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RYD_DISLIKE_PERCENTAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RYD_ESTIMATED_LIKE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RYD_TOAST_ON_CONNECTION_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final RYD_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SANITIZE_COMMENTS_CATEGORY_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SANITIZE_VIDEO_SUBTITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SAVE_TO_WATCH_LATER_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_AUTO_HIDE_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_AUTO_HIDE_SKIP_BUTTON_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SB_CATEGORY_FILLER:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_FILLER_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_HIGHLIGHT:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_HIGHLIGHT_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_HOOK:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_HOOK_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_INTERACTION:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_INTERACTION_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_INTRO:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_INTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_MUSIC_OFFTOPIC:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_MUSIC_OFFTOPIC_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_OUTRO:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_OUTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_PREVIEW:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_PREVIEW_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_SELF_PROMO:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_SELF_PROMO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_SPONSOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_SPONSOR_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_UNSUBMITTED:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CATEGORY_UNSUBMITTED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_CHANNEL_WHITELIST:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_COMPACT_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_CREATE_NEW_SEGMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_CREATE_NEW_SEGMENT_STEP:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_LAST_VIP_CHECK:Lcom/gold/extension/shared/settings/LongSetting;

.field public static final SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

.field public static final SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SB_NEW_SEGMENT_PANEL_POSITION:Lcom/gold/extension/shared/settings/LongSetting;

.field public static final SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SB_SEEN_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_SEGMENT_MIN_DURATION:Lcom/gold/extension/shared/settings/FloatSetting;

.field public static final SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_TOAST_ON_CONNECTION_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_TOAST_ON_SKIP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_TOAST_ON_SKIP_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SB_TOAST_ON_WHITELISTED_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_TRACK_SKIP_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_VIDEO_LENGTH_WITHOUT_SEGMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SB_VOTING_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SEEKBAR_CUSTOM_COLOR:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SEEKBAR_CUSTOM_COLOR_ACCENT:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SEEKBAR_CUSTOM_COLOR_PRIMARY:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SET_CAPTION_COOKIES:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHORTS_AUTOPLAY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHORTS_AUTOPLAY_BACKGROUND:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHORTS_PLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORTS_QUALITY_DEFAULT_MOBILE:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SHORTS_QUALITY_DEFAULT_WIFI:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SHOW_SEARCH_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHOW_SEARCH_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SHOW_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHOW_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SHOW_SETTINGS_BUTTON_TYPE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHOW_TOOLBAR_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHOW_TOOLBAR_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SHOW_TOOLBAR_SETTINGS_BUTTON_TYPE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SLIDE_TO_SEEK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SPEED_TAP_AND_HOLD:Lcom/gold/extension/shared/settings/FloatSetting;

.field public static final SPLASH_SCREEN_ANIMATION_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPOOF_APP_VERSION:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SPOOF_APP_VERSION_TARGET:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SPOOF_DEVICE_DIMENSIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SPOOF_VIDEO_STREAMS_AV1:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SPOOF_VIDEO_STREAMS_CLIENT_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/spoof/ClientType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWAP_CREATE_WITH_NOTIFICATIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWAP_SAVE_AND_QUEUE_ACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_BRIGHTNESS_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SWIPE_BRIGHTNESS_VALUE:Lcom/gold/extension/shared/settings/FloatSetting;

.field public static final SWIPE_CHANGE_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_HAPTIC_FEEDBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_LOWEST_VALUE_ENABLE_AUTO_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_MAGNITUDE_THRESHOLD:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SWIPE_OVERLAY_BRIGHTNESS_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SWIPE_OVERLAY_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SWIPE_OVERLAY_SPEED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SWIPE_OVERLAY_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWIPE_OVERLAY_TEXT_SIZE:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SWIPE_OVERLAY_TIMEOUT:Lcom/gold/extension/shared/settings/LongSetting;

.field public static final SWIPE_OVERLAY_VOLUME_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SWIPE_PRESS_TO_ENGAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_SAVE_AND_RESTORE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_SPEED_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SWIPE_SPEED_ZONE_HEIGHT:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SWIPE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SWIPE_VOLUME_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final SWIPE_ZONE_WIDTH:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final TABLET_LAYOUT_IN_PLAYER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final TAP_TO_SEEK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final VIDEO_QUALITY_DEFAULT_MOBILE:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final VIDEO_QUALITY_DEFAULT_WIFI:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final VIDEO_QUALITY_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final VOT_CAPTION_LANGUAGE:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final VOT_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final VOT_MAX_SPEECH_RATE:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final VOT_MYMEMORY_EMAIL:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final VOT_OPENROUTER_API_KEY:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final VOT_OPENROUTER_MODEL:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final VOT_SESSION_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final VOT_SHOW_HTTP_ERROR_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final VOT_TRANSLATION_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final VOT_TTS_VOICE_TYPE:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final WIDE_SEARCHBAR:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public static synthetic $r8$lambda$ZONvi0Qmy3QS5DzeQCerz-dHr-g()Ljava/lang/String;
    .registers 1

    .line 700
    const-string v0, "Resetting miniplayer tablet type"

    return-object v0
.end method

.method public static synthetic $r8$lambda$zgkjA-Te3gkjp_uC-Zojh3_3sCA()Ljava/lang/String;
    .registers 1

    .line 709
    const-string v0, "Resetting spoof app version"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 129

    .line 63
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "youtube_advanced_video_quality_menu"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->ADVANCED_VIDEO_QUALITY_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 64
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "youtube_disable_hdr_video"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_HDR_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 65
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const/4 v8, 0x1

    .line 487
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 65
    const-string v2, "youtube_force_avc_codec_user_dialog_message"

    const-string v3, "youtube_force_avc_codec"

    invoke-direct {v0, v3, v4, v8, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->FORCE_AVC_CODEC:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 66
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_force_original_audio"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->FORCE_ORIGINAL_AUDIO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 67
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_premium_video_quality"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PREMIUM_VIDEO_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 68
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_prioritize_video_quality"

    invoke-direct {v0, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->PRIORITIZE_VIDEO_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 69
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "youtube_video_quality_default_wifi"

    invoke-direct {v0, v3, v2}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->VIDEO_QUALITY_DEFAULT_WIFI:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 70
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v3, "youtube_video_quality_default_mobile"

    invoke-direct {v0, v3, v2}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->VIDEO_QUALITY_DEFAULT_MOBILE:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 71
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_remember_video_quality_last_selected"

    invoke-direct {v0, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_VIDEO_QUALITY_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 72
    new-instance v3, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v5, "youtube_shorts_quality_default_wifi"

    invoke-direct {v3, v5, v2, v8}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_QUALITY_DEFAULT_WIFI:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 73
    new-instance v3, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v5, "youtube_shorts_quality_default_mobile"

    invoke-direct {v3, v5, v2, v8}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_QUALITY_DEFAULT_MOBILE:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 74
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_remember_shorts_quality_last_selected"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_SHORTS_QUALITY_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 75
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const/4 v10, 0x0

    .line 243
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 75
    filled-new-array {v0, v2}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    const-string v2, "youtube_remember_video_quality_last_selected_toast"

    invoke-direct {v3, v2, v1, v10, v0}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_VIDEO_QUALITY_LAST_SELECTED_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 78
    new-instance v0, Lcom/gold/extension/shared/settings/FloatSetting;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "youtube_speed_tap_and_hold"

    invoke-direct {v0, v3, v2, v8}, Lcom/gold/extension/shared/settings/FloatSetting;-><init>(Ljava/lang/String;Ljava/lang/Float;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPEED_TAP_AND_HOLD:Lcom/gold/extension/shared/settings/FloatSetting;

    .line 79
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_remember_playback_speed_last_selected"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_PLAYBACK_SPEED_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 80
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_remember_playback_speed_last_selected_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    invoke-direct {v2, v3, v1, v10, v0}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_PLAYBACK_SPEED_LAST_SELECTED_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 81
    new-instance v0, Lcom/gold/extension/shared/settings/FloatSetting;

    const/high16 v2, -0x40000000  # -2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "youtube_playback_speed_default"

    invoke-direct {v0, v3, v2}, Lcom/gold/extension/shared/settings/FloatSetting;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    .line 82
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_custom_speed_menu"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->CUSTOM_SPEED_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 83
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_playback_speed_music"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_PLAYBACK_SPEED_MUSIC:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 84
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_restore_old_speed_menu"

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_SPEED_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 85
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v2, "youtube_custom_playback_speeds"

    const-string v3, "0.25\n0.5\n0.75\n1.0\n1.25\n1.5\n1.75\n2.0\n2.5\n3.0\n4.0\n5.0\n6.0\n7.0\n8.0"

    invoke-direct {v0, v2, v3, v8}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->CUSTOM_PLAYBACK_SPEEDS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 88
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_creator_store_shelf"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CREATOR_STORE_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 89
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_end_screen_store_banner"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_END_SCREEN_STORE_BANNER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 90
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_general_ads"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GENERAL_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 91
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_merchandise_banners"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MERCHANDISE_BANNERS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 92
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_paid_promotion_label"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PAID_PROMOTION_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 93
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_player_popup_ads"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_POPUP_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 94
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_self_sponsor_ads"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SELF_SPONSOR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 95
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_shopping_links"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHOPPING_LINKS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 96
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_video_ads"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 97
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_youtube_premium_promotions"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOUTUBE_PREMIUM_PROMOTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 100
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_account_menu"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ACCOUNT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 101
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    const-string v3, "youtube_hide_account_menu_filter_strings"

    const-string v12, ""

    invoke-direct {v2, v3, v12, v8, v0}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ACCOUNT_MENU_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 102
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_album_cards"

    invoke-direct {v0, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ALBUM_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 103
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_artist_cards"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ARTIST_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 104
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_auto_dubbed_label"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_AUTO_DUBBED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 105
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_community_posts"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMUNITY_POSTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 106
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_compact_banner"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMPACT_BANNER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 107
    new-instance v0, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v2, "youtube_hide_expandable_card"

    sget-object v3, Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;->HIDE_ALL:Lcom/gold/extension/youtube/patches/components/LayoutComponentsFilter$ExpandableCardStyle;

    invoke-direct {v0, v2, v3}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPANDABLE_CARD:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 108
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_feed_flyout_menu"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEED_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 109
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v3, "youtube_hide_feed_flyout_menu_filter_strings"

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    invoke-direct {v2, v3, v12, v8, v0}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEED_FLYOUT_MENU_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 110
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_filter_bar_feed_in_feed"

    invoke-direct {v0, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_FEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 111
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_filter_bar_feed_in_history"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 112
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_filter_bar_feed_in_related_videos"

    invoke-direct {v0, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_RELATED_VIDEOS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 113
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_filter_bar_feed_in_search"

    invoke-direct {v0, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FILTER_BAR_FEED_IN_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 114
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_floating_microphone_button"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FLOATING_MICROPHONE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 115
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_horizontal_shelves"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HORIZONTAL_SHELVES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 116
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_hyped_label"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HYPED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 117
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_image_shelf"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_IMAGE_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 118
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_latest_videos_button"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LATEST_VIDEOS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 119
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_mix_playlists"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MIX_PLAYLISTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 120
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_movies_section"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MOVIES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 121
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_notify_me_button"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NOTIFY_ME_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 122
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_playables"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYABLES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 123
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_search_term_thumbnails"

    invoke-direct {v0, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SEARCH_TERM_THUMBNAILS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 124
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_show_more_button"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHOW_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 125
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_subscribed_channels_bar"

    invoke-direct {v0, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBED_CHANNELS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 126
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_surveys"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SURVEYS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 127
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_ticket_shelf"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TICKET_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 128
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_upload_time"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_UPLOAD_TIME:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 129
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_video_recommendation_labels"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_RECOMMENDATION_LABELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 130
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_view_count"

    invoke-direct {v0, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIEW_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 131
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_web_search_results"

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_WEB_SEARCH_RESULTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 132
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_you_may_like_section"

    invoke-direct {v0, v2, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOU_MAY_LIKE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 133
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_hide_youtube_doodles"

    const-string v3, "youtube_hide_youtube_doodles_user_dialog_message"

    invoke-direct {v0, v2, v1, v8, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_YOUTUBE_DOODLES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 136
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v3, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->ORIGINAL:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    const-string v5, "youtube_alt_thumbnail_home"

    invoke-direct {v2, v5, v3}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_HOME:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 137
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_alt_thumbnail_subscription"

    invoke-direct {v2, v5, v3}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 138
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_alt_thumbnail_library"

    invoke-direct {v2, v5, v3}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_LIBRARY:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 139
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_alt_thumbnail_player"

    invoke-direct {v2, v5, v3}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_PLAYER:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 140
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_alt_thumbnail_search"

    invoke-direct {v2, v5, v3}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SEARCH:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 141
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    new-instance v3, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DeArrowAvailability;

    invoke-direct {v3}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DeArrowAvailability;-><init>()V

    const-string v5, "youtube_alt_thumbnail_dearrow_api_url"

    const-string v6, "https://dearrow-thumb.ajay.app/api/v1/getThumbnail"

    invoke-direct {v2, v5, v6, v8, v3}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_DEARROW_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    .line 142
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v3, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DeArrowAvailability;

    invoke-direct {v3}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DeArrowAvailability;-><init>()V

    const-string v5, "youtube_alt_thumbnail_dearrow_connection_toast"

    invoke-direct {v2, v5, v1, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_DEARROW_CONNECTION_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 143
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v3, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->MIDDLE:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    new-instance v5, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$StillImagesAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$StillImagesAvailability;-><init>()V

    const-string v6, "youtube_alt_thumbnail_stills_time"

    invoke-direct {v2, v6, v3, v5}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_STILLS_TIME:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 144
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v3, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$StillImagesAvailability;

    invoke-direct {v3}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$StillImagesAvailability;-><init>()V

    const-string v5, "youtube_alt_thumbnail_stills_fast"

    invoke-direct {v2, v5, v4, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_STILLS_FAST:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 147
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_keyword_content_home"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_KEYWORD_CONTENT_HOME:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 148
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_keyword_content_subscriptions"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_KEYWORD_CONTENT_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 149
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_keyword_content_search"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_KEYWORD_CONTENT_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 150
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_keyword_content_comments"

    invoke-direct {v6, v7, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_KEYWORD_CONTENT_COMMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 151
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    filled-new-array {v2, v3, v6, v5}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v2

    .line 152
    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    const-string v3, "youtube_hide_keyword_content_phrases"

    invoke-direct {v7, v3, v12, v2}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_KEYWORD_CONTENT_PHRASES:Lcom/gold/extension/shared/settings/StringSetting;

    .line 155
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_channel_tab"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_TAB:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 156
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v5, "youtube_hide_channel_tab_filter_strings"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v3, v5, v12, v8, v2}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_TAB_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 157
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_community_button"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMUNITY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 158
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_join_button"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_JOIN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 159
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_links_preview"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LINKS_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 160
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_members_shelf"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MEMBERS_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 161
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_posts_shelf"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_POSTS_SHELF:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 162
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_store_button"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_STORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 163
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_subscribe_button_in_channel_page"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBE_BUTTON_IN_CHANNEL_PAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 166
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_chapter_skip_double_tap"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_CHAPTER_SKIP_DOUBLE_TAP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 167
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_haptic_feedback_chapters"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_HAPTIC_FEEDBACK_CHAPTERS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 168
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_haptic_feedback_precise_seeking"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_HAPTIC_FEEDBACK_PRECISE_SEEKING:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 169
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_haptic_feedback_seek_undo"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_HAPTIC_FEEDBACK_SEEK_UNDO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 170
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_haptic_feedback_tap_and_hold"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_HAPTIC_FEEDBACK_TAP_AND_HOLD:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 171
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_haptic_feedback_zoom"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_HAPTIC_FEEDBACK_ZOOM:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 172
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_player_popup_panels"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_PLAYER_POPUP_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 173
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_fullscreen_pulled_up_gesture"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_FULLSCREEN_PULLED_UP_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 174
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_fullscreen_sliding_down_gesture"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_FULLSCREEN_SLIDING_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 175
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_fullscreen_dragged_down_gesture"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_FULLSCREEN_DRAGGED_DOWN_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 176
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_rolling_number_animations"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_ROLLING_NUMBER_ANIMATIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 177
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v3, "youtube_exit_fullscreen"

    sget-object v5, Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;->DISABLED:Lcom/gold/extension/youtube/patches/ExitFullscreenPatch$FullscreenMode;

    invoke-direct {v2, v3, v5}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->EXIT_FULLSCREEN:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 178
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_autoplay_preview"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_AUTOPLAY_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 179
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_channel_bar"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 180
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_channel_watermark"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHANNEL_WATERMARK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 181
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_crowdfunding_box"

    invoke-direct {v3, v5, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CROWDFUNDING_BOX:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 182
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_emergency_box"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EMERGENCY_BOX:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 183
    new-instance v13, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_end_screen_cards"

    invoke-direct {v13, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->HIDE_END_SCREEN_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 184
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_end_screen_suggested_video"

    invoke-direct {v3, v5, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_END_SCREEN_SUGGESTED_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 185
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_info_cards"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 186
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_info_panels"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 187
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_join_membership_button"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v3, v5, v1, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_JOIN_MEMBERSHIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 188
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_live_chat_replay_button"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LIVE_CHAT_REPLAY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 189
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_medical_panels"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MEDICAL_PANELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 190
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_notification_media_seekbar"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_NOTIFICATION_MEDIA_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 191
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_notification_media_prev_next"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NOTIFICATION_MEDIA_PREV_NEXT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 192
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_player_related_videos"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_RELATED_VIDEOS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 193
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_player_related_videos_overlay"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_RELATED_VIDEOS_OVERLAY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 194
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_settings_button"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 195
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_snackbar"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SNACKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 196
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_subscribers_community_guidelines"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBERS_COMMUNITY_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 197
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_sync_button"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SYNC_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 198
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_timed_reactions"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TIMED_REACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 199
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_video_title"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_TITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 200
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v3, "youtube_open_videos_fullscreen"

    sget-object v5, Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;->DISABLED:Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$OpenFullscreenMode;

    invoke-direct {v2, v3, v5}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->OPEN_VIDEOS_FULLSCREEN:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 201
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_sanitize_video_subtitle"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SANITIZE_VIDEO_SUBTITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 204
    new-instance v14, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_copy_video_link_button"

    invoke-direct {v14, v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v14, Lcom/gold/extension/youtube/settings/Settings;->COPY_VIDEO_LINK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 205
    new-instance v15, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_copy_video_link_with_timestamp_button"

    invoke-static {v14}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v3

    invoke-direct {v15, v2, v1, v8, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v15, Lcom/gold/extension/youtube/settings/Settings;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 206
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_autoplay_button"

    invoke-direct {v2, v3, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_AUTOPLAY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 207
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_captions_button"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CAPTIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 208
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_cast_button"

    invoke-direct {v2, v3, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CAST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 209
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_collapse_button"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COLLAPSE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 210
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_fullscreen_button"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FULLSCREEN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 211
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_player_control_buttons_background"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_CONTROL_BUTTONS_BACKGROUND:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 212
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_player_previous_next_buttons"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_PREVIOUS_NEXT_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 213
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_loop_video_button"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 214
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_loop_video"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 215
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_do_not_remember_loop_video"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v3, v5, v4, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DO_NOT_REMEMBER_LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 216
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_play_all_button"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->PLAY_ALL_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 217
    new-instance v3, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v5, Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;->ALL_CONTENTS_WITH_TIME_DESCENDING:Lcom/gold/extension/youtube/videoplayer/PlayAllButton$PlaylistIDPrefix;

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    const-string v6, "youtube_play_all_button_type"

    invoke-direct {v3, v6, v5, v2}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->PLAY_ALL_BUTTON_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 218
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_playback_speed_dialog_button"

    invoke-direct {v2, v3, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 219
    new-instance v2, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "youtube_player_overlay_opacity"

    invoke-direct {v2, v5, v3, v8}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->PLAYER_OVERLAY_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 220
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_reload_video_button"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->RELOAD_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 221
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v7, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$RestoreOldPlayerButtonsAvailability;

    invoke-direct {v7}, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$RestoreOldPlayerButtonsAvailability;-><init>()V

    const-string v10, "youtube_restore_old_player_buttons"

    invoke-direct {v6, v10, v1, v8, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_PLAYER_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 222
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_save_to_watch_later_button"

    invoke-direct {v6, v7, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->SAVE_TO_WATCH_LATER_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 223
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "youtube_queue_restore"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v8

    invoke-direct {v7, v10, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_RESTORE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 224
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_swap_save_and_queue_actions"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const/4 v10, 0x1

    invoke-direct {v7, v8, v1, v10, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SWAP_SAVE_AND_QUEUE_ACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 225
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_queue_override_flyout_menu"

    invoke-direct {v6, v7, v1, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_OVERRIDE_FLYOUT_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 226
    new-instance v6, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_queue_playlist_id"

    invoke-direct {v6, v7, v12}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->QUEUE_PLAYLIST_ID:Lcom/gold/extension/shared/settings/StringSetting;

    .line 227
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_open_channel_of_live_avatar"

    invoke-direct {v6, v7, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->OPEN_CHANNEL_OF_LIVE_AVATAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 228
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_video_quality_dialog_button"

    const/4 v10, 0x1

    invoke-direct {v6, v7, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->VIDEO_QUALITY_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 231
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_quick_actions"

    invoke-direct {v6, v7, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 232
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_ask_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_ASK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 233
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_comments_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 234
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_dislike_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_DISLIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 235
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_like_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_LIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 236
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_live_chat_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_LIVE_CHAT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 237
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_mix_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_MIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 238
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_more_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 239
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_more_videos_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_MORE_VIDEOS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 240
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_playlist_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_PLAYLIST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 241
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_save_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_SAVE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 242
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_hide_quick_actions_share_button"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v7, v8, v4, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUICK_ACTIONS_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 243
    new-instance v8, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v6, "youtube_quick_actions_top_margin"

    const/4 v10, 0x1

    invoke-direct {v8, v6, v11, v10}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/gold/extension/youtube/settings/Settings;->QUICK_ACTIONS_TOP_MARGIN:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 246
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_disable_ambient_mode"

    invoke-direct {v6, v7, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_AMBIENT_MODE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 247
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v10, "youtube_bypass_ambient_mode_restrictions"

    move-object/from16 v18, v2

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-direct {v7, v10, v4, v5, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->BYPASS_AMBIENT_MODE_RESTRICTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 248
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_disable_fullscreen_ambient_mode"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    const/4 v5, 0x1

    invoke-direct {v2, v7, v4, v5, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_FULLSCREEN_AMBIENT_MODE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 251
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v7, "youtube_auto_captions_style"

    sget-object v10, Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;->BOTH_ENABLED:Lcom/gold/extension/youtube/patches/AutoCaptionsPatch$AutoCaptionsStyle;

    const/4 v5, 0x0

    invoke-direct {v2, v7, v10, v5}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->AUTO_CAPTIONS_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 252
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_set_caption_cookies"

    const/4 v10, 0x1

    invoke-direct {v2, v5, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SET_CAPTION_COOKIES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 253
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_caption_cookies"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v5, v7, v12, v10, v2}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->CAPTION_COOKIES:Lcom/gold/extension/shared/settings/StringSetting;

    .line 254
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_fix_transcript"

    invoke-direct {v2, v5, v1, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->FIX_TRANSCRIPT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 257
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_miniplayer_disable_resuming"

    invoke-direct {v2, v5, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_RESUMING:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 258
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_miniplayer_type"

    sget-object v7, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MINIMAL:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    invoke-direct {v2, v5, v7, v10}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 259
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v7, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerAnyModernAvailability;

    invoke-direct {v7}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerAnyModernAvailability;-><init>()V

    move-object/from16 v20, v2

    const-string v2, "youtube_miniplayer_disable_drag_and_drop"

    invoke-direct {v5, v2, v4, v10, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_DRAG_AND_DROP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 260
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHorizontalDragAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHorizontalDragAvailability;-><init>()V

    const-string v7, "youtube_miniplayer_disable_horizontal_drag"

    invoke-direct {v2, v7, v4, v10, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_HORIZONTAL_DRAG:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 261
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHorizontalDragPlaybackAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHorizontalDragPlaybackAvailability;-><init>()V

    const-string v7, "youtube_miniplayer_disable_horizontal_drag_playback"

    invoke-direct {v2, v7, v4, v10, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_HORIZONTAL_DRAG_PLAYBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 262
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerAnyModernAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerAnyModernAvailability;-><init>()V

    const-string v7, "youtube_miniplayer_disable_rounded_corners"

    invoke-direct {v2, v7, v4, v10, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_ROUNDED_CORNERS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 263
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHideOverlayButtonsAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHideOverlayButtonsAvailability;-><init>()V

    const-string v7, "youtube_miniplayer_hide_overlay_buttons"

    invoke-direct {v2, v7, v4, v10, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_HIDE_OVERLAY_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 264
    new-instance v2, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v5, 0xc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerAnyModernAvailability;

    invoke-direct {v7}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerAnyModernAvailability;-><init>()V

    move-object/from16 v21, v6

    const-string v6, "youtube_miniplayer_width_dip"

    invoke-direct {v2, v6, v5, v10, v7}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_WIDTH_DIP:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 265
    new-instance v2, Lcom/gold/extension/shared/settings/IntegerSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerOverlayOpacityAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerOverlayOpacityAvailability;-><init>()V

    const-string v6, "youtube_miniplayer_opacity"

    invoke-direct {v2, v6, v3, v10, v5}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 268
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_carousel"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CAROUSEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 269
    new-instance v6, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_hide_comments_carousel_filter_strings"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v6, v7, v12, v10, v5}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CAROUSEL_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 270
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_ai_chat_summary"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_AI_CHAT_SUMMARY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 271
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_by_members_header"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_BY_MEMBERS_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 272
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_channel_guidelines"

    invoke-direct {v5, v6, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CHANNEL_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 273
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_community_guidelines"

    invoke-direct {v5, v6, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_COMMUNITY_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 274
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_create_a_short_button"

    invoke-direct {v5, v6, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_CREATE_A_SHORT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 275
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_emoji_and_timestamp_buttons"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_EMOJI_AND_TIMESTAMP_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 276
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_info_button"

    const/4 v10, 0x1

    invoke-direct {v5, v6, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_INFO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 277
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_live_chat_donators_bar"

    invoke-direct {v5, v6, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_LIVE_CHAT_DONATORS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 278
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_preview_comment"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_PREVIEW_COMMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 279
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_prompts"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_PROMPTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 280
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 281
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_comments_section_in_home_feed"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v6, v7, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_SECTION_IN_HOME_FEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 282
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_comments_thanks_button"

    invoke-direct {v5, v6, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 283
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_sanitize_comments_category_bar"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SANITIZE_COMMENTS_CATEGORY_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 286
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_ai_generated_video_summary_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_AI_GENERATED_VIDEO_SUMMARY_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 287
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_ask_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ASK_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 288
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_attributes_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ATTRIBUTES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 289
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_chapters_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CHAPTERS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 290
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_corrections_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CORRECTIONS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 291
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_course_progress_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COURSE_PROGRESS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 292
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_explore_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPLORE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 293
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_explore_course_section"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPLORE_COURSE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 294
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_explore_podcast_section"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v6, v7, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_EXPLORE_PODCAST_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 295
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_featured_places_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_PLACES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 296
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_gaming_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_GAMING_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 297
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_how_this_was_made_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HOW_THIS_WAS_MADE_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 298
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_hype_points"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HYPE_POINTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 299
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_info_cards_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_CARDS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 300
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_featured_channels_section"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_CHANNELS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 301
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_featured_links_section"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_LINKS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 302
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_featured_videos_section"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FEATURED_VIDEOS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 303
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_subscribe_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v6, v7, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIBE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 304
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_key_concepts_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_KEY_CONCEPTS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 305
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_music_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MUSIC_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 306
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_quizzes_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_QUIZZES_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 307
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_transcript_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TRANSCRIPT_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 308
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_video_details_section"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_DETAILS_SECTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 311
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_disable_like_subscribe_glow"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_LIKE_SUBSCRIBE_GLOW:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 312
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_action_bar"

    invoke-direct {v5, v6, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ACTION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 313
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_ask_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    move-object/from16 v23, v2

    const/4 v2, 0x1

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_ASK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 314
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_clip_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CLIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 315
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_comments_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 316
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_connect_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CONNECT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 317
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_download_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_DOWNLOAD_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 318
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_hype_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HYPE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 319
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_like_dislike_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_LIKE_DISLIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 320
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_more_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_MORE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 321
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_promote_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PROMOTE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 322
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_remix_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_REMIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 323
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_report_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_REPORT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 324
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_save_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SAVE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 325
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_share_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 326
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_shop_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHOP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 327
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_stop_ads_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v6, v7, v4, v2, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_STOP_ADS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 328
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_thanks_button"

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v6, v7, v4, v2, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->HIDE_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 329
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_restore_old_video_action_bar"

    invoke-direct {v5, v6, v1, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_VIDEO_ACTION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 330
    new-instance v24, Lcom/gold/extension/shared/settings/StringSetting;

    const/16 v29, 0x0

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v30

    const-string v25, "youtube_cold_config_data"

    const-string v26, ""

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v24 .. v30}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v24, Lcom/gold/extension/youtube/settings/Settings;->COLD_CONFIG_DATA:Lcom/gold/extension/shared/settings/StringSetting;

    .line 333
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_additional_settings"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_ADDITIONAL_SETTINGS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 334
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_ambient_mode"

    invoke-static/range {v21 .. v21}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v5, v4, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_AMBIENT_MODE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 335
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter$HideAudioFlyoutMenuAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter$HideAudioFlyoutMenuAvailability;-><init>()V

    const-string v6, "youtube_hide_player_flyout_audio_track"

    invoke-direct {v2, v6, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_AUDIO_TRACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 336
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter$HideAudioFlyoutMenuAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/components/PlayerFlyoutMenuComponentsFilter$HideAudioFlyoutMenuAvailability;-><init>()V

    const-string v6, "youtube_hide_player_flyout_audio_track_footer"

    invoke-direct {v2, v6, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_AUDIO_TRACK_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 337
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_captions"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_CAPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 338
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_player_flyout_captions_footer"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    const/4 v10, 0x1

    invoke-direct {v5, v6, v4, v10, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_CAPTIONS_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 339
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_player_flyout_captions_header"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v5, v6, v4, v10, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_CAPTIONS_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 340
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_help"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_HELP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 341
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_listen_with_youtube_music"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_LISTEN_WITH_YOUTUBE_MUSIC:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 342
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_lock_screen"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_LOCK_SCREEN:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 343
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_loop_video"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 344
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_sleep_timer"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_SLEEP_TIMER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 345
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_speed"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 346
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_stable_volume"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_STABLE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 347
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_quality"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 348
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_player_flyout_quality_footer"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    const/4 v10, 0x1

    invoke-direct {v5, v6, v4, v10, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY_FOOTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 349
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_hide_player_flyout_quality_header"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v5, v6, v4, v10, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 350
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_player_flyout_watch_in_vr"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_WATCH_IN_VR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 353
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_disable_layout_updates"

    const-string v6, "youtube_disable_layout_updates_user_dialog_message"

    invoke-direct {v2, v5, v4, v10, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_LAYOUT_UPDATES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 354
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_disable_translucent_status_bar"

    const-string v6, "youtube_disable_translucent_status_bar_user_dialog_message"

    invoke-direct {v2, v5, v4, v10, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_TRANSLUCENT_STATUS_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 355
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_restore_old_settings_menus"

    invoke-direct {v2, v5, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_SETTINGS_MENUS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 356
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v5, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$FormFactor;

    const-string v6, "youtube_change_form_factor_user_dialog_message"

    const-string v7, "youtube_change_form_factor"

    invoke-direct {v2, v7, v5, v10, v6}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZLjava/lang/String;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->CHANGE_FORM_FACTOR:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 357
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v5, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$TabletLayoutInPlayerAvailability;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$TabletLayoutInPlayerAvailability;-><init>()V

    const-string v6, "youtube_tablet_layout_in_player"

    invoke-direct {v2, v6, v4, v10, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->TABLET_LAYOUT_IN_PLAYER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 358
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_bypass_image_region_restrictions"

    invoke-direct {v2, v5, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->BYPASS_IMAGE_REGION_RESTRICTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 359
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_gradient_loading_screen"

    invoke-direct {v2, v5, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->GRADIENT_LOADING_SCREEN:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 360
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_splash_screen_animation_style"

    sget-object v6, Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;->FPS_60_ONE_SECOND:Lcom/gold/extension/youtube/patches/theme/ThemePatch$SplashScreenAnimationStyle;

    invoke-direct {v2, v5, v6, v10}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SPLASH_SCREEN_ANIMATION_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 361
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_header_logo"

    sget-object v6, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    invoke-direct {v2, v5, v6, v10}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HEADER_LOGO:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 362
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_disable_sign_in_to_tv_popup"

    invoke-direct {v2, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SIGN_IN_TO_TV_POPUP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 363
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_remove_viewer_discretion_dialog"

    invoke-direct {v5, v6, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->REMOVE_VIEWER_DISCRETION_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 364
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_spoof_app_version"

    const-string v7, "youtube_spoof_app_version_user_dialog_message"

    invoke-direct {v5, v6, v4, v10, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_APP_VERSION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 365
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_open_system_share_sheet"

    invoke-direct {v6, v7, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->OPEN_SYSTEM_SHARE_SHEET:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 366
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_override_youtube_music_buttons"

    invoke-direct {v6, v7, v4, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->OVERRIDE_YOUTUBE_MUSIC_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 367
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v10, "app.morphe.android.apps.youtube.music"

    move-object/from16 v21, v2

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    move-object/from16 v22, v3

    const-string v3, "youtube_music_package_name"

    move-object/from16 v24, v5

    const/4 v5, 0x1

    invoke-direct {v7, v3, v10, v5, v2}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->MORPHE_MUSIC_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

    .line 368
    new-instance v2, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v3, "youtube_change_start_page"

    sget-object v7, Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeStartPagePatch$StartPage;

    invoke-direct {v2, v3, v7, v5}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->CHANGE_START_PAGE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 369
    new-instance v10, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v2, "20.13.41"

    invoke-static/range {v24 .. v24}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v3

    const-string v7, "youtube_spoof_app_version_target"

    invoke-direct {v10, v7, v2, v5, v3}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v10, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_APP_VERSION_TARGET:Lcom/gold/extension/shared/settings/StringSetting;

    .line 372
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_custom_filter"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->CUSTOM_FILTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 373
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_custom_filter_strings"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v3, v7, v12, v5, v2}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->CUSTOM_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 376
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_navigation_bar"

    const-string v7, "youtube_hide_navigation_bar_user_dialog_message"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 377
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_hide_home_button"

    move-object/from16 v25, v2

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v3, v7, v4, v5, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_HOME_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 378
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_shorts_button"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 379
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_create_button"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CREATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 380
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_subscriptions_button"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SUBSCRIPTIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 381
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_notifications_button"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NOTIFICATIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 382
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_swap_create_with_notifications_button"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v2, v3, v1, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SWAP_CREATE_WITH_NOTIFICATIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 383
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_show_search_button"

    move-object/from16 v17, v2

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v3, v7, v4, v5, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SEARCH_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 384
    new-instance v2, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v3

    move-object/from16 v26, v6

    const-string v6, "youtube_show_search_button_index"

    invoke-direct {v2, v6, v7, v5, v3}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SEARCH_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 385
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_show_settings_button"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 386
    new-instance v3, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    move-object/from16 v27, v2

    const-string v2, "youtube_show_settings_button_index"

    invoke-direct {v3, v2, v6, v5, v7}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 387
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_show_settings_button_type"

    invoke-static/range {v27 .. v27}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SHOW_SETTINGS_BUTTON_TYPE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 388
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_navigation_button_labels"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_NAVIGATION_BUTTON_LABELS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 389
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_narrow_navigation_buttons"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->NARROW_NAVIGATION_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 390
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_auto_hide_navigation_bar"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_AUTO_HIDE_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 391
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_navigation_bar_animations"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->NAVIGATION_BAR_ANIMATIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 392
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_translucent_navigation_bar_light"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_LIGHT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 393
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_translucent_navigation_bar_dark"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_TRANSLUCENT_NAVIGATION_BAR_DARK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 396
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_toolbar_cast_button"

    invoke-direct {v2, v3, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_CAST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 397
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_toolbar_chat_button"

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_CHAT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 398
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_toolbar_create_button"

    invoke-static/range {v17 .. v17}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_CREATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 399
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_toolbar_microphone_button"

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_MICROPHONE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 400
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_toolbar_notification_button"

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_NOTIFICATION_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 401
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_hide_toolbar_search_button"

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TOOLBAR_SEARCH_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 402
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_show_toolbar_settings_button"

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SHOW_TOOLBAR_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 403
    new-instance v3, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    move-object/from16 v17, v2

    const-string v2, "youtube_show_toolbar_settings_button_index"

    invoke-direct {v3, v2, v6, v5, v7}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHOW_TOOLBAR_SETTINGS_BUTTON_INDEX:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 404
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_show_toolbar_settings_button_type"

    invoke-static/range {v17 .. v17}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SHOW_TOOLBAR_SETTINGS_BUTTON_TYPE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 405
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_wide_searchbar"

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->WIDE_SEARCHBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 408
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_disable_shorts_resuming_on_startup"

    invoke-direct {v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SHORTS_RESUMING_ON_STARTUP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 409
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_shorts_disable_background_playback"

    invoke-direct {v3, v6, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SHORTS_BACKGROUND_PLAYBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 410
    new-instance v3, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v5, "youtube_shorts_player_type"

    sget-object v6, Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;->SHORTS_PLAYER:Lcom/gold/extension/youtube/patches/OpenShortsInRegularPlayerPatch$ShortsPlayerType;

    invoke-direct {v3, v5, v6}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_PLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 411
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_disable_shorts_double_tap_to_like"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_SHORTS_DOUBLE_TAP_TO_LIKE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 412
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_ai_button"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_AI_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 413
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_auto_dubbed_label"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_AUTO_DUBBED_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 414
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_channel"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 415
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_channel_bar"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_CHANNEL_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 416
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_comments_button"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_COMMENTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 417
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_full_video_link_label"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_FULL_VIDEO_LINK_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 418
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_effect_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_EFFECT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 419
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_green_screen_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_GREEN_SCREEN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 420
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_new_posts_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_NEW_POSTS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 421
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_hashtag_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_HASHTAG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 422
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_history"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 423
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_home"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_HOME:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 424
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_info_panel"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_INFO_PANEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 425
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_join_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_JOIN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 426
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_like_button"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LIKE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 427
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_like_fountain"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LIKE_FOUNTAIN:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 428
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_live_preview"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LIVE_PREVIEW:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 429
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_location_label"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_LOCATION_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 430
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_navigation_bar"

    invoke-static/range {v25 .. v25}, Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v5, v4, v7, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_NAVIGATION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 431
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_paused_overlay_buttons"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_PAUSED_OVERLAY_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 432
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_preview_comment"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_PREVIEW_COMMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 433
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_remix_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_REMIX_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 434
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_save_sound_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SAVE_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 435
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_search"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SEARCH:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 436
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_search_suggestions"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SEARCH_SUGGESTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 437
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_share_button"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SHARE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 438
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_shop_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SHOP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 439
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_sound_button"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 440
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_sound_metadata_label"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SOUND_METADATA_LABEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 441
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_subscribe_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SUBSCRIBE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 442
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_subscriptions"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 443
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_super_thanks_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_SUPER_THANKS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 444
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_tagged_products"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_TAGGED_PRODUCTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 445
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_upcoming_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_UPCOMING_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 446
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_use_sound_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_USE_SOUND_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 447
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_use_template_button"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_USE_TEMPLATE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 448
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_video_description"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_VIDEO_DESCRIPTION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 449
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_shorts_video_title"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SHORTS_VIDEO_TITLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 450
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_shorts_autoplay"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_AUTOPLAY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 451
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_shorts_autoplay_background"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SHORTS_AUTOPLAY_BACKGROUND:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 454
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_disable_precise_seeking_gesture"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_PRECISE_SEEKING_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 455
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_seekbar"

    const/4 v7, 0x1

    invoke-direct {v3, v5, v4, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 456
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_seekbar_thumbnail"

    invoke-direct {v3, v5, v4, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SEEKBAR_THUMBNAIL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 457
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_fullscreen_large_seekbar"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->FULLSCREEN_LARGE_SEEKBAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 458
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_hide_timestamp"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->HIDE_TIMESTAMP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 459
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_livestream_dvr"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->LIVESTREAM_DVR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 460
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_expand_livestream_dvr_duration"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->EXPAND_LIVESTREAM_DVR_DURATION:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 461
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_slide_to_seek"

    const/4 v7, 0x1

    invoke-direct {v3, v5, v4, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SLIDE_TO_SEEK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 462
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_tap_to_seek"

    invoke-direct {v3, v5, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->TAP_TO_SEEK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 463
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_seekbar_custom_color"

    invoke-direct {v5, v6, v4, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SEEKBAR_CUSTOM_COLOR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 464
    new-instance v6, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "#FF0033"

    move-object/from16 v25, v2

    invoke-static {v5}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    move-object/from16 v27, v3

    const-string v3, "youtube_seekbar_custom_color_primary"

    move-object/from16 v28, v5

    const/4 v5, 0x1

    invoke-direct {v6, v3, v7, v5, v2}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->SEEKBAR_CUSTOM_COLOR_PRIMARY:Lcom/gold/extension/shared/settings/StringSetting;

    .line 465
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v3, "#FF2791"

    invoke-static/range {v28 .. v28}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const-string v7, "youtube_seekbar_custom_color_accent"

    invoke-direct {v2, v7, v3, v5, v6}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SEEKBAR_CUSTOM_COLOR_ACCENT:Lcom/gold/extension/shared/settings/StringSetting;

    .line 468
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_announcements"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 469
    new-instance v2, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "youtube_announcement_last_id"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v6, v6}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->ANNOUNCEMENT_LAST_ID:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 470
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_remove_background_playback_restrictions"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->REMOVE_BACKGROUND_PLAYBACK_RESTRICTIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 471
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_bypass_link_redirects"

    invoke-direct {v2, v3, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->BYPASS_LINK_REDIRECTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 472
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_external_browser"

    invoke-direct {v3, v6, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->EXTERNAL_BROWSER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 473
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_spoof_device_dimensions"

    const-string v7, "youtube_spoof_device_dimensions_user_dialog_message"

    invoke-direct {v3, v6, v4, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_DEVICE_DIMENSIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 475
    new-instance v3, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v6, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v7, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v7}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    move-object/from16 v28, v2

    const-string v2, "youtube_spoof_video_streams_client_type"

    invoke-direct {v3, v2, v6, v5, v7}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_VIDEO_STREAMS_CLIENT_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 476
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v7, Lcom/gold/extension/youtube/patches/spoof/SpoofVideoStreamsPatch$SpoofClientAv1Availability;

    invoke-direct {v7}, Lcom/gold/extension/youtube/patches/spoof/SpoofVideoStreamsPatch$SpoofClientAv1Availability;-><init>()V

    move-object v5, v3

    const-string v3, "youtube_spoof_video_streams_av1"

    move-object v6, v5

    const/4 v5, 0x1

    move-object/from16 v29, v6

    const-string v6, "youtube_spoof_video_streams_av1_user_dialog_message"

    move-object/from16 v31, v22

    move-object/from16 v22, v0

    move-object/from16 v0, v25

    move-object/from16 v25, v13

    move-object/from16 v13, v28

    move-object/from16 v28, v8

    move-object/from16 v8, v31

    move-object/from16 v31, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v31

    move-object/from16 v31, v26

    move-object/from16 v32, v27

    invoke-direct/range {v2 .. v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_VIDEO_STREAMS_AV1:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 480
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_swipe_change_video"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_CHANGE_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 481
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_swipe_brightness"

    invoke-direct {v2, v3, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 482
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_swipe_volume"

    invoke-direct {v3, v6, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 483
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_swipe_speed"

    invoke-direct {v6, v7, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 484
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v2, v3, v6}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v17

    move-object/from16 v26, v10

    invoke-static/range {v17 .. v17}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    move-object/from16 v27, v0

    const-string v0, "youtube_swipe_press_to_engage"

    invoke-direct {v7, v0, v4, v5, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_PRESS_TO_ENGAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 485
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {v2, v3, v6}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v7

    invoke-static {v7}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    const-string v10, "youtube_swipe_haptic_feedback"

    invoke-direct {v0, v10, v1, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_HAPTIC_FEEDBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 486
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v3, v6}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v10

    invoke-static {v10}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    move-object/from16 v30, v15

    const-string v15, "youtube_swipe_threshold"

    invoke-direct {v0, v15, v7, v5, v10}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_MAGNITUDE_THRESHOLD:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 487
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v10, "youtube_swipe_volume_sensitivity"

    invoke-static {v3}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v15

    invoke-direct {v0, v10, v9, v5, v15}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_VOLUME_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 488
    new-instance v10, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v15, "youtube_swipe_brightness_sensitivity"

    move-object/from16 v34, v0

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    invoke-direct {v10, v15, v9, v5, v0}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v10, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 489
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v15

    move-object/from16 v39, v10

    const-string v10, "youtube_swipe_speed_sensitivity"

    invoke-direct {v0, v10, v9, v5, v15}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED_SENSITIVITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 490
    new-instance v9, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v10, "youtube_swipe_speed_zone_height"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v15

    invoke-direct {v9, v10, v7, v5, v15}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v9, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED_ZONE_HEIGHT:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 491
    new-instance v7, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v10, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;->CIRCULAR_MINIMAL:Lcom/gold/extension/youtube/swipecontrols/SwipeControlsConfigurationProvider$SwipeOverlayStyle;

    filled-new-array {v2, v3, v6}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v15

    invoke-static {v15}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v15

    move-object/from16 v40, v0

    const-string v0, "youtube_swipe_overlay_style"

    invoke-direct {v7, v0, v10, v5, v15}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_STYLE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 492
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v3, v6}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v10

    invoke-static {v10}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    const-string v15, "youtube_swipe_text_overlay_size"

    invoke-direct {v0, v15, v7, v5, v10}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_TEXT_SIZE:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 493
    new-instance v7, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v3, v6}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v15

    invoke-static {v15}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v15

    move-object/from16 v33, v0

    const-string v0, "youtube_swipe_overlay_background_opacity"

    invoke-direct {v7, v0, v10, v5, v15}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_OPACITY:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 494
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    const-string v15, "youtube_swipe_overlay_progress_brightness_color"

    move-object/from16 v42, v7

    const-string v7, "#BFFFFFFF"

    invoke-direct {v0, v15, v7, v5, v10}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_BRIGHTNESS_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 495
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v10, "youtube_swipe_overlay_progress_volume_color"

    invoke-static {v3}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v15

    invoke-direct {v0, v10, v7, v5, v15}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_VOLUME_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 496
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "#BFFF9100"

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    const-string v15, "youtube_swipe_overlay_progress_speed_color"

    invoke-direct {v0, v15, v7, v5, v10}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_SPEED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 497
    new-instance v0, Lcom/gold/extension/shared/settings/LongSetting;

    const-wide/16 v35, 0x1f4

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v2, v3, v6}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v6

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const-string v10, "youtube_swipe_overlay_timeout"

    invoke-direct {v0, v10, v7, v5, v6}, Lcom/gold/extension/shared/settings/LongSetting;-><init>(Ljava/lang/String;Ljava/lang/Long;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_TIMEOUT:Lcom/gold/extension/shared/settings/LongSetting;

    .line 498
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_swipe_save_and_restore_brightness"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v0, v6, v1, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SAVE_AND_RESTORE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 499
    new-instance v0, Lcom/gold/extension/shared/settings/FloatSetting;

    const/high16 v6, -0x40800000  # -1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "youtube_swipe_brightness_value"

    invoke-direct {v0, v7, v6}, Lcom/gold/extension/shared/settings/FloatSetting;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS_VALUE:Lcom/gold/extension/shared/settings/FloatSetting;

    .line 500
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_swipe_lowest_value_enable_auto_brightness"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_LOWEST_VALUE_ENABLE_AUTO_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 501
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v6, 0x25

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    const-string v3, "youtube_swipe_zone_width"

    invoke-direct {v0, v3, v6, v5, v2}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_ZONE_WIDTH:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 504
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_vot_enabled"

    invoke-direct {v2, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 505
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_vot_session_enabled"

    invoke-direct {v3, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_SESSION_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 506
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v5, "app"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const-string v7, "youtube_vot_caption_language"

    invoke-direct {v3, v7, v5, v6}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_CAPTION_LANGUAGE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 507
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v5, "auto"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const-string v7, "youtube_vot_tts_voice_type"

    invoke-direct {v3, v7, v5, v6}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_TTS_VOICE_TYPE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 508
    new-instance v3, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const-string v7, "youtube_vot_original_audio_volume"

    invoke-direct {v3, v7, v5, v6}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 509
    new-instance v5, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v6, "youtube_vot_translation_volume"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v5, v6, v8, v7}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 510
    new-instance v6, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v8

    const-string v10, "youtube_vot_max_speech_rate"

    invoke-direct {v6, v10, v7, v8}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->VOT_MAX_SPEECH_RATE:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 511
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v8, "google"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    const-string v15, "youtube_vot_translation_service"

    invoke-direct {v7, v15, v8, v10}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 512
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    new-instance v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$OpenRouterServiceAvailability;

    invoke-direct {v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$OpenRouterServiceAvailability;-><init>()V

    const-string v10, "youtube_vot_openrouter_api_key"

    invoke-direct {v7, v10, v12, v8}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_API_KEY:Lcom/gold/extension/shared/settings/StringSetting;

    .line 513
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    new-instance v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$OpenRouterServiceAvailability;

    invoke-direct {v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$OpenRouterServiceAvailability;-><init>()V

    const-string v10, "youtube_vot_openrouter_model"

    const-string v15, "mistralai/mistral-nemo"

    invoke-direct {v7, v10, v15, v8}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_MODEL:Lcom/gold/extension/shared/settings/StringSetting;

    .line 514
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    new-instance v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$MyMemoryServiceAvailability;

    invoke-direct {v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$MyMemoryServiceAvailability;-><init>()V

    const-string v10, "youtube_vot_mymemory_email"

    invoke-direct {v7, v10, v12, v8}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->VOT_MYMEMORY_EMAIL:Lcom/gold/extension/shared/settings/StringSetting;

    .line 515
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_vot_use_native_tts"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v7, v8, v4, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 516
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_vot_show_http_error_dialog"

    invoke-direct {v2, v7, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_SHOW_HTTP_ERROR_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 517
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_vot_hide_export_warning"

    const/4 v8, 0x0

    invoke-direct {v2, v7, v4, v8, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 520
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_ryd_enabled"

    invoke-direct {v2, v7, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->RYD_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 521
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v10, "youtube_ryd_user_id"

    invoke-direct {v7, v10, v12, v8, v8}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->RYD_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

    .line 522
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_ryd_dislike_percentage"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    const/4 v15, 0x1

    invoke-direct {v7, v8, v4, v15, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->RYD_DISLIKE_PERCENTAGE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 523
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_ryd_compact_layout"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v4, v15, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->RYD_COMPACT_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 524
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_ryd_estimated_like"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    invoke-direct {v7, v8, v1, v15, v10}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->RYD_ESTIMATED_LIKE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 525
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "youtube_ryd_toast_on_connection_error"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    invoke-direct {v7, v8, v1, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->RYD_TOAST_ON_CONNECTION_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 528
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_sb_enabled"

    invoke-direct {v2, v7, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 530
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v8, "youtube_sb_private_user_id_Do_Not_Share"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v10

    const/4 v15, 0x1

    invoke-direct {v7, v8, v12, v15, v10}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

    .line 531
    new-instance v8, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v10, 0x96

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v15

    move-object/from16 v44, v0

    const-string v0, "youtube_sb_create_new_segment_step"

    invoke-direct {v8, v0, v10, v15}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v8, Lcom/gold/extension/youtube/settings/Settings;->SB_CREATE_NEW_SEGMENT_STEP:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 532
    new-instance v0, Lcom/gold/extension/shared/settings/LongSetting;

    const-wide/16 v35, 0x0

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v49, v3

    const-string v3, "youtube_sb_new_segment_panel_position"

    invoke-direct {v0, v3, v15}, Lcom/gold/extension/shared/settings/LongSetting;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_NEW_SEGMENT_PANEL_POSITION:Lcom/gold/extension/shared/settings/LongSetting;

    .line 533
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v50, v5

    const-string v5, "youtube_sb_voting_button"

    move-object/from16 v51, v6

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v3, v5, v4, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_VOTING_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 534
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_sb_create_new_segment"

    move-object/from16 v52, v9

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v9

    invoke-direct {v5, v6, v4, v9}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SB_CREATE_NEW_SEGMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 535
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "youtube_sb_square_layout"

    move-object/from16 v35, v5

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v6, v9, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 536
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "youtube_sb_compact_skip_button"

    move-object/from16 v36, v6

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v5, v9, v4, v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SB_COMPACT_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 537
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "youtube_sb_auto_hide_skip_button"

    move-object/from16 v37, v5

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v6, v9, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->SB_AUTO_HIDE_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 538
    new-instance v5, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v9, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;->FOUR_SECONDS:Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;

    move-object/from16 v38, v6

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    move-object/from16 v41, v3

    const-string v3, "youtube_sb_auto_hide_skip_button_duration"

    invoke-direct {v5, v3, v9, v6}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SB_AUTO_HIDE_SKIP_BUTTON_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 539
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_sb_toast_on_skip"

    move-object/from16 v43, v5

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v3, v6, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_SKIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 540
    new-instance v5, Lcom/gold/extension/shared/settings/EnumSetting;

    filled-new-array {v2, v3}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v6

    invoke-static {v6}, Lcom/gold/extension/shared/settings/Setting;->parentsAll([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    move-object/from16 v45, v3

    const-string v3, "youtube_sb_toast_on_skip_duration"

    invoke-direct {v5, v3, v9, v6}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_SKIP_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 541
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_sb_toast_on_connection_error"

    move-object/from16 v46, v5

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v3, v6, v1, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_CONNECTION_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 542
    new-instance v5, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v6, "youtube_sb_track_skip_count"

    move-object/from16 v47, v3

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v3

    invoke-direct {v5, v6, v1, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SB_TRACK_SKIP_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 543
    new-instance v3, Lcom/gold/extension/shared/settings/FloatSetting;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v48, v5

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    move-object/from16 v53, v0

    const-string v0, "youtube_sb_min_segment_duration"

    invoke-direct {v3, v0, v6, v5}, Lcom/gold/extension/shared/settings/FloatSetting;-><init>(Ljava/lang/String;Ljava/lang/Float;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_SEGMENT_MIN_DURATION:Lcom/gold/extension/shared/settings/FloatSetting;

    .line 544
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_sb_video_length_without_segments"

    move-object/from16 v54, v3

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v3

    invoke-direct {v0, v5, v4, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_VIDEO_LENGTH_WITHOUT_SEGMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 545
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    move-object/from16 v55, v0

    const-string v0, "youtube_sb_api_url"

    move-object/from16 v56, v8

    const-string v8, "https://sponsor.ajay.app"

    invoke-direct {v3, v0, v8, v5}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    .line 546
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_sb_user_is_vip"

    invoke-direct {v0, v5, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 547
    new-instance v5, Lcom/gold/extension/shared/settings/IntegerSetting;

    move-object/from16 v57, v0

    const-string v0, "youtube_sb_local_time_saved_number_segments"

    move-object/from16 v58, v3

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v3

    invoke-direct {v5, v0, v11, v3}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 548
    new-instance v0, Lcom/gold/extension/shared/settings/LongSetting;

    const-string v3, "youtube_sb_local_time_saved_milliseconds"

    move-object/from16 v59, v5

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v0, v3, v15, v5}, Lcom/gold/extension/shared/settings/LongSetting;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    .line 549
    new-instance v3, Lcom/gold/extension/shared/settings/LongSetting;

    const-string v5, "youtube_sb_last_vip_check"

    move-object/from16 v60, v0

    const/4 v0, 0x0

    invoke-direct {v3, v5, v15, v0, v0}, Lcom/gold/extension/shared/settings/LongSetting;-><init>(Ljava/lang/String;Ljava/lang/Long;ZZ)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_LAST_VIP_CHECK:Lcom/gold/extension/shared/settings/LongSetting;

    .line 550
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_sb_hide_export_warning"

    invoke-direct {v3, v5, v4, v0, v0}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 551
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_sb_seen_guidelines"

    invoke-direct {v3, v5, v4, v0, v0}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_SEEN_GUIDELINES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 552
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v5, "youtube_sb_channel_whitelist"

    move-object/from16 v61, v7

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    invoke-direct {v3, v5, v12, v0, v7}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CHANNEL_WHITELIST:Lcom/gold/extension/shared/settings/StringSetting;

    .line 553
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v3, "youtube_sb_toast_on_whitelisted_channel"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_WHITELISTED_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 554
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    sget-object v5, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY_ONCE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    iget-object v7, v5, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    move-object/from16 v63, v2

    const-string v2, "youtube_sb_sponsor"

    invoke-direct {v3, v2, v7, v0}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SPONSOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 555
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v2, "youtube_sb_sponsor_color"

    const-string v7, "#CC00D400"

    invoke-direct {v0, v2, v7}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SPONSOR_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 556
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v64, v0

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->MANUAL_SKIP:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-object/from16 v65, v3

    iget-object v3, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v66, v14

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v14

    move-object/from16 v67, v13

    const-string v13, "youtube_sb_selfpromo"

    invoke-direct {v2, v13, v3, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SELF_PROMO:Lcom/gold/extension/shared/settings/StringSetting;

    .line 557
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v13, "youtube_sb_selfpromo_color"

    const-string v14, "#CCFFFF00"

    invoke-direct {v3, v13, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_SELF_PROMO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 558
    new-instance v13, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v68, v3

    iget-object v3, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v69, v2

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v2

    move-object/from16 v70, v14

    const-string v14, "youtube_sb_interaction"

    invoke-direct {v13, v14, v3, v2}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTERACTION:Lcom/gold/extension/shared/settings/StringSetting;

    .line 559
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v3, "youtube_sb_interaction_color"

    const-string v14, "#CCCC00FF"

    invoke-direct {v2, v3, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTERACTION_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 560
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v71, v2

    iget-object v2, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v72, v13

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v13

    move-object/from16 v73, v14

    const-string v14, "youtube_sb_highlight"

    invoke-direct {v3, v14, v2, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HIGHLIGHT:Lcom/gold/extension/shared/settings/StringSetting;

    .line 561
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v13, "youtube_sb_highlight_color"

    const-string v14, "#CCFF1684"

    invoke-direct {v2, v13, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HIGHLIGHT_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 562
    new-instance v13, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v74, v2

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-object/from16 v75, v3

    iget-object v3, v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v76, v14

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v14

    move-object/from16 v77, v7

    const-string v7, "youtube_sb_hook"

    invoke-direct {v13, v7, v3, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HOOK:Lcom/gold/extension/shared/settings/StringSetting;

    .line 563
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_sb_hook_color"

    const-string v14, "#CC395699"

    invoke-direct {v3, v7, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_HOOK_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 564
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v78, v3

    iget-object v3, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v79, v13

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v13

    move-object/from16 v80, v14

    const-string v14, "youtube_sb_intro"

    invoke-direct {v7, v14, v3, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTRO:Lcom/gold/extension/shared/settings/StringSetting;

    .line 565
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v13, "youtube_sb_intro_color"

    const-string v14, "#CC00FFFF"

    invoke-direct {v3, v13, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_INTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 566
    new-instance v13, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v81, v3

    iget-object v3, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v82, v7

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    move-object/from16 v83, v14

    const-string v14, "youtube_sb_outro"

    invoke-direct {v13, v14, v3, v7}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_OUTRO:Lcom/gold/extension/shared/settings/StringSetting;

    .line 567
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_sb_outro_color"

    const-string v14, "#CC0202ED"

    invoke-direct {v3, v7, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_OUTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 568
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v84, v3

    iget-object v3, v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v85, v13

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v13

    move-object/from16 v86, v14

    const-string v14, "youtube_sb_preview"

    invoke-direct {v7, v14, v3, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_PREVIEW:Lcom/gold/extension/shared/settings/StringSetting;

    .line 569
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v13, "youtube_sb_preview_color"

    const-string v14, "#CC008FD6"

    invoke-direct {v3, v13, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_PREVIEW_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 570
    new-instance v13, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v87, v3

    iget-object v3, v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v88, v7

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v7

    move-object/from16 v89, v14

    const-string v14, "youtube_sb_filler"

    invoke-direct {v13, v14, v3, v7}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_FILLER:Lcom/gold/extension/shared/settings/StringSetting;

    .line 571
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_sb_filler_color"

    const-string v14, "#CC7300FF"

    invoke-direct {v3, v7, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_FILLER_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 572
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v90, v3

    iget-object v3, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v91, v13

    invoke-static/range {v63 .. v63}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v13

    move-object/from16 v92, v14

    const-string v14, "youtube_sb_music_offtopic"

    invoke-direct {v7, v14, v3, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_MUSIC_OFFTOPIC:Lcom/gold/extension/shared/settings/StringSetting;

    .line 573
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v13, "youtube_sb_music_offtopic_color"

    const-string v14, "#CCFF9900"

    invoke-direct {v3, v13, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_MUSIC_OFFTOPIC_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 575
    new-instance v13, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v93, v3

    sget-object v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-object/from16 v94, v7

    iget-object v7, v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    move-object/from16 v95, v3

    const-string v3, "youtube_sb_unsubmitted"

    move-object/from16 v96, v14

    const/4 v14, 0x0

    invoke-direct {v13, v3, v7, v14, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_UNSUBMITTED:Lcom/gold/extension/shared/settings/StringSetting;

    .line 576
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v7, "youtube_sb_unsubmitted_color"

    move-object/from16 v97, v13

    const-string v13, "#FFFFFFFF"

    invoke-direct {v3, v7, v13, v14, v14}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->SB_CATEGORY_UNSUBMITTED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 579
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v14, "youtube_bypass_url_redirects"

    invoke-direct {v7, v14, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_BYPASS_URL_REDIRECTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 580
    new-instance v14, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v98, v3

    const-string v3, "youtube_copy_video_url"

    move-object/from16 v99, v7

    const/4 v7, 0x1

    invoke-direct {v14, v3, v4, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v14, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_COPY_VIDEO_URL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 581
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v100, v14

    const-string v14, "youtube_copy_video_url_timestamp"

    move-object/from16 v101, v13

    invoke-static/range {v100 .. v100}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v13

    invoke-direct {v3, v14, v1, v7, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_COPY_VIDEO_URL_TIMESTAMP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 582
    new-instance v13, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v14, "youtube_copy_video_url_button"

    invoke-direct {v13, v14, v4, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_COPY_VIDEO_URL_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 583
    new-instance v14, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v102, v3

    const-string v3, "youtube_copy_video_url_button_timestamp"

    move-object/from16 v103, v13

    invoke-static/range {v103 .. v103}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v13

    invoke-direct {v14, v3, v1, v7, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v14, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_COPY_VIDEO_URL_BUTTON_TIMESTAMP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 584
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_disable_resuming_shorts_player"

    invoke-direct {v3, v7, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_DISABLE_RESUMING_SHORTS_PLAYER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 585
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v13, "youtube_disable_signin_to_tv_popup"

    invoke-direct {v7, v13, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_DISABLE_SIGNIN_TO_TV_POPUP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 586
    new-instance v13, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v104, v7

    const-string v7, "youtube_hide_endscreen_cards"

    invoke-direct {v13, v7, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_HIDE_ENDSCREEN_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 587
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v105, v13

    const-string v13, "youtube_hide_doodles"

    invoke-direct {v7, v13, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_HIDE_DOODLES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 588
    new-instance v13, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v106, v7

    const-string v7, "youtube_override_youtube_music_button"

    move-object/from16 v107, v3

    const/4 v3, 0x1

    invoke-direct {v13, v7, v4, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v13, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_OVERRIDE_YOUTUBE_MUSIC_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 589
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v7, "youtube_reload_video"

    invoke-direct {v3, v7, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_RELOAD_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 590
    new-instance v7, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v17, v3

    const-string v3, "youtube_seekbar_tapping"

    invoke-direct {v7, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SEEKBAR_TAPPING:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 593
    new-instance v3, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v108, v7

    const-string v7, "sb_enabled"

    move-object/from16 v109, v13

    const/4 v13, 0x0

    invoke-direct {v3, v7, v1, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 594
    new-instance v7, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v16, v3

    const-string v3, "sb_private_user_id_Do_Not_Share"

    invoke-direct {v7, v3, v12, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

    .line 595
    new-instance v3, Lcom/gold/extension/shared/settings/IntegerSetting;

    const-string v12, "sb_create_new_segment_step"

    invoke-direct {v3, v12, v10, v13, v13}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    sput-object v3, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CREATE_NEW_SEGMENT_STEP:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 596
    new-instance v10, Lcom/gold/extension/shared/settings/LongSetting;

    const-string v12, "sb_new_segment_panel_position"

    invoke-direct {v10, v12, v15, v13, v13}, Lcom/gold/extension/shared/settings/LongSetting;-><init>(Ljava/lang/String;Ljava/lang/Long;ZZ)V

    sput-object v10, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_NEW_SEGMENT_PANEL_POSITION:Lcom/gold/extension/shared/settings/LongSetting;

    .line 597
    new-instance v12, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v110, v10

    const-string v10, "sb_voting_button"

    invoke-direct {v12, v10, v4, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v12, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_VOTING_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 598
    new-instance v10, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v111, v12

    const-string v12, "sb_create_new_segment"

    invoke-direct {v10, v12, v4, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v10, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CREATE_NEW_SEGMENT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 599
    new-instance v12, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v112, v10

    const-string v10, "sb_square_layout"

    invoke-direct {v12, v10, v4, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v12, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 600
    new-instance v10, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v113, v12

    const-string v12, "sb_compact_skip_button"

    invoke-direct {v10, v12, v4, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v10, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_COMPACT_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 601
    new-instance v12, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v114, v10

    const-string v10, "sb_auto_hide_skip_button"

    invoke-direct {v12, v10, v1, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v12, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_AUTO_HIDE_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 602
    new-instance v10, Lcom/gold/extension/shared/settings/EnumSetting;

    move-object/from16 v115, v12

    const-string v12, "sb_auto_hide_skip_button_duration"

    invoke-direct {v10, v12, v9, v13, v13}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZZ)V

    sput-object v10, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_AUTO_HIDE_SKIP_BUTTON_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 603
    new-instance v12, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v116, v10

    const-string v10, "sb_toast_on_skip"

    invoke-direct {v12, v10, v1, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v12, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_TOAST_ON_SKIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 604
    new-instance v10, Lcom/gold/extension/shared/settings/EnumSetting;

    move-object/from16 v117, v12

    const-string v12, "sb_toast_on_skip_duration"

    invoke-direct {v10, v12, v9, v13, v13}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZZ)V

    sput-object v10, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_TOAST_ON_SKIP_DURATION:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 605
    new-instance v9, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v12, "sb_toast_on_connection_error"

    invoke-direct {v9, v12, v1, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v9, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_TOAST_ON_CONNECTION_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 606
    new-instance v12, Lcom/gold/extension/shared/settings/BooleanSetting;

    move-object/from16 v118, v9

    const-string v9, "sb_track_skip_count"

    invoke-direct {v12, v9, v1, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v12, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_TRACK_SKIP_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 607
    new-instance v1, Lcom/gold/extension/shared/settings/FloatSetting;

    const-string v9, "sb_min_segment_duration"

    invoke-direct {v1, v9, v6, v13, v13}, Lcom/gold/extension/shared/settings/FloatSetting;-><init>(Ljava/lang/String;Ljava/lang/Float;ZZ)V

    sput-object v1, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_SEGMENT_MIN_DURATION:Lcom/gold/extension/shared/settings/FloatSetting;

    .line 608
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v9, "sb_video_length_without_segments"

    invoke-direct {v6, v9, v4, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_VIDEO_LENGTH_WITHOUT_SEGMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 609
    new-instance v9, Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v119, v6

    const-string v6, "sb_api_url"

    invoke-direct {v9, v6, v8, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v9, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    .line 610
    new-instance v6, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v8, "sb_user_is_vip"

    invoke-direct {v6, v8, v4, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 611
    new-instance v8, Lcom/gold/extension/shared/settings/IntegerSetting;

    move-object/from16 v120, v6

    const-string v6, "sb_local_time_saved_number_segments"

    invoke-direct {v8, v6, v11, v13, v13}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    sput-object v8, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 612
    new-instance v6, Lcom/gold/extension/shared/settings/LongSetting;

    const-string v11, "sb_local_time_saved_milliseconds"

    invoke-direct {v6, v11, v15, v13, v13}, Lcom/gold/extension/shared/settings/LongSetting;-><init>(Ljava/lang/String;Ljava/lang/Long;ZZ)V

    sput-object v6, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    .line 613
    new-instance v11, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v15, "sb_toast_on_whitelisted_channel"

    invoke-direct {v11, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v11, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_TOAST_ON_WHITELISTED_CHANNEL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 614
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_sponsor"

    iget-object v5, v5, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_SPONSOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 615
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_sponsor_color"

    move-object/from16 v121, v4

    move-object/from16 v4, v77

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_SPONSOR_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 616
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_selfpromo"

    move-object/from16 v77, v5

    iget-object v5, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_SELF_PROMO:Lcom/gold/extension/shared/settings/StringSetting;

    .line 617
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_selfpromo_color"

    move-object/from16 v122, v4

    move-object/from16 v4, v70

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_SELF_PROMO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 618
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_interaction"

    move-object/from16 v70, v5

    iget-object v5, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_INTERACTION:Lcom/gold/extension/shared/settings/StringSetting;

    .line 619
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_interaction_color"

    move-object/from16 v123, v4

    move-object/from16 v4, v73

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_INTERACTION_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 620
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_highlight"

    move-object/from16 v73, v5

    iget-object v5, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_HIGHLIGHT:Lcom/gold/extension/shared/settings/StringSetting;

    .line 621
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_highlight_color"

    move-object/from16 v124, v4

    move-object/from16 v4, v76

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_HIGHLIGHT_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 622
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_hook"

    move-object/from16 v76, v5

    iget-object v5, v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_HOOK:Lcom/gold/extension/shared/settings/StringSetting;

    .line 623
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_hook_color"

    move-object/from16 v125, v4

    move-object/from16 v4, v80

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_HOOK_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 624
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_intro"

    move-object/from16 v80, v5

    iget-object v5, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_INTRO:Lcom/gold/extension/shared/settings/StringSetting;

    .line 625
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_intro_color"

    move-object/from16 v126, v4

    move-object/from16 v4, v83

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_INTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 626
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_outro"

    move-object/from16 v83, v5

    iget-object v5, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_OUTRO:Lcom/gold/extension/shared/settings/StringSetting;

    .line 627
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_outro_color"

    move-object/from16 v127, v4

    move-object/from16 v4, v86

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_OUTRO_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 628
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_preview"

    move-object/from16 v86, v5

    iget-object v5, v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v5, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_PREVIEW:Lcom/gold/extension/shared/settings/StringSetting;

    .line 629
    new-instance v5, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_preview_color"

    move-object/from16 v128, v4

    move-object/from16 v4, v89

    invoke-direct {v5, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_PREVIEW_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 630
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_filler"

    iget-object v2, v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v2, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_FILLER:Lcom/gold/extension/shared/settings/StringSetting;

    .line 631
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_filler_color"

    move-object/from16 v89, v4

    move-object/from16 v4, v92

    invoke-direct {v2, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v2, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_FILLER_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 632
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_music_offtopic"

    iget-object v0, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v0, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_MUSIC_OFFTOPIC:Lcom/gold/extension/shared/settings/StringSetting;

    .line 633
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_music_offtopic_color"

    move-object/from16 v92, v4

    move-object/from16 v4, v96

    invoke-direct {v0, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_MUSIC_OFFTOPIC_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    .line 634
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_unsubmitted"

    move-object/from16 v96, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-direct {v4, v15, v0, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_UNSUBMITTED:Lcom/gold/extension/shared/settings/StringSetting;

    .line 635
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v15, "sb_unsubmitted_color"

    move-object/from16 v95, v4

    move-object/from16 v4, v101

    invoke-direct {v0, v15, v4, v13, v13}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/gold/extension/youtube/settings/Settings;->DEPRECATED_SB_CATEGORY_UNSUBMITTED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    move-object/from16 v13, v67

    move-object/from16 v4, v99

    .line 638
    invoke-static {v4, v13}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v100

    move-object/from16 v13, v103

    .line 639
    invoke-static {v4, v13}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v102

    .line 640
    invoke-static {v4, v14}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v66

    .line 641
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v30

    .line 642
    invoke-static {v14, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v27

    move-object/from16 v13, v107

    .line 643
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v26

    move-object/from16 v13, v104

    .line 644
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v25

    move-object/from16 v13, v105

    .line 645
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v22

    move-object/from16 v13, v106

    .line 646
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v31

    move-object/from16 v13, v109

    .line 647
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v13, v17

    move-object/from16 v4, v21

    .line 648
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v32

    move-object/from16 v13, v108

    .line 649
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v13, v16

    move-object/from16 v4, v63

    .line 652
    invoke-static {v13, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v61

    .line 653
    invoke-static {v7, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v4, v56

    .line 654
    invoke-static {v3, v4}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v53

    move-object/from16 v4, v110

    .line 655
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v41

    move-object/from16 v4, v111

    .line 656
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v35

    move-object/from16 v4, v112

    .line 657
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v36

    move-object/from16 v4, v113

    .line 658
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v37

    move-object/from16 v4, v114

    .line 659
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v38

    move-object/from16 v4, v115

    .line 660
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v43

    move-object/from16 v4, v116

    .line 661
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v45

    move-object/from16 v4, v117

    .line 662
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v46

    .line 663
    invoke-static {v10, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v47

    move-object/from16 v4, v118

    .line 664
    invoke-static {v4, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v48

    .line 665
    invoke-static {v12, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v54

    .line 666
    invoke-static {v1, v3}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v55

    move-object/from16 v3, v119

    .line 667
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v58

    .line 668
    invoke-static {v9, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v57

    move-object/from16 v3, v120

    .line 669
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v59

    .line 670
    invoke-static {v8, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v60

    .line 671
    invoke-static {v6, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v62

    .line 672
    invoke-static {v11, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v65

    move-object/from16 v3, v121

    .line 673
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v64

    move-object/from16 v3, v77

    .line 674
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v69

    move-object/from16 v3, v122

    .line 675
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v68

    move-object/from16 v3, v70

    .line 676
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v72

    move-object/from16 v3, v123

    .line 677
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v71

    move-object/from16 v3, v73

    .line 678
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v75

    move-object/from16 v3, v124

    .line 679
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v74

    move-object/from16 v3, v76

    .line 680
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v79

    move-object/from16 v3, v125

    .line 681
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v78

    move-object/from16 v3, v80

    .line 682
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v82

    move-object/from16 v3, v126

    .line 683
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v81

    move-object/from16 v3, v83

    .line 684
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v85

    move-object/from16 v3, v127

    .line 685
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v84

    move-object/from16 v3, v86

    .line 686
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v88

    move-object/from16 v3, v128

    .line 687
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v87

    .line 688
    invoke-static {v5, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v3, v89

    move-object/from16 v1, v91

    .line 689
    invoke-static {v3, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v90

    .line 690
    invoke-static {v2, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v2, v92

    move-object/from16 v1, v94

    .line 691
    invoke-static {v2, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v93

    move-object/from16 v2, v96

    .line 692
    invoke-static {v2, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v2, v95

    move-object/from16 v1, v97

    .line 693
    invoke-static {v2, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    move-object/from16 v1, v98

    .line 694
    invoke-static {v0, v1}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    .line 699
    sget-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_37_OR_GREATER:Z

    if-eqz v0, :cond_18ab

    invoke-virtual/range {v20 .. v20}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->TABLET:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne v0, v1, :cond_18ab

    .line 700
    new-instance v0, Lcom/gold/extension/youtube/settings/Settings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/settings/Settings$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 701
    invoke-virtual/range {v20 .. v20}, Lcom/gold/extension/shared/settings/EnumSetting;->resetToDefault()Ljava/lang/Object;

    .line 706
    :cond_18ab
    invoke-virtual/range {v19 .. v19}, Lcom/gold/extension/shared/settings/StringSetting;->isSetToDefault()Z

    move-result v0

    if-nez v0, :cond_18dd

    .line 707
    invoke-virtual/range {v19 .. v19}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    iget-object v2, v1, Lcom/gold/extension/shared/settings/StringSetting;->defaultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_18cf

    .line 708
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_18dd

    .line 709
    :cond_18cf
    new-instance v0, Lcom/gold/extension/youtube/settings/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/settings/Settings$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 710
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->resetToDefault()Ljava/lang/Object;

    .line 711
    invoke-virtual/range {v24 .. v24}, Lcom/gold/extension/shared/settings/BooleanSetting;->resetToDefault()Ljava/lang/Object;

    .line 715
    :cond_18dd
    invoke-virtual/range {v29 .. v29}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_65:Lcom/gold/extension/shared/spoof/ClientType;

    if-ne v0, v1, :cond_18e8

    .line 716
    invoke-virtual/range {v29 .. v29}, Lcom/gold/extension/shared/settings/EnumSetting;->resetToDefault()Ljava/lang/Object;

    .line 719
    :cond_18e8
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->SB_IMPORT_EXPORT_CALLBACK:Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->addImportExportCallback(Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;)V

    .line 720
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->VOT_IMPORT_EXPORT_CALLBACK:Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->addImportExportCallback(Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;)V

    .line 723
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;->install()V

    .line 729
    new-instance v43, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v47, 0x1

    const-string v48, "%"

    const/16 v45, 0x5

    const/16 v46, 0x32

    invoke-direct/range {v43 .. v48}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v43 .. v43}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 731
    new-instance v41, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v45, 0x1

    const-string v46, "%"

    const/16 v43, 0x0

    const/16 v44, 0x64

    invoke-direct/range {v41 .. v46}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v41 .. v41}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 733
    new-instance v41, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const-string v46, "sp"

    const/16 v43, 0x1

    const/16 v44, 0x1e

    move-object/from16 v42, v33

    invoke-direct/range {v41 .. v46}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v41 .. v41}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 735
    new-instance v22, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v26, 0x1

    const-string v27, "%"

    const/16 v24, 0x0

    const/16 v25, 0x64

    invoke-direct/range {v22 .. v27}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 737
    new-instance v16, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v20, 0x1

    const-string v21, "%"

    move-object/from16 v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x64

    invoke-direct/range {v16 .. v21}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 739
    new-instance v33, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v37, 0x1

    const-string v38, ""

    const/16 v35, 0x1

    const/16 v36, 0xa

    invoke-direct/range {v33 .. v38}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v33 .. v33}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 741
    new-instance v33, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const-string v38, ""

    move-object/from16 v34, v39

    invoke-direct/range {v33 .. v38}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v33 .. v33}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 743
    new-instance v35, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v39, 0x1

    move-object/from16 v36, v40

    const-string v40, ""

    const/16 v38, 0x14

    invoke-direct/range {v35 .. v40}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v35 .. v35}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 745
    new-instance v40, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v44, 0x1

    const-string v45, "%"

    const/16 v42, 0x5

    const/16 v43, 0x4b

    move-object/from16 v41, v52

    invoke-direct/range {v40 .. v45}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v40 .. v40}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 747
    new-instance v18, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v22, 0x1

    const-string v23, "dp"

    const/16 v20, 0x0

    const/16 v21, 0x20

    move-object/from16 v19, v28

    invoke-direct/range {v18 .. v23}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 749
    new-instance v43, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const/16 v47, 0xa

    const-string v48, "%"

    const/16 v45, 0x0

    const/16 v46, 0x64

    move-object/from16 v44, v49

    invoke-direct/range {v43 .. v48}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v43 .. v43}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 751
    new-instance v43, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const-string v48, "%"

    move-object/from16 v44, v50

    invoke-direct/range {v43 .. v48}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V

    invoke-static/range {v43 .. v43}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 753
    new-instance v43, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const-string v48, "x"

    const/16 v49, 0xa

    const/16 v45, 0xa

    const/16 v46, 0x19

    const/16 v47, 0x1

    move-object/from16 v44, v51

    invoke-direct/range {v43 .. v49}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;I)V

    invoke-static/range {v43 .. v43}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;-><init>()V

    return-void
.end method
