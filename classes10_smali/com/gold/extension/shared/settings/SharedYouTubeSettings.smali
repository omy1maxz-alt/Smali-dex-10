.class public Lcom/gold/extension/shared/settings/SharedYouTubeSettings;
.super Lcom/gold/extension/shared/settings/BaseSettings;
.source "SharedYouTubeSettings.java"


# static fields
.field public static final CHECK_WATCH_HISTORY_DOMAIN_NAME:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final CUSTOM_BRANDING_ICON:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_BRANDING_NAME:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final CUSTOM_BRANDING_NOTIFICATION_ICON:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG_PROTOBUFFER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DEBUG_SPANNABLE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field private static final DEPRECATED_SANITIZE_URL_QUERY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLED_FEATURE_FLAGS:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final DISABLE_DRC_AUDIO:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final DISABLE_QUIC_PROTOCOL:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final EXTERNAL_DOWNLOADER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final EXTERNAL_DOWNLOADER_ACTION_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final EXTERNAL_DOWNLOADER_FLYOUT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final EXTERNAL_DOWNLOADER_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final HIDE_FULLSCREEN_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final OAUTH2_REFRESH_TOKEN:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final PROXY_ALLOW_DIRECT_FALLBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final PROXY_AUTH_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final PROXY_AUTH_PASSWORD:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final PROXY_AUTH_USERNAME:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final PROXY_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final PROXY_HOST:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final PROXY_HTTPS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final PROXY_PORT:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final REPLACE_LINKS_WITH_SHORTENER:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final REPLACE_MUSIC_LINKS_WITH_YOUTUBE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SANITIZE_SHARING_LINKS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SETTINGS_INITIALIZED:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SETTINGS_SEARCH_ENTRIES:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SETTINGS_SEARCH_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SPOOF_VIDEO_STREAMS_DISABLE_PLAYER_JS_UPDATE:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SPOOF_VIDEO_STREAMS_PLAYER_JS_HASH_VALUE:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final SPOOF_VIDEO_STREAMS_PLAYER_JS_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

.field public static final SPOOF_VIDEO_STREAMS_PLAYER_JS_VARIANT:Lcom/gold/extension/shared/settings/EnumSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/settings/EnumSetting<",
            "Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPOOF_VIDEO_STREAMS_STATS_FOR_NERDS:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 23
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "youtube_settings_initialized"

    const/4 v7, 0x0

    invoke-direct {v0, v1, v3, v7, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_INITIALIZED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 25
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "youtube_settings_search_history"

    const/4 v9, 0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_SEARCH_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 26
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v1, "youtube_settings_search_entries"

    const-string v10, ""

    invoke-direct {v0, v1, v10}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_SEARCH_ENTRIES:Lcom/gold/extension/shared/settings/StringSetting;

    .line 28
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "youtube_disable_drc_audio"

    invoke-direct {v0, v1, v3, v9}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLE_DRC_AUDIO:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 30
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "youtube_disable_quic_protocol"

    invoke-direct {v0, v1, v3, v9}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLE_QUIC_PROTOCOL:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 32
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "youtube_hide_fullscreen_ads"

    invoke-direct {v0, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->HIDE_FULLSCREEN_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 34
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "youtube_spoof_video_streams"

    const-string v2, "youtube_spoof_video_streams_user_dialog_message"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 35
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_spoof_video_streams_stats_for_nerds"

    invoke-static {v0}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v0

    invoke-direct {v1, v2, v8, v0}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_STATS_FOR_NERDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 36
    new-instance v0, Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v1, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->HOUSE_BRAND:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    new-instance v2, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptClientAvailability;

    invoke-direct {v2}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptClientAvailability;-><init>()V

    const-string v4, "youtube_spoof_video_streams_player_js_variant"

    invoke-direct {v0, v4, v1, v9, v2}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_PLAYER_JS_VARIANT:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 38
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    new-instance v6, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptClientAvailability;

    invoke-direct {v6}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptClientAvailability;-><init>()V

    const-string v2, "youtube_spoof_video_streams_disable_player_js_update"

    const/4 v4, 0x1

    const-string v5, "youtube_spoof_video_streams_disable_player_js_update_user_dialog_message"

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_DISABLE_PLAYER_JS_UPDATE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 39
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    new-instance v1, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptHashAvailability;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch$JavaScriptHashAvailability;-><init>()V

    const-string v2, "youtube_spoof_video_streams_player_js_hash_value"

    invoke-direct {v0, v2, v10, v9, v1}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_PLAYER_JS_HASH_VALUE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 40
    new-instance v0, Lcom/gold/extension/shared/settings/LongSetting;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "youtube_spoof_video_streams_player_js_saved_milliseconds"

    invoke-direct {v0, v2, v1, v7, v7}, Lcom/gold/extension/shared/settings/LongSetting;-><init>(Ljava/lang/String;Ljava/lang/Long;ZZ)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_PLAYER_JS_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    .line 41
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v1, "youtube_oauth2_refresh_token"

    invoke-direct {v0, v1, v10, v7, v7}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->OAUTH2_REFRESH_TOKEN:Lcom/gold/extension/shared/settings/StringSetting;

    .line 43
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "youtube_sanitize_sharing_links"

    invoke-direct {v0, v1, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SANITIZE_SHARING_LINKS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 44
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_replace_music_with_youtube"

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->REPLACE_MUSIC_LINKS_WITH_YOUTUBE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 45
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_replace_links_with_shortener"

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->REPLACE_LINKS_WITH_SHORTENER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 47
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_check_watch_history_domain_name"

    invoke-direct {v1, v2, v8, v7, v7}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CHECK_WATCH_HISTORY_DOMAIN_NAME:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 49
    new-instance v1, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v2, "youtube_custom_branding_icon"

    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->getDefaultIconStyle()Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    move-result-object v4

    invoke-direct {v1, v2, v4, v9}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Z)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 50
    new-instance v1, Lcom/gold/extension/shared/settings/EnumSetting;

    const-string v2, "youtube_custom_branding_notification_icon"

    sget-object v4, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->FOLLOW:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    invoke-direct {v1, v2, v4, v9}, Lcom/gold/extension/shared/settings/EnumSetting;-><init>(Ljava/lang/String;Ljava/lang/Enum;Z)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_NOTIFICATION_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 51
    new-instance v1, Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->getDefaultAppNameIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "youtube_custom_branding_name"

    invoke-direct {v1, v4, v2, v9}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_NAME:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 53
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v7, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v7}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    const-string v2, "youtube_debug_protobuffer"

    const/4 v4, 0x0

    const-string v5, "youtube_debug_protobuffer_user_dialog_message"

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG_PROTOBUFFER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 54
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_debug_spannable"

    invoke-static {v7}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG_SPANNABLE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 55
    new-instance v1, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v2, "youtube_disabled_feature_flags"

    invoke-static {v7}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v4

    invoke-direct {v1, v2, v10, v9, v4}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLED_FEATURE_FLAGS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 57
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_proxy_enabled"

    invoke-direct {v1, v2, v3, v9}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 58
    new-instance v2, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v4, "youtube_proxy_host"

    invoke-static {v1}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v2, v4, v10, v9, v5}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_HOST:Lcom/gold/extension/shared/settings/StringSetting;

    .line 59
    new-instance v2, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/16 v4, 0x1f90

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    const-string v6, "youtube_proxy_port"

    invoke-direct {v2, v6, v4, v9, v5}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_PORT:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 60
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "youtube_proxy_https"

    invoke-static {v1}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v2, v4, v3, v9, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_HTTPS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 61
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "youtube_proxy_auth_enabled"

    invoke-static {v1}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v5

    invoke-direct {v2, v4, v3, v9, v5}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_AUTH_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 62
    new-instance v4, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v5, "youtube_proxy_auth_username"

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v6

    invoke-direct {v4, v5, v10, v9, v6}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v4, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_AUTH_USERNAME:Lcom/gold/extension/shared/settings/StringSetting;

    .line 63
    new-instance v11, Lcom/gold/extension/shared/settings/StringSetting;

    const/16 v16, 0x0

    invoke-static {v2}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v17

    const-string v12, "youtube_proxy_auth_password"

    const-string v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v11, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_AUTH_PASSWORD:Lcom/gold/extension/shared/settings/StringSetting;

    .line 64
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "youtube_proxy_allow_direct_fallback"

    invoke-static {v1}, Lcom/gold/extension/shared/settings/Setting;->parent(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v1

    invoke-direct {v2, v4, v3, v9, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->PROXY_ALLOW_DIRECT_FALLBACK:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 66
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_external_downloader"

    invoke-direct {v1, v2, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 67
    new-instance v2, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v4, "youtube_external_downloader_action_button"

    invoke-direct {v2, v4, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER_ACTION_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 68
    new-instance v4, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v5, "youtube_external_downloader_flyout_button"

    invoke-direct {v4, v5, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v4, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER_FLYOUT_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 69
    new-instance v3, Lcom/gold/extension/shared/settings/StringSetting;

    filled-new-array {v1, v2}, [Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;

    move-result-object v1

    const-string v2, "youtube_external_downloader_name"

    const-string v4, "com.deniscerri.ytdl"

    invoke-direct {v3, v2, v4, v1}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/settings/Setting$Availability;)V

    sput-object v3, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->EXTERNAL_DOWNLOADER_PACKAGE_NAME:Lcom/gold/extension/shared/settings/StringSetting;

    .line 72
    new-instance v1, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "youtube_sanitize_url_query"

    invoke-direct {v1, v2, v8}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEPRECATED_SANITIZE_URL_QUERY:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 76
    invoke-static {v1, v0}, Lcom/gold/extension/shared/settings/Setting;->migrateOldSettingToNew(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/BaseSettings;-><init>()V

    return-void
.end method
